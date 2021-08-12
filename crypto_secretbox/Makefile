FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)

BASE := stdlib.fact crypto_poly1305.fact
SALSA20 := salsa20.fact
AVX := u0.fact salsa20-avx2.fact
FINAL := crypto_secretbox.fact

CREF_SRC := $(BASE) $(SALSA20) $(FINAL)
ASM_SRC := $(BASE) $(AVX) $(FINAL)

FFLAGS = -addl "-mretpoline -fvisibility=hidden -fPIC -fPIE -fno-strict-aliasing -fno-strict-overflow -fstack-protector -mllvm -x86-speculative-load-hardening"

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) $(CREF_SRC) -o crypto_secretbox.cref.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O2 $(CREF_SRC) -o crypto_secretbox.cref.O2.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) $(ASM_SRC) -o crypto_secretbox.asm.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O2 $(ASM_SRC) -o crypto_secretbox.asm.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./crypto_secretbox_ctverify.sh > verifs/ctverif.results

