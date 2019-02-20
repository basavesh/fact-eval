FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)
_FACT_OPTS = $(OPTS)
_FACT_OPTS += -llvm-out -generate-header

DEBUG ?= 0
ifeq ($(DEBUG),0)
#_FACT_OPTS += -opt O2
else
_FACT_OPTS += -debug
endif

all:

generate:
	$(FACTC) $(_FACT_OPTS) bignum.fact -o bignum.o
	$(FACTC) $(_FACT_OPTS) -opt O2 -addl -fpic bignum.fact -o bignum.O2.fpic.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./bignum_ctverify.sh > verifs/ctverif.results
