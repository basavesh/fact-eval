#include "mbedtls/config.h"
#include "mbedtls/platform.h"
#include "mbedtls/bignum.h"
#include <string.h>

#include "_f_bignum.h"

int fact_mpi_exp_mod(mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *E, const mbedtls_mpi *N, mbedtls_mpi *_RR);
static void _f_mpi_montg_init( mbedtls_mpi_uint *mm, const mbedtls_mpi *N );

#define ciL    (sizeof(mbedtls_mpi_uint))       /* chars in limb  */
#define biL    (ciL << 3)                       /* bits  in limb  */

// C wrapper for _f_mpi_exp_mod
int fact_mpi_exp_mod(mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *E, const mbedtls_mpi *N, mbedtls_mpi *_RR ) {
    int ret;
    size_t nsize;
    mbedtls_mpi_uint mm;
    mbedtls_mpi RR, T, W, TW;

    if( mbedtls_mpi_cmp_int( N, 0 ) <= 0 || ( N->p[0] & 1 ) == 0 ) {
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );
    }

    if( mbedtls_mpi_cmp_int( E, 0 ) < 0 ) {
        return( MBEDTLS_ERR_MPI_BAD_INPUT_DATA );
    }

    // initialize temporary variables
    _f_mpi_montg_init( &mm, N );
    mbedtls_mpi_init( &RR );
    mbedtls_mpi_init( &T );
    mbedtls_mpi_init( &W );
    mbedtls_mpi_init( &TW );

    nsize = N->n + 1;
    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( X, nsize ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( &T, nsize * 2 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( &W, nsize * 16 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( &TW, nsize ) );

    // compute R^2 mod N if necessary
    if( _RR == NULL || _RR->p == NULL ) {
        MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &RR, 1 ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &RR, N->n * 2 * biL ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &RR, &RR, N ) );

        if( _RR != NULL ) {
            memcpy( _RR, &RR, sizeof( mbedtls_mpi ) );
        }
    } else {
        memcpy( &RR, _RR, sizeof( mbedtls_mpi ) );
    }

    // call fact code
    X->s = _f_mpi_exp_mod( X->p, X->n
                         , A->p, A->n, A->s
                         , E->p, E->n
                         , N->p, N->n
                         , RR.p, RR.n
                         , T.p, T.n
                         , W.p, W.n
                         , TW.p, TW.n
                         , mm );

cleanup:
    mbedtls_mpi_free( &TW );
    mbedtls_mpi_free( &W );
    mbedtls_mpi_free( &T );
    if( _RR == NULL || _RR->p == NULL )
        mbedtls_mpi_free( &RR );

    return( ret );
}

/*
 * Fast Montgomery initialization (thanks to Tom St Denis)
 */
static void _f_mpi_montg_init( mbedtls_mpi_uint *mm, const mbedtls_mpi *N ) {
    mbedtls_mpi_uint x, m0 = N->p[0];
    unsigned int i;

    x  = m0;
    x += ( ( m0 + 2 ) & 4 ) << 1;

    for( i = biL; i >= 8; i /= 2 )
        x *= ( 2 - ( m0 * x ) );

    *mm = ~x + 1;
}
