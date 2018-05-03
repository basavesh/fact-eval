#!/bin/bash

./openssl s_server -cert server.pem -www -ssl3 >/dev/null 3>server.time &
serv=$!
./openssl s_time -connect localhost:4433 -www / -new -ssl3 -cipher AES256-SHA -time 5 >/dev/null 3>client.time
kill $serv
