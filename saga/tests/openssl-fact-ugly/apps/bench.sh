#!/bin/bash

echo >> benchmarks.log
date >> benchmarks.log
./openssl speed -evp aes-256-cbc-hmac-sha1 2>&1 >/dev/null | tee -a benchmarks.log
