#!/bin/bash

#echo >> benchmarks.log
#date >> benchmarks.log
#./openssl speed -evp aes-256-cbc-hmac-sha1 2>&1 >/dev/null | tee -a benchmarks.log

echo ./openssl s_server -quiet -ssl3 -cipher AES256-SHA \< ../../../../1gb
echo time ./openssl s_client -quiet -ssl3 -cipher AES256-SHA \>/dev/null
