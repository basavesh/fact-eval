#!/bin/bash
set -e

OPENSSL=$PWD
OBJ_DIR=../..
SAGA_H=$OBJ_DIR/obj/20170717_latest.O3.h
SAGA_S=$OBJ_DIR/obj/20170717_latest.O3.s
if [[ "$1" == "unopt" ]]; then
  SAGA_H=$OBJ_DIR/obj/20170717_latest.h
  SAGA_S=$OBJ_DIR/obj/20170717_latest.s
fi

cp $SAGA_H $OPENSSL/crypto/evp/fact_aes_cbc_hmac_sha1_decrypt.h
cp $SAGA_S $OPENSSL/crypto/evp/e_aes_cbc_hmac_sha1_decrypt.s

CC=clang-11 CXX=clang++-11 CFLAGS=-mspeculative-load-hardening CXXFLAGS=-mspeculative-load-hardening ./config -static enable-ssl3 enable-ssl3-method
make -j4
