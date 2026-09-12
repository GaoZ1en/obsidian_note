"""Exact-rational circular reconstruction used as an independent finite check.
Based on the radial algorithm in GaoZ1en/obsidian_note, commit
3ea676ef5a43cd11a18f551b0adcac222abc8b9a, and the Python implementation
supplied in the preceding audit. No Mathematica/Sage dependency.
Outputs are gamma/G. The optional channel split selects the two same-sign
pairings (annihilation) or four mixed-sign pairings (crossed exchange).
Finite agreement is NOT the all-level proof; that proof is in paper.tex.
The legacy function name `candidate` is retained for the total closed formula.
"""
from fractions import Fraction as F
from math import factorial, comb
from functools import lru_cache
from itertools import combinations
import argparse, json, time

def rf(a,k):
    z=F(1)
    for j in range(k): z*=a+j
    return z

def padd(a,b):
    out=[F(0)]*max(len(a),len(b))
    for i,v in enumerate(a):out[i]+=v
    for i,v in enumerate(b):out[i]+=v
    return out

def scale(a,b):return [b*v for v in a]
def mul(a,b):
    out=[F(0)]*(len(a)+len(b)-1)
    for i,v in enumerate(a):
        for j,w in enumerate(b):out[i+j]+=v*w
    return out

def reconstruct(maxlevel,delta,channel="all"):
    if channel not in {"all", "cross", "s"}:
        raise ValueError("channel must be all, cross, or s")
    d=F(delta)
    if d <= 1:
        raise ValueError("Standard source-free quantization requires Delta > 1.")
    if not isinstance(maxlevel, int) or maxlevel < 0:
        raise ValueError("maxlevel must be a nonnegative integer.")
    shifts={}; diagnostics=[]
    @lru_cache(None)
    def pol(n):
        return [rf(d,n)/factorial(n)*rf(-n,k)*rf(n+d,k)/rf(d,k)/factorial(k) for k in range(n+1)]
    @lru_cache(None)
    def kin(i,j,sg):
        a=[(d/2+k)*v for k,v in enumerate(pol(i))]
        b=[(d/2+k)*v for k,v in enumerate(pol(j))]
        return padd(scale(mul([F(1),F(-1)],mul(a,b)),4),
                    [F(0)]+scale(mul(pol(i),pol(j)),-sg*(d+2*i)*(d+2*j)))
    @lru_cache(None)
    def primitive(i,j,sg):
        ab=padd(kin(i,j,sg),scale(mul(pol(i),pol(j)),d*(d-2)))
        return [v/(d-1+k) for k,v in enumerate(ab)]
    def moment(a,power):return sum((v/(power+k) for k,v in enumerate(a)),F(0))
    @lru_cache(None)
    def pair(i,j,sg,k,l,tg):
        a,b=kin(i,j,sg),primitive(k,l,tg)
        return sum(b)*moment(a,d)-moment(mul(a,b),2*d-1)
    def rad_tilde(ij,kl):
        legs=[(ij[0],-1),(ij[1],-1),(kl[0],1),(kl[1],1)]
        out=F(0)
        for ab in combinations(range(4),2):
            if channel == "s" and legs[ab[0]][1]!=legs[ab[1]][1]: continue
            if channel == "cross" and legs[ab[0]][1]==legs[ab[1]][1]: continue
            cd=[v for v in range(4) if v not in ab]
            (i,s1),(j,s2)= [legs[t] for t in ab]
            (k,s3),(l,s4)= [legs[t] for t in cd]
            out-=pair(i,j,s1*s2,k,l,s3*s4)
        return out
    for N in range(maxlevel+1):
        @lru_cache(None)
        def q(k,p):
            return sum((rf(-k,a)*rf(k+2*d-1,a)*rf(-p,a)/
                        (rf(d,a)*rf(-N,a)*factorial(a)) for a in range(min(k,p)+1)),F(0))
        w=[comb(N,p)*rf(d,p)*rf(d,N-p)/rf(2*d,N) for p in range(N+1)]
        h=[sum(w[p]*q(k,p)**2 for p in range(N+1)) for k in range(N+1)]
        rs=list(range(N//2+1)); ks=list(range(N,-1,-2)); sz=len(rs)
        stwo=[F(2,1+(2*r==N)) for r in rs]
        R=[]
        for r in rs:
            row=[]
            for s in rs:
                old=sum((w[r]*w[s]*q(k,r)*q(l,r)*q(k,s)*q(l,s)*
                    shifts[(min(k,l),abs(k-l))]/(h[k]*h[l])
                    for k in range(N) for l in range(N) if (k+l)%2==0),F(0))
                row.append(rad_tilde((r,N-r),(s,N-s))-old)
            R.append(row)
        z=[[stwo[r]*q(k,r)/q(N,r) for k in ks] for r in rs]
        trans=[[sum((z[r][a]*R[r][s]*z[s][b] for r in rs for s in rs),F(0))
                 for b in range(sz)] for a in range(sz)]
        assert all(trans[a][b]==0 for a in range(sz) for b in range(sz) if a!=b),(d,N,trans)
        for a,k in enumerate(ks):shifts[(k,N-k)]=h[N]/h[k]*trans[a][a]/(2-(k==N))
        assert all(sum(w[p]*q(k,p)*q(l,p) for p in range(N+1))==(h[k] if k==l else 0)
                   for k in range(N+1) for l in range(N+1)), ('orthogonality',d,N)
        diagnostics.append({'level':N,'offdiag_zero':True,'orthogonality':True})
    return shifts,diagnostics

def candidate(n,spin,d):
    d=F(d); h=d+n; mu=d*(d-2); c=h*(h-1)
    base=-4*(d*d+2*n*(2*d+n-1))
    if spin==0:
        if n == 0:
            # Use the simplified ground-state expression.  The compact
            # all-n candidate has a removable 0/0 at n=0, Delta=3/2.
            return 2*d*d*(7+2*d-8*d*d)/(4*d*d-1)
        return base+2*(15*c*c-(12+10*mu)*c-mu*mu+6*mu)/((2*h-3)*(2*h-1)*(2*h+1))
    if spin==2:
        return base+F((2*d+n)*(2*d+n-1)*(n+1)*(n+2))/((2*d+2*n-1)*(2*d+2*n+1)*(2*d+2*n+3))
    return base

