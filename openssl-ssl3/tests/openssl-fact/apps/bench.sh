#!/bin/bash

if [[ $# < 1 ]]; then
  echo "need arg" >&2
  exit 1
fi

rm -f benchmarks.log
#./openssl s_server -ign_eof -quiet -ssl3 -cipher AES256-SHA -cert server.pem >/dev/null &
#serv=$!
#sleep 0.5
for x in $(seq 10); do
  ./openssl s_client -no_tls1_3  < ../../../../$1 >/dev/null 2>/dev/null
done
#kill $serv
