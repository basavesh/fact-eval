all:

setup:
	cd libsodium-c-cref && ./autogen.sh
	cd libsodium-c-asm && ./autogen.sh
	cd libsodium-fact-cref && ./autogen.sh
	cd libsodium-fact-asm && ./autogen.sh

compile:
	cd libsodium-c-cref && ./make_libsodium.sh
	cd libsodium-c-asm && ./make_libsodium.sh
	cd libsodium-fact-cref && ./make_libsodium.sh
	cd libsodium-fact-asm && ./make_libsodium.sh

bench:
	cd libsodium-c-cref && ./bench.sh
	cd libsodium-c-asm && ./bench.sh
	cd libsodium-fact-cref && ./bench.sh
	cd libsodium-fact-asm && ./bench.sh
