"""Exact bounded diagnostics, not a surface-classification or smooth-extension proof."""
from sage.all import *
import json

checks = {}
R = PolynomialRing(QQ, names=('s', 'p', 'x', 'v', 'w'), order='lex')
s, p, x, v, w = R.gens()
I = R.ideal([x*x+s*s-1, v-s*p, w-p*p])
F = (1-x*x)*w-v*v
checks['SU2ExactEliminationIdeal'] = I.elimination_ideal([s, p]) == R.ideal([F])
fac = list(F.factor())
checks['SU2RelationIrreducibleAndReduced'] = len(fac) == 1 and fac[0][1] == 1

def polygon(word):
    n = len(word)
    parent = list(range(n))
    def root(i):
        while parent[i] != i:
            parent[i] = parent[parent[i]]
            i = parent[i]
        return i
    def join(a, b):
        parent[root(a)] = root(b)
    occurrences = {}
    for i, (label, sign) in enumerate(word):
        occurrences.setdefault(label, []).append((i, sign))
    link = Graph(multiedges=True, loops=True)
    link.add_vertices(range(2*n))
    for i in range(n):
        link.add_edge(2*i, 2*i+1)  # incoming to outgoing within one corner
    for pair in occurrences.values():
        assert len(pair) == 2
        (i, si), (j, sj) = pair
        if si == sj:
            join(i, j); join((i+1) % n, (j+1) % n)
            link.add_edge(2*i+1, 2*j+1)
            link.add_edge(2*((i+1) % n), 2*((j+1) % n))
        else:
            join(i, (j+1) % n); join((i+1) % n, j)
            link.add_edge(2*i+1, 2*((j+1) % n))
            link.add_edge(2*((i+1) % n), 2*j+1)
    orbits = {}
    for i in range(n):
        orbits.setdefault(root(i), []).extend([2*i, 2*i+1])
    link_ok = all(link.subgraph(vs).is_connected() and
                  all(d == 2 for d in link.subgraph(vs).degree())
                  for vs in orbits.values())
    labels = list(occurrences)
    d2 = matrix(ZZ, len(labels), 1,
                [sum(sign for _, sign in occurrences[label]) for label in labels])
    return len(orbits), len(orbits)-len(labels)+1, link_ok, d2

for g in range(1, 7):
    word = []
    for j in range(g):
        word += [(f'a{j}', 1), (f'b{j}', 1), (f'a{j}', -1), (f'b{j}', -1)]
    vertices, chi, links, d2 = polygon(word)
    checks[f'OrientableGenus{g}'] = (vertices == 1 and chi == 2-2*g and links
                                    and d2.is_zero())
for r in range(1, 9):
    word = [(f'c{j}', sign) for j in range(r) for sign in (1, 1)]
    vertices, chi, links, d2 = polygon(word)
    diagonal = [abs(v) for v in d2.smith_form(transformation=False).diagonal() if v != 0]
    checks[f'NonorientableCrosscaps{r}'] = (vertices == 1 and chi == 2-r and links
                                           and diagonal == [2] and d2.rank() == 1)

assert all(type(v) is bool for v in checks.values()), 'non-Boolean check'
print(json.dumps({'scope': 'SU2 elimination and 14 finite polygon families',
                  'count': len(checks), 'allPassed': all(checks.values()),
                  'checks': checks}, indent=2))
assert all(checks.values())
