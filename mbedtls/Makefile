FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)
_FACT_OPTS = $(OPTS)
_FACT_OPTS += -generate-header -debug

DEBUG ?= 0
ifeq ($(DEBUG),0)
_FACT_OPTS += -opt O2
else
_FACT_OPTS += -opt O0
endif

all: bignum.o bignum.fpic.o

bignum.o: bignum.fact
	$(FACTC) $(_FACT_OPTS) bignum.fact

bignum.fpic.o: bignum.fact
	$(FACTC) $(_FACT_OPTS) -fpic bignum.fact -o bignum.fpic.o

clean:
	rm -f *.s *.o *.bc *.h *.ll
