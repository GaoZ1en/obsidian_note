#!/usr/bin/env sage -python
"""Direct independent polynomial checks of the all-mass rank proof's identity.

Does not import channel or Fock code. All arithmetic is exact. The tested
identity is <(y.z)^P,T_r(x.z)^Q>=P!Q! H_(Q-r)(xy) sum_i y_i^(P-Q)(x_i y_i)^r.
"""
import json
from pathlib import Path
from sage.all import *

def rising(a,n):
    return prod(a+j for j in range(n))

def H(delta,t,s):
    return sum(prod(ti**ni/(factorial(ni)*rising(delta,ni))
                    for ti,ni in zip(t,ns)) for ns in IntegerVectors(s,len(t)))

def inner(f,g,delta):
    gd=g.dict()
    return sum(c*gd.get(ns,0)*prod(factorial(ni)/rising(delta,ni) for ni in ns)
               for ns,c in f.dict().items())

checks=[]
for N in [4,5]:
    R=PolynomialRing(QQ,N,'z');zs=R.gens()
    xx=list(range(1,N))+[-sum(range(1,N))]
    yy=[(-1)**i*(i+2) for i in range(N-1)];yy.append(-sum(yy))
    for d in [QQ(3)/2,QQ(2),QQ(11)/7]:
        for P,Q in [(1,1),(2,1),(2,2),(3,1),(3,2),(4,2),(4,3),(5,3)]:
            f=sum(x*z for x,z in zip(xx,zs))**Q
            g=sum(y*z for y,z in zip(yy,zs))**P
            J=P-Q
            for r in range(Q+1):
                op=R.zero()
                for z in zs:
                    temp=f.derivative(z,r)
                    for j in range(J+r):
                        temp=z*z*temp.derivative(z)+d*z*temp
                    op+=temp
                actual=inner(g,op,d)
                expected=factorial(P)*factorial(Q)*H(d,[x*y for x,y in zip(xx,yy)],Q-r)
                expected*=sum(y**J*(x*y)**r for x,y in zip(xx,yy))
                passed=actual==expected
                checks.append({'N':N,'Delta':str(d),'P':P,'Q':Q,'r':r,
                               'passed':bool(passed)})
                assert passed,(N,d,P,Q,r,actual,expected)
out=Path(__file__).resolve().parent/'operator-checks.json'
out.write_text(json.dumps({'count':len(checks),'all_passed':True,'checks':checks},indent=2)+'\n')
print('coherent spectator identities passed',len(checks))
print(out)
