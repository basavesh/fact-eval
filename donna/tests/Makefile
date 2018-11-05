all:

compile:
	cd donna-c && ./make_donna.sh
	cd donna-fact && ./make_donna.sh
	touch compile

bench: compile
	cd donna-c && ./bench.sh
	cd donna-fact && ./bench.sh
	@echo "donna-c,$$(tail -n1 donna-c/benchmarks.log)" > bench
	@echo "donna-fact,$$(tail -n1 donna-fact/benchmarks.log)" >> bench
	@echo "output written to bench"

rebench:
	rm -f bench
	make bench
