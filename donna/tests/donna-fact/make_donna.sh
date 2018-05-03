#!/bin/bash
set -e

DONNA=$PWD
OBJ_DIR=../..

# copy FaCT port
cp $OBJ_DIR/obj/curve25519-c64.o $DONNA/curve25519-donna-fact64.o

# (re)compile with fact stubbed in
make test -j4
make speed -j4
