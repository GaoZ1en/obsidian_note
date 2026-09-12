"""Symbolic checks of the spin-1 and spin-2 primary wavefunctions used in the proof.
The common phase and r^s (1+r^2)^(-E/2) are factored out before differentiation.
"""
import sympy as S
from itertools import product

def verify():
 r,E=S.symbols('r E',positive=True)
 f=1+r*r
 g=S.diag(-f,1/f,r*r); gi=g.inv()
 def diff(x,a): return S.diff(x,r) if a==1 else S.Integer(0)
 Gamma=[[[S.factor(sum(gi[c,d]*(diff(g[d,b],a)+diff(g[d,a],b)-diff(g[a,b],d))/2 for d in range(3))) for b in range(3)] for a in range(3)] for c in range(3)]
 v=[1,S.I/(r*f),-1]
 reports=[]
 for rank in [1,2]:
  indices=list(product(range(3),repeat=rank))
  T={idx:S.prod(v[i] for i in idx) for idx in indices}
  phase=[-S.I*E,rank/r-E*r/f,S.I*rank]
  def partial(q,a): return phase[a]*q+diff(q,a)
  DT={}
  for a in range(3):
   for idx in indices:
    res=partial(T[idx],a)
    for slot,b in enumerate(idx):
     for c in range(3):
      jdx=list(idx);jdx[slot]=c
      res-=Gamma[c][a][b]*T[tuple(jdx)]
    DT[(a,)+idx]=S.factor(res)
  for tail in product(range(3),repeat=rank-1):
   assert S.simplify(S.factor(sum(gi[a,a]*DT[(a,a)+tail] for a in range(3))))==0
  if rank==2: assert S.factor(sum(gi[a,a]*T[(a,a)] for a in range(3)))==0
  for idx in indices:
   box=0
   for a in range(3):
    q=partial(DT[(a,)+idx],a)
    for c in range(3):q-=Gamma[c][a][a]*DT[(c,)+idx]
    for slot,b in enumerate(idx):
     for c in range(3):
      jdx=list(idx);jdx[slot]=c
      q-=Gamma[c][a][b]*DT[(a,)+tuple(jdx)]
    box+=gi[a,a]*q
   assert S.simplify(S.factor(box-(E*(E-2)-rank)*T[idx]))==0, (rank,idx)
  # Both global lowering Killing fields annihilate the tensor.
  for sigma in [-1,1]:
   kill=[S.I*r/(2*S.sqrt(f)),S.sqrt(f)/2,-S.I*sigma*S.sqrt(f)/(2*r)]
   def dk(q,a):return diff(q,a)+([S.I,0,-S.I*sigma][a])*q
   for idx in indices:
    lie=sum(kill[a]*partial(T[idx],a) for a in range(3))
    for slot,b in enumerate(idx):
     for c in range(3):
      jdx=list(idx);jdx[slot]=c
      lie+=dk(kill[c],b)*T[tuple(jdx)]
    assert S.simplify(lie)==0,("lowering",rank,sigma,idx,S.simplify(lie))
  # The Lorentzian tensor contraction with the complex conjugate is positive.
  vv=S.factor(sum(gi[a,a]*v[a]*S.conjugate(v[a]) for a in range(3)))
  assert S.factor(vv-2/(r*r*f))==0
  reports.append({'spin':rank,'divergence_zero':True,'laplacian_eigenvalue':str(E*(E-2)-rank),'tensor_components_checked':len(indices)})
 return reports
if __name__=='__main__':
 import json
 print(json.dumps(verify(),indent=2))
