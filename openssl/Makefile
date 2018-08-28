all:

generate:
	$(FACTC) -llvm-out -generate-header s3_cbc.fact
	$(FACTC) -llvm-out -generate-header -opt O2 s3_cbc.fact -o s3_cbc.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/
