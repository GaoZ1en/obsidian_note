#!/usr/bin/env python3
"""Fresh y-coordinate source/constraint audit; no target pair kernel imported.

Inputs are normalized Delta=2 KG modes, ADM conformal/maximal constraints,
zero independent boundary momentum for |k|>=2, and canonical K4 plus paired
boundary-density exchange. Every solved source is checked in its differential
equation. Original package evaluators are not imported. Target Eq.4.25 is
compared only after all source-level integrations are complete.

Run with Python 3.12 / SymPy 1.14 and -B. Outputs go only to the requested path.
"""
from __future__ import annotations
import argparse
from collections import Counter
from functools import lru_cache
from itertools import combinations
import json
from pathlib import Path
import platform
import sys
import time
import sympy as s

y = s.symbols('y', positive=True)
t_positive = s.symbols('t_positive', positive=True)
F = y*y-1
I = s.I
SOURCES = []

def clean(e):
    # Enforce the physical real branch y=1+t, t>0 before radical operations.
    # Merely declaring y positive does NOT make sqrt(y-1) a positive root.
    e = s.sympify(e).subs(y,t_positive+1)
    e = s.expand_power_base(e, force=True)
    e = s.powsimp(e, force=True)
    e = s.factor(s.cancel(e))
    return e.subs(t_positive,y-1)

def require(cond, label):
    if cond is not True:
        raise RuntimeError(label)

def zero(e, label):
    v = clean(e)
    require(v == 0, f'{label}: {v}')
    return True

def radial(n,j):
    a=abs(j)
    amp=s.sqrt(s.rf(2+n,a)/s.rf(n+1,a))
    return clean(amp*(y-1)**s.Rational(a,2)*(y+1)**s.Rational(a,2)
                 *y**(-2-a)*s.jacobi(n,1,a,1-2/y**2))

def integrate_exact(e):
    e=clean(e)
    ant=s.integrate(e,y,risch=True)
    require(not ant.has(s.Integral),f'Unevaluated integral: {e}')
    value=s.limit(ant,y,s.oo)-s.limit(ant,y,1,dir='+')
    require(not value.has(s.oo,-s.oo,s.zoo,s.nan,s.Limit),f'Invalid integral: {e}')
    return clean(value)

@lru_cache(None)
def source(a,b):
    n,j,ea=a; nn,jj,eb=b
    ra,rb=radial(n,j),radial(nn,jj)
    wa,wb=2+2*n+abs(j),2+2*nn+abs(jj)
    ca,cb=-I*ea*wa*ra/y,-I*eb*wb*rb/y
    k=ea*j+eb*jj; m=abs(k)
    rho=clean((ca*cb+F*s.diff(ra,y)*s.diff(rb,y)-ea*eb*j*jj*ra*rb/F)/2)
    Q=clean(ca*cb)  # mu=0 at Delta=2; Q=chi_a chi_b-mu R_a R_b.
    jy=clean((ca*s.diff(rb,y)+cb*s.diff(ra,y))/4)
    jt=clean((ca*I*eb*jj*rb+cb*I*ea*j*ra)/4)
    # Solve the scalar elliptic equation in a finite regular/fast Laurent span.
    # No integrated K4 identities, Zhat replacements, or target eigenvalues enter.
    fac=(y-1)**s.Rational(m,2)*(y+1)**s.Rational(m,2)
    powers=list(range(m+2,4+abs(j)+abs(jj)+2*n+2*nn+1,2))
    cs=s.symbols('c0:'+str(len(powers)))
    trial=fac*sum(c*y**(-p) for c,p in zip(cs,powers))
    L=lambda v: -F*s.diff(v,y,2)-2*y*s.diff(v,y)+(2+m*m/F)*v
    rr=clean((L(trial)-rho/2)/fac)
    polynomial=s.Poly(s.together(rr).as_numer_denom()[0],y)
    solutions=s.solve(polynomial.all_coeffs(),cs,dict=True)
    require(len(solutions)==1,f'Nonunique scalar solution {a,b}: {solutions}')
    u=clean(trial.subs(solutions[0]))
    zero(L(u)-rho/2,f'scalar residual {a,b}')
    center_u=s.limit(u/fac,y,1,dir='+')
    boundary_u=s.limit(y*y*u,y,s.oo)
    require(not (center_u.has(s.oo,s.zoo,s.nan) or boundary_u.has(s.oo,s.zoo,s.nan)),f'Scalar endpoint {a,b}')
    # Integrating factors derived directly in the y-coordinate metric
    # sigma=dy^2/F+F dtheta^2. They differ from the inherited disk implementation.
    C=[]; integrals=[]; hom=[s.S.Zero,s.S.Zero]
    for sign in (1,-1):
        IF=F*(y-1)**s.Rational(sign*k,2)*(y+1)**s.Rational(-sign*k,2)
        rhs=clean(IF*(jy+sign*I*jt/F))
        ant=s.integrate(rhs,y,risch=True)
        require(not ant.has(s.Integral),f'Unevaluated momentum integral {a,b,sign}: {rhs}')
        integral=clean(ant-s.limit(ant,y,1,dir='+'))
        require(not integral.has(s.oo,s.zoo,s.nan),f'Momentum center integral {a,b,sign}')
        integrals.append(integral)
        C.append(clean(integral/IF))
    if m>=2:
        ip=s.limit(integrals[0],y,s.oo); im=s.limit(integrals[1],y,s.oo)
        if k>=2:
            hom[1]=clean(ip-im)
            C[1]=clean(C[1]+hom[1]*(y-1)**s.Rational(k,2)*(y+1)**s.Rational(-k,2)/F)
        else:
            hom[0]=clean(im-ip)
            C[0]=clean(C[0]+hom[0]*(y-1)**s.Rational(-k,2)*(y+1)**s.Rational(k,2)/F)
    A=clean((C[0]+C[1])/2); B=clean((C[0]-C[1])/(2*I))
    zero(s.diff(A,y)+2*y*A/F+I*k*B/F-jy,f'momentum-y residual {a,b}')
    zero(s.diff(B,y)+2*y*B/F-I*k*A/F-jt/F,f'momentum-theta residual {a,b}')
    flux=clean(s.limit(F*B,y,s.oo))
    if m>=2: zero(flux,f'non-global boundary flux {a,b}')
    # Polar-frame tensors are regular iff the spin +/-2 combinations have
    # appropriate center powers; record finite A,B here and certify separately.
    center_A=s.limit(A,y,1,dir='+'); center_B=s.limit(B,y,1,dir='+')
    require(not (center_A.has(s.oo,s.zoo,s.nan) or center_B.has(s.oo,s.zoo,s.nan)),f'Momentum center {a,b}')
    pm=(y-1)**s.Rational(m,2)*(y+1)**s.Rational(-m,2)*(y+m)
    density=integrate_exact(pm*rho) if m>=2 else s.S.Zero
    record={'legs':[a,b],'k':k,'omega_sum':ea*wa+eb*wb,
            'R_a':str(ra),'R_b':str(rb),'rho':str(rho),'Q':str(Q),'j_y':str(jy),'j_theta':str(jt),
            'u':str(u),'A':str(A),'B':str(B),'homogeneous_Cplus':str(hom[0]),'homogeneous_Cminus':str(hom[1]),
            'density_moment':str(density),'boundary_F_B':str(flux),'center_u_over_r_to_m':str(center_u),
            'boundary_y2_u':str(boundary_u),'center_A':str(center_A),'center_B':str(center_B),
            'scalar_residual_zero':True,'momentum_y_residual_zero':True,'momentum_theta_residual_zero':True}
    SOURCES.append(record)
    print('source',a,b,'k=',k,'I_m=',density,flush=True)
    return {'rho':rho,'Q':Q,'u':u,'A':A,'B':B,'k':k,'D':density}

def ordered_source(a,b):
    return source(*sorted((a,b)))

def element(outgoing,incoming,label):
    legs=tuple((*a,-1) for a in outgoing)+tuple((*a,1) for a in incoming)
    require(len(legs)==4,'Four legs required')
    require(sum(e*(2+2*n+abs(j)) for n,j,e in legs)==0,'Not energy resonant')
    require(sum(e*j for n,j,e in legs)==0,'Not angular resonant')
    factorial=s.prod(s.factorial(v) for v in Counter(outgoing).values())*s.prod(s.factorial(v) for v in Counter(incoming).values())
    norm=s.sqrt(factorial)
    pieces=[]; sums=[s.S.Zero]*4
    for ix in combinations(range(4),2):
        jx=tuple(i for i in range(4) if i not in ix)
        a=ordered_source(legs[ix[0]],legs[ix[1]])
        b=ordered_source(legs[jx[0]],legs[jx[1]])
        require(a['k']+b['k']==0,'Angular mismatch')
        mom=integrate_exact(y*2*(a['A']*b['A']+a['B']*b['B']))
        uq=integrate_exact(-y*a['u']*b['Q'])
        uu=integrate_exact(-4*y*a['u']*b['u'])
        ex=clean(a['D']*b['D']/(a['k']**2-1)) if abs(a['k'])>=2 else s.S.Zero
        for i,v in enumerate((mom,uq,uu,ex)): sums[i]+=v
        pieces.append({'first_slots':ix,'second_slots':jx,'first_legs':[legs[i] for i in ix],
                       'second_legs':[legs[i] for i in jx], 'k':a['k'],
                       'momentum_integral':str(mom),'minus_uQ_integral':str(uq),
                       'minus_4uu_integral':str(uu),'boundary_moment_product_over_m2minus1':str(ex)})
    scaled=[clean(32*sums[i]/norm) for i in range(3)]+[clean(-8*sums[3]/norm)]
    C=clean(sum(scaled[:3])); X=scaled[3]; full=clean(C+X)
    record={'label':label,'outgoing':outgoing,'incoming':incoming,'occupation_factorial':str(factorial),
            'bose_divisor':str(norm),'pieces':pieces,'scaled_momentum':str(scaled[0]),'scaled_minus_uQ':str(scaled[1]),
            'scaled_minus_4uu':str(scaled[2]),'constraint_contact':str(C),'virtual_boundary':str(X),'total':str(full)}
    print('ELEMENT',label,'C=',C,'X=',X,'total=',full,flush=True)
    return C,X,record

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    started=time.time();records=[]
    A=((0,0),(1,0));B=((0,1),(0,-1));states=(A,B)
    C=s.zeros(2);X=s.zeros(2)
    for i,j in ((0,0),(0,1),(1,1)):
        cc,xx,record=element(states[i],states[j],f'Eq4.25_{i}{j}')
        C[i,j]=C[j,i]=cc;X[i,j]=X[j,i]=xx;records.append(record)
    nc,nx,record=element(((0,0),(0,0),(0,2)),((2,2),),'noncircular_1to3')
    records.append(record)
    # Only now compare to the manuscript. These constants were not evaluator inputs.
    expected_C=s.Matrix([[-s.Rational(176,7),s.Rational(488,35)],[s.Rational(488,35),-s.Rational(4064,175)]])
    expected_X=s.diag(0,-s.Rational(48,25))
    require(C==expected_C,'Eq4.25 contact mismatch');require(X==expected_X,'Eq4.25 boundary mismatch')
    require(nc!=0 and nx!=0,'Noncircular test must exercise both contributions')
    zero(nc+nx,'Noncircular resonant total')
    report={'status':'passed','method':'new y-coordinate ADM source solve; no inherited evaluator or closed pair kernel imported',
            'environment':{'python':sys.version,'platform':platform.platform(),'sympy':s.__version__},
            'external_Delta':'2','normalization':'angular factor 1/sqrt(2pi) omitted in radial sources and restored in 32,-8 coefficients',
            'constraint_matrix':[[str(v) for v in C.row(i)] for i in range(2)],
            'boundary_matrix':[[str(v) for v in X.row(i)] for i in range(2)],
            'total_eigenvalues':{str(k):v for k,v in (C+X).eigenvals().items()},
            'noncircular_constraint':str(nc),'noncircular_boundary':str(nx),
            'source_count':len(SOURCES),'sources':SOURCES,'elements':records,'elapsed_seconds':time.time()-started}
    out=Path(args.output)
    require(not out.exists(),'Refusing to overwrite existing output')
    out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:report[k] for k in ('status','source_count','elapsed_seconds','noncircular_constraint','noncircular_boundary')}))

if __name__=='__main__':main()
