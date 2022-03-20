#!/usr/bin/env python3

import sys
from statistics import median

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines())
    lines = (line for line in lines if 'donna-fact' in line)

times = [float(line.split(',')[1].replace('us', '')) for line in lines]
assert(len(times) == 1 * 5)

fact = times[0::2]

print('benchmark', 'cpucycles', sep='\t')
print("donna", median(fact) , sep='\t')
print()
