all:

generate:
	$(FACTC) -llvm-out -generate-header s3_cbc.fact
	$(FACTC) -llvm-out -generate-header -opt O2 s3_cbc.fact -o s3_cbc.O2.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) -q __ssl3_cbc_digest_record_wrapper s3_cbc_ctverifwrapper.c obj/s3_cbc.h ll/s3_cbc.ll s3_cbc_stub.c
	# would there be there any reason we can't reuse obj/s3_cbc.h?
	$(VERIFSH) -q __ssl3_cbc_digest_record_wrapper s3_cbc_ctverifwrapper.c obj/s3_cbc.h ll/s3_cbc.O2.ll s3_cbc_stub.c
