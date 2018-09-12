all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact-raw && ./make_openssl.sh
	cd openssl-fact-ugly && ./make_openssl.sh
	cd openssl-fact-nice && ./make_openssl.sh

bench:
	cd openssl-c/apps && ./bench.sh
	cd openssl-fact-raw/apps && ./bench.sh
	cd openssl-fact-ugly/apps && ./bench.sh
	cd openssl-fact-nice/apps && ./bench.sh
