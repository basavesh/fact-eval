FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)

BASE := stdlib.fact crypto_poly1305.fact
SALSA20 := salsa20.fact
AVX := u0.fact salsa20-avx2.fact
FINAL := crypto_secretbox.fact

CREF_SRC := $(BASE) $(SALSA20) $(FINAL)
ASM_SRC := $(BASE) $(AVX) $(FINAL)

all:

generate:
	$(FACTC) -llvm-out -generate-header $(CREF_SRC) -o crypto_secretbox.cref.o
	$(FACTC) -llvm-out -generate-header -opt O2 $(CREF_SRC) -o crypto_secretbox.cref.O2.o
	$(FACTC) -llvm-out -generate-header -opt O2 -fpic $(CREF_SRC) -o crypto_secretbox.cref.O2.fpic.o
	$(FACTC) -llvm-out -generate-header $(ASM_SRC) -o crypto_secretbox.asm.o
	$(FACTC) -llvm-out -generate-header -opt O2 $(ASM_SRC) -o crypto_secretbox.asm.O2.o
	$(FACTC) -llvm-out -generate-header -opt O2 -fpic $(ASM_SRC) -o crypto_secretbox.asm.O2.fpic.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./ctverify.sh > ctverif.results

