#!/bin/bash


rm -f bench.tmp
for i in $(seq 5); do
  echo | tee -a bench.tmp
  echo $i | tee -a bench.tmp
  if [[ "$1" != "unopt" ]]; then
    ( cd donna-c && ./bench.sh )
    echo "donna-c,$(tail -n1 donna-c/benchmarks.log)" >> bench.tmp
  fi
  ( cd donna-fact && ./bench.sh )
  echo "donna-fact,$(tail -n1 donna-fact/benchmarks.log)" >> bench.tmp
done

echo "output written to bench"
