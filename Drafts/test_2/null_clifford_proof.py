"""Exact null-KSE Clifford algebra. Only Python standard library.
Indices 0..10; mostly plus; Gamma(0..10)=-1.
Variables a,b,c,t with a^2=b^2+c^2; f=(2a,2b,2c).
E_i=12D_i, K_ij=144 R_ij. No pre-existing files are changed.
"""
from fractions import Fraction as F

def pa(A,B):
 C=A.copy()
 for m,z in B.items():
  C[m]=C.get(m,0)+z
  if not C[m]: del C[m]
 return C
def ps(A,z): return {m:v*z for m,v in A.items() if v*z}
def red(m,z):
 if m[0]>=2:
  n=list(m);n[0]-=2;n[1]+=2;A=red(tuple(n),z);n[1]-=2;n[2]+=2
  return pa(A,red(tuple(n),z))
 return {m:z} if z else {}
def pm(A,B):
 C={}
 for m,z in A.items():
  for n,w in B.items(): C=pa(C,red(tuple(x+y for x,y in zip(m,n)),z*w))
 return C
one={(0,0,0,0):F(1)}
def var(i):
 t=[0]*4;t[i]=1;return {tuple(t):F(1)}
a,b,c,t=[var(i) for i in range(4)]
def ca(*args):
 C={}
 for A in args:
  for m,p in A.items():
   C[m]=pa(C.get(m,{}),p)
   if not C[m]:del C[m]
 return C
def cs(A,z):return {m:ps(p,z) for m,p in A.items() if ps(p,z)}
def cp(A,p):return {m:pm(v,p) for m,v in A.items() if pm(v,p)}
def mulmask(m,n):
 swaps=sum((n&((1<<i)-1)).bit_count() for i in range(11) if (m>>i)&1)
 return m^n,(-1)**(swaps+bool(m&n&1))
def cm(*args):
 C={0:one}
 for A in args:
  D={}
  for m,p in C.items():
   for n,r in A.items():
    k,sg=mulmask(m,n)
    if k.bit_count()>5:
     k,s=mulmask(k,2047);sg*=-s
    D[k]=pa(D.get(k,{}),ps(pm(p,r),sg))
    if not D[k]:del D[k]
  C=D
 return C
I={0:one}
def gam(*idx):return cm(*[{1<<i:one} for i in idx])
def sign(t):return (-1)**sum(t[i]>t[j] for i in range(len(t)) for j in range(i+1,len(t)))
eta=[-1]+[1]*10
U=ca(gam(0),gam(1));X=gam(9);A=gam(0,1,2);B=gam(3,4,5);C=gam(6,7,8)
H=ca(cp(A,a),cp(B,b),cp(C,c))
T=ca(cp(I,a),cs(cp(cm(A,B),b),-1),cs(cp(cm(A,C),c),-1)) # 2a PH
J=cm(ca(I,cs(cp(cm(U,gam(5,8)),t),-1)),X)

def build(sp,sm):
 cc={};flux={}
 for j in (0,1):
  cc[0,j,2]=ps(pm(a,pa(one,pm(t,t))),-1);cc[0,2,j]=ps(cc[0,j,2],-1)
  cc[1,j,2]=ps(pm(a,pa(one,ps(pm(t,t),-1))),-1);cc[1,2,j]=ps(cc[1,j,2],-1)
 for tri,r,s in [((3,4,5),b,sp),((6,7,8),c,sm)]:
  for i in tri:
   for j in tri:
    for k in tri:
     if len({i,j,k})==3:cc[i,j,k]=ps(r,2*s*sign((i,j,k)))
 flux={(0,1,2,9):ps(a,2),(3,4,5,9):ps(b,2),(6,7,8,9):ps(c,2)}
 for h in (0,1):
  flux[h,2,5,8]=ps(pm(a,t),-2);flux[h,3,4,8]=ps(pm(b,t),-2*sp);flux[h,5,6,7]=ps(pm(c,t),2*sm)
 slash=ca(*[cp(gam(*idx),p) for idx,p in flux.items()])
 def flow(i,j,k):return ps(cc.get((i,j,k),{}),eta[i])
 E=[]
 for k in range(11):
  D={}
  for i in range(11):
   for j in range(i+1,11):
    w=ps(pa(pa(flow(i,k,j),ps(flow(k,j,i),-1)),flow(j,i,k)),3)
    D=ca(D,cp(gam(i,j),w))
  D=ca(D,cs(cm(gam(k),slash),eta[k]))
  for idx,p in flux.items():
   if k in idx:
    pos=idx.index(k);rest=idx[:pos]+idx[pos+1:]
    D=ca(D,cp(gam(*rest),ps(p,-3*(-1)**pos)))
  E.append(D)
 K={}
 for i in range(11):
  for j in range(i+1,11):
   R=ca(cm(E[i],E[j]),cs(cm(E[j],E[i]),-1))
   for k in range(11):R=ca(R,cp(E[k],ps(cc.get((k,i,j),{}),-12)))
   K[i,j]=R
 return E,K

def fmtpoly(p):
 return '+'.join(str(z)+''.join('*'+v+('^'+str(e) if e>1 else '') for v,e in zip('abct',m) if e) for m,z in sorted(p.items())).replace('+-','-') or '0'
def fmt(A):
 return '\n'.join('('+fmtpoly(p)+') G'+(''.join(str(i)+',' for i in range(11) if (m>>i)&1) or 'I') for m,p in sorted(A.items())) or '0'

def verify():
 """Verify the finite analytic certificate, not a sampled matrix rank."""
 checks={}
 def eq(label,left,right=None):
  checks[label]=not ca(left,cs(right or {},-1))
 N=cm(U,gam(5,8));L=gam(0,1);Y=gam(10)
 PU2=ca(I,L);P=cm(T,PU2);P0=cm(T,ca(I,X))
 S=ca(I,cs(cp(N,t),F(-1,2)))
 eq('H squared',cm(H,H))
 eq('N squared',cm(N,N))
 eq('T squared',cm(T,T),cp(T,ps(a,2)))
 eq('T commutes N',cm(T,N),cm(N,T))
 eq('J squared',cm(J,J),I)
 for sp,sm in [(1,1),(-1,-1),(1,-1),(-1,1)]:
  E,K=build(sp,sm);tag=str((sp,sm))
  d=pa(ps(pm(b,b),1-sp),ps(pm(c,c),1-sm))
  eq(tag+' U R5y factor',cm(U,K[5,10]),cp(cm(U,Y,gam(5),B,H),ps(b,-8)))
  eq(tag+' Rxy annihilates ker U',cm(K[9,10],PU2))
  eq(tag+' Rxy PH factor',cm(K[9,10],T),cp(cm(U,gam(5,8),Y,T),ps(pm(t,d),24)))
  eq(tag+' R5y on ker U',cm(K[5,10],PU2),cp(cm(Y,gam(5),B,H,PU2),ps(b,-8)))
  if (sp,sm)==(1,1):
   eq(tag+' R5y factor',K[5,10],cp(cm(Y,gam(5),B,H),ps(b,-8)))
   rhs=cp(cm(gam(2,5,8),ca(I,cs(L,2)),ca(I,cp(N,t)),ca(I,cs(J,-1)),T),ps(pm(pm(a,a),t),72))
   eq(tag+' R02 PH factor',cm(K[0,2],T),rhs)
   M=[cp(ca(gam(0,2),cs(gam(1,2),-1)),ps(a,6))]*2+[cp(L,ps(a,-12))]
   M +=[cp(cm(gam(i),B),ps(b,-12)) for i in range(3,6)]
   M +=[cp(cm(gam(i),C),ps(c,-12)) for i in range(6,9)]+[{},{}]
   for i in range(11):eq(tag+' connection '+str(i),cm(E[i],S,P0),cm(S,M[i],P0))
   Pi=cm(T,ca(I,J));scale=ps(a,4)
  elif (sp,sm)==(-1,-1):
   eq(tag+' R0x null-seed factor',cm(K[0,9],P),cp(cm(gam(5,8),ca(I,X),P),ps(pm(pm(a,a),t),48)))
   Pi=cm(P,ca(I,cs(X,-1)));scale=ps(a,8)
   M=[{}, {}, {}]+[cp(cm(gam(i),B),ps(b,12)) for i in range(3,6)]
   M +=[cp(cm(gam(i),C),ps(c,12)) for i in range(6,9)]+[{},{}]
   for i in range(11):eq(tag+' connection '+str(i),cm(E[i],Pi),cm(M[i],Pi))
  else:
   rhs=cp(cm(X,Y,P),ps(pm(pm(pm(a,b),c),t),-48*(sp-sm)))
   eq(tag+' mixed invertible obstruction',cm(H,gam(5,8),Y,K[0,10],P),rhs)
   continue
  eq(tag+' projector idempotence',cm(Pi,Pi),cp(Pi,scale))
  # All non-scalar Clifford matrices in this irreducible representation
  # have trace zero: Pi has trace 32a before normalization.
  checks[tag+' projector scalar coefficient']=Pi.get(0)==a
  for ij,R in K.items():eq(tag+' flat '+str(ij),cm(R,Pi))
  for i,D in enumerate(E):eq(tag+' parallel '+str(i),cm(ca(cp(I,scale),cs(Pi,-1)),D,Pi))
 failed=[label for label,passed in checks.items() if not passed]
 print('Exact null Clifford identities:',len(checks),'failed:',failed)
 if failed:raise SystemExit(1)
 return checks

if __name__=='__main__': verify()
