#!/bin/bash
set -e

OPENSSL=$PWD
OBJ_DIR=../..

cp $OBJ_DIR/obj/20170717_latest_raw.h $OPENSSL/crypto/evp/fact_aes_cbc_hmac_sha1_decrypt.h
cp $OBJ_DIR/obj/20170717_latest_raw.O3.s $OPENSSL/crypto/evp/e_aes_cbc_hmac_sha1_decrypt.s

CC=clang-6.0 CXX=clang++-6.0 ./config -static enable-ssl3 enable-ssl3-method
make -j4
