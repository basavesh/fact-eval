all:

generate:
	$(FACTC) -llvm-out -smack-out -generate-header curve25519-c64.fact
	$(FACTC) -llvm-out -smack-out -generate-header -opt O2 curve25519-c64.fact -o curve25519-c64.O2.fact
	mv *.o *.s *.h obj/
	mv *.smack.ll smack-ll/
	mv *.bc *.ll ll/
