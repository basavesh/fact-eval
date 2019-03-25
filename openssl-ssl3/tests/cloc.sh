#!/bin/bash
set -eu

function count() {
  cloc --force-lang=c++ --csv "$@" | tail -n1 | cut -d, -f5
}

FACTSRC=../s3_cbc.fact
CSRC=openssl-fact/ssl/s3_cbc.c

cstart=$(grep -n '>> replacing >>' $CSRC | cut -d: -f1)
cend=$(grep -n '<< replacing <<' $CSRC | cut -d: -f1)
cat << EOF > function_map.md

#### s3_cbc.fact
Definition | FaCT | C
--- | --- | ---
(full implementation) | [s3_cbc.fact](/openssl-ssl3/s3_cbc.fact) | [ssl/s3_cbc.c:${cstart}-${cend}](/openssl-ssl3/tests/ssl/openssl-fact/s3_cbc.c#L${cstart}-L${cend})
EOF

cloc=$(sed -e '1,/>> replacing >>/d' -e '/<< replacing <</,$d' $CSRC | count -)
factloc=$(count $FACTSRC)

na=$(grep -w assume $FACTSRC | wc -l)
nd=$(grep -w declassify $FACTSRC | wc -l)
ne=$(grep -w extern $FACTSRC | wc -l)

echo -e "openssl-ssl3\t$cloc\t$factloc\t$na\t$nd\t$ne"
