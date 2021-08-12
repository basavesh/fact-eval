FFLAGS = -addl -m64

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) s3_cbc.fact
	llc-11 -x86-speculative-load-hardening s3_cbc.ll -filetype=obj
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 s3_cbc.fact -o s3_cbc.O3.o
	llc-11 -x86-speculative-load-hardening s3_cbc.O3.ll -filetype=obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	./s3_cbc_ctverify.sh > verifs/ctverif.results
