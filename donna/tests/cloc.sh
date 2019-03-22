#!/bin/bash
set -eu

function count() {
  cloc --force-lang=c++ --csv "$@" | tail -n1 | cut -d, -f5
}

FACTSRC=../curve25519-c64.fact

cloc=$(count donna-c/curve25519-donna-c64.c)
factloc=$(count $FACTSRC)

na=$(grep -w assume $FACTSRC | wc -l)
nd=$(grep -w declassify $FACTSRC | wc -l)
ne=$(grep -w extern $FACTSRC | wc -l)

echo -e "donna\t$cloc\t$factloc\t$na\t$nd\t$ne"
