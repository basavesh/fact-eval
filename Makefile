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
	cd $$(dirname $@) && make bench

results: $(BENCHES)
	@head -n -0 $^ | tee results

bench: results
