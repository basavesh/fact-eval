#!/bin/bash

dd if=/dev/urandom of=64mb  bs=4M   count=16 iflag=fullblock
dd if=/dev/urandom of=256mb bs=16M  count=16 iflag=fullblock
dd if=/dev/urandom of=1gb   bs=16M  count=64 iflag=fullblock
dd if=/dev/urandom of=4gb   bs=64M  count=64 iflag=fullblock
