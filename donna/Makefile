all:

generate:
	$(FACTC) -llvm-out -opt O3 curve25519-c64.fact -add "-mllvm -x86-speculative-load-hardening" -o curve25519-c64.O3.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/
