import sys
import sympy as S
import numpy as np
import json
from pathlib import Path

checks=[]
def zero(name,expr):
    result=S.simplify(S.trigsimp(expr))
    assert result==0,(name,result)
    checks.append({'name':name,'residual':str(result)})

E,F,th=S.symbols('E F th',positive=True)
eta=S.diag(-1,1,1,1)
a=S.Matrix([E,E*S.sin(th),E*S.cos(th),0])
l=S.Matrix([F,0,0,F])
ac=eta*a;lc=eta*l
la=(l.T*eta*a)[0]
M=-(lc*lc.T+ac*ac.T)/8+(lc*ac.T+ac*lc.T)/4-eta*la/8
zero('Shell numerator trace',S.trace(eta*M))
for j in range(4):
    zero(f'Shell numerator divergence {j}',((a+l).T*M)[j])

x,y,t,L,alpha=S.symbols('x y t L alpha',positive=True)
D2=(x-y-t)**2-4*y*t
zero('Independent-mass second derivative',
     S.diff(D2**(-S.Rational(1,2)),x,2)-2*(D2+6*y*t)/D2**S.Rational(5,2))
c2=1+4*y*t/L
I0=S.pi/(2*S.sqrt(L))
Iaa_delta=S.pi*x/(16*S.sqrt(L))*(1-c2)
Iaa_nn=S.pi*x/(16*S.sqrt(L))*(3*c2-1)
prefactor=32*S.pi**5*(-alpha/15)
cut_nn=prefactor*(-S.Rational(3,4)*Iaa_nn)
cut_delta=prefactor*(-S.Rational(3,4)*Iaa_delta+x*I0/16)
target=4*alpha*S.pi**6/5*(x*L/4)*(L+6*y*t)/L**S.Rational(5,2)
zero('CFT cut nn coefficient',cut_nn-target)
zero('CFT cut delta coefficient',cut_delta+target/3)
zero('Cut angle identity',((x-y-t)**2-D2)-4*y*t)

def shell_jac(energy,theta,phi):
    n=np.array([np.sin(theta)*np.cos(phi),np.sin(theta)*np.sin(phi),np.cos(theta)])
    dth=np.array([np.cos(theta)*np.cos(phi),np.cos(theta)*np.sin(phi),-np.sin(theta)])
    dph=np.array([-np.sin(theta)*np.sin(phi),np.sin(theta)*np.cos(phi),0])
    return np.column_stack([np.r_[1,n],np.r_[0,energy*dth],np.r_[0,energy*dph]])

ranks=[]
for name,angles in [
    ('generic nonparallel',[(.7,.2),(1.1,1.3),(2.,2.7)]),
    ('one pair parallel',[(.7,.2),(.7,.2),(2.,2.7)]),
    ('all three parallel',[(.7,.2),(.7,.2),(.7,.2)])]:
    ja,jl,jm=[shell_jac(e,*ang) for e,ang in zip([1.2,.8,1.7],angles)]
    z=np.zeros((4,3))
    jac=np.block([[ja,jl,z],[ja,z,jm]])
    sv=np.linalg.svd(jac,compute_uv=False)
    rank=int(np.sum(sv>1e-10))
    ranks.append({'configuration':name,'rank':rank,'singular_values':sv.tolist()})
assert [r['rank'] for r in ranks]==[8,7,6]
out={'exact_zero_count':len(checks),'exact_checks':checks,'coarea_rank_examples':ranks,
     'scope':'Exact normalization/Ward identities and three numerical differential-rank examples. The general coarea and uniqueness arguments are analytic.'}
dest=Path(__file__).with_name('cft_identification_independent_results.json')
dest.write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({'exact_zero_count':len(checks),'ranks':[r['rank'] for r in ranks],
                  'output':str(dest)},indent=2))
