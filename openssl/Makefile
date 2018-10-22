all:

generate:
	$(FACTC) -llvm-out -generate-header s3_cbc.fact
	$(FACTC) -llvm-out -generate-header -opt O2 s3_cbc.fact -o s3_cbc.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) __ssl3_cbc_digest_record_wrapper s3_cbc_ctverifwrapper.c obj/s3_cbc.h ll/s3_cbc.ll s3_cbc_stub.c
	#TODO: verify O2... can we reuse obj/s3_cbc.h? it's the same as obj/s3_cbc.O2.h
