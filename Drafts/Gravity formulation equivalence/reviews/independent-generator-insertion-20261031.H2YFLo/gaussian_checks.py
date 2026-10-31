from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo')
F=FractionField(PolynomialRing(QQ,names=('kap','r')))
kap,r=F.gens()
names=tuple(['c'+str(i) for i in range(6)]+['bar'+str(i) for i in range(6)]+['E'+str(i) for i in range(9)]+['W'+str(i) for i in range(9)])
A=ExteriorAlgebra(F,names=names)
g=A.gens(); c=g[:6]; bar=g[6:12]; E=g[12:21]; W=g[21:30]
weight=A.one()
for i in range(6): weight*=A.one()+kap*r*bar[i]*c[i]
uv=tuple(range(12))
def coeffs(x): return {tuple(k):v for k,v in x.monomial_coefficients().items()}
Z=coeffs(weight)[uv]
def expect(x):
    ans={}
    for k,v in coeffs(x*weight).items():
        if tuple(a for a in k if a<12)==uv:
            ext=tuple(a for a in k if a>=12)
            ans[ext]=ans.get(ext,F(0))+v/Z
    return {k:v for k,v in ans.items() if v!=0}
def eps(i,j,k):
    return 0 if len({i,j,k})<3 else Permutation([i+1,j+1,k+1]).signature()
checks={}
for i in range(6):
 for j in range(6):
  expected={():1/(kap*r)} if i==j else {}
  checks[f'bar_c_{i}_{j}']=expect(bar[i]*c[j])==expected
  expected={():-1/(kap*r)} if i==j else {}
  checks[f'c_bar_{i}_{j}']=expect(c[i]*bar[j])==expected
# Actual algebraic part of p=-kap * G barc, G=[[d,-[e,.]],[[e,.],d]].
# First derivative kernels vanish by H3 point symmetry, so only the following terms survive at coincidence.
Wuv={(i,a):kap*sum((eps(i,b,a)*bar[3+b] for b in range(3)),A.zero()) for i in range(3) for a in range(3)}
Euv={(i,a):-kap*sum((eps(i,b,a)*bar[b] for b in range(3)),A.zero()) for i in range(3) for a in range(3)}
Gamma=A.zero()
for i in range(3):
 for j in range(3):
  for k in range(3):
   for a in range(3):
    Gamma+=F(eps(j,k,i))/kap*(Wuv[i,a]*c[3+k]*E[3*j+a]+W[3*i+a]*c[3+k]*Euv[j,a])
actual=expect(Gamma)
expected={(12+3*i+i,):-2/(kap*r) for i in range(3)}
checks['actual_Gamma3_linear_antifield_Gaussian']=actual==expected
checks['no_external_W']=not any(k[0]>=21 for k in actual)
checks['epsilon_double_contraction']=all(sum(eps(j,k,i)*eps(i,k,b) for i in range(3) for k in range(3))==(-2 if j==b else 0) for j in range(3) for b in range(3))
report={'sage_version':sage_version,'gaussian_weight':'exp(+kap*r sum_i bar_i c_i), finite exterior expansion','normalization':str(Z),'actual_insertion_coefficients':{str(k):str(v) for k,v in actual.items()},'expected_coefficients':{str(k):str(v) for k,v in expected.items()},'checks':{k:bool(v) for k,v in checks.items()},'failures':[k for k,v in checks.items() if not v]}
(OUT/'gaussian_actual_output.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
