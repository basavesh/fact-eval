#!/bin/bash
set -e

CC=clang-11 CXX=clang++-11 ./config -static enable-ssl3 enable-ssl3-method
make -j4
