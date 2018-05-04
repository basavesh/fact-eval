#!/bin/bash
set -e

# IMPORTANT this file assumes that it is being run from the libsodium root directory
# also it assumes that you've already built the object files in port/crypto_secretbox

LIBSODIUM=$PWD
OBJ_DIR=$(readlink -f ../..)

cd test/default

cp cmptest.h.bench cmptest.h

echo >> ../../benchmarks.log
date >> ../../benchmarks.log
echo "C implementation, asm: yes" >> ../../benchmarks.log
for box in secretbox{,2}; do
  touch $box.c
  echo -n "Benchmark ($box): " | tee -a ../../benchmarks.log
  make $box.log >/dev/null
  echo $(grep -E '^[[:digit:],]+$' $box.log) "picoseconds" | tee -a ../../benchmarks.log
done
