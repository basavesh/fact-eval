#!/bin/bash
set -e

CC=clang-6.0 CXX=clang++-6.0 ./config -static enable-ssl3 enable-ssl3-method
make -j4
