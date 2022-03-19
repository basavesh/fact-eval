FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)
FFLAGS = -addl "-m64 -mllvm -x86-speculative-load-hardening"

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest_raw.fact -o 20170717_latest_raw.O3.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest.fact -o 20170717_latest.O3.o
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20110823_fast.fact -o 20110823_fast.O3.o
	mkdir -p ll obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

clean:
	rm -r ll obj
