FFLAGS = -addl "-m64 -mllvm -x86-speculative-load-hardening"

all:

generate:
	$(FACTC) -llvm-out -generate-header $(FFLAGS) -opt O3 s3_cbc.fact -o s3_cbc.O3.o
	mkdir -p ll obj
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

clean:
	rm -r ll obj
