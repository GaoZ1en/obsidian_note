"""Exact finite checks and numerical illustrations for new contact resonance theorem.

Run with Python + SymPy + mpmath. Imports only this investigation's own radial construction.
Every claim with an infinite quantifier is proved in stable_report.md; these are corroborating checks.
"""
import sys,json
sys.path.insert(0,'stable_work')
from independent_contact import *
import mpmath as mp

d=s.symbols('d',positive=True)
checks=[]
for p in range(6):
    for q in range(6):
        if p+q==0:continue
        exact=vertex((0,0),(p,q),(0,0),(p,q),d)
        formula=2*s.binomial(p+q,p)*s.rf(d,p)*s.rf(d,q)/s.rf(2*d,p+q)
        residue=s.factor(exact-formula)
        assert residue==0,(p,q,residue)
        checks.append({'kind':'ground_excited_integral','p':p,'q':q,'residual':'0'})

# Entire n,beta algebraic recurrence proof of the adjacent triple integral.
n,b=s.symbols('n b',positive=True);m=n-1
a=2*(m+1)*(m+b+1)/((2*m+b+1)*(2*m+b+2))
diag=b*b/((2*m+b)*(2*m+b+2))
c=2*m*(m+b)/((2*m+b)*(2*m+b+1))
r1=(2*n+2*b+1)*b/(2*(b+n)*(b+1))
r2=(n-1)*(2*n+2*b+1)*b*(b-1)/((2*n-1)*(b+n-1)*(b+1)*(b+2))
triple=(b+2)*a/2+((b+2)*diag-b)*r1/2+(b+2)*c*r2/2
assert s.factor(triple-n/(2*n-1))==0
checks.append({'kind':'all_index_triple_integral_recurrence','residual':'0'})

for j in range(2,9):
    gj=2*s.rf(s.Rational(1,2),j)*s.rf(d,j)/(s.factorial(j)*s.rf(d+s.Rational(1,2),j))
    got=vertex((1,1),(j-1,j-1),(0,0),(j,j),d)
    expect=j*j*d*gj/((2*j-1)*(d+j-1)*(1+int(j==2)))
    assert s.factor(got-expect)==0
    checks.append({'kind':'adjacent_contact_vertex','n':j,'residual':'0'})

# All-index rational sign identities underlying uniqueness and mass monotonicity.
A=(2*d+1)*(d+2*n-1)/(2*d+2*n-1)
deriv=s.factor(s.diff(A,d))
expected=(4*d*d+4*(2*n-1)*d+(2*n-1)*(4*n-3))/(2*d+2*n-1)**2
assert s.factor(deriv-expected)==0
den=(n+1)*(2*d+2*n+1)*(d+2*n-1)
num=(2*n-1)*(d+n-1)*(d+2*n+1)
assert s.expand(den-num-(3*d*d+(8*n-1)*d+8*n*n-2))==0
checks.append({'kind':'all_index_monotonicity','d_derivative':str(deriv),'n_ratio_den_minus_num':str(s.expand(den-num))})

# Independent exact reconstruction of Newton coefficients at the first resonance.
N,d0,states,M,X,K,AA,BB=degree22()
dc=(s.sqrt(13)-1)/2;T,z,k=s.symbols('T z k')
Ac=AA.subs(d0,dc).applyfunc(s.simplify);Bc=BB.subs(d0,dc).applyfunc(s.simplify)
sig=-2/s.sqrt(13)
char=((sig*T*T+z*T+k)*s.eye(3)-T*T*Ac-Bc).det().expand()
c4=s.simplify(char.coeff(T,4));c3=s.simplify(char.coeff(T,3))
bet2=18/(13+2*s.sqrt(13))**2
constant=-(dc+2)/(13+2*s.sqrt(13))
assert s.simplify(c4.subs(z*z,bet2))==0
assert s.simplify(c3.subs(k,constant).subs(z*z,bet2))==0
checks.append({'kind':'critical22_Newton','T4':str(c4),'T3':str(c3),'beta_squared':str(bet2),'constant':str(constant)})

mp.mp.dps=65
def gn(j,x):
    return 2*mp.exp(mp.loggamma(j+mp.mpf('.5'))-mp.loggamma(mp.mpf('.5'))-mp.loggamma(j+1)+mp.loggamma(x+j)-mp.loggamma(x)+mp.loggamma(x+mp.mpf('.5'))-mp.loggamma(x+j+mp.mpf('.5')))
def Fn(j,x):return (2*x+1)*gn(j-1,x)*(x+2*j-1)/(j*(2*x+2*j-1))
examples=[]
for j in [2,3,4,5,6,7,8,16,32,64,128,256,1024,4096]:
    lo=mp.mpf(1);hi=mp.mpf(2)
    while Fn(j,hi)<1:hi*=2
    for _ in range(240):
        mid=(lo+hi)/2
        if Fn(j,mid)<1:lo=mid
        else:hi=mid
    dc=(lo+hi)/2
    bval=j*gn(j,dc)/((2*j-1)*mp.sqrt(1+int(j==2)))
    remainder=(dc-mp.sqrt(mp.pi)/2*j**mp.mpf('1.5')+mp.mpf(j)/2)/mp.sqrt(j)
    examples.append({'n':j,'critical_Delta':mp.nstr(dc,45),'normalized_nonzero_entry_b_n':mp.nstr(bval,45),'scaled_two_term_mass_remainder':mp.nstr(remainder,25)})
with open('stable_work/new_theorem_verification.json','w') as f:json.dump({'exact_checks':checks,'numerical_illustrations':examples},f,indent=2)
print('Exact checks:',len(checks),'all passed')
for a in examples:print(a)
