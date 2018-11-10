all:

generate:
	$(FACTC) -llvm-out -generate-header curve25519-c64.fact
	$(FACTC) -llvm-out -opt O2 curve25519-c64.fact -o curve25519-c64.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) -q curve25519_donna_wrapper curve25519_ctverifwrapper.c obj/curve25519-c64.h ll/curve25519-c64.ll 
	$(VERIFSH) -q curve25519_donna_wrapper curve25519_ctverifwrapper.c obj/curve25519-c64.h ll/curve25519-c64.O2.ll
