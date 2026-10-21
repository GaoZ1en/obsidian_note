#!/usr/bin/env python3
"""Independent review checks, not a new constraint solver.

The source audit JSON is used only for its exported source expressions.  No
saved source residual flag or final matrix value is accepted as evidence.
Fresh polynomial integrals below use KG modes and the boundary normalization,
without importing either reviewed script or an inherited evaluator.
"""
from __future__ import annotations
import argparse
from collections import Counter
from itertools import combinations
import json
from pathlib import Path
import sympy as s

x=s.Symbol('x', real=True)
y=s.Symbol('y', positive=True)
t=s.Symbol('t', positive=True)

def require(v, text):
    if v is not True:
        raise RuntimeError(text)

def branch_simplify(v):
    v=s.sympify(v).subs(y,1+t)
    v=s.expand_power_base(v,force=True)
    v=s.powdenest(v,force=True)
    v=s.factor(s.cancel(s.powsimp(v,force=True)))
    return v.subs(t,y-1)

def rational_center(v, power):
    ratio=branch_simplify(v/((y-1)**s.Rational(power,2)*(y+1)**s.Rational(power,2)))
    require(ratio.is_rational_function(y) is True, 'Nonrational reduced center profile '+str(ratio))
    num,den=s.fraction(s.cancel(ratio))
    require(s.simplify(den.subs(y,1))!=0, 'Center denominator zero '+str(ratio))
    value=s.simplify(ratio.subs(y,1))
    require(value.is_finite is True, 'Nonfinite or undecided reduced center profile')
    return {'required_r_power':power,'analytic_reduced_profile':str(ratio),'center_value':str(value)}

def source_checks(data):
    output=[]
    for source in data['sources']:
        k=source['k']
        get=lambda key:s.sympify(source[key],locals={'y':y,'I':s.I})
        u,A,B=get('u'),get('A'),get('B')
        scalar=rational_center(u,abs(k))
        plus=rational_center(A+s.I*B,abs(k+2))
        minus=rational_center(A-s.I*B,abs(k-2))
        ends={name:s.simplify(s.limit(y*y*v,y,s.oo)) for name,v in [('u',u),('A',A),('B',B)]}
        require(all(v.is_finite is True for v in ends.values()),'Boundary falloff failure or undecided limit')
        if abs(k)>=2:require(ends['B']==0,'Independent boundary flux not removed')
        output.append({'legs':source['legs'],'k':k,'scalar':scalar,'Cplus':plus,'Cminus':minus,'boundary_y2_coefficients':{name:str(v) for name,v in ends.items()}})
    return output

def radial_x(n,j):
    a=abs(j)
    # Center-positive convention. The manuscript has the extra phase (-1)^n.
    return s.sqrt(s.Rational(n+a+1,2*(n+1))/s.pi)*x**s.Rational(a,2)*(1-x)*s.jacobi(n,a,1,1-2*x)

def poly_integral_01(expr):
    # Independent of symbolic integration heuristics: integrate each monomial.
    pp=s.Poly(s.expand(s.cancel(expr)),x)
    return s.simplify(sum(co/(s.Integer(monom[0])+1) for monom,co in pp.terms()))

def mode_contact_checks():
    modes=[(0,0),(1,0),(0,1),(0,-1),(0,2),(2,2)]
    norms=[]
    for n,j in modes:
        value=s.simplify(2*s.pi*(2+2*n+abs(j))*poly_integral_01(radial_x(n,j)**2/(1-x)))
        require(value==1,'KG normalization')
        norms.append({'mode':[n,j],'KG':str(value)})
    states=[[(0,0),(1,0)],[(0,1),(0,-1)]]
    mat=s.Matrix([[s.simplify(s.pi*poly_integral_01(s.prod(radial_x(*m) for m in a+b)/(1-x)**2)/(16*s.pi)) for b in states] for a in states])
    # Matrix above is K4 / lambda.  g=16 pi K4; alpha=lambda/(8pi).
    g_per_alpha=s.simplify(128*s.pi**2*mat)
    nc=s.simplify(s.pi*poly_integral_01(radial_x(0,0)**2*radial_x(0,2)*radial_x(2,2)/(1-x)**2))
    require(nc==0,'Contact number-changing integral')
    return {'KG_norms':norms,'K4_contact_per_lambda_center_positive_phase':[[str(v) for v in mat.row(i)] for i in range(2)],'g_contact_per_alpha_center_positive_phase':[[str(v) for v in g_per_alpha.row(i)] for i in range(2)],'contact_31_spatial_integral':str(nc)}

def radial_y(n,j):
    a=abs(j)
    return s.sqrt(s.Rational(n+a+1,n+1))*(y-1)**s.Rational(a,2)*(y+1)**s.Rational(a,2)*y**(-2-a)*s.jacobi(n,1,a,1-2/y**2)

def rho_pair(a,b):
    n,j,e=a;nn,jj,ee=b
    ra,rb=radial_y(n,j),radial_y(nn,jj)
    wa,wb=2+2*n+abs(j),2+2*nn+abs(jj)
    return branch_simplify((-e*ee*wa*wb*ra*rb/y**2+(y*y-1)*s.diff(ra,y)*s.diff(rb,y)-e*ee*j*jj*ra*rb/(y*y-1))/2)

def moment(a,b):
    k=a[1]*a[2]+b[1]*b[2];m=abs(k)
    if m<2:return s.S.Zero
    pm=(y-1)**s.Rational(m,2)*(y+1)**s.Rational(-m,2)*(y+m)
    integrand=branch_simplify(pm*rho_pair(a,b))
    # For these boundary moments y=1/x yields a polynomial integral on [0,1].
    return poly_integral_01(branch_simplify(integrand).subs(y,1/x)/x**2)

def boundary_element(outgoing,incoming):
    legs=[(*a,-1) for a in outgoing]+[(*a,1) for a in incoming]
    norm=s.sqrt(s.prod(s.factorial(v) for v in Counter(outgoing).values())*s.prod(s.factorial(v) for v in Counter(incoming).values()))
    terms=[]
    for ix in combinations(range(4),2):
        jx=tuple(i for i in range(4) if i not in ix)
        a,b=[legs[i] for i in ix],[legs[i] for i in jx]
        k=sum(v[1]*v[2] for v in a)
        terms.append(s.simplify(moment(*a)*moment(*b)/(k*k-1)) if abs(k)>=2 else s.S.Zero)
    return {'six_ordered_subset_terms':[str(v) for v in terms],'bose_divisor':str(norm),'g_boundary':str(s.simplify(-8*sum(terms)/norm))}

def slot_check():
    z=s.symbols('z0:4');cs=s.symbols('c0:4')
    us={(i,j):s.Symbol(f'U{i}{j}') for i,j in combinations(range(4),2)}
    u=sum(us[i,j]*z[i]*z[j] for i,j in us)
    chi=sum(cs[i]*z[i] for i in range(4))
    extract=lambda v:s.Poly(s.expand(v),*z).coeff_monomial(s.prod(z))
    uq=extract(-u*chi**2);uu=extract(-4*u*u)
    return {'labelled_minus_u_chi_squared':str(uq),'labelled_minus_4_u_squared':str(uu),'source_radial_to_g_constraint_factor':'16*pi * 4 * (2*pi)/(2*pi)**2 = 32','source_radial_to_g_boundary_factor':'-8 for six oriented subsets; no extra chirality factor','repeated_00_31_divisor':'sqrt(2)'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--sources',required=True);ap.add_argument('--output',required=True);args=ap.parse_args()
    data=json.loads(Path(args.sources).read_text())
    centers=source_checks(data)
    A=((0,0),(1,0));B=((0,1),(0,-1));states=[A,B]
    boundary=[[boundary_element(a,b) for b in states] for a in states]
    nc=boundary_element(((0,0),(0,0),(0,2)),((2,2),))
    result={'status':'passed','scope':'independent factors and polynomial integrals; exact smoothness certification of exported sources, not fresh constraint solutions','source_count':len(centers),'source_center_and_boundary_certificates':centers,'mode_contact_checks':mode_contact_checks(),'boundary_block':boundary,'noncircular_boundary':nc,'slot_checks':slot_check(),'sympy':s.__version__}
    out=Path(args.output)
    require(not out.exists(),'Refusing to overwrite')
    out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':'passed','center_certificates':len(centers),'boundary_block':boundary,'noncircular_boundary':nc,'contact_checks':result['mode_contact_checks']},indent=2))

if __name__=='__main__':main()
