default:
	@echo "Please make a specific target" >&2
	@false

DIRS=$(wildcard */tests/)
BENCHES=$(addsuffix bench,$(DIRS))

%/bench:
	cd % && make bench

results: $(BENCHES)
	@head -n -0 $^ | tee results

bench: results
