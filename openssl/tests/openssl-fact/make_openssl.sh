#!/bin/bash
set -e

OPENSSL=$PWD
OBJ_DIR=../..

# copy FaCT port
cp $OBJ_DIR/obj/s3_cbc.O2.h $OPENSSL/ssl/fact_s3_cbc.h
cp $OBJ_DIR/obj/s3_cbc.O2.s $OPENSSL/ssl/_s3_cbc.s

# (re)compile with fact stubbed in
cd $OPENSSL
touch ssl/s3_cbc.c
cd $OPENSSL
make -j4
