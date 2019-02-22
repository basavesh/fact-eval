#!/bin/bash

rm -f bench.tmp
for i in $(seq 5); do
  echo | tee -a bench.tmp
  echo $i | tee -a bench.tmp
  ( cd libsodium-c-cref && ./bench.sh )
  ( cd libsodium-c-asm && ./bench.sh )
  ( cd libsodium-fact-cref && ./bench.sh )
  ( cd libsodium-fact-asm && ./bench.sh )
  tail -n3 libsodium-c-cref/benchmarks.log >> bench.tmp
  tail -n3 libsodium-c-asm/benchmarks.log >> bench.tmp
  tail -n3 libsodium-fact-cref/benchmarks.log >> bench.tmp
  tail -n3 libsodium-fact-asm/benchmarks.log >> bench.tmp
done

echo "output written to bench"
