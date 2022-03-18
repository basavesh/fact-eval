all:

setup:
	cd libsodium-c-cref && ./autogen.sh
	cd libsodium-c-asm && ./autogen.sh
	cd libsodium-fact-cref && ./autogen.sh
	cd libsodium-fact-asm && ./autogen.sh
	touch setup

compile: setup
	cd libsodium-c-cref && ./make_libsodium.sh
	cd libsodium-c-asm && ./make_libsodium.sh
	cd libsodium-fact-cref && ./make_libsodium.sh
	cd libsodium-fact-asm && ./make_libsodium.sh
	touch compile

bench: compile
	./bench.sh
	mv bench.tmp bench

recompile:
	rm -f compile
	make compile

rebench:
	rm -f bench
	make bench
