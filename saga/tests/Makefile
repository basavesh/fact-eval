all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact-raw && ./make_openssl.sh
	cd openssl-fact-ugly && ./make_openssl.sh
	cd openssl-fact-nice && ./make_openssl.sh
	touch compile

test: compile
	cd openssl-c && ./apps/openssl test
	cd openssl-fact-raw && ./apps/openssl test
	cd openssl-fact-ugly && ./apps/openssl test
	cd openssl-fact-nice && ./apps/openssl test
	touch test

bench: test
	cd openssl-c/apps && ./bench.sh
	cd openssl-fact-raw/apps && ./bench.sh
	cd openssl-fact-ugly/apps && ./bench.sh
	cd openssl-fact-nice/apps && ./bench.sh
	@echo "openssl-c" > bench
	@tail -n7 openssl-c/apps/benchmarks.log >> bench
	@echo "openssl-fact-raw" >> bench
	@tail -n7 openssl-fact-raw/apps/benchmarks.log >> bench
	@echo "openssl-fact-ugly" >> bench
	@tail -n7 openssl-fact-ugly/apps/benchmarks.log >> bench
	@echo "openssl-fact-nice" >> bench
	@tail -n7 openssl-fact-nice/apps/benchmarks.log >> bench
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
