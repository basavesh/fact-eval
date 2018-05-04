#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <sys/random.h>
#include <time.h>

#include <gmp.h>

#include "mbedtls/config.h"
#include "mbedtls/platform.h"
#include "mbedtls/bignum.h"

#include "bignum_fact.h"

#define ciL    (sizeof(mbedtls_mpi_uint))       /* chars in limb  */
#define biL    (ciL << 3)                       /* bits  in limb  */

#define MEASURE_TIME(CODE, REC)                                                                         \
    do {                                                                                                \
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t_start);                                              \
        CODE;                                                                                           \
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t_stop);                                               \
        long tmp = 1000000000 * (t_stop.tv_sec - t_start.tv_sec) + (t_stop.tv_nsec - t_start.tv_nsec);  \
        REC.tot += tmp;                                                                                 \
        if (tmp > REC.max) { REC.max = tmp; }                                                           \
        if (tmp < REC.min) { REC.min = tmp; }                                                           \
    } while (false);
#define SHOW_TIME(NAME, REC)                                                                                    \
    do {                                                                                                        \
        printf("%27s  min: %9ld  avg: %9ld  max: %9ld\n", NAME, REC.min, REC.tot >> (2 * logiters), REC.max);   \
    } while (false);

typedef struct {
    long tot;
    long min;
    long max;
} timelog_t;

int main(int argc, char **argv) {
    unsigned primebits = 0;
    if (argc > 1) {
        primebits = (unsigned) atoi(argv[1]);
    }
    if (primebits == 0) {
        primebits = 1032;
    }

    unsigned logiters = 0;
    if (argc > 2) {
        logiters = (unsigned) atoi(argv[2]);
    }
    if (logiters == 0) {
        logiters = 2;
    }
    int niters = 1 << logiters;

    // C is original impl, CTC is "const-time" C, F is FaCT
    timelog_t timeC = { 0, (1L << 40), 0 };
    timelog_t timeCTC = timeC;
    timelog_t timeF = timeC;
    struct timespec t_start;
    struct timespec t_stop;

    mbedtls_mpi E, P, RR, X, Y1, Y2, Y3;
    mbedtls_mpi_init(&E);
    mbedtls_mpi_init(&P);
    mbedtls_mpi_init(&RR);
    mbedtls_mpi_init(&X);
    mbedtls_mpi_init(&Y1);
    mbedtls_mpi_init(&Y2);
    mbedtls_mpi_init(&Y3);

    mpz_t e, p, x, y;
    mpz_init(e);
    mpz_init(p);
    mpz_init(x);
    mpz_init(y);

    // rng
    gmp_randstate_t rstate;
    gmp_randinit_default(rstate);
    {
        uint64_t rseed;
        getrandom(&rseed, sizeof(rseed), 0);
        gmp_randseed_ui(rstate, rseed);
    }

    for (int outer = 0; outer < niters; outer++) {
        // random prime
        mpz_urandomb(p, rstate, primebits + 1);
        mpz_nextprime(p, p);

        // make sure all the mpis have enough room
        unsigned nlimbs = mpz_sizeinbase(p, 2);
        nlimbs =  1 + (nlimbs / biL) + ((nlimbs % biL) != 0);
        mbedtls_mpi_grow(&P, nlimbs);
        mbedtls_mpi_grow(&E, nlimbs);
        mbedtls_mpi_free(&RR);
        mbedtls_mpi_grow(&X, nlimbs);
        mbedtls_mpi_grow(&Y1, nlimbs);
        mbedtls_mpi_grow(&Y2, nlimbs);
        mbedtls_mpi_grow(&Y3, nlimbs);

        // export p to P
        memset(P.p, 0, ciL * P.n);
        P.s = 1;
        mpz_export(P.p, NULL, -1, ciL, 0, 0, p);

        /*
        // export testing
        mbedtls_mpi_write_file("P = ", &P, 16, NULL);
        gmp_fprintf(stderr, "P = %ZX\n", p);
        */

        for (int inner = 0; inner < niters; inner++) {
            // random X
            mpz_urandomm(x, rstate, p);
            X.s = 1;
            mpz_export(X.p, NULL, -1, ciL, 0, 0, x);

            // random E less than p-1
            mpz_sub_ui(e, p, 1);
            mpz_urandomm(e, rstate, e);
            E.s = 1;
            mpz_export(E.p, NULL, -1, ciL, 0, 0, e);

            // run once untimed each time we change P, to set RR
            if (inner == 0) {
                memset(Y1.p, 0, ciL * Y1.n);
                mbedtls_mpi_exp_mod(&Y1, &X, &E, &P, &RR);
            }

            memset(Y1.p, 0, ciL * Y1.n);
            MEASURE_TIME(mbedtls_mpi_exp_mod(&Y1, &X, &E, &P, &RR), timeC);
            //mbedtls_mpi_write_file("Y1= ", &Y1, 16, NULL);

            memset(Y2.p, 0, ciL * Y2.n);
            MEASURE_TIME(mbedtls_mpi_exp_mod_simple(&Y2, &X, &E, &P, &RR), timeCTC);
            //mbedtls_mpi_write_file("Y2= ", &Y2, 16, NULL);

            memset(Y3.p, 0, ciL * Y3.n);
            MEASURE_TIME(fact_mpi_exp_mod(&Y3, &X, &E, &P, &RR), timeF);
            //mbedtls_mpi_write_file("Y3= ", &Y3, 16, NULL);

            bool pass1 = true, pass2 = true;
            for (unsigned i = 0; i < nlimbs + 1; i++) {
                pass1 = pass1 && (Y2.p[i] == Y1.p[i]);
                pass2 = pass2 && (Y3.p[i] == Y1.p[i]);
            }
            if (!pass1) {
                printf("ERROR mbedtls_mpi_exp_mod_simple gave wrong answer\n");
            }
            if (!pass2) {
                printf("ERROR fact_mpi_exp_mod gave wrong answer\n");
            }

            /*
            // for debugging, check that gmp agrees
            mpz_powm(y, x, e, p);
            //gmp_printf("y = %Zx\n\n", y);
            */
        }
    }

    // print out stats
    printf("Ran 2^%d iterations total. Average times:\n", 2 * logiters);
    SHOW_TIME("mbedtls_mpi_exp_mod", timeC);
    SHOW_TIME("mbedtls_mpi_exp_mod_simple", timeCTC);
    SHOW_TIME("fact_mpi_exp_mod", timeF);

    gmp_randclear(rstate);
    mpz_clear(x);
    mpz_clear(p);
    mpz_clear(e);
    mpz_clear(y);
    mbedtls_mpi_free(&Y3);
    mbedtls_mpi_free(&Y2);
    mbedtls_mpi_free(&Y1);
    mbedtls_mpi_free(&X);
    mbedtls_mpi_free(&RR);
    mbedtls_mpi_free(&P);
    mbedtls_mpi_free(&E);

    /*
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &P, 10, "2789" ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &Q, 10, "3203" ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &E, 10,  "257" ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &N, &P, &Q ) );

    mbedtls_printf( "\n  Public key:\n\n" );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  N = ", &N, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  E = ", &E, 10, NULL ) );

    mbedtls_printf( "\n  Private key:\n\n" );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  P = ", &P, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  Q = ", &Q, 10, NULL ) );

    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &P, &P, 1 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &Q, &Q, 1 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &H, &P, &Q ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &D, &E, &H ) );

    mbedtls_mpi_write_file( "  D = E^-1 mod (P-1)*(Q-1) = ", &D, 10, NULL );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &X, 10, "55555" ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &Y, &X, &E, &N, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &Z, &Y, &D, &N, NULL ) );

    mbedtls_printf( "\n  RSA operation:\n\n" );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  X (plaintext)  = ", &X, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  Y (ciphertext) = X^E mod N = ", &Y, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  Z (decrypted)  = Y^D mod N = ", &Z, 10, NULL ) );
    mbedtls_printf( "\n" );

    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod_simple( &Y, &X, &E, &N, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod_simple( &Z, &Y, &D, &N, NULL ) );

    mbedtls_printf( "\n  RSA operation:\n\n" );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  X (plaintext)  = ", &X, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  Y (ciphertext) = X^E mod N = ", &Y, 10, NULL ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_file( "  Z (decrypted)  = Y^D mod N = ", &Z, 10, NULL ) );
    mbedtls_printf( "\n" );

cleanup:
    mbedtls_mpi_free( &E ); mbedtls_mpi_free( &P ); mbedtls_mpi_free( &Q ); mbedtls_mpi_free( &N );
    mbedtls_mpi_free( &H ); mbedtls_mpi_free( &D ); mbedtls_mpi_free( &X ); mbedtls_mpi_free( &Y );
    mbedtls_mpi_free( &Z );

    if( ret != 0 )
    {
        mbedtls_printf( "\nAn error occurred.\n" );
        ret = 1;
    }
    */

    return 0;
}
