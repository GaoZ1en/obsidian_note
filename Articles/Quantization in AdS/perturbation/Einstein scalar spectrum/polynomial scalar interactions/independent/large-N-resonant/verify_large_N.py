#!/usr/bin/env sage -python
"""Complete phi6 resonant large-N checks. Run with Sage 10.9.

All generated output stays beside this script.  The existing vertex primitive
is imported read-only; the occupation-action enumerator below is independent of
contact_blocks.stripped_entry/contact_matrix.  It includes 2<->4 and 3<->3.
The 1<->5 channel is identically zero by Jacobi orthogonality.
"""
from collections import Counter
from functools import lru_cache
from itertools import combinations_with_replacement
from pathlib import Path
import json
import sys
from sage.all import QQ, ZZ, factorial, prod, diagonal_matrix

HERE = Path(__file__).resolve().parent
R = HERE.parents[1]
sys.dont_write_bytecode = True  # imported source remains strictly read-only
sys.path.insert(0, str(R / 'code'))
import contact_blocks as cb

D = QQ(2)
ZERO = (0, 0)


def falling(n, k):
    return prod(ZZ(n-j) for j in range(k))


def omega(i):
    return 2+i[0]+i[1]


def nzero(N, excited):
    e = sum(map(omega, excited))
    if e % 2:
        raise ValueError('This test uses E=2N,J=0')
    return N-e//2


@lru_cache(None)
def creators(r, energy, angular):
    if (energy-2*r+angular) % 2 or (energy-2*r-angular) % 2:
        return ()
    p, q = (energy-2*r+angular)//2, (energy-2*r-angular)//2
    return cb.fock_basis(r,p,q) if min(p,q) >= 0 else ()


@lru_cache(None)
def active_vertex(cre, ann):
    """Radial integral and creator/annihilator factorials in algebra basis."""
    cc, ac = Counter(cre), Counter(ann)
    radial = cb.radial_moment(D, tuple(sorted(cre+ann)))
    fac = prod(cb.weight(D,max(i))**m/factorial(m) for i,m in cc.items())
    fac *= prod(1/(factorial(m)*cb.weight(D,min(i))**m) for i,m in ac.items())
    return radial*fac


def action(N, excited):
    """Column of A=K/c6 at E=2N,J=0; key omits ground occupants."""
    src = Counter(excited)
    src[ZERO] = nzero(N, excited)
    result = Counter()
    for s in (2,3,4):
        r = 6-s
        for ann in combinations_with_replacement(sorted(src), s):
            ac = Counter(ann)
            if any(ac[i] > src[i] for i in ac):
                continue
            energy = sum(map(omega,ann))
            angular = sum(p-q for p,q in ann)
            fall = prod(falling(src[i],m) for i,m in ac.items())
            for cre in creators(r,energy,angular):
                v = active_vertex(cre,ann)*fall
                if not v:
                    continue
                dst = src.copy()
                dst.subtract(ac)
                dst.update(cre)
                dst.pop(ZERO,None)
                key = tuple(sorted(dst.elements()))
                result[key] += v
    return {k:QQ(v) for k,v in result.items() if v}


def centered_action(N, vector):
    out = Counter()
    baseline = falling(N,3)/180
    for excited, coef in vector.items():
        for target, a in action(N,excited).items():
            out[target] += coef*a
        out[excited] -= coef*baseline
    return {k:QQ(v) for k,v in out.items() if v}


def gram_ratio(N, excited):
    n0 = nzero(N,excited)
    return (prod(QQ(factorial(m))/(cb.weight(D,p)*cb.weight(D,q))**m
                 for (p,q),m in Counter(excited).items())
            /prod(ZZ(i) for i in range(n0+1,N+1)))


def inner(N, v, w):
    return sum(c*w.get(k,0)*gram_ratio(N,k) for k,c in v.items())


def run():
    checks = []
    basis = cb.energy_basis(D,8,0)
    A = cb.contact_matrix(D,6,basis)
    index = {tuple(i for i in state if i != ZERO):j for j,state in enumerate(basis)}
    independent = []
    for state in basis:
        ex = tuple(i for i in state if i != ZERO)
        col = action(4,ex)
        independent.append(all(col.get(key,0) == A[i,index[ex]] for key,i in index.items()))
    checks.append({'label':'independent occupation action equals complete E=8 block',
                   'passed':all(independent)})
    G = diagonal_matrix(QQ,cb.gram_diagonal(D,basis))
    checks.append({'label':'complete E=8 Gram self-adjointness','passed':G*A==A.transpose()*G})
    checks.append({'label':'source radial integral is 1/35',
                   'passed':cb.radial_moment(D,tuple(sorted((ZERO,)*5+((2,2),))))==QQ(1)/35})
    checks.append({'label':'one-to-five radial integral is zero',
                   'passed':cb.radial_moment(D,tuple(sorted((ZERO,)*5+((4,4),))))==0})
    moment_rows=[]
    for N in (4,10,30,100,1000):
        v0={():QQ(1)}
        v1=centered_action(N,v0)
        v2=centered_action(N,v1)
        m2=inner(N,v1,v1)
        m3=inner(N,v1,v2)
        m4=inner(N,v2,v2)
        predicted=falling(N,4)*(N+QQ(17)/2)/840**2
        checks.append({'label':f'exact variance formula at N={N}','passed':m2==predicted})
        moment_rows.append({'N':N,'reachable_states_after_one':len(v1),
                            'reachable_states_after_two':len(v2),
                            'm2_standardized_exact':str(m2*840**2/ZZ(N)**5),
                            'm2_standardized':float(m2*840**2/ZZ(N)**5),
                            'm3_standardized':float(m3)*840**3/N**7.5,
                            'm4_standardized_exact':str(m4*840**4/ZZ(N)**10),
                            'm4_standardized':float(m4*840**4/ZZ(N)**10)})
    report={'conventions':'H=lambda*c6*A, c6=1/(8*pi^2); lambda=g/N^2; standardized X=(H-C_N)/(g*sqrt(N)/(6720*pi^2))',
            'checks':checks,'all_passed':all(c['passed'] for c in checks),
            'moments':moment_rows,
            'gaussian_targets':{'m2':1,'m3':0,'m4':3}}
    output=HERE/'verification.json'
    if output.exists():
        raise FileExistsError(str(output))
    output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))


if __name__=='__main__':
    run()
