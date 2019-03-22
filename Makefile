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

%/bench:
	[ -f 4gb ] || ./make_random_data.sh
	cd $$(dirname $@) && make unopt bench

results.txt: $(BENCHES)
	rm -f results.txt
	@for x in $(BASEDIRS); do (cd $$x/tests && ./parse_bench.py bench unopt) | tee -a results.txt; done

clocs.txt:
	rm -f clocs.txt
	@echo "port\tc loc\tfact loc\tassume\tdeclassify\textern" | tee clocs.txt
	@for x in $(BASEDIRS); do (cd $$x/tests && ./cloc.sh) | tee -a clocs.txt; done

bench: results.txt

loc: clocs.txt
