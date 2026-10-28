import sys
if sys.flags.optimize:
 raise RuntimeError("Verification requires Python assertions; optimization is forbidden")
#!/usr/bin/env python3
"""Independent Casimir spectral interpolation and literal occupation counting.
No import of source-package code. Exact rational arithmetic throughout.
"""
import sympy as S
import json
import argparse
from pathlib import Path
from functools import lru_cache
N=S.symbols('N'); v,w=S.symbols('v w'); x,y=S.symbols('x y')
a=(S.Integer(1),)+S.symbols('a1:7')

def simple(z): return S.factor(S.cancel(z))

def audit(d):
 @lru_cache(None)
 def pair(T):
  # C=L0(L0-1)-Lplus Lminus, on z1^j z2^(T-j).
  minus=S.zeros(T,T+1); plus=S.zeros(T+1,T)
  for j in range(T+1):
   if j: minus[j-1,j]=j
   if T-j: minus[j,j]=T-j
  for j in range(T):
   plus[j+1,j]=j+d; plus[j,j]=T-1-j+d
  C=(T+d)*(T+d-1)*S.eye(T+1)-plus*minus
  values=[(d+k)*(d+k-1) for k in range(T+1)]
  W=S.zeros(T+1)
  G=S.diag(*[S.factorial(j)*S.factorial(T-j)/(S.rf(d,j)*S.rf(d,T-j)) for j in range(T+1)])
  for k,ev in [(4,v),(6,w)]:
   if k>T: continue
   P=S.eye(T+1)
   for ell in range(T+1):
    if ell!=k: P=(P*(C-values[ell]*S.eye(T+1))/(values[k]-values[ell])).applyfunc(simple)
   assert (P*P-P).applyfunc(simple)==S.zeros(T+1) and (P.T*G-G*P).applyfunc(simple)==S.zeros(T+1)
   W+=ev*P
  return W
 @lru_cache(None)
 def F(i,j):
  W=pair(i+j)
  return S.expand(sum(W[k,i]*a[k]*a[i+j-k] for k in range(i+j+1)))
 def act(f):
  ans=0
  # Select actual unordered occupied pairs. Zero occupation is N-length.
  for powers,coeff in S.Poly(S.expand(f),*a[1:]).terms():
   occ=[N-sum(powers),*powers]
   for i in range(7):
    for j in range(i,7):
     if i+j>6 or (i and not occ[i]) or (j and not occ[j]): continue
     ways=S.sympify(occ[i])*(occ[j]-int(i==j))/(2 if i==j else 1)
     if ways==0: continue
     rem=list(powers)
     if i: rem[i-1]-=1
     if j: rem[j-1]-=1
     if min(rem)<0: continue
     ans+=coeff*ways*S.prod(a[t+1]**rem[t] for t in range(6))*F(i,j)
  return S.expand(ans)
 def centered(p): return S.expand(sum(S.binomial(p,j)*(-a[1])**(p-j)*a[j] for j in range(p+1)))
 retract={a[1]:0,a[2]:x,a[3]:y}
 slopes={}
 for p in range(4,7):
  Ap=S.expand(act(centered(p))).coeff(N,1).subs(a[1],0)
  slope=simple(Ap.coeff(a[p])); slopes[p]=str(slope)
  retract[a[p]]=simple(-(Ap-slope*a[p]).subs(retract)/slope)
 for f in [1,centered(2),centered(3),centered(2)**2,centered(2)*centered(3)]:
  assert simple(act(f).coeff(N,0).subs(retract))==0
 result=simple(act(centered(3)**2).coeff(N,0).subs(retract))
 expected=27*v*w*(d+3)*(d+4)*(2*d+9)/(2*(2*d+5)*(15*(2*d+7)*(d+5)*v+(2*d+3)*(d+2)*w))
 assert simple(result-expected*(y*y+4*x**3))==0
 return {'d':str(d),'slopes':slopes,'epsilon':str(expected),'q_c4':str(retract[a[4]]),'q_c5':str(retract[a[5]]),'q_c6':str(retract[a[6]]),'all_six_jets_pass':True}

def main():
 parser=argparse.ArgumentParser(description=__doc__)
 parser.add_argument("--generic",action="store_true",help="Also prove all identities over Q(d,v,w), not just selected rational masses")
 args=parser.parse_args()
 if args.generic:
  generic=audit(S.symbols("d",positive=True))
  Path(__file__).with_name("generic_symbolic_certificate.json").write_text(json.dumps(generic,indent=2)+"\n")
  print("Generic symbolic Casimir interpolation passed.",flush=True)
 records=[]
 for d in [S.Rational(3,2),S.Integer(2),S.Rational(7,3),S.Integer(3)]:
  records.append(audit(d)); print('Exact Casimir audit passed:',d,flush=True)
 p=S.symbols('p',integer=True,positive=True)
 alpha=lambda k:S.binomial(p,k)*S.rf(2,p)/(S.rf(4+k-1,k)*S.rf(4+2*k,p-k))
 ratio=S.factor(S.simplify(S.expand_func(alpha(6)/alpha(4))))
 assert S.simplify(ratio-28*(p-5)*(p-4)/(11*(p+8)*(p+9)))==0
 # Same-support boundary coefficients and exact full P=4 block.
 d=S.Integer(2); C=lambda k:(d+k)*(d+k-1)
 slope=(S.Rational(9,14)-1)/(C(2)-C(0))
 r=lambda k:-1-slope*(C(k)-C(0))
 assert r(4)==0 and r(6)==S.Rational(13,14)
 scalar=simple(N*(N-1)/2+slope*4*(2*N+3))
 assert simple(scalar-(N*(N-1)/2-2*N/S.Integer(7)-S.Rational(3,7)))==0
 report={'status':'passed','method':'Casimir interpolation; literal unordered occupation-pair counting; no original imports','exact_mass_checks':records,'signed_defect_counterexample':{'d':2,'r4':1,'r6':'-1/100','other_defects':0,'alpha6_over_alpha4':str(ratio),'ratio_bound':'<28/11 for every integer p>=6','conclusion':'all nonzero leading gaps remain positive; nonnegative pair defects sufficient, not necessary, for two-generator leading kernel'},'same_support_boundary':{'slope':str(slope),'r4':str(r(4)),'r6':str(r(6)),'P4_scalar':str(scalar)}}
 Path(__file__).with_suffix('.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
if __name__=='__main__': main()
