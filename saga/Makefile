all:

nice:
	cp 20110823_fast.fact saga.fact
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O3 saga.fact

ghetto:
	cp 20170717_latest.fact saga.fact
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O3 saga.fact

raw:
	cp 20170717_latest_raw.fact saga.fact
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O3 saga.fact

.PHONY: all copy

20110823_fast.o: 20110823_fast.fact Makefile ../../../fact.byte
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O2 20110823_fast.fact

20170717_latest.o: 20170717_latest.fact Makefile ../../../fact.byte
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O2 20170717_latest.fact

20170717_latest_raw.o: 20170717_latest_raw.fact Makefile ../../../fact.byte
	../../../fact.byte -pseudocode -generate-header -ast-out -core-ir-out -llvm-out -debug -opt O2 20170717_latest_raw.fact


clean:
	rm -f *.s *.o *.bc 20170717_latest_raw.h *.pseudo.fact *.bin *.res *.ml
