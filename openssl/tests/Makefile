all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact && ./make_openssl.sh
	touch compile

bench: compile
	cd openssl-c/apps && ./bench.sh
	cd openssl-fact/apps && ./bench.sh
	touch bench

rebench:
	rm -f bench
	make bench
