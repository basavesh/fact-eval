FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)

BASE := stdlib.fact crypto_poly1305.fact
SALSA20 := salsa20.fact
AVX := u0.fact salsa20-avx2.fact
FINAL := crypto_secretbox.fact

CREF_SRC := $(BASE) $(SALSA20) $(FINAL)
ASM_SRC := $(BASE) $(AVX) $(FINAL)

FFLAGS = -addl "-fvisibility=hidden -fPIC -fPIE -fno-strict-aliasing -fno-strict-overflow  -mllvm -x86-speculative-load-hardening"

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 $(CREF_SRC) -o crypto_secretbox.cref.O3.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 $(ASM_SRC) -o crypto_secretbox.asm.O3.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/
