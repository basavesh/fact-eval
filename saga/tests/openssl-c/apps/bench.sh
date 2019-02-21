#!/bin/bash

#echo >> benchmarks.log
#date >> benchmarks.log
#./openssl speed -evp aes-256-cbc-hmac-sha1 2>&1 >/dev/null | tee -a benchmarks.log

if [[ $# < 1 ]]; then
  echo "need arg" >&2
  exit 1
fi

for x in $(seq 5); do
  ./openssl s_server -ign_eof -quiet -cipher AES256-SHA -cert server.pem < ../../../../$1 &
  serv=$!
  sleep 0.5
  time ./openssl s_client -ign_eof >/dev/null
  kill $serv
done
