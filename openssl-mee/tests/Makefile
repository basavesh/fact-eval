all:

compile:
	cd openssl-fact-ugly && ./make_openssl.sh
	touch compile

test: compile
	( cd openssl-fact-ugly && ./apps/openssl test 2>&1 ) | tee -a test

bench:
	cd openssl-fact-ugly/apps && ./bench.sh
	@echo "openssl-fact-ugly" > bench
	@head -n100 openssl-fact-ugly/apps/benchmarks.log >> bench
	@echo "output written to bench"

recompile:
	rm -f compile
	make compile

retest:
	rm -f test
	make test

rebench:
	rm -f bench
	make bench
