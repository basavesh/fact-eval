#!/bin/bash
set -e

# IMPORTANT this file assumes that it is being run from the libsodium root directory
# also it assumes that you've already built the object files in port/crypto_secretbox

LIBSODIUM=$PWD
OBJ_DIR=$(readlink -f ../..)

CC=clang-6.0 ./configure --enable-asm=no

cp $OBJ_DIR/obj/crypto_secretbox.cref.O2.h src/libsodium/include/sodium/fact_secretbox.h

# (re)compile with fact stubbed in
cd $LIBSODIUM/src/libsodium
touch crypto_secretbox/crypto_secretbox.c
rm -f crypto_secretbox/*.lo
rm -rf crypto_secretbox/.libs
touch crypto_core/salsa/ref/core_salsa_ref.c
touch crypto_core/hsalsa20/ref2/core_hsalsa20_ref2.c
touch crypto_stream/salsa20/stream_salsa20.c
cd $LIBSODIUM
make -j4

cd $LIBSODIUM/src/libsodium/crypto_secretbox
# copy the object files
cp $OBJ_DIR/obj/crypto_secretbox.cref.O2.o crypto_secretbox.o
cp $OBJ_DIR/obj/crypto_secretbox.cref.O2.fpic.o crypto_secretbox.fpic.o
cp libsodium_la-crypto_secretbox.o secretbox.o
ld -r secretbox.o crypto_secretbox.o -o libsodium_la-crypto_secretbox.o

# libsodium hides more object files in hidden directories
cd .libs
cp libsodium_la-crypto_secretbox.o secretbox.o
ld -r secretbox.o ../crypto_secretbox.fpic.o -o libsodium_la-crypto_secretbox.o

# build libsodium with new object files
cd $LIBSODIUM
touch src/libsodium/crypto_secretbox/libsodium_la-crypto_secretbox.lo
make -j4

cd test/default

# run tests
cp cmptest.h.orig cmptest.h
for box in secretbox{,2,7,8}; do
  touch $box.c
  make $box.log
  cat $box.log
done
