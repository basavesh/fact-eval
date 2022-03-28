#!/usr/bin/env python3

import sys
import numpy as np

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines() if 'cpucycles' in line)

times = [int(line.split()[2].replace(',', '')) for line in lines]
assert(len(times) == 1 * 4 * 10)

fact_ref_enc = times[0::4]
fact_ref_dec = times[1::4]
fact_vec_enc = times[2::4]
fact_vec_dec = times[3::4]


print('benchmark', 'cpucycles(25, 50, 75 percentile)', sep='\t\t')
print("secretbox ref enc", np.percentile(fact_ref_enc, [25, 50, 75]), sep='\t')
print("secretbox ref dec", np.percentile(fact_ref_dec, [25, 50, 75]), sep='\t')
print("secretbox vec enc", np.percentile(fact_vec_enc, [25, 50, 75]), sep='\t')
print("secretbox vec dec", np.percentile(fact_vec_dec, [25, 50, 75]), sep='\t')
print()
