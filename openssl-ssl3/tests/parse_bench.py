#!/usr/bin/env python3

import sys
from statistics import median

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines() if line.startswith('user'))

times = [float(line.split()[1].replace('0m', '').replace('s', '')) for line in lines]
assert(len(times) == 1 * 4 * 5)

fact_256m = times[5:10]
fact_1g = times[10:15]
fact_4g = times[15:20]

print('benchmark', 'cpucycles', sep='\t')
print('openssl-ssl3 256 MB', median(fact_256m), sep='\t')
print('openssl-ssl3 1 GB', median(fact_1g), sep='\t')
print('openssl-ssl3 4 GB', median(fact_4g) , sep='\t')
print()
