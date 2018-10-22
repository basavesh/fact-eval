FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)
_FACT_OPTS = $(OPTS)
_FACT_OPTS += -llvm-out -generate-header

DEBUG ?= 0
ifeq ($(DEBUG),0)
_FACT_OPTS += -opt O2
else
_FACT_OPTS += -opt O0 -debug
endif

all:

generate:
	$(FACTC) $(_FACT_OPTS) bignum.fact
	$(FACTC) $(_FACT_OPTS) -fpic bignum.fact -o bignum.fpic.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) _f_mpi_exp_mod_wrapper bignum_ctverifwrapper.c obj/bignum.h ll/bignum.ll
