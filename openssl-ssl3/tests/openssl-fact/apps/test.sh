#!/bin/bash

./openssl s_server -cert server.pem -www -ssl3 3>/dev/null &
serv=$!
./openssl s_time -connect localhost:4433 -www / -new -ssl3 -cipher AES256-SHA -time 5 3>/dev/null
kill $serv
