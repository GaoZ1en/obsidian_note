"""Fresh EX01 physical kernel and EX08 labelled Kohno checks.
Direct differential Casimirs; no retained engine or previous verifier imported.
"""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json,time
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
t0=time.time();records=[]
def check(label,condition,**details):
    ok=bool(condition);records.append(dict(label=label,passed=ok,**details));print(label,'PASS' if ok else 'FAIL',flush=True)
    if not ok:raise AssertionError(label)
B=PolynomialRing(QQ,'d');K=B.fraction_field();d=K.gen()
def rise(x,n):return prod(x+j for j in range(n))
# EX01: test the complete Q2 physical reproducing kernel, not just its symmetry.
for N in (3,4):
    R=PolynomialRing(K,['z%d'%i for i in range(N)]+['w%d'%i for i in range(N)])
    z=R.gens()[:N];w=R.gens()[N:]
    Z=[x-sum(z)/N for x in z];W=[x-sum(w)/N for x in w]
    I1=sum(x*x for x in Z)*sum(x*x for x in W)
    I2=sum(Z[i]*W[i] for i in range(N))**2
    I3=sum(Z[i]**2*W[i]**2 for i in range(N))
    kernel=d*d/(2*(d+QQ(2)/N))*(I3+(d+QQ(2)/N)*I2+I1/(N*(N*d+1)))
    kernel=R(kernel)
    basis=[(z[i]-z[-1])*(z[j]-z[-1]) for i in range(N-1) for j in range(i,N-1)]
    target=[(w[i]-w[-1])*(w[j]-w[-1]) for i in range(N-1) for j in range(i,N-1)]
    for j,f in enumerate(basis):
        val=R(0)
        for ex,co in f.dict().items():
            zz=ex[:N]
            deriv=kernel
            for i,e in enumerate(zz):
                if e:deriv=deriv.derivative(z[i],e)
            deriv=R(deriv.subs({zi:0 for zi in z}))
            val+=co*deriv/prod(rise(d,e) for e in zz)
        check('EX01_reproducing_N%d_basis%d'%(N,j),val==target[j])
    def Cas(f):
        diff=w[0]-w[1]
        return R(-diff**2*f.derivative(w[0]).derivative(w[1])+d*diff*(f.derivative(w[0])-f.derivative(w[1]))+d*(d-1)*f)
    C0=d*(d-1);C1=(d+1)*d;C2=(d+2)*(d+1)
    def proj2(f):return R((Cas(Cas(f)-C0*f)-C1*(Cas(f)-C0*f))/((C2-C0)*(C2-C1)))
    pk=proj2(kernel)
    check('EX01_degree2_flag_N'+str(N),R(pk.subs({z[0]:z[1]}))==0 and R(pk.derivative(z[0]).subs({z[0]:z[1]}))==0)
    if N==4:
        wrong=R(proj2(I2).subs({z[0]:z[1]})).map_coefficients(lambda co:co.subs({d:2}))
        expected=-(w[0]-w[1])**2*(2*z[1]-z[2]-z[3])**2/80
        check('EX01_Euclidean_failure_exact',wrong==expected and wrong!=0)

# EX08: labelled three-site Casimirs on translation-invariant primaries.
R=PolynomialRing(K,['x','y']);x,y=R.gens()
g0=-2*d*d*(8*d*d-2*d-7)/((2*d-1)*(2*d+1))
g2=-4*d*d+4*d/((2*d+1)*(2*d+3));g4=-4*d*d

def Casimir(f,pair):
    if pair==12:return R(-(x-y)**2*f.derivative(x).derivative(y)+d*(x-y)*(f.derivative(x)-f.derivative(y))+d*(d-1)*f)
    if pair==13:return R(x*x*(f.derivative(x,2)+f.derivative(x).derivative(y))+d*x*(2*f.derivative(x)+f.derivative(y))+d*(d-1)*f)
    return R(y*y*(f.derivative(y,2)+f.derivative(x).derivative(y))+d*y*(f.derivative(x)+2*f.derivative(y))+d*(d-1)*f)

def allprojs(T):
    mons=[x**(T-i)*y**i for i in range(T+1)];cs=[(d+k)*(d+k-1) for k in range(T+1)]
    result={}
    for pair in (12,13,23):
        C=matrix(K,[[Casimir(f,pair).monomial_coefficient(m) for m in mons] for f in mons]).transpose()
        I=identity_matrix(K,T+1)
        result[pair]=[prod((C-cs[r]*I)/(cs[k]-cs[r]) for r in range(T+1) if r!=k) for k in range(T+1)]
    return result
projs={T:allprojs(T) for T in (2,3,4,5)}
# For each labelled pair12 channel, choose any rational unit-leading eigenvector.
# Its scale is irrelevant for the zero equations.
def data(T):
    ps=projs[T];cols=[]
    for P in ps[12]:
        v=next(c for c in P.columns() if c!=0)
        v=v/next(c for c in v if c!=0);cols.append(v)
    V=matrix(cols).transpose();Vi=V.inverse()
    S=[Vi*(ps[13][k]+ps[23][k])*V for k in range(T+1)]
    return S
S={T:data(T) for T in (2,3,4,5)}
def affine_equation(T,i,j,unknowns):
    const=sum((g0 if k==0 else g2 if k==2 else g4)*S[T][k][i,j] for k in range(0,T+1,2))
    coeff=[S[T][k][i,j] if k<=T else K(0) for k in unknowns]
    return coeff,const
# Generic beta: equations from degrees2,3 force w1,w3.
rows=[];rhs=[]
for T in (2,3):
    co,con=affine_equation(T,0,2,[1,3]);rows.append(co);rhs.append(-con)
sol=matrix(K,rows).solve_right(vector(K,rhs));w1,w3=sol
D3=(2*d-1)*(2*d+1)*(2*d+3)
ex1=-2*d*d*(d+1)*(16*d*d+6*d-19)/D3
ex3=-2*d*(16*d**4+26*d**3+7*d*d+6*d+6)/D3
check('EX08_generic_odd_values',w1==ex1 and w3==ex3)
co,con=affine_equation(4,0,2,[1,3]);generic_witness=con+vector(K,co)*sol
check('EX08_generic_degree4_obstruction',generic_witness!=0,witness=str(generic_witness.factor()))
# Exceptional beta: degrees4 04,24 then degree5 04.
rows=[];rhs=[]
for i in (0,2):
    co,con=affine_equation(4,i,4,[1,3]);rows.append(co);rhs.append(-con)
solstar=matrix(K,rows).solve_right(vector(K,rhs));ws1,ws3=solstar
DD=(2*d-1)*(2*d+1)*(2*d+3)*(2*d+5)
ex1=-d*d*(d+1)*(64*d**3+182*d*d-25*d-194)/DD
ex3=-d*(64*d**5+262*d**4+277*d**3+81*d*d+80*d+60)/DD
check('EX08_exceptional_odd_values',ws1==ex1 and ws3==ex3)
co,con=affine_equation(5,0,4,[1,3,5]);ws5=-(con+co[0]*ws1+co[1]*ws3)/co[2]
ex5=-d*(64*d**5+230*d**4-75*d**3-1239*d*d-1800*d-640)/DD
check('EX08_exceptional_w5',ws5==ex5)
co,con=affine_equation(5,2,4,[1,3,5]);witness=con+co[0]*ws1+co[1]*ws3+co[2]*ws5
check('EX08_exceptional_degree5_obstruction',witness!=0,witness=str(witness.factor()))
# Pointwise exclusion: prove all witness numerators/denominators nonzero on d>1
# by translating d=1+u and testing same-sign polynomial coefficients.
def positive_shift_certificate(f):
    num=B(f.numerator());den=B(f.denominator());u=B.gen()
    def fixed_sign(poly):
        cc=[v for v in poly(u+1).list() if v!=0]
        return len(cc)>0 and (all(v>0 for v in cc) or all(v<0 for v in cc))
    return fixed_sign(num) and fixed_sign(den)
check('EX08_all_physical_masses_no_roots',positive_shift_certificate(generic_witness) and positive_shift_certificate(witness) and positive_shift_certificate(matrix(K,rows).det()) and positive_shift_certificate(co[2]))

# Direct arbitrary-index inequalities in EX06, not finite n sampling.
BB=PolynomialRing(QQ,['d','n']);KK=BB.fraction_field();dd,nn=KK.gens();hh=dd+nn;CC=hh*(hh-1);mu=dd*(dd-2);un=4*mu-8*CC
def gspin0(n):
    h=dd+n;C=h*(h-1);u=4*mu-8*C
    return u*(2*h-2)/(2*h-1)-2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
gspin2=un+(nn+1)*(nn+2)*(2*dd+nn-1)*(2*dd+nn)/((2*hh-1)*(2*hh+1)*(2*hh+3))
f1=(gspin0(nn)-gspin2)*(2*hh-3)*(2*hh-1)*(2*hh+3)
f2=(un-gspin0(nn+1))*(2*hh-1)*(2*hh+1)*(2*hh+3)
poly1=BB(f1).subs({BB.gen(0):BB.gen(0)+1,BB.gen(1):BB.gen(1)+1})
poly2=BB(f2).subs({BB.gen(0):BB.gen(0)+1})
check('EX06_all_index_positive_coefficients',all(c>0 for c in poly1.coefficients()) and all(c>0 for c in poly2.coefficients()),band1=str(poly1),band2=str(poly2))

path=OUT/'results/audit2_stable_exact_remaining.json'
path.write_text(json.dumps({'method':'fresh physical reproducing kernel, labelled differential Casimirs and exact all-index band tests','sage_version':sage_version,'all_passed':all(c['passed'] for c in records),'elapsed_seconds':time.time()-t0,'checks':records},indent=2)+'\n')
print('RESULT',path)
