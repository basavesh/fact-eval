#!/bin/bash
set -e

OPENSSL=$PWD

CC=clang-11 CXX=clang++-11 CFLAGS=-mspeculative-load-hardening CXXFLAGS=-mspeculative-load-hardening ./config -static enable-ssl3 enable-ssl3-method
make -j4
