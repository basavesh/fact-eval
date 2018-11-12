#!/bin/bash
set -x

for x in dut_*; do
  stdbuf -oL timeout 10m ./$x | tee res_${x#dut_}
done
