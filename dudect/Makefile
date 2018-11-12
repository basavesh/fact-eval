all: dut_donna \
	dut_secretbox_cref \
	dut_secretbox_asm \
	dut_secretbox_msg_cref \
	dut_secretbox_msg_asm \
	dut_saga

OBJS = src/cpucycles.o src/fixture.o src/random.o \
src/ttest.o src/percentile.o
OBJS_donna = dut/donna/curve25519-c64.O2.o
OBJS_secretbox_cref = dut/secretbox/crypto_secretbox.cref.O2.o
OBJS_secretbox_asm = dut/secretbox/crypto_secretbox.asm.O2.o
OBJS_saga =
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

dut_secretbox_cref: $(OBJS) $(OBJS_secretbox_cref) dut/secretbox/dut_secretbox.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

dut_secretbox_asm: $(OBJS) $(OBJS_secretbox_asm) dut/secretbox/dut_secretbox.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

dut_secretbox_msg_cref: $(OBJS) $(OBJS_secretbox_cref) dut/secretbox/dut_secretbox_msg.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

dut_secretbox_msg_asm: $(OBJS) $(OBJS_secretbox_asm) dut/secretbox/dut_secretbox_msg.c
	$(CC) $(LDFLAGS) $(INCS) -o $@ $^ $(LIBS)

dut_saga: $(OBJS) $(OBJS_saga) dut/saga/dut_saga.c
	$(CC) $(LDFLAGS) $(INCS) -I../saga/tests/openssl-fact-ugly/include/ -o $@ $^ $(LIBS) ./dut/saga/libcrypto.a

.c.o:
	$(CC) $(CFLAGS) $(INCS) -c $< -o $@

clean:
	rm -f $(OBJS) $(OBJS_AES32) $(OBJS_AESBITSLICED) $(OBJS_DONNA) $(OBJS_DONNABAD) dut_* *.exe a.out
