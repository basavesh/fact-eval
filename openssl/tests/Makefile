all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact && ./make_openssl.sh

bench:
	cd openssl-c/apps && ./bench.sh
	cd openssl-fact/apps && ./bench.sh
