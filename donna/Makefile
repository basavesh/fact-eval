all:

generate:
	$(FACTC) -llvm-out -generate-header curve25519-c64.fact
	$(FACTC) -llvm-out -opt O2 curve25519-c64.fact -o curve25519-c64.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./curve25519_ctverify.sh > verifs/ctverif.results
