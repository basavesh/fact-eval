FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)
FFLAGS = -addl -m64

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20170717_latest_raw.fact
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest_raw.fact -o 20170717_latest_raw.O3.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20170717_latest.fact
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest.fact -o 20170717_latest.O3.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20110823_fast.fact
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20110823_fast.fact -o 20110823_fast.O3.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./saga_ctverify.sh > verifs/ctverif.results
