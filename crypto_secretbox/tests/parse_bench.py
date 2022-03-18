#!/usr/bin/env python3

import sys
from statistics import median

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines() if 'picoseconds' in line)

times = [int(line.split()[2].replace(',', '')) for line in lines]
assert(len(times) == 2 * 4 * 5)

c_ref_enc = times[0::8]
c_ref_dec = times[1::8]
c_vec_enc = times[2::8]
c_vec_dec = times[3::8]
fact_ref_enc = times[4::8]
fact_ref_dec = times[5::8]
fact_vec_enc = times[6::8]
fact_vec_dec = times[7::8]

print('benchmark', '% overhead of fact', sep='\t')
print("secretbox ref enc", (median(fact_ref_enc) / median(c_ref_enc) - 1) * 100, sep='\t')
print("secretbox ref dec", (median(fact_ref_dec) / median(c_ref_dec) - 1) * 100, sep='\t')
print("secretbox vec enc", (median(fact_vec_enc) / median(c_vec_enc) - 1) * 100, sep='\t')
print("secretbox vec dec", (median(fact_vec_dec) / median(c_vec_dec) - 1) * 100, sep='\t')
print()
