#!/bin/bash
set -e

OBJ_DIR=../..
SSL3_H=$OBJ_DIR/obj/s3_cbc.O3.h
SSL3_S=$OBJ_DIR/obj/s3_cbc.O3.s

# copy FaCT port
cp $SSL3_H ssl/fact_s3_cbc.h
cp $SSL3_S ssl/_s3_cbc.s

# (re)compile with fact stubbed in
touch ssl/s3_cbc.c

# configure and build
CC=clang-11 CXX=clang++-11 CFLAGS=-mspeculative-load-hardening CXXFLAGS=-mspeculative-load-hardening ./config -static enable-ssl3 enable-ssl3-method
make -j4
