FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)

all:

generate:
	$(FACTC) -llvm-out -smack-out -generate-header 20170717_latest_raw.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20170717_latest_raw.fact -o 20170717_latest_raw.O3.o
	$(FACTC) -llvm-out -smack-out -generate-header 20170717_latest.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20170717_latest.fact -o 20170717_latest.O3.o
	$(FACTC) -llvm-out -smack-out -generate-header 20110823_fast.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20110823_fast.fact -o 20110823_fast.O3.o
	mv *.o *.s *.h obj/
	mv *.smack.ll smack-ll/
	mv *.bc *.ll ll/
