import sys
if sys.flags.optimize:
 raise RuntimeError("Verification requires Python assertions; optimization is forbidden")
"""Fresh rank-two descendant / creation-lift check. No package imports."""
import sympy as s, json, time
from functools import lru_cache
from collections import Counter,defaultdict
from pathlib import Path
OUT=Path(__file__).parent
@lru_cache(None)
def parts(n,m=1):
 if not n:return ((),)
 return tuple((j,)+z for j in range(m,n+1) for z in parts(n-j,j))
def mul(f,g):
 out=defaultdict(lambda:s.S.Zero)
 for a,x in f.items():
  for b,y in g.items():out[tuple(sorted(a+b))]+=x*y
 return dict(out)
def center(n):
 out=defaultdict(lambda:s.S.Zero)
 for k in range(n+1):out[tuple(sorted((1,)*(n-k)+((k,) if k else ())))]+=s.binomial(n,k)*(-1)**(n-k)
 return {a:b for a,b in out.items() if b}
@lru_cache(None)
def pair(d,T):
 # Basis z1^j z2^(T-j). Rank one physical projectors obtained by raising primaries.
 u=-4*d*d
 a=u+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
 b=u+4*d/((2*d+1)*(2*d+3))
 h=[s.factor(s.factorial(j)*s.factorial(T-j)/(s.rf(d,j)*s.rf(d,T-j))) for j in range(T+1)]
 w=s.zeros(T+1)
 for j in range(T+1):w[j,j]+=u/2;w[T-j,j]+=u/2
 for k,ev in [(0,a),(2,b)]:
  if k>T:continue
  v=[(-1)**(k-j)*s.binomial(k,j) for j in range(k+1)]
  for degree in range(k,T):
   nxt=[s.S.Zero]*(degree+2)
   for j,z in enumerate(v):
    nxt[j+1]+=(j+d)*z;nxt[j]+=(degree-j+d)*z
   v=nxt
  norm=s.factor(sum(v[j]**2*h[j] for j in range(T+1)))
  for i in range(T+1):
   for j in range(T+1):w[i,j]+=(ev-u)*v[i]*v[j]*h[j]/norm
 return w.applyfunc(s.factor)
@lru_cache(None)
def outputs(d,i,j):
 T=i+j; w=pair(d,T); out=defaultdict(lambda:s.S.Zero)
 for k in range(T+1):out[tuple(sorted(x for x in (k,T-k) if x))]+=w[k,i]
 return {a:s.factor(b) for a,b in out.items() if b}
def action(d,poly):
 a=pair(d,0)[0,0];AA=defaultdict(lambda:s.S.Zero);BB=defaultdict(lambda:s.S.Zero)
 for st,coef in poly.items():
  cc=Counter(st);r=len(st)
  AA[st]-=coef*a*r;BB[st]+=coef*a*r*(r+1)/2
  for i,ni in cc.items():
   rem=list(st);rem.remove(i)
   for tgt,z in outputs(d,0,i).items():
    tt=tuple(sorted(tuple(rem)+tgt));AA[tt]+=coef*ni*z;BB[tt]-=coef*r*ni*z
  keys=sorted(cc)
  for ix,i in enumerate(keys):
   for j in keys[ix:]:
    mult=s.Rational(cc[i]*(cc[i]-1),2) if i==j else cc[i]*cc[j]
    mult=s.Rational(mult)
    if not mult:continue
    rem=list(st);rem.remove(i);rem.remove(j)
    for tgt,z in outputs(d,i,j).items():BB[tuple(sorted(tuple(rem)+tgt))]+=coef*mult*z
 return ({st:s.factor(v) for st,v in AA.items() if 1 not in st and v},{st:s.factor(v) for st,v in BB.items() if 1 not in st and v})
def matrices(d,P):
 labels=parts(P,2);idx={z:i for i,z in enumerate(labels)};A=s.zeros(len(labels));B=A.copy()
 for col,st in enumerate(labels):
  pol={():s.S.One}
  for k in st:pol=mul(pol,center(k))
  ap,bp=action(d,pol)
  for z,v in ap.items():A[idx[z],col]=v
  for z,v in bp.items():B[idx[z],col]=v
 return labels,A,B
def rcoeff(d):
 D3=34*d**3+273*d**2+611*d+240;D4=86*d**4+1085*d**3+4743*d**2+7834*d+2800;E4=214*d**4+2709*d**3+11915*d**2+19854*d+7056
 def horner(seq):
  v=0
  for z in seq:v=v*d+z
  return v
 P7=horner([392,9492,89350,421595,1048276,1289469,633490,102000]);P14=horner([67104,3197136,66188408,795919444,6226850796,33484727498,127072393159,343156515762,655642305361,869816630456,776152186308,445514734144,155217203264,29611287360,2362752000]);P11=horner([16,-1776,-52556,-618940,-4053536,-16362829,-41978760,-67587211,-64664772,-33117132,-8025696,-677376])
 return [-162*(d+2)*(d+3)*(d+4)**2*(2*d*d+9*d+3)*P7/((d+1)*(2*d-1)*(2*d+3)*D3**3),24*(d+2)**2*(d+3)*(d+4)**2*(2*d*d+9*d+3)/((d+1)*(2*d-1)*(2*d+3)*D3),-54*(d+3)*(d+4)*P14/(5*(d+1)*(2*d-1)*(2*d+1)*(2*d+3)*(2*d+7)*D3**2*D4),-405*(d+2)*(d+3)*(d+4)*(d+5)*(2*d*d+11*d+6)**2*P11/((d+1)*(2*d-1)*(2*d+1)*(2*d+3)*(2*d+7)*D3**3*E4)]
def verify(d,P):
 tt=time.time();lab,A,B=matrices(d,P);low=[i for i,l in enumerate(lab) if all(k in (2,3) for k in l)];hi=[i for i in range(len(lab)) if i not in low]
 sig=-2*d*d*(2*d*d+7*d+2)/((2*d-1)*(2*d+1)*(2*d+3)); beta=sig/d;eps=54*d*(d+3)*(d+4)**2*(2*d*d+9*d+3)/((2*d-1)*(2*d+3)*(34*d**3+273*d*d+611*d+240))
 K=A-sig*s.Rational(P,2)*s.eye(len(lab));assert K[:,low]==s.zeros(len(lab),len(low))
 Di=K[hi,hi].inv().applyfunc(s.cancel);T=K[low,hi];L=(-T*Di).applyfunc(s.cancel);Bl=(B[low,low]+L*B[hi,low]).applyfunc(s.factor);Rh=(Di*B[hi,low]).applyfunc(s.cancel);Rl=(T*Di*Rh).applyfunc(s.cancel);C=(-Bl*Rl-(B[low,hi]+L*B[hi,hi]).applyfunc(s.cancel)*Rh).applyfunc(s.factor)
 x,y=s.symbols('x y');rs=rcoeff(d);Bt=s.zeros(len(low));Ct=Bt.copy();S=Bt.copy();eta=[]
 for j,idx in enumerate(low):
  st=lab[idx];aa=st.count(2);bb=st.count(3);f=x**aa*y**bb
  bf=beta*P*(P-1)/2*f+eps/2*(y*y+4*x**3)*s.diff(f,y,2)
  cf=(y*y+4*x**3)*(rs[0]*s.diff(f,y,2)+rs[1]*s.diff(f,x,3)+rs[2]*x*s.diff(f,x,y,y)+rs[3]*y*s.diff(f,y,3))
  fb=y**bb;v=s.S.One
  for jj in range(1,bb//2+1):
   v*=s.Rational(4*(bb-2*jj+2)*(bb-2*jj+1),bb*(bb-1)-(bb-2*jj)*(bb-2*jj-1));fb+=v*x**(3*jj)*y**(bb-2*jj)
  ef=s.expand(x**aa*fb)
  for i,ii in enumerate(low):
   z=lab[ii];args=(z.count(2),z.count(3))
   Bt[i,j]=s.expand(bf).coeff(x,args[0]).coeff(y,args[1]);Ct[i,j]=s.expand(cf).coeff(x,args[0]).coeff(y,args[1]);S[i,j]=ef.coeff(x,args[0]).coeff(y,args[1])
  eta.append(bb*(bb-1)*(rs[0]+rs[2]*aa+rs[3]*(bb-2)+2*rs[1]*(s.Rational((aa+1)*(aa+2)*(aa+3),2*bb-3)-s.Rational(aa*(aa-1)*(aa-2),2*bb+1))))
 assert (Bl-Bt).applyfunc(s.factor)==s.zeros(len(low))
 assert (C-Ct).applyfunc(s.factor)==s.zeros(len(low))
 diag=S.inv()*C*S
 assert all(s.factor(diag[i,i]-eta[i])==0 for i in range(len(low)))
 return {'Delta':str(d),'P':P,'dimension':len(lab),'low_dimension':len(low),'B_low':True,'C2':True,'eta':True,'seconds':round(time.time()-tt,3)}
if __name__=='__main__':
 checks=[]
 for d,P in [(s.Rational(5,4),6),(s.Rational(5,4),8),(s.Rational(5,4),9),(s.Rational(7,3),10),(s.Integer(5),12),(s.Rational(7,3),14)]:
  z=verify(d,P);checks.append(z);print(z,flush=True);(OUT/'independent_stable_results.json').write_text(json.dumps(checks,indent=2))
