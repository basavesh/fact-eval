FACT := ../../fact/fact.byte
FACT_OPTS += -generate-header -debug

DEBUG ?= 0
ifeq ($(DEBUG),0)
	FACT_OPTS += -opt O2
endif

all: bignum.o

bignum.o: bignum.fact
	$(FACT) $(FACT_OPTS) bignum.fact

clean:
	rm -f *.s *.o *.bc *.h *.ll
