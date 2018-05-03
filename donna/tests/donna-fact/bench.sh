#!/bin/bash

echo >> benchmarks.log
date >> benchmarks.log
./speed-curve25519-donna-c64 | tee -a benchmarks.log
