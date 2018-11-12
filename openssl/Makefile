all:

generate:
	$(FACTC) -llvm-out -generate-header s3_cbc.fact
	$(FACTC) -llvm-out -generate-header -opt O3 s3_cbc.fact -o s3_cbc.O3.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./s3_cbc_ctverify.sh > verifs/ctverif.results
