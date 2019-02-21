#!/bin/bash

for x in $(seq 5); do
  ./openssl s_server -ign_eof -quiet -ssl3 -cipher AES256-SHA -cert server.pem < ../../../../4gb &
  serv=$!
  sleep 0.5
  time ./openssl s_client -ign_eof >/dev/null
  kill $serv
done
