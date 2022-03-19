all:

compile:
	cd donna-fact && ./make_donna.sh
	touch compile

recompile:
	rm -f compile
	make compile

bench: compile
	./bench.sh
	mv bench.tmp bench

rebench:
	rm -f bench
	make bench
