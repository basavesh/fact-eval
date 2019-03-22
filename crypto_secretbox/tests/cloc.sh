#!/bin/bash
set -eu

function count() {
  cloc --force-lang=c++ --csv "$@" | tail -n1 | cut -d, -f5
}

FACTSRC=../*.fact

cloc=$(python3 csrc.py | count -)
factloc=$(count $FACTSRC)

na=$(grep -w assume $FACTSRC | wc -l)
nd=$(grep -w declassify $FACTSRC | wc -l)
ne=$(grep -w extern $FACTSRC | wc -l)

echo -e "secretbox\t$cloc\t$factloc\t$na\t$nd\t$ne"
