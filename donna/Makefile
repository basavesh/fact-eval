all:

generate:
	$(FACTC) -llvm-out -generate-header curve25519-c64.fact
	llc-11 -x86-speculative-load-hardening curve25519-c64.ll -filetype=obj
	$(FACTC) -llvm-out -opt O2 curve25519-c64.fact -o curve25519-c64.O2.o
	llc-11 -x86-speculative-load-hardening curve25519-c64.O2.ll -filetype=obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./curve25519_ctverify.sh > verifs/ctverif.results
