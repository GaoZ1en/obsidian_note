"""Independent component checks of the latest sourced gauge-accessibility note."""
import sympy as s
from pathlib import Path
import json
T,r,ph=s.symbols('t r phi',real=True);r=s.Symbol('r',positive=True);xx=[T,r,ph]
f=1+r*r;g=s.diag(-f,1/f,r*r);gi=s.diag(-1/f,f,1/(r*r))
Ga=[[[s.simplify(sum(gi[a,d]*(s.diff(g[d,c],xx[b])+s.diff(g[d,b],xx[c])-s.diff(g[b,c],xx[d])) for d in range(3))/2) for c in range(3)]for b in range(3)]for a in range(3)]
def dc(v):return [[s.diff(v[n],xx[m])-sum(Ga[l][m][n]*v[l] for l in range(3)) for n in range(3)]for m in range(3)]
def Q(v):
 d=dc(v);res=[]
 for n in range(3):
  val=-2*v[n]
  for a in range(3):
   val+=gi[a,a]*(s.diff(d[a][n],xx[a])-sum(Ga[l][a][a]*d[l][n]+Ga[l][a][n]*d[a][l] for l in range(3)))
  res.append(s.simplify(val))
 return res
ss=s.Symbol('s',real=True);A=s.Function('A')(T);B=s.Function('B')(T)
v=[B*r**(-ss),A*r**(-ss-1),0];qv=Q(v)
lead_r=s.simplify(s.limit(s.powsimp(qv[1]*r**(ss+1),force=True),r,s.oo))
lead_t=s.simplify(s.limit(s.powsimp(qv[0]*r**ss,force=True),r,s.oo))
assert s.simplify(lead_r-(ss**2-2*ss-4)*A)==0
assert s.simplify(lead_t-(ss**2-4)*B-2*s.diff(A,T))==0
a=s.Function('a')(T,r);ax=Q([0,0,a])
expected=f*s.diff(a,r,2)+(r-1/r)*s.diff(a,T,2)*0+(r-1/r)*s.diff(a,r)-s.diff(a,T,2)/f-4*a
assert s.simplify(ax[2]-expected)==0 and ax[0]==ax[1]==0
# Pure gauge h_{mn}=nabla_m xi_n+nabla_n xi_m: C[h]=Q xi.
d=dc(v);h=s.Matrix(3,3,lambda m,n:d[m][n]+d[n][m]);tr=s.simplify(sum(gi[m,m]*h[m,m] for m in range(3)))
for n in range(3):
 C=-s.diff(tr,xx[n])/2
 for m in range(3):C+=gi[m,m]*(s.diff(h[m,n],xx[m])-sum(Ga[l][m][m]*h[l,n]+Ga[l][m][n]*h[m,l] for l in range(3)))
 assert s.simplify(C-qv[n])==0
result={'radial_indicial':str(lead_r),'tangential_indicial':str(lead_t),'axial_Q_exact':True,'gauge_identity_components':3,'analytic_reflecting_IBVP':'assumption, not certified by these symbolic tests'}
Path(__file__).with_name('gauge_checks.json').write_text(json.dumps(result,indent=2));print(result)
