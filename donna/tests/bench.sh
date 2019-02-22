#!/bin/bash


rm -f bench.tmp
for i in $(seq 5); do
  echo | tee -a bench.tmp
  echo $i | tee -a bench.tmp
  ( cd donna-c && ./bench.sh )
  ( cd donna-fact && ./bench.sh )
  echo "donna-c,$(tail -n1 donna-c/benchmarks.log)" >> bench.tmp
  echo "donna-fact,$(tail -n1 donna-fact/benchmarks.log)" >> bench.tmp
done

echo "output written to bench"
