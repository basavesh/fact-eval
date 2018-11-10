FACTC ?= $(shell readlink -f $(shell git rev-parse --show-toplevel)/../fact/fact.byte)

all:

generate:
	$(FACTC) -llvm-out -generate-header 20170717_latest_raw.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20170717_latest_raw.fact -o 20170717_latest_raw.O3.o
	$(FACTC) -llvm-out -generate-header 20170717_latest.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20170717_latest.fact -o 20170717_latest.O3.o
	$(FACTC) -llvm-out -generate-header 20110823_fast.fact
	$(FACTC) -llvm-out -generate-header -opt O3 20110823_fast.fact -o 20110823_fast.O3.o
	mv *.o *.s *.h obj/
	mv *.bc *.ll ll/

ctverify:
	$(VERIFSH) -q _aesni_cbc_hmac_sha1_cipher_wrapper saga_ctverifwrapper.c saga_stub.c ll/20170717_latest.ll
	$(VERIFSH) -q _aesni_cbc_hmac_sha1_cipher_wrapper saga_ctverifwrapper.c saga_stub.c ll/20170717_latest_raw.ll
	$(VERIFSH) -q _aesni_cbc_hmac_sha1_cipher_wrapper saga_ctverifwrapper.c saga_stub.c ll/20110823_fast.ll

