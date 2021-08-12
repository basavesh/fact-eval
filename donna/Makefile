all:

generate:
	$(FACTC) -llvm-out -generate-header -addl "-mllvm -x86-speculative-load-hardening" curve25519-c64.fact
	$(FACTC) -llvm-out -opt O2 curve25519-c64.fact -add "-mllvm -x86-speculative-load-hardening" -o curve25519-c64.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./curve25519_ctverify.sh > verifs/ctverif.results
