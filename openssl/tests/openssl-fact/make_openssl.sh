#!/bin/bash
set -e

OBJ_DIR=../..

# copy FaCT port
cp $OBJ_DIR/obj/s3_cbc.O2.h ssl/fact_s3_cbc.h
cp $OBJ_DIR/obj/s3_cbc.O2.s ssl/_s3_cbc.s

# (re)compile with fact stubbed in
touch ssl/s3_cbc.c

# configure and build
CC=clang-6.0 CXX=clang++-6.0 ./config -static enable-ssl3 enable-ssl3-method
make -j4
