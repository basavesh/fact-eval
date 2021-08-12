FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)

BASE := stdlib.fact crypto_poly1305.fact
SALSA20 := salsa20.fact
AVX := u0.fact salsa20-avx2.fact
FINAL := crypto_secretbox.fact

CREF_SRC := $(BASE) $(SALSA20) $(FINAL)
ASM_SRC := $(BASE) $(AVX) $(FINAL)

FFLAGS = -addl "-mretpoline -fvisibility=hidden -fPIC -fPIE -fno-strict-aliasing -fno-strict-overflow -fstack-protector"

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) $(CREF_SRC) -o crypto_secretbox.cref.o
	llc-11 -x86-speculative-load-hardening crypto_secretbox.cref.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O2 $(CREF_SRC) -o crypto_secretbox.cref.O2.o
	llc-11 -x86-speculative-load-hardening crypto_secretbox.cref.O2.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) $(ASM_SRC) -o crypto_secretbox.asm.o
	llc-11 -x86-speculative-load-hardening crypto_secretbox.asm.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O2 $(ASM_SRC) -o crypto_secretbox.asm.O2.o
	llc-11 -x86-speculative-load-hardening crypto_secretbox.asm.O2.ll -filetype=obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./crypto_secretbox_ctverify.sh > verifs/ctverif.results

