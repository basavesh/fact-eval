#!/usr/bin/env python3

import sys
from statistics import median

fname = 'bench' if len(sys.argv) <= 1 else sys.argv[1]

with open(fname) as f:
    lines = (line.strip() for line in f.readlines())
    lines = (line for line in lines if line.endswith('us'))

times = [float(line.split(',')[1].replace('us', '')) for line in lines]
assert(len(times) == 2 * 5)

c = times[0::2]
fact = times[1::2]

print('benchmark', '% overhead of fact', sep='\t')
print("donna", (median(fact) / median(c) - 1) * 100, sep='\t')
