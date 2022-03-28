#!/usr/bin/env python3

import sys
import numpy as np

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines())

cpucycles = [line for line in lines]
cpucycles = [int(x) for x in cpucycles]

assert(len(cpucycles) == 50)

print('benchmark', 'cpucycles', sep='\t\t\t')
print('openssl-mee 25 percentile', np.percentile(cpucycles, 25), sep='\t')
print('openssl-mee 50 percentile', np.percentile(cpucycles, 50), sep='\t')
print('openssl-mee 75 percentile', np.percentile(cpucycles, 75), sep='\t')
print()
