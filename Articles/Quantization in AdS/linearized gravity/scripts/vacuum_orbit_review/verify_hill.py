"""Hill-Schur identity for an exact circle diffeomorphism, expanded to epsilon^4.
Uses Fourier algebra, not finite matrix diagonalization; all required paths kept.
"""
from collections import defaultdict
from fractions import Fraction as F
import sympy as s
from pathlib import Path
import json

def plus(a,b,fac=1):
    o=dict(a)
    for k,v in b.items():o[k]=o.get(k,0)+fac*v
    return {k:s.expand(v) for k,v in o.items() if s.expand(v)!=0}
def mul(a,b):
    o=defaultdict(lambda:0)
    for i,x in a.items():
        for j,y in b.items():o[i+j]+=x*y
    return {k:s.expand(v) for k,v in o.items() if s.expand(v)!=0}
def der(a):return {k:-s.I*k*v for k,v in a.items() if k!=0}
def sc(a,v):return {k:s.expand(v*x) for k,x in a.items() if v*x!=0}
def prod(a,b,R):
    o=[{} for _ in range(R+1)]
    for n in range(R+1):
        for j in range(n+1):o[n]=plus(o[n],mul(a[j],b[n-j]))
    return o
R=4
# f(x)=x+epsilon(sin(2x)/5+cos(3x)/7), Fourier convention exp(-inx).
w={2:s.I/10,-2:-s.I/10,3:s.Rational(1,14),-3:s.Rational(1,14)}
dw=der(w);ddw=der(dw);dddw=der(ddw)
inv=[{0:1}]
for j in range(1,R+1):inv.append(sc(mul(inv[-1],dw),-1))
ff=[{0:1},dw]+[{} for _ in range(R-1)]
f2=prod(ff,ff,R)
term1=prod([{},dddw]+[{} for _ in range(R-1)],inv,R)
u=prod([{},ddw]+[{} for _ in range(R-1)],inv,R)
u2=prod(u,u,R)
# T here is dimensionless V=(6/c)H, not the physical stress tensor.
T=[plus(sc(f2[j],-s.Rational(1,4)),sc(term1[j],-s.Rational(1,2))) for j in range(R+1)]
T=[plus(T[j],sc(u2[j],s.Rational(3,4))) for j in range(R+1)]
T[0]=plus(T[0],{0:s.Rational(1,4)})
assert T[0]=={}
# Index half-integer k by odd integer 2k. R=4, max harmonic of f correction=3.
Q=[k for k in range(-2*3*R-1,2*3*R+2,2) if abs(k)!=1]
checks=0
for b in (-1,1):
    psi=[{b:1}]
    for r in range(1,R+1):
        out={}
        for k in Q:
            v=0
            for d in range(1,r+1):
                for l,a in psi[r-d].items():v+=T[d].get((k-l)//2,0)*a
            if v!=0:out[k]=s.expand(-4*v/(k*k-1))
        psi.append(out)
    for a in (-1,1):
        for r in range(1,R+1):
            v=sum(T[d].get((a-l)//2,0)*z for d in range(1,r+1) for l,z in psi[r-d].items())
            assert s.expand(v)==0,(a,b,r,s.expand(v))
            checks+=1
# Selfconsistent low modes for arbitrary single pair H_{+-2}, lambda=6/c.
a,b=s.symbols('a b');V={2:a,-2:b}; low={}
# Build psi and Schur coefficient order by order, filling H0 coefficient from previous Schur order.
Tphys=[{},V];psi_by_b={}
coeff=[]
for n in range(2,5):
    # New constant term at potential order n: alpha_n, fixed by Schur residual.
    Tphys.append({})
    sch={}
    for col in (-1,1):
        ps=[{col:1}]
        for r in range(1,n):
            out={}
            for k in Q:
                value=sum(Tphys[d].get((k-l)//2,0)*z for d in range(1,r+1) for l,z in ps[r-d].items())
                if value!=0:out[k]=s.expand(-4*value/(k*k-1))
            ps.append(out)
        for row in (-1,1):
            val=sum(Tphys[d].get((row-l)//2,0)*z for d in range(1,n) for l,z in ps[n-d].items())
            sch[(row,col)]=s.expand(val)
    assert sch[(1,-1)]==sch[(-1,1)]==0
    assert sch[(1,1)]==sch[(-1,-1)]
    value=s.expand(-sch[(1,1)]);Tphys[n]={0:value};coeff.append(str(value))
result={'exact_diffeomorphism_Hill_Schur_checks_to_epsilon4':checks,'single_pair_H0_coefficients_lambda1_to_lambda3':coeff,'warning':'H0 physical is potential constant divided by lambda; pair H+-2 held fixed.'}
Path(__file__).with_name('hill_checks.json').write_text(json.dumps(result,indent=2));print(result)
