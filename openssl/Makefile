all:

generate:
	$(FACTC) -llvm-out -smack-out -generate-header stdlib.fact s3_cbc.fact
	$(FACTC) -llvm-out -generate-header -opt O2 stdlib.fact s3_cbc.fact -o s3_cbc.O2.fact
	mv *.o *.s *.h obj/
	mv *.smack.ll smack-ll/
	mv *.bc *.ll ll/
