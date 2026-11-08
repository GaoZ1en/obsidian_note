#!/usr/bin/env python3
"""Independent contact projection and Einstein+phi4 universality-boundary check.
No manuscript engine is imported. Delta=2 finite contact projections are made
from normalized KG radial modes and free chiral lowering coefficients. The
finite many-particle block is built as differential pair Casimirs on explicitly
symmetric, translation-invariant polynomials, not occupation-engine outputs.
"""
from __future__ import annotations
import argparse
from collections import Counter
from functools import lru_cache
from itertools import combinations
import json
from pathlib import Path
import sys
import time
import sympy as s

y=s.symbols('y',positive=True)
t=s.symbols('t',positive=True)

def clean(v):
    v=s.sympify(v).subs(y,t+1)
    return s.factor(s.cancel(s.powsimp(s.expand_power_base(v,force=True),force=True))).subs(t,y-1)

def require(ok,label):
    if ok is not True:raise RuntimeError(label)

@lru_cache(None)
def radial(p,q):
    n=min(p,q);a=abs(p-q)
    return clean(s.sqrt(s.rf(2+n,a)/s.rf(n+1,a))*(y-1)**s.Rational(a,2)*(y+1)**s.Rational(a,2)*y**(-2-a)*s.jacobi(n,1,a,1-2/y**2))

@lru_cache(None)
def primary_coeff(k,p):
    nk=s.rf(k+3,k)/s.factorial(k)
    return s.simplify((-1)**p*s.rf(2,k)/s.sqrt(nk*s.rf(2,p)*s.rf(2,k-p)*s.factorial(p)*s.factorial(k-p)))

def integral(v):
    ant=s.integrate(clean(v),y,risch=True)
    require(not ant.has(s.Integral),'Unevaluated integral')
    return clean(s.limit(ant,y,s.oo)-s.limit(ant,y,1,dir='+'))

def contact_checks():
    records=[]
    for k in range(5):
      for ell in range(5):
        if (k+ell)%2:continue
        coinc=clean(sum(primary_coeff(k,p)*primary_coeff(ell,q)*radial(p,q)*radial(k-p,ell-q)
                  for p in range(k+1) for q in range(ell+1)))
        target=(-1)**k*y**(-4-2*k) if k==ell else s.S.Zero
        require(clean(coinc-target)==0,f'Coincidence source {k,ell}')
        shift=clean(2*integral(y*coinc**2))
        require(shift==(s.Rational(1,2*k+3) if k==ell else 0),f'Contact coefficient {k,ell}')
        records.append({'k':k,'ell':ell,'coincidence_radial':str(coinc),'delta_gamma_per_alpha':str(shift)})
    # Explicit noncircular integer-Delta number-changing resonance.
    # Incoming (n=2,j=2) has chiral (p,q)=(4,2); outgoing (0,0)^2,(2,0).
    nc=integral(y*radial(0,0)**2*radial(2,0)*radial(4,2))
    require(nc==0,'Contact noncircular 1-to-3 integral')
    return records,str(nc)

def kernel_and_defects():
    n=s.symbols('n',integer=True,nonnegative=True);h=n+2;c=h*(h-1)
    alpha=-s.Rational(40,3)
    ein_eps=8*c/(2*h-1)-2*c*c/((2*h-3)*(2*h-1)*(2*h+1))
    modified=s.factor(ein_eps+alpha/(2*h-1))
    poly=45*n**4+270*n**3+469*n**2+192*n+8
    expected=2*poly/(3*(2*n+1)*(2*n+3)*(2*n+5))
    require(s.cancel(modified-expected)==0,'Positive support polynomial')
    require(all(v>0 for v in s.Poly(poly,n).all_coeffs()),'Positive coefficients')
    e0=s.Rational(16,45);e2=s.Rational(8,35)
    gamma0=-16+e0;gamma2=-16+e2;gamma4=s.Integer(-16)
    slope=s.factor((gamma2-gamma0)/10)
    r4=s.factor(gamma4-gamma0-slope*(30-2))
    r6=s.factor(-16-gamma0-slope*(56-2))
    require(r4==0 and r6==s.Rational(104,315),'Four-generator threshold')
    k=s.symbols('k',integer=True,positive=True)
    rk=s.factor(-16-gamma0-slope*((k+2)*(k+1)-2))
    require(s.factor(rk-s.Rational(4,315)*((k+2)*(k+1)-30))==0,'All higher affine defects')
    return {'alpha':str(alpha),'lambda':str(8*s.pi*alpha),'modified_epsilon0':str(modified),
            'positive_numerator':str(poly),'e0':str(e0),'e2':str(e2),'ratio':str(e2/e0),
            'gamma0':str(gamma0),'gamma2':str(gamma2),'gamma4':str(gamma4),'slope':str(slope),
            'r4':str(r4),'r6':str(r6),'r_k_even_ge4':str(rk)},(gamma0,gamma2,gamma4),slope

def block(N,gammas,slope):
    zs=s.symbols('z0:'+str(N));zbar=sum(zs)/N
    p2=sum((z-zbar)**2 for z in zs);p4=sum((z-zbar)**4 for z in zs)
    basis=[s.expand(p2*p2),s.expand(p4)]
    for f in basis:require(s.expand(sum(s.diff(f,z) for z in zs))==0,'Primary lowering')
    coeff_vectors=[]
    monoms=sorted(set().union(*(set(s.Poly(f,*zs).monoms()) for f in basis)))
    for f in basis:coeff_vectors.append([s.Poly(f,*zs).coeff_monomial(m) for m in monoms])
    require(s.Matrix.hstack(*(s.Matrix(v) for v in coeff_vectors)).rank()==2,'Independent Bose-primary basis')
    Cvals={0:2,2:12,4:30}
    def casimir(f,i,j):
        zi,zj=zs[i],zs[j]
        return s.expand(-(zi-zj)**2*s.diff(f,zi,zj)+2*(zi-zj)*(s.diff(f,zi)-s.diff(f,zj))+2*f)
    def projector(f,i,j,k):
        v=f
        for ell in (0,2,4):
            if ell!=k:v=s.expand((casimir(v,i,j)-Cvals[ell]*v)/(Cvals[k]-Cvals[ell]))
        return v
    expected=s.factor(gammas[0]*N*(N-1)/2+slope*4*(2*N+3))
    tests=[]
    for b,f in enumerate(basis):
        result=0
        for i,j in combinations(range(N),2):
            comps=[projector(f,i,j,k) for k in (0,2,4)]
            require(s.expand(sum(comps)-f)==0,'Pair resolution of identity')
            result+=sum(g*v for g,v in zip(gammas,comps))
        residual=s.expand(result-expected*f)
        require(residual==0,f'Finite N={N}, basis={b} scalar action')
        tests.append(True)
    return {'N':N,'P':4,'Q':0,'basis':['centered_p2_squared','centered_p4'],'dimension':2,
            'eigenvalue':str(expected),'both_basis_residuals_zero':tests}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    start=time.time();contact,nc=contact_checks();data,gammas,slope=kernel_and_defects()
    blocks=[block(N,gammas,slope) for N in (4,5,6)]
    report={'status':'passed','python':sys.version,'sympy':s.__version__,'contact_convention':'delta S=-G lambda/24 integral sqrt(-g) :phi^4:, alpha=lambda/(8pi)',
            'contact_projections':contact,'noncircular_1to3_radial_integral':nc,'deformation':data,'finite_chiral_blocks':blocks,
            'scope':'finite contact/source checks plus all-n rational positivity identity; physical conclusions conditional on the audited Einstein kernel and fixed-gap prescription',
            'stability':'negative quartic alone is unbounded; no nonperturbative/UV completion claim', 'elapsed_seconds':time.time()-start}
    out=Path(args.output);require(not out.exists(),'Refusing overwrite');out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':report['status'],'contact_projections':len(contact),'blocks':blocks,'elapsed_seconds':report['elapsed_seconds']}))

if __name__=='__main__':main()
