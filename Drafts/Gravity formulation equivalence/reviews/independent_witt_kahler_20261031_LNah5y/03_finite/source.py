from sage.all import *
from pathlib import Path
import os, tempfile, json, sage.version
w=lambda n: ZZ(n)*(ZZ(n)*ZZ(n)-1)
def C(m,n):
    if n<2 or n+m<2:return QQ(0)
    if m<=0:return QQ(m-n)
    return -QQ(n+2*m)*w(n)/w(n+m)
def L(m,n):
    if n>=2:return C(m,n)
    if n<=-2:return -C(-m,-n)
    return QQ(0)
def metric(n,k):
    return -w(abs(n)) if abs(n)>=2 and n+k==0 else QQ(0)
def curvature(a,b,n):
    return L(b,n)*L(a,b+n)-L(a,n)*L(b,a+n)-(a-b)*L(a+b,n)
checks={}
def check(label,residuals):
    failures=[]; count=0
    for key,value in residuals:
        count+=1
        if value!=0:failures.append({'key':str(key),'residual':str(value)})
    checks[label]={'count':count,'passed':len(failures)==0,'failures':failures}
V=[n for n in range(-15,16) if abs(n)>=2]
check('isotropy_action',(((a,n),L(a,n)-(a-n if abs(a+n)>=2 else 0)) for a in [-1,0,1] for n in V))
check('h_equivariance_all_boundaries',(((a,m,n),L(m,n)*L(a,m+n)-L(a,n)*L(m,a+n)-(a-m)*L(a+m,n)) for a in [-1,0,1] for m in range(-8,9) for n in V))
check('torsion_full_quotient',(((a,b),L(a,b)-L(b,a)-(a-b if abs(a+b)>=2 else 0)) for a in range(-8,9) for b in range(-8,9)))
check('metric_compatibility',(((a,n,k),L(a,n)*metric(a+n,k)+L(a,k)*metric(n,a+k)) for a in range(-8,9) for n in V for k in V))
smallV=[n for n in range(-6,7) if abs(n)>=2]
check('first_bianchi',(((a,b,c),curvature(a,b,c)+curvature(b,c,a)+curvature(c,a,b)) for a in smallV for b in smallV for c in smallV))
check('positive_type_curvature_zero',(((a,b,n),curvature(a,b,n)) for a in range(2,7) for b in range(2,7) for n in range(2,21)))
check('negative_type_curvature_zero',(((a,b,n),curvature(a,b,n)) for a in range(-6,-1) for b in range(-6,-1) for n in range(2,21)))
check('mixed_adjoint',(((m,r,n),curvature(m,-r,n)*w(n+m-r)-curvature(r,-m,n+m-r)*w(n)) for m in range(2,9) for r in range(2,9) for n in range(2,31) if n+m-r>=2))
def f(m,n):return QQ((n+2*m)**2)*w(n)/w(n+m)
def rem(m,n):return QQ(m*(m*m-1)*(m+2*n)*(2*m+n))/w(m+n)
cutoff_data=[]
for m in range(1,9):
    for N in [max(2,m+1),2*m+5,100]:
        direct=sum(curvature(m,-m,n) for n in range(2,N+1))
        boundary=m*N*(N+1)-2*m-sum(f(m,n) for n in range(N-m+1,N+1))
        expected=QQ(13)/6*w(m)-sum(rem(m,n) for n in range(N-m+1,N+1))
        cutoff_data.append({'m':m,'N':N,'direct':str(direct),'boundary_identity':direct==boundary,'remainder_identity':direct==expected})
R=PolynomialRing(QQ,names=('m','r','n')); m,r,n=R.gens(); d=m-r
ww=lambda x:x*(x*x-1)
Npoly=(n+r)*(n-r+2*m)*ww(n-r)*ww(n+m)-(n+2*m)*(n+m+r)*ww(n)*ww(n+d)+(m+r)*(n+2*d)*ww(n)*ww(n+m)
factor_mixed=Npoly//(r*(r*r-1))
assert Npoly==r*(r*r-1)*factor_mixed
K=R.fraction_field(); rt=K(2*m*n+(n+m)**2*ww(n-m)/ww(n)-(n+2*m)**2*ww(n)/ww(n+m))
special2=K(24*(n*n+6*n+6)/(n*(n+1)*(n+2)*(n+3)))
partial2=K(24/n-12/(n+1)-24/(n+2)+12/(n+3))
special2checks={'general_minus_special':str(rt(m=2)-special2),'special_minus_partial_fractions':str(special2-partial2)}
convergence=[]
for mm in [2,3,4]:
    for NN in [10,100,1000,10000]:
        cut=QQ(13)/6*w(mm)-sum(rem(mm,j) for j in range(NN-mm+1,NN+1))
        convergence.append({'m':mm,'N':NN,'cutoff_exact':str(cut),'cutoff_decimal':str(cut.n(digits=22)),'limit_exact':str(QQ(13)/6*w(mm))})
answer={'sage_version':sage.version.version,'finite_checks':checks,'cutoff_checks':cutoff_data,'mixed_common_numerator_degree_in_n':int(Npoly.degree(n)),'mixed_common_numerator_total_degree':int(Npoly.total_degree()),'mixed_numerator_divided_by_r_r2minus1':str(factor_mixed),'mixed_factor_residual':str(Npoly-r*(r*r-1)*factor_mixed),'m2_special_checks':special2checks,'m2_first_eigenvalues':[str(curvature(2,-2,j)) for j in range(2,11)],'convergence':convergence}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'; store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='sage-witt-fresh-finite-',dir=store))
save({'mixed_numerator':Npoly,'mixed_factor':factor_mixed,'answer':answer},str(out/'result.sobj'))
(out/'output.json').write_text(json.dumps(answer,indent=2)+'\n',encoding='utf-8')
