#!/usr/bin/env python3

from os import path
import subprocess

with open('../function_map.txt') as f:
    lines = [l.strip() for l in f.read().split('\n')]

md = open('function_map.md', 'w')
def markdown(*args, **kwargs):
    print(*args, **kwargs, file=md)

basefact = '/crypto_secretbox/'
basetests = path.join(basefact, 'tests/')
basedir = lines[0][2:]
curfact = None

for line in lines[1:]:
    if not line:
        continue
    if line.endswith('.fact:'):
        curfact = line[:-1]
        markdown()
        markdown('####', curfact)
        markdown('Definition | FaCT | C')
        markdown('--- | --- | ---')
    else:
        factfn, cfn = (t.strip() for t in line.split('|'))
        res = subprocess.run(['grep', '-n', '-w', factfn, path.join('../', curfact)], stdout=subprocess.PIPE)
        lineno = int(res.stdout.split(b'\n')[0].split(b':')[0])
        res = subprocess.run(['grep', '-n', '^}', path.join('../', curfact)], stdout=subprocess.PIPE)
        endlines = res.stdout.split(b'\n')
        endlines = (l.split(b':')[0] for l in endlines)
        endlines = (int(l) for l in endlines)
        lineend = next(l for l in endlines if l > lineno)

        if cfn == '<no analogue>':
            clinkname = ''
            clink = '(no analogue)'
        elif ':' in cfn:
            cbase, cline = cfn.split(':')
            cline = int(cline)
            res = subprocess.run(['grep', '-n', '^}', path.join(basedir, cbase)], stdout=subprocess.PIPE)
            clines = res.stdout.split(b'\n')
            clines = (l.split(b':')[0] for l in clines)
            clines = (int(l) for l in clines)
            cend = next(l for l in clines if l > cline)
            clinkname = str.format('{}:{}-{}', cbase, cline, cend)
            clink = str.format('{}#L{}-L{}', path.join(basetests, basedir, cbase), cline, cend)
            # subprocess stdout is our stdout
            subprocess.run(['sed', \
                    '-e', str.format('1,{}d', cline-1), \
                    '-e', str.format('{},$d', cend+1), path.join(basedir, cbase)])
        else:
            clinkname = cfn
            clink = path.join(basetests, basedir, cfn)
            # subprocess stdout is our stdout
            subprocess.run(['cat', path.join(basedir, cfn)])

        flinkname = str.format('{}:{}-{}', curfact, lineno, lineend)
        flink = str.format('{}#L{}-L{}', path.join(basefact, curfact), lineno, lineend)
        markdown(str.format('{} | [{}]({}) | ', factfn, flinkname, flink), end='')
        if clinkname:
            markdown(str.format('[{}]({})', clinkname, clink))
        else:
            markdown(clink)

md.close()
