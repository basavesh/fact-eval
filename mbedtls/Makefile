FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)
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
	$(FACTC) $(_FACT_OPTS) -opt O2 -fpic bignum.fact -o bignum.O2.fpic.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) -q _f_mpi_exp_mod_wrapper bignum_ctverifwrapper.c obj/bignum.h ll/bignum.ll
	$(VERIFSH) -q _f_mpi_exp_mod_wrapper bignum_ctverifwrapper.c obj/bignum.h ll/bignum.O2.fpic.ll
