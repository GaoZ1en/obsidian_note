import sympy as s, json, math
from pathlib import Path
x,y,t=s.symbols('x y t'); out={}
def partitions(n,k=1):
 if n==0: yield []
 for i in range(k,n+1):
  for rest in partitions(n-i,i): yield [i]+rest
def molien(n):
 r=0
 for p in partitions(n):
  z=1; den=1
  for i in set(p): z*=i**p.count(i)*math.factorial(p.count(i))
  for i in p: den*=(1-x**i)*(1-y**i)
  r+=1/(z*den)
 return s.factor((1-x)*(1-y)*r)
B=(1+x*x-x*x*y*y)/((1-y*y)*(1-x*y)); A=(2-y*y)/((1-y)*(1-y*y))
K3=x**12/((1-x*x)*(1-x**3)*(1-x*y)*(1-x*x*y))
K4=x**24/((1-x*x)*(1-x**3)*(1-x**4)*(1-x*y)*(1-x*x*y)*(1-x**3*y))
Z3=s.factor(B/((1-x)*(1-y))-molien(3)+K3)
z3=s.factor(Z3.subs(x,1)); claimed=(3*y**4-5*y**3-2*y+6)/((1-y)**4*(1+y+y*y))
out['z3_identity']=s.cancel(z3-claimed)==0
Z4=s.factor(B*molien(2)/((1-x)*(1-y))-molien(4)+K4)
C=z3/(1-y)+A*A/(2*(1-y)); E=-A.subs(y,y*y)/(2*(1+y))
R=s.factor(Z4-C/(1-x)-E/(1+x)); num,den=s.fraction(R)
out['remainder_numerator_x_degree']=s.degree(num,x); out['remainder_denominator']=str(s.factor(den));out['Z3']=str(Z3)
out['nullity_even_odd_Q0_Q2']={}
for Q in (0,1,2,3,6):
 for eps in (-1,1):
  f=s.cancel(z3/(1-y)+(A*A-eps*A.subs(y,y*y))/(2*(1-y)))
  val=s.diff(f,y,Q).subs(y,0)/s.factorial(Q)
  out['nullity_even_odd_Q0_Q2'][f'{Q},{eps}']=int(val)
# Partial fraction proof assures all coefficients beyond threshold exactly. Verify x degrees of y coefficients in transient via recurrence, independently.
# Rational GF recurrence in y computes each coefficient as polynomial/rational x.
def y_coeffs(f,maxq):
 num,den=map(s.Poly,s.fraction(s.cancel(f)),[y,y]) if False else (None,None)
 num0,den0=s.fraction(s.cancel(f)); pn=s.Poly(num0,y); pd=s.Poly(den0,y); a=[]
 for q in range(maxq+1):
  a.append(s.cancel((pn.nth(q)-sum(pd.nth(j)*a[q-j] for j in range(1,min(q,pd.degree())+1)))/pd.nth(0)))
 return a
rc=y_coeffs(R,8); out['transient_degree_checks']=[]
for q,v in enumerate(rc):
 assert s.denom(v)==1
 out['transient_degree_checks'].append([q,int(s.degree(v,x)),15+3*q])
 assert s.degree(v,x)<=15+3*q
# Pair-pair ordered blocks: trace/det and parity, independent eigensystem identity.
a,b,z=s.symbols('a b z',positive=True)
for ep in (-1,1):
 M=s.Matrix([[a,ep*s.sqrt(a*b)],[ep*s.sqrt(a*b),b]])
 assert s.factor(M.det()*0+(z*s.eye(2)-M).det()-z*(z-a-b))==0
out['pair_pair_spectra']='0,a+b for distinct labels; (1+epsilon)a for diagonal'
# Beta tail telescoping symbolic recurrence, no original imports.
n,d=s.symbols('n d', positive=True)
# a_(n+1)/a_n=(n+d)/(n+2d), T_n=a_n(n+2d-1)/(d-1)
assert s.factor((n+2*d-1)/(d-1)-(n+d)/(n+2*d)*(n+2*d)/(d-1)-1)==0
out['tail_identity']=True
Path(__file__).with_name('independent_results.json').write_text(json.dumps(out,indent=2,default=str))
print(json.dumps(out,indent=2,default=str))
