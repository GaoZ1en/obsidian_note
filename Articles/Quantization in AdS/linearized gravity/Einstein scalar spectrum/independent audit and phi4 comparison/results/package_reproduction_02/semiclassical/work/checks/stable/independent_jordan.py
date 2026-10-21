import sys
if sys.flags.optimize:
 raise RuntimeError("Verification requires Python assertions; optimization is forbidden")
"""Independent bivariate rank-one Clebsch projector lift. No original imports."""
import sympy as s,json,time
from collections import Counter,defaultdict
from functools import lru_cache
from pathlib import Path
OUT=Path(__file__).parent
@lru_cache(None)
def proj(d,T,k):
 v=[(-1)**(k-j)*s.binomial(k,j) for j in range(k+1)]
 for n in range(k,T):
  vv=[0]*(n+2)
  for j,x in enumerate(v):vv[j+1]+=(j+d)*x;vv[j]+=(n-j+d)*x
  v=vv
 h=[s.factorial(j)*s.factorial(T-j)/(s.rf(d,j)*s.rf(d,T-j)) for j in range(T+1)]
 norm=s.factor(sum(v[j]**2*h[j] for j in range(T+1)))
 return s.Matrix(T+1,T+1,lambda i,j:s.factor(v[i]*v[j]*h[j]/norm))
def gamma(d,k,l):
 m=min(k,l);j=abs(k-l);h=d+m;mu=d*(d-2);C=h*(h-1);u=4*mu-8*C
 if m==j==0:return -4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
 if j==0:return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
 if j==2:return u+(m+1)*(m+2)*(2*d+m-1)*(2*d+m)/((2*h-1)*(2*h+1)*(2*h+3))
 return u
@lru_cache(None)
def outputs(d,i,j):
 p=i[0]+j[0];q=i[1]+j[1];out=defaultdict(lambda:s.S.Zero)
 for k in range(p+1):
  for l in range(q+1):
   if (k+l)%2:continue
   g=gamma(d,k,l);L=proj(d,p,k);R=proj(d,q,l)
   for a in range(p+1):
    for b in range(q+1):
     st=tuple(sorted(z for z in ((a,b),(p-a,q-b)) if z!=(0,0)))
     out[st]+=g*L[a,i[0]]*R[b,i[1]]
 return {a:s.factor(v) for a,v in out.items() if v}
def center(p,q):
 out=defaultdict(lambda:s.S.Zero)
 for i in range(p+1):
  for j in range(q+1):
   st=((1,0),)*(p-i)+((0,1),)*(q-j)+(((i,j),) if i+j else ())
   out[tuple(sorted(st))]+=(-1)**(p+q-i-j)*s.binomial(p,i)*s.binomial(q,j)
 return {k:v for k,v in out.items() if v}
def multiply(f,g):
 out=defaultdict(lambda:s.S.Zero)
 for a,x in f.items():
  for b,y in g.items():out[tuple(sorted(a+b))]+=x*y
 return out
@lru_cache(None)
def labels(p,q,lower=(0,0)):
 if p==q==0:return ((),)
 out=[]
 for i in range(p+1):
  for j in range(q+1):
   if i+j<2 or (i,j)<lower:continue
   for st in labels(p-i,q-j,(i,j)):out.append(((i,j),)+st)
 return tuple(out)
def build(d,p,q):
 lab=labels(p,q);idx={z:i for i,z in enumerate(lab)};A=s.zeros(len(lab));B=A.copy();a=gamma(d,0,0)
 for column,states in enumerate(lab):
  poly={():s.S.One}
  for i,j in states:poly=multiply(poly,center(i,j))
  ac=defaultdict(lambda:s.S.Zero);bc=defaultdict(lambda:s.S.Zero)
  for st,co in poly.items():
   r=len(st);cc=Counter(st);ac[st]-=a*r*co;bc[st]+=a*r*(r+1)*co/2
   for i,ni in cc.items():
    rest=list(st);rest.remove(i)
    for out,v in outputs(d,(0,0),i).items():
     tgt=tuple(sorted(tuple(rest)+out));ac[tgt]+=co*ni*v;bc[tgt]-=co*r*ni*v
   keys=sorted(cc)
   for ii,i in enumerate(keys):
    for j in keys[ii:]:
     n=s.Rational(cc[i]*(cc[i]-1),2) if i==j else cc[i]*cc[j]
     if not n:continue
     rest=list(st);rest.remove(i);rest.remove(j)
     for out,v in outputs(d,i,j).items():bc[tuple(sorted(tuple(rest)+out))]+=co*n*v
  for st,v in ac.items():
   if (1,0) not in st and (0,1) not in st:A[idx[st],column]=s.factor(v)
  for st,v in bc.items():
   if (1,0) not in st and (0,1) not in st:B[idx[st],column]=s.factor(v)
 return lab,A,B
if __name__=='__main__':
 d=s.symbols('d',positive=True);N=s.symbols('N');started=time.time();lab,A,B=build(d,4,1)
 ids=[lab.index(z) for z in [((4,1),),((1,1),(3,0)),((2,0),(2,1))]];A=A[ids,ids];B=B[ids,ids]
 D4=(2*d-1)*(2*d+1)*(2*d+3)*(2*d+5);F=2*d**3-37*d*d-11*d+100
 slope=-d*d*(70*d*d+89*d-20)/((2*d-1)*(2*d+1)*(2*d+3));delta=d*d*F/(2*D4)
 v=3*d*d*(d+1)*(d+4)/((2*d-1)*(2*d+3)*(2*d+5));v2=2*delta-v
 expected=s.Matrix([[slope+delta,0,0],[v2,slope,0],[v,0,slope]])
 assert (A-expected).applyfunc(s.factor)==s.zeros(3)
 ell=s.Matrix([[-2,1,1]]);b0=-12*d*(2*d*d+7*d+2)/((2*d-1)*(2*d+1)*(2*d+3))
 assert (ell*B-b0*ell).applyfunc(s.factor)==s.zeros(1,3)
 S=s.Matrix([[1,0],[2,-1],[0,1]]);H=(N*A+B);HS=H*S;H2=HS[[0,2],:]
 assert (S*H2-HS).applyfunc(s.factor)==s.zeros(3,2)
 b11=-3*d*(38*d**3+169*d*d+131*d-108)/D4;b22=3*d*(4*d**4+20*d**3+11*d*d-39*d-4)/D4
 k=d*(d+3)*(2*d*d+25*d+36)/(2*(2*d+1)*(2*d+3)*(2*d+5))
 E=s.Matrix([[(slope+delta)*N+b11,k],[v*(N+6/d),slope*N+b22]])
 assert (H2-E).applyfunc(s.factor)==s.zeros(2)
 roots=s.polys.polytools.intervals(F,eps=s.Rational(1,10000));print('symbolic (4,1) A, B, invariant plane verified',time.time()-started,flush=True)
 lab31,A31,B31=build(d,3,1);ids=[lab31.index(z)for z in [((3,1),),((1,1),(2,0))]];A31=A31[ids,ids];B31=B31[ids,ids]
 dl=-6*d*d*(2*d*d+d-4)/D4;beta=(d+2)/d;ss=A31[1,1];bs=-6*d*(10*d**3+39*d*d+33*d-14)/D4
 assert (N*A31+B31-((ss*N+bs)*s.eye(2)+dl*s.Matrix([[N,beta],[3*N+9*beta,0]]))).applyfunc(s.factor)==s.zeros(2)
 res={'all_mass_4_1_A':True,'all_mass_4_1_B_invariant_plane':True,'all_mass_3_1_doublet':True,'resonance_root_intervals':str(roots),'seconds':round(time.time()-started,3),'A':str(A),'B':str(B)}
 (OUT/'independent_jordan_results.json').write_text(json.dumps(res,indent=2));print(res,flush=True)
