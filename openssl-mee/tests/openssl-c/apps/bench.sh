#!/bin/bash

if [[ $# < 1 ]]; then
  echo "need arg" >&2
  exit 1
fi

echo >> benchmarks.log
date >> benchmarks.log
echo $1 >> benchmarks.log

for x in $(seq 5); do
  echo >>benchmarks.log
  echo $x >>benchmarks.log
  ./openssl s_server -ign_eof -quiet -cipher AES256-SHA -cert server.pem < ../../../../$1 &
  serv=$!
  sleep 0.5
  { time ./openssl s_client -ign_eof >/dev/null 2>/dev/null ; } 2>> benchmarks.log
  kill $serv
done
