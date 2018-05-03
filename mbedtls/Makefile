FACT := ../../fact/fact.byte
_FACT_OPTS = $(OPTS)
_FACT_OPTS += -generate-header -debug

DEBUG ?= 0
ifeq ($(DEBUG),0)
_FACT_OPTS += -opt O2
else
_FACT_OPTS += -opt O0
endif

all: bignum.o

bignum.o: bignum.fact
	$(FACT) $(_FACT_OPTS) bignum.fact

clean:
	rm -f *.s *.o *.bc *.h *.ll
