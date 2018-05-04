#!/bin/bash
set -e

# IMPORTANT this file assumes that it is being run from the libsodium root directory
# also it assumes that you've already built the object files in port/crypto_secretbox

LIBSODIUM=$PWD
OBJ_DIR=$(readlink -f ../..)

CC=clang-6.0 ./configure --enable-asm=no

# build libsodium
make -j4

cd test/default

# run tests
cp cmptest.h.orig cmptest.h
for box in secretbox{,2,7,8}; do
  touch $box.c
  make $box.log
  cat $box.log
done
