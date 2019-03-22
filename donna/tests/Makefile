all:

compile:
	cd donna-c && ./make_donna.sh
	cd donna-fact && ./make_donna.sh
	touch compile

bench: compile
	./bench.sh
	mv bench.tmp bench

unopt:
	rm -rf compile
	cd donna-fact && ./make_donna.sh unopt
	./bench.sh unopt
	mv bench.tmp unopt

rebench:
	rm -f bench
	make bench
