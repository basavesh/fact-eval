#!/bin/bash
set -e

# (re)compile
make test -j4
make speed -j4
