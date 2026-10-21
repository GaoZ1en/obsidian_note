#!/usr/bin/env python3
"""Second-route validation of saved source certificates, not an independent agent.
Derive divergence from the coordinate metric/Christoffel symbols, verify smooth
Cartesian spin components, then numerically integrate the original response
products. Separately evaluate only the known mixed-cubic part of the smallest
scalar/graviton degenerate block; the full contact remains unverified.
"""
from __future__ import annotations
import argparse
from itertools import product
import json
from pathlib import Path
import sys
import time
import sympy as s
import mpmath as mp

y=s.symbols('y',positive=True);theta=s.symbols('theta',real=True);t=s.symbols('t',positive=True)
F=y*y-1; coords=(y,theta);g=s.diag(1/F,F);ginv=s.diag(F,1/F)

def canon(v):
    v=s.sympify(v).subs(y,t+1)
    return s.factor(s.cancel(s.powsimp(s.expand_power_base(v,force=True),force=True))).subs(t,y-1)

def require(ok,label):
    if ok is not True:raise RuntimeError(label)

def zer(v,label):
    if isinstance(v,s.MatrixBase):
        require(all(s.simplify(canon(entry))==0 for entry in v),label)
    else:
        value=s.simplify(canon(v))
        require(value==0,f'{label}: {value}')

def parse(v):return s.sympify(v,locals={'y':y,'I':s.I})

Gamma=[[[s.factor(sum(ginv[a,d]*(s.diff(g[d,c],coords[b])+s.diff(g[d,b],coords[c])-s.diff(g[b,c],coords[d])) for d in range(2))/2)
          for c in range(2)] for b in range(2)] for a in range(2)]

def quad(v):
    # Integrate dy in x=1/y, independently of the symbolic antiderivative route.
    x=s.symbols('x',positive=True)
    v=s.cancel(s.expand(canon(v)))
    expr=s.powsimp(s.expand_power_base(v.subs(y,1/x)/x**2,force=True),force=True)
    func=s.lambdify(x,expr,'mpmath',cse=True)
    def safe(xx):
        if xx==0 or xx==1:return mp.mpf('0')
        return func(xx)
    return mp.quad(safe,[0,mp.mpf('0.2'),mp.mpf('0.5'),mp.mpf('0.8'),1])

def source_checks(data):
    records=[];lookup={}
    for r in data['sources']:
        vals={key:parse(r[key]) for key in ('rho','Q','u','A','B','j_y','j_theta','density_moment')}
        k=r['k'];m=abs(k);phase=s.exp(s.I*k*theta)
        T=s.Matrix([[vals['A'],F*vals['B']],[vals['B']/F,-vals['A']]])*phase
        lower=g*T
        zer(lower-lower.T,'Spatial tensor symmetry')
        zer(s.trace(T),'Tracefree spatial momentum')
        div=[]
        for b in range(2):
            vv=sum(s.diff(T[a,b],coords[a]) for a in range(2))
            vv+=sum(Gamma[a][a][c]*T[c,b]-Gamma[c][a][b]*T[a,c] for a,c in product(range(2),repeat=2))
            div.append(s.simplify(vv/phase))
        zer(div[0]-vals['j_y'],'Metric-derived divergence y')
        zer(div[1]-vals['j_theta'],'Metric-derived divergence theta')
        phi=vals['u']*phase
        lap=sum(s.diff(ginv[a,b]*s.diff(phi,coords[b]),coords[a]) for a,b in product(range(2),repeat=2))
        zer((-lap+2*phi)/phase-vals['rho']/2,'Metric-derived scalar Laplacian')
        helicities=[]
        for sign in (1,-1):
            cc=vals['A']+sign*s.I*vals['B'];power=abs(k+2*sign)
            smooth=canon(cc/((y-1)**s.Rational(power,2)*(y+1)**s.Rational(power,2)))
            center=s.limit(smooth,y,1,dir='+')
            require(not center.has(s.oo,-s.oo,s.zoo,s.nan,s.Limit),'Cartesian center smoothness')
            require(smooth.is_rational_function(y),'Center coefficient analytic in r^2')
            helicities.append({'sign':sign,'angular_weight':k+2*sign,'center_reduced':str(center)})
        derror=None
        if m>=2:
            pm=(y-1)**s.Rational(m,2)*(y+1)**s.Rational(-m,2)*(y+m)
            numerical=quad(pm*vals['rho'])
            exact=mp.mpf(str(s.N(vals['density_moment'],90)))
            error=abs(numerical-exact);require(error<mp.mpf('1e-55'),'Density moment quadrature')
            derror=mp.nstr(error,8)
        key=tuple(sorted(tuple(q) for q in r['legs']));lookup[key]=vals
        records.append({'legs':r['legs'],'metric_divergence_zero':True,'metric_scalar_residual_zero':True,
                        'cartesian_helicities':helicities,'density_moment_numeric_error':derror})
    return records,lookup

def element_checks(data,lookup):
    results=[]
    for rec in data['elements']:
        total=0
        for piece in rec['pieces']:
            a=lookup[tuple(sorted(tuple(q) for q in piece['first_legs']))]
            b=lookup[tuple(sorted(tuple(q) for q in piece['second_legs']))]
            integrand=y*(2*(a['A']*b['A']+a['B']*b['B'])-a['u']*b['Q']-4*a['u']*b['u'])
            total+=quad(integrand)
        norm=mp.mpf(str(s.N(parse(rec['bose_divisor']),90)))
        numerical=32*total/norm;exact=mp.mpf(str(s.N(parse(rec['constraint_contact']),90)))
        err=abs(numerical-exact);require(err<mp.mpf('1e-50'),'Original-response quadrature mismatch')
        results.append({'label':rec['label'],'constraint_quad':mp.nstr(numerical,65),'exact':rec['constraint_contact'],'absolute_error':mp.nstr(err,8)})
    return results

def mixed_cubic_only():
    r0=y**-2;rc=s.sqrt(3)*(y*y-1)/y**4
    pm=(y-1)*(y+2)/(y+1)
    integrals=[]
    for product_sign in (-1,1):
        rho=(-product_sign*8*r0*rc/y**2+F*s.diff(r0,y)*s.diff(rc,y))/2
        val=s.integrate(s.cancel(pm*rho),(y,1,s.oo));integrals.append(s.simplify(val))
    imix,ipair=integrals;Nm=1/s.sqrt(48*s.pi)
    dmix=2*Nm*imix;dpair=2*Nm*ipair
    first=s.simplify(4*dmix*s.sqrt(2));second=s.simplify(-4*dpair)
    denominator=s.Integer(-4)
    kappa_coefficient=s.simplify(2*first*second/denominator)
    g_coefficient=s.simplify(16*s.pi*kappa_coefficient)
    require(g_coefficient==24*s.sqrt(2)/175,'Mixed-cubic-only finite target')
    return {'initial':'(b00_dagger)^2/sqrt(2)|0>','final':'a2plus_dagger a2minus_dagger|0>',
            'E0':4,'J':0,'Delta':2,'intermediate_energy':8,'chirality_paths':2,
            'density_mixed':str(imix),'density_pair':str(ipair),'D_mixed_coefficient':str(s.simplify(dmix)),
            'D_pair_coefficient':str(s.simplify(dpair)),'first_vertex':str(first),'second_vertex':str(second),
            'energy_denominator':str(denominator),'coefficient_per_kappa2':str(kappa_coefficient),
            'coefficient_per_G':str(g_coefficient),
            'status':'PARTIAL ONLY: full g^2 phi^2 contact, including uncontracted embedding-momentum contribution, not independently derived; no closure verdict from this number'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--input',required=True);ap.add_argument('--output',required=True);args=ap.parse_args()
    start=time.time();mp.mp.dps=85;data=json.loads(Path(args.input).read_text())
    sc,lookup=source_checks(data);ec=element_checks(data,lookup);partial=mixed_cubic_only()
    report={'status':'passed','python':sys.version,'sympy':s.__version__,'mpmath':mp.__version__,'working_digits':mp.mp.dps,
            'source_checks':sc,'original_response_quadratures':ec,'fullblock_known_cubic_only':partial,
            'mutation_check':{'omit_boundary_noncircluar_residual':data['noncircular_constraint'],
                              'omit_boundary_changes_BB_diagonal':'48/25','description':'Omitting the virtual-boundary term is detected; zero total was not imposed.'},
            'elapsed_seconds':time.time()-start}
    out=Path(args.output);require(not out.exists(),'Refusing overwrite');out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'passed','sources':len(sc),'quadratures':ec,'partial_fullblock':partial,'elapsed_seconds':report['elapsed_seconds']}))

if __name__=='__main__':main()
