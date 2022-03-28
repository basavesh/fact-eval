#!/bin/bash

function yesno() {
  read -p "Continue? (y/N): " -r
  [[ $REPLY =~ ^[Yy] ]]
  return $?
}

echo 'I need to create ~5.25gb of random data for the benchmarks'
if yesno ; then
  dd if=/dev/zero of=64mb  bs=4M   count=16 iflag=fullblock
  dd if=/dev/zero of=256mb bs=16M  count=16 iflag=fullblock
  dd if=/dev/zero of=1gb   bs=16M  count=64 iflag=fullblock
  dd if=/dev/zero of=4gb   bs=64M  count=64 iflag=fullblock
else
  exit 1
fi
