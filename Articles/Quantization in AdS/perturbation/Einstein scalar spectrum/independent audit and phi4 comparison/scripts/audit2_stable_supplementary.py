"""Exact finite supplementary checks of inverse systems and low operators."""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
checks=[]
def ck(label,b,**kw):
 b=bool(b);checks.append(dict(label=label,passed=b,**kw));print(label,'PASS' if b else 'FAIL',flush=True)
 if not b:raise AssertionError(label)
for N in range(2,6):
 R=PolynomialRing(QQ,['u'+str(i) for i in range(N-1)]);u=R.gens()
 for m in (3,4):
  I=R.ideal([ui**m for ui in u]+[(u[i]-u[j])**m for i in range(N-1) for j in range(i)])
  hs=I.hilbert_series() if N>2 else sum(R.gen()**j for j in range(m));t=hs.parent().gen()
  expected=(1+t)**N-t if m==3 else (1+(N-1)*t*t)*(1+t)**(N-1)
  ck('EX05_root_ideal_N%d_power%d'%(N,m),hs==expected)

# Complete N4 chiral P6 primary has these three invariant polynomials.
N=4;d=QQ(2);T=6
R=PolynomialRing(QQ,['z'+str(i) for i in range(N)]);z=R.gens();Z=[a-sum(z)/N for a in z]
p2=sum(a*a for a in Z);p3=sum(a**3 for a in Z);p4=sum(a**4 for a in Z)
basis=[p2**3,p3**2,p2*p4]
def Cij(f,i,j):
 delta=z[i]-z[j]
 return -delta**2*f.derivative(z[i]).derivative(z[j])+d*delta*(f.derivative(z[i])-f.derivative(z[j]))+d*(d-1)*f
def project(f,i,j,k):
 for l in range(T+1):
  if l!=k:f=(Cij(f,i,j)-(d+l)*(d+l-1)*f)/((d+k)*(d+k-1)-(d+l)*(d+l-1))
 return R(f)
mon=sorted(set(m for f in basis for m in f.monomials()),key=str)
C=matrix(QQ,[[f.monomial_coefficient(m) for f in basis] for m in mon]);rows=C.transpose().pivots();small=C.matrix_from_rows(rows)
channels=[]
for k in (0,2):
 out=[sum(project(f,i,j,k) for i in range(N) for j in range(i)) for f in basis]
 M=matrix(QQ,[[f.monomial_coefficient(m) for f in out] for m in mon]);W=small.inverse()*M.matrix_from_rows(rows)
 ck('EX08_channel%d_invariant_primary'%k,C*W==M)
 channels.append(W)
W0,W2=channels
ck('EX08_rank_two_commutator',(W0*W2-W2*W0).rank()==2)
cols=[]
for i in range(3):
 for j in range(3):
  E=zero_matrix(QQ,3);E[i,j]=1
  cols.append(vector(QQ,(E*W0-W0*E).list()+(E*W2-W2*E).list()))
constraint=matrix(cols).transpose()
ck('EX08_scalar_common_commutant',9-constraint.rank()==1)
# D2 and exact chiral P2/P3 energies for N3,d2.
g0=-QQ(56)/5;g2=-QQ(552)/35;s=(g2-g0)/(2*(2*d+1))
g=lambda P:3*g0+s*P*(3*d+P-1)
ck('EX08_D2_counterexample',g(2)==-40 and g(3)==-QQ(312)/7 and 2*(g(3)-g(2))==-QQ(64)/7)

# General Gegenbauer diagonal extraction for independent formal r_i.
RR=PolynomialRing(QQ,['r0','r1','r2','r3']);KK=RR.fraction_field();r0,r1,r2,r3=KK.gens()
R=PolynomialRing(KK,['x','y']);x,y=R.gens();J=y*y+4*x**3
F=[]
for b in range(13):
 f=y**b;co=QQ(1)
 for j in range(1,b//2+1):
  co*=QQ(4*(b-2*j+2)*(b-2*j+1))/(b*(b-1)-(b-2*j)*(b-2*j-1))
  f+=co*x**(3*j)*y**(b-2*j)
 F.append(f)
 ck('ST06_Gegenbauer_equation_b'+str(b),J*f.derivative(y,2)==b*(b-1)*f)
def D(f):return R(J*(r0*f.derivative(y,2)+r1*f.derivative(x,3)+r2*x*f.derivative(x).derivative(y,2)+r3*y*f.derivative(y,3)))
for P in range(2,25):
 ab=[((P-3*b)//2,b) for b in range(P//3+1) if (P-3*b)%2==0]
 basis=[x**a*F[b] for a,b in ab];mons=[x**a*y**b for a,b in ab]
 M=matrix(KK,[[f.monomial_coefficient(m) for f in basis] for m in mons]);Dmat=matrix(KK,[[D(f).monomial_coefficient(m) for f in basis] for m in mons]);rep=M.inverse()*Dmat
 for j,(a,b) in enumerate(ab):
  eta=b*(b-1)*(r0+r2*a+r3*(b-2)+2*r1*(QQ((a+1)*(a+2)*(a+3))/(2*b-3)-QQ(a*(a-1)*(a-2))/(2*b+1)))
  ck('ST08_eta_P%d_a%d_b%d'%(P,a,b),rep[j,j]==eta)

path=OUT/'results/audit2_stable_supplementary.json'
path.write_text(json.dumps({'sage_version':sage_version,'all_passed':all(c['passed'] for c in checks),'checks':checks,'channel0_N4_P6':str(W0),'channel2_N4_P6':str(W2)},indent=2)+'\n');print('RESULT',path)
