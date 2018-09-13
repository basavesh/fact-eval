all:

compile:
	cd openssl-c && ./make_openssl.sh
	cd openssl-fact-raw && ./make_openssl.sh
	cd openssl-fact-ugly && ./make_openssl.sh
	cd openssl-fact-nice && ./make_openssl.sh

test:
	cd openssl-c && ./apps/openssl test
	cd openssl-fact-raw && ./apps/openssl test
	cd openssl-fact-ugly && ./apps/openssl test
	cd openssl-fact-nice && ./apps/openssl test

bench:
	cd openssl-c/apps && ./bench.sh
	cd openssl-fact-raw/apps && ./bench.sh
	cd openssl-fact-ugly/apps && ./bench.sh
	cd openssl-fact-nice/apps && ./bench.sh
