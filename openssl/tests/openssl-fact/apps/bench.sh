#!/bin/bash

echo ./openssl s_server -quiet -ssl3 -cipher AES256-SHA \< ../../../../1gb
echo time ./openssl s_client -quiet -ssl3 -cipher AES256-SHA \>/dev/null
