#!/usr/bin/env python3

import sys
from statistics import median

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines() if 'cpucycles' in line)

times = [int(line.split()[2].replace(',', '')) for line in lines]
assert(len(times) == 1 * 4 * 5)

fact_ref_enc = times[0::8]
fact_ref_dec = times[1::8]
fact_vec_enc = times[2::8]
fact_vec_dec = times[3::8]

print('benchmark', 'cpucycles', sep='\t')
print("secretbox ref enc", median(fact_ref_enc), sep='\t')
print("secretbox ref dec", median(fact_ref_dec), sep='\t')
print("secretbox vec enc", median(fact_vec_enc), sep='\t')
print("secretbox vec dec", median(fact_vec_dec), sep='\t')
print()
