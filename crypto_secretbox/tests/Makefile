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
	cd libsodium-c-cref && ./bench.sh
	cd libsodium-c-asm && ./bench.sh
	cd libsodium-fact-cref && ./bench.sh
	cd libsodium-fact-asm && ./bench.sh
	@tail -n3 libsodium-c-cref/benchmarks.log > bench
	@tail -n3 libsodium-c-asm/benchmarks.log >> bench
	@tail -n3 libsodium-fact-cref/benchmarks.log >> bench
	@tail -n3 libsodium-fact-asm/benchmarks.log >> bench
	@echo "output written to bench"

recompile:
	rm -f compile
	make compile

rebench:
	rm -f bench
	make bench
