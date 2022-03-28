all:

compile:
	cd openssl-fact && ./make_openssl.sh
	touch compile

test: compile
	( cd openssl-fact && make test 2>&1 ) | tee -a test

bench:
	# cd openssl-fact/apps && for x in 64mb 256mb 1gb 4gb; do ./bench.sh $$x; done
	@echo "openssl-fact" > bench
	@head -n10 openssl-fact/apps/benchmarks.log >> bench
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
