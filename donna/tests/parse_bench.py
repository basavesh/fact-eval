#!/usr/bin/env python3

import sys
import numpy as np

assert(len(sys.argv) > 1)

fname = sys.argv[1]
uname = sys.argv[2] if len(sys.argv) > 2 else None

with open(fname) as f:
    lines = (line.strip() for line in f.readlines())
    lines = (line for line in lines if 'donna-fact' in line)

times = [float(line.split(',')[1].replace('us', '')) for line in lines]
assert(len(times) == 1 * 10)

fact = times[0::1]

print('benchmark', 'cpucycles(25, 50, 75 percentile)', sep='\t')
print("donna", np.percentile(fact, [25, 50, 75]) , sep='\t\t')
print()
