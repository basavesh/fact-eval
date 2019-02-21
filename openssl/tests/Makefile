all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact && ./make_openssl.sh
	touch compile

test: compile
	cd openssl-c && make test 2>&1 | tee test
	cd openssl-fact && make test 2>&1 | tee -a test

bench: test
	cd openssl-c/apps && for x in 64mb 256mb 1gb 4gb; do ./bench.sh $$x; done
	cd openssl-fact/apps && for x in 64mb 256mb 1gb 4gb; do ./bench.sh $$x; done
	@echo "openssl-c" > bench
	@cat openssl-c/apps/benchmarks.log >> bench
	@echo >> bench
	@echo "openssl-fact-ugly" >> bench
	@cat openssl-fact-ugly/apps/benchmarks.log >> bench
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
