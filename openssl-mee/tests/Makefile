all:

compile:
	cd openssl-fact-ugly && ./make_openssl.sh
	touch compile

test: compile
	( cd openssl-fact-ugly && ./apps/openssl test 2>&1 ) | tee -a test

bench: test
	cd openssl-fact-ugly/apps && for x in 64mb 256mb 1gb 4gb; do ./bench.sh $$x; done
	@echo "openssl-fact-ugly" >> bench
	@tail -n132 openssl-fact-ugly/apps/benchmarks.log >> bench
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
