"""Independent algebraic checks for CL claims; run in a fresh Sage Python kernel.
No manuscript implementation or old audit program is imported.
Finite CG tests are diagnostic, not a proof of the all-index Racah identity.
Rational identities/degree bounds certify all indicated formal degrees.
"""
from sage.all import *
from pathlib import Path
import json

OUT = Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
checks = []
def check(label, value, detail=None):
    if value is not True and value is not False:
        raise TypeError((label, type(value)))
    checks.append({'label': label, 'passed': value, 'detail': detail})
    if not value:
        raise AssertionError(label)

def rf(x,n):
    return prod(x+j for j in range(n))

# Exact Molien sums generated from partitions, rather than copied long certificates.
R=PolynomialRing(QQ, names=('x','y')); x,y=R.gens(); F=R.fraction_field()
def molien(n):
    ans=F(0)
    for lam in Partitions(n):
        counts={j:list(lam).count(j) for j in set(lam)}
        z=prod(ZZ(j)**m*factorial(m) for j,m in counts.items())
        ans += 1/(z*prod((1-x**j)*(1-y**j) for j in lam))
    return F((1-x)*(1-y)*ans)
B=F((1+x*x-x*x*y*y)/((1-y*y)*(1-x*y)))
K3=F(x**12/((1-x*x)*(1-x**3)*(1-x*y)*(1-x*x*y)))
K4=F(x**24/((1-x*x)*(1-x**3)*(1-x**4)*(1-x*y)*(1-x*x*y)*(1-x**3*y)))
Z3=B/((1-x)*(1-y))-molien(3)+K3
Z4=B*molien(2)/((1-x)*(1-y))-molien(4)+K4
Z3printed=F(((x**7+x**5+x**4)*(y**4-y**3-y+1)+(x**3+x*x)*(1-y**3)+x+y)/((1-y)**2*(1-x*y)*(1-x*x*y)*(1+y+y*y)))
check('CL.J5 exact bivariate rational identity', Z3==Z3printed)
z3=F((3*y**4-5*y**3-2*y+6)/((1-y)**4*(1+y+y*y)))
check('CL.J6 coefficientwise x=1 identity', Z3.numerator()(x=1)/Z3.denominator()(x=1)==z3)
A=F((2-y*y)/((1-y)*(1-y*y)))
C=z3/(1-y)+A*A/(2*(1-y))
Ay2=F(A.numerator()(y=y*y)/A.denominator()(y=y*y))
E=-Ay2/(2*(1+y))
rem=(Z4-C/(1-x)-E/(1+x))*prod(1-x**j*y for j in (1,2,3))
check('CL.J7-J10 all-Q transient degree certificate', rem.denominator().degree(x)==0 and rem.numerator().degree(x)==15,
      {'x_degree':str(rem.numerator().degree(x)), 'denominator':str(rem.denominator())})
S=PowerSeriesRing(QQ,'v',default_prec=5); v=S.gen()
def yseries(z):
    return S(z.numerator()(x=0,y=v))/S(z.denominator()(x=0,y=v))
zero_even=yseries(z3/(1-y)+(A*A-Ay2)/(2*(1-y)))
zero_odd=yseries(z3/(1-y)+(A*A+Ay2)/(2*(1-y)))
check('CL.25 exact low-budget auxiliary nullities', [zero_even[0],zero_odd[0],zero_even[2],zero_odd[2]]==[7,9,64,68],
      {'even_Q0_to4':str(zero_even),'odd_Q0_to4':str(zero_odd)})

# Independent discrete-series polynomial inner products and exact physical transposition.
P=PolynomialRing(QQ,names=('z0','z1','z2')); zz=P.gens()
def raise_once(poly,sites,weights):
    return sum(zz[i]**2*poly.derivative(zz[i])+2*weights[i]*zz[i]*poly for i in sites)
def raise_n(poly,n,sites,weights):
    for _ in range(n): poly=raise_once(poly,sites,weights)
    return poly
def couple(A,B,m,a,b,sitesA,sitesB,weights):
    return sum((-1)**r*binomial(m,r)*raise_n(A,r,sitesA,weights)*raise_n(B,m-r,sitesB,weights)/(rf(2*a,r)*rf(2*b,m-r)) for r in range(m+1))
def normsq(poly,weights):
    return sum(c*c*prod(factorial(e[i])/rf(2*weights[i],e[i]) for i in range(3)) for e,c in poly.dict().items())
def ip(poly,other,weights):
    od=other.dict()
    return sum(c*od.get(e,0)*prod(factorial(e[i])/rf(2*weights[i],e[i]) for i in range(3)) for e,c in poly.dict().items())
def omega(n,a,b,c,t):
    return binomial(t,n)*(2*n+2*b+2*c-1)*rf(2*b,n)*rf(t+2*a+2*b+2*c-1,n)*rf(2*a,t-n)/(rf(2*c,n)*rf(2*b+2*c+n-1,t+1))
def hyper(u,v,a,b,c,t):
    return sum(rf(-v,j)*rf(v+2*b+2*c-1,j)*rf(-u,j)*rf(u+2*a+2*b-1,j)/(rf(2*b,j)*rf(t+2*a+2*b+2*c-1,j)*rf(-t,j)*factorial(j)) for j in range(min(u,v)+1))
cg_count=0; perm_count=0
for weights in [(QQ(1),QQ(1),QQ(1)),(QQ(3)/4,QQ(5)/4,QQ(7)/4)]:
    a,b,c=weights
    for t in range(0,7):
        left=[]; right=[]
        for u in range(t+1):
            AB=couple(P(1),P(1),u,a,b,[0],[1],weights)
            left.append(couple(AB,P(1),t-u,a+b+u,c,[0,1],[2],weights))
            BC=couple(P(1),P(1),u,b,c,[1],[2],weights)
            right.append(couple(P(1),BC,t-u,a,b+c+u,[0],[1,2],weights))
        for u in range(t+1):
            for v0 in range(t+1):
                inner=ip(left[u],right[v0],weights)
                exact=inner**2/(normsq(left[u],weights)*normsq(right[v0],weights))
                predicted=omega(u,c,b,a,t)*omega(v0,a,b,c,t)*hyper(u,v0,a,b,c,t)**2
                check('CG overlap square %s t=%s u=%s v=%s'%(weights,t,u,v0),exact==predicted)
                cg_count+=1
                if a==b==c:
                    swap=left[v0](*[zz[0],zz[2],zz[1]])
                    trans=ip(left[u],swap,weights)
                    actual_sign=QQ(trans).sign()
                    expected_sign=QQ((-1)**(t+u+v0)*hyper(u,v0,a,b,c,t)).sign()
                    check('physical U23 sign t=%s u=%s v=%s'%(t,u,v0),actual_sign==expected_sign)
                    perm_count+=1

# Symbolic chiral determinant and exhaustive finite minimum certificate with analytic tail.
T=PolynomialRing(QQ,names=('t','s')); t,s=T.gens(); TF=T.fraction_field()
a=QQ(24)/5; b=QQ(8)/35
w0=TF(6/((t+2)*(t+3)))
w2=TF(84*(t-1)*(t+6)/((t+1)*(t+2)*(t+3)*(t+4)))
H=TF(1-50/(t*(t+5))+300/(t*(t-1)*(t+5)*(t+6)))
Cv=(t+2)*(t+3); L=(5*s+24)*(35*s+8)
for eta in [1,-1]:
    det=((s+a+2*eta*a*w0)*(s+b+2*eta*b*w2*H)-4*a*b*w0*w2)/((s+a)*(s+b))
    poly=L*Cv**2*(Cv-2)*(Cv-6)+eta*(16800*s*Cv*(Cv**2-32*Cv+396)+34560*Cv*(Cv**2-64*Cv+908))-19353600*(Cv-18)
    check('CL.31 arbitrary t,s rational determinant eta=%s'%eta,det==TF(poly/(L*Cv**2*(Cv-2)*(Cv-6))))
q=QQ(7)/200; zero_degrees=[]; nine=None
for j in range(2,129):
    u=QQ(w0(t=j,s=0)); v0=QQ(w2(t=j,s=0)); hh=QQ(H(t=j,s=0)); eta=(-1)**j
    tr=a+b+2*eta*(a*u+b*v0*hh)
    de=(a+2*eta*a*u)*(b+2*eta*b*v0*hh)-4*a*b*u*v0
    check('CL.M finite positivity t=%s'%j,de>=0 and tr>0)
    if j==9:
        nine=(tr,de)
        check('CL.M unique small positive candidate t=9',de>0 and de-q*tr+q*q<0)
    elif de==0:
        zero_degrees.append(j); check('CL.M zero block positive root t=%s'%j,tr>q)
    else: check('CL.M all other finite positive roots t=%s'%j,tr>2*q and de-q*tr+q*q>0)
check('CL.M2 t=9 coefficients',nine==(QQ(3654200)/825825,QQ(124032)/825825))
T0=ZZ(129)
U0=QQ(6)/((T0+2)*(T0+3))
U2=84*(1+QQ(5)/(T0+1))/((T0+2)*(T0+3))
UH=1+QQ(50)/(T0*(T0+5))+QQ(300)/(T0*(T0-1)*(T0+5)*(T0+6))
row=max(U0,U2*UH)+(U0+U2)/2
check('CL.M4 exact analytic-tail constant',row==QQ(18595)/2397824 and row<QQ(1)/100, str(row))
check('CL.M5 uniform positive tail lower bound',b-2*a/100==QQ(116)/875 and QQ(116)/875>q)

# Arbitrary ordered-degree correction, not only sampled baselines.
R2=PolynomialRing(QQ,names=('m','p','q','d')); m,p,q,d=R2.gens()
def baseline(r): return -2*m*(m-1)*d*d-8*r*(m*d+r-1)
check('ordered baseline restoration symbolic identity',baseline(p)-baseline(q)==8*(q-p)*(m*d+p+q-1))
# Exact tail telescoping algebra, with r_(t+1)/r_t imposed.
R3=PolynomialRing(QQ,names=('tt','dd')); tt,dd=R3.gens(); K=R3.fraction_field()
check('CL.K5 tail telescoping for arbitrary parameters',K((tt+2*dd-1)/(dd-1)-(tt+dd)/(tt+2*dd)*(tt+2*dd)/(dd-1))==1)

summary={'kernel':'fresh Sage','all_passed':all(c['passed'] for c in checks),'number_checks':len(checks),'cg_squared_checks':cg_count,'physical_transposition_sign_checks':perm_count,'finite_minimum_zero_degrees':zero_degrees,'checks':checks,'limitations':['Finite CG/sign diagnostics do not prove the all-index Racah identity.','K3,K4 are explicitly inherited EX-01 input; this checks their CL nullity consequences, not the logarithmic-symbol theorem.','No numerical spectral scan is used to infer compactness, essential spectra, exact eventual ranks, or convergence quantifiers.']}
path=OUT/'results/audit2_cluster_exact.json'
assert not path.exists(), path
path.write_text(json.dumps(summary,ensure_ascii=False,indent=2,default=str))
print(json.dumps({k:v for k,v in summary.items() if k!='checks'},ensure_ascii=False,indent=2,default=str))
print('Result:',path)
