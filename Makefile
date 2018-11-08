default:
	@echo "Please make a specific target" >&2
	@false

DIRS=$(wildcard */tests/)
BENCHES=$(addsuffix bench,$(DIRS))
BASEDIRS=$(DIRS:/tests/=)

generate:
	@for x in $(BASEDIRS); do (cd $$x && make generate); done

%/bench:
	cd $$(dirname $@) && make bench

results: $(BENCHES)
	@head -n -0 $^ | tee results

bench: results
