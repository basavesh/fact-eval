default:
	@echo "Please make a specific target" >&2
	@false

DIRS=$(wildcard */tests/)
BENCHES=$(addsuffix bench,$(DIRS))
BASEDIRS=$(DIRS:/tests/=)

generate:
	@for x in $(BASEDIRS); do (cd $$x && make generate); done

compile:
	@for x in $(BASEDIRS); do (cd $$x/tests && make compile); done

recompile:
	@for x in $(BASEDIRS); do (cd $$x/tests && make recompile); done

%/bench:
	[ -f 4gb ] || ./make_random_data.sh
	cd $$(dirname $@) && make bench

%/rebench:
	[ -f 4gb ] || ./make_random_data.sh
	cd $$(dirname $@) && make rebench

results.txt: $(BENCHES)
	rm -f results.txt
	@for x in $(BASEDIRS); do (cd $$x/tests && ./parse_bench.py bench) | tee -a results.txt; done

bench: results.txt
