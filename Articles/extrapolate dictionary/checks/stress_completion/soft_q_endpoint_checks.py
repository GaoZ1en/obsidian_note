import sys
import sympy as S
import numpy as np
import json
from pathlib import Path

records=[]
def zero(name, value):
    value=S.factor(value)
    assert value==0,(name,value)
    records.append({'name':name,'residual':str(value)})

B,A,H,x,w1,w2,b1,b2,om=S.symbols('B A H x w1 w2 b1 b2 om',real=True)
y=A*H-w1*w1-w2*w2
t=(1-A/B)*x-(B-A)*(H+om)-(w1+b1)**2-(w2+b2)**2
eta=S.diag(-1,1,1,1)
p=S.Matrix([(B+x/B)/2,0,0,(B-x/B)/2])
q=S.Matrix([(A+H)/2,w1,w2,(A-H)/2])
O=S.Matrix([om/2,b1,b2,-om/2])
dot=lambda a,b:(a.T*eta*b)[0]
zero('Mass relation',-dot(p-q-O,p-q-O)-t)
t0=t.subs({om:0,b1:0,b2:0})
lam=(x-y-t0)**2-4*y*t0
zero('Stationary Gram normal form',lam-((B*H-A*x/B)**2+4*x*(w1*w1+w2*w2)))
yy,tt=S.symbols('yy tt',real=True)
ell=(x-yy-tt)**2-4*yy*tt
zero('Independent-mass derivative',S.diff(-ell**(-S.Rational(1,2)),x,2)-(ell-3*(x-yy-tt)**2)/ell**S.Rational(5,2))

v=q+O
pc=eta*p;qc=eta*q;vc=eta*v
cq=-dot(p,q);cv=-dot(p,v)
Uq=x*qc-cq*pc;Uv=x*vc-cv*pc
N=(Uq*Uv.T+Uv*Uq.T)/2-(cq*cv+x*dot(q,v))*(x*eta+pc*pc.T)/3
zero('Tensor trace',S.trace(eta*N))
for j in range(4):
    zero(f'Tensor transverse {j}',(p.T*N)[j])
lam_scale=S.symbols('ell_scale',positive=True)
weights={x:lam_scale**2*x,H:lam_scale**2*H,w1:lam_scale*w1,w2:lam_scale*w2,
         b1:lam_scale*b1,b2:lam_scale*b2,om:lam_scale**2*om}
component_weights=[]
for i in range(4):
    for j in range(i,4):
        expr=S.expand(N[i,j].subs(weights,simultaneous=True))
        powers=[mon[0] for mon,co in S.Poly(expr,lam_scale).terms() if co!=0]
        minimum=min(powers) if powers else None
        assert minimum is None or minimum>=4,(i,j,minimum)
        component_weights.append({'component':[i,j],'minimum_lambda_power':minimum})

rng=np.random.default_rng(137901)
ratio_min=1e99
eta_bound=.1
expected=((1-2*eta_bound)/(1-eta_bound))**2
for _ in range(20000):
    bb=rng.uniform(.6,1.7);aa=rng.uniform(0,eta_bound*bb)
    hh=10**rng.uniform(-10,-1)
    rad=np.sqrt(rng.random());ang=rng.uniform(0,2*np.pi)
    ww=np.sqrt(aa*hh)*rad*np.array([np.cos(ang),np.sin(ang)])
    yv=aa*hh-float(ww@ww)
    xmax=(bb*hh-yv)/(1-aa/bb)
    xv=rng.random()*xmax
    lv=(bb*hh-aa*xv/bb)**2+4*xv*float(ww@ww)
    ratio=lv/(bb*bb*hh*hh)
    ratio_min=min(ratio_min,ratio)
    assert ratio>=expected-1e-10

out={'exact_zero_count':len(records),'exact_checks':records,
     'component_weights':component_weights,
     'stationary_gap_sample_count':20000,'observed_minimum_ratio':ratio_min,
     'proven_lower_bound':expected,
     'scope':'Symbolic identities and numerical sampling; the uniform distribution bounds are analytic arguments in the companion note.'}
dest=Path(__file__).with_name('soft_q_endpoint_checks_results.json')
dest.write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({'exact_zero_count':len(records),'component_weight_checks':len(component_weights),
                  'gap_samples':20000,'minimum_ratio':ratio_min,'proven_bound':expected,
                  'output':str(dest)},indent=2))
