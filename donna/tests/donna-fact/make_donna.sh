#!/bin/bash
set -e

DONNA=$PWD
OBJ_DIR=../..
DONNA_O=$OBJ_DIR/obj/curve25519-c64.O2.o
if [[ "$1" == "unopt" ]]; then
  DONNA_O=$OBJ_DIR/obj/curve25519-c64.o
fi

# copy FaCT port
cp $DONNA_O $DONNA/curve25519-donna-fact64.o

# (re)compile with fact stubbed in
make test -j4
make speed -j4
