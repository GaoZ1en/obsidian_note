"""Exact off-shell two-oscillator CCR test of all 2+2 quartic coefficients.
This is an algebra test, not an additional AdS example. Arbitrary symmetric real
cubic tensor, unequal frequencies, independent contraction-product implementation.
"""
from sage.all import QQ, binomial, factorial
from itertools import product, combinations_with_replacement
from pathlib import Path
import json
ROOT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective')
w=(2,5)
g={(0,0,0):QQ(1),(0,0,1):QQ(2),(0,1,1):QQ(3),(1,1,1):QQ(4)}
def vertex(*indices): return g[tuple(sorted(indices))]
V={}
for inds in product(range(2),repeat=3):
    for sigs in product(range(2),repeat=3):
        cre=[0,0];ann=[0,0]
        for i,s in zip(inds,sigs):
            (cre if s else ann)[i]+=1
        key=(tuple(cre),tuple(ann))
        V[key]=V.get(key,QQ(0))+vertex(*inds)/6
S={}
for (cre,ann),v in V.items():
    defect=sum(w[i]*(cre[i]-ann[i]) for i in range(2))
    assert defect
    S[(cre,ann)]=v/defect

def multiply(A,B):
    out={}
    for (c,a),u in A.items():
        for (d,b),v in B.items():
            for rr in product(*(range(min(a[i],d[i])+1) for i in range(2))):
                factor=QQ(1)
                for i in range(2):
                    factor*=binomial(a[i],rr[i])*binomial(d[i],rr[i])*factorial(rr[i])
                key=(tuple(c[i]+d[i]-rr[i] for i in range(2)),
                     tuple(a[i]+b[i]-rr[i] for i in range(2)))
                out[key]=out.get(key,QQ(0))+u*v*factor
    return out
SV=multiply(S,V);VS=multiply(V,S)
W={key:(SV.get(key,0)-VS.get(key,0))/2 for key in SV.keys() | VS.keys()}
W={key:val for key,val in W.items() if val}
assert all(sum(c)+sum(a) in (0,2,4) for c,a in W)

def R(Omega,a): return QQ(2*w[a])/QQ(Omega**2-w[a]**2)
def kernel(i,j,k,l):
    total=QQ(0)
    for a in range(2):
        total+=vertex(a,i,j)*vertex(a,k,l)*(R(w[i]+w[j],a)+R(w[k]+w[l],a))/2
        total+=vertex(i,k,a)*vertex(l,j,a)*(R(w[i]-w[k],a)+R(w[j]-w[l],a))/2
        total+=vertex(i,l,a)*vertex(k,j,a)*(R(w[i]-w[l],a)+R(w[j]-w[k],a))/2
    return total
checks=[]
for (i,j),(k,l) in product(combinations_with_replacement(range(2),2),repeat=2):
    cre=tuple((i,j).count(a) for a in range(2))
    ann=tuple((k,l).count(a) for a in range(2))
    divisor=QQ(1)
    for a in range(2): divisor*=factorial(cre[a])*factorial(ann[a])
    predicted=kernel(i,j,k,l)/divisor
    actual=W.get((cre,ann),QQ(0))
    assert predicted==actual
    checks.append({'out':[i,j],'in':[k,l],'normal_monomial_coefficient':str(actual),'passed':True})
report={'frequencies':w,'symmetric_cubic_tensor':{str(key):str(value) for key,value in g.items()},
        'degrees_remaining_in_half_commutator':sorted(set(sum(c)+sum(a) for c,a in W)),
        'quartic_22_checks':checks,'all_assertions_passed':True}
text=json.dumps(report,indent=2)
(ROOT/'independent_sw_algebra_results.json').write_text(text+'\n',encoding='utf-8')
print(text)
