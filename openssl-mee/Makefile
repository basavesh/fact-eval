FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/factc)
FFLAGS = -addl -m64

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20170717_latest_raw.fact
	llc-11 -x86-speculative-load-hardening 20170717_latest_raw.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest_raw.fact -o 20170717_latest_raw.O3.o
	llc-11 -x86-speculative-load-hardening 20170717_latest_raw.O3.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20170717_latest.fact
	llc-11 -x86-speculative-load-hardening 20170717_latest.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20170717_latest.fact -o 20170717_latest.O3.o
	llc-11 -x86-speculative-load-hardening 20170717_latest.O3.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) 20110823_fast.fact
	llc-11 -x86-speculative-load-hardening 20110823_fast.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 20110823_fast.fact -o 20110823_fast.O3.o
	llc-11 -x86-speculative-load-hardening 20110823_fast.O3.ll -filetype=obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./mee_ctverify.sh > verifs/ctverif.results
