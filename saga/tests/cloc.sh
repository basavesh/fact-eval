#!/bin/bash
set -eu

function count() {
  cloc --force-lang=c++ --csv "$@" | tail -n1 | cut -d, -f5
}

FACTSRC=../20170717_latest.fact
CSRC=openssl-fact-ugly/crypto/evp/e_aes_cbc_hmac_sha1.c

cstart=$(grep -n '>> replacing >>' $CSRC | cut -d: -f1)
cend=$(grep -n '<< replacing <<' $CSRC | cut -d: -f1)
cat << EOF > function_map.md

#### 20170717_latest.fact
Definition | FaCT | C
--- | --- | ---
(full implementation) | [20170717_latest.fact](/saga/20170717_latest.fact) | [crypto/evp/e_aes_cbc_hmac_sha1.c:${cstart}-${cend}](/saga/tests/openssl-fact-ugly/crypto/evp/e_aes_cbc_hmac_sha1.c#L${cstart}-L${cend})
EOF

cloc=$(sed -e '1,/>> replacing >>/d' -e '/<< replacing <</,$d' $CSRC | count -)
factloc=$(count $FACTSRC)

na=$(grep -w assume $FACTSRC | wc -l)
nd=$(grep -w declassify $FACTSRC | wc -l)
ne=$(grep -w extern $FACTSRC | wc -l)

echo -e "saga\t$cloc\t$factloc\t$na\t$nd\t$ne"
