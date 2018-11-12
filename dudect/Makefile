all: dut_donna dut_secretbox

OBJS = src/cpucycles.o src/fixture.o src/random.o \
src/ttest.o src/percentile.o
OBJS_donna = dut/donna/curve25519-c64.O2.o
OBJS_secretbox = dut/secretbox/crypto_secretbox.cref.O2.o
CC=clang
OPTIMIZATION=-O2
#CFLAGS = -Weverything -O0 -fsanitize=memory -fno-omit-frame-pointer -g 
CFLAGS = $(OPTIMIZATION)
LIBS = -lm
#LDFLAGS = -fsanitize=memory -fno-omit-frame-pointer -g 
#LDFLAGS = -Weverything $(OPTIMIZATION)
LDFLAGS = $(OPTIMIZATION)

INCS = -Iinc/

dut_donna: $(OBJS) $(OBJS_donna) dut/donna/dut_donna.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

dut_secretbox: $(OBJS) $(OBJS_secretbox) dut/secretbox/dut_secretbox.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJS_AES32) $(OBJS_AESBITSLICED) $(OBJS_DONNA) $(OBJS_DONNABAD) dut_* *.exe a.out
