#!/bin/bash

if [[ $# < 1 ]]; then
    echo "need arg" >&2
    exit 1
fi

rm -f benchmarks.log
#./openssl s_server -quiet -cipher AES256-SHA -cert server.pem -no_tls1_3 >/dev/null &
#serv=$!
#sleep 2
echo $1
for x in $(seq 100); do
    ./openssl s_client -no_tls1_3  < ../../../../$1 >/dev/null 2>/dev/null
done
#kill $serv
