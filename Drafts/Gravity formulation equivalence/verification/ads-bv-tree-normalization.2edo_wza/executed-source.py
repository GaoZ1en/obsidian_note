"""Exact physical normalization checks for the actual gravitational CS tree vertex."""
from sage.all import *
from sage.env import SAGE_VERSION
from pathlib import Path
import os,json,tempfile,hashlib
SOURCE=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads_bv_tree_normalization_checks.py')
R=PolynomialRing(QQ,names=['a','lam']+['w%d'%i for i in range(9)]+['f%d'%i for i in range(9)])
a,lam=R.gens()[:2];wv=R.gens()[2:11];fv=R.gens()[11:]

def eps(i,j,k):
    if len({i,j,k})<3:return 0
    return (-1)**sum(1 for u,v in ((i,j),(i,k),(j,k)) if u>v)
def bracket(u,v):
    out=[0]*6
    for A in range(6):
        for B in range(6):
            typ,i=divmod(A,3);typ2,j=divmod(B,3)
            for k in range(3):out[3*((typ+typ2)%2)+k]+=u[A]*v[B]*eps(i,j,k)*(-1 if typ==typ2==1 else 1)
    return vector(R,out)
def B(u,v):return 2*a*sum(u[i]*v[i+3]+u[i+3]*v[i] for i in range(3))
basis=[vector(R,[int(i==j) for i in range(6)]) for j in range(6)]
alpha=[vector(R,[wv[3*i+j] for j in range(3)]+[fv[3*i+j] for j in range(3)]) for i in range(3)]
# b_ij=[alpha_i,alpha_j]-[alpha_j,alpha_i]=2[alpha_i,alpha_j].
# star(b)_i=sum_jk epsilon_ijk [alpha_j,alpha_k].
starb=[sum((eps(i,j,k)*bracket(alpha[j],alpha[k]) for j in range(3) for k in range(3)),vector(R,6)) for i in range(3)]
jfield=[vector(R,list(v[3:])+list(v[:3])) for v in starb]
S3=sum(B(alpha[i],starb[i]) for i in range(3))/6
IP3=a*sum(eps(i,j,k)*eps(A,Bb,C)*fv[3*i+A]*wv[3*j+Bb]*wv[3*k+C] for i in range(3) for j in range(3) for k in range(3) for A in range(3) for Bb in range(3) for C in range(3))-a/3*sum(eps(i,j,k)*eps(A,Bb,C)*fv[3*i+A]*fv[3*j+Bb]*fv[3*k+C] for i in range(3) for j in range(3) for k in range(3) for A in range(3) for Bb in range(3) for C in range(3))
checks=[]
def check(label,condition):checks.append({'label':label,'passed':bool(condition)})
check('all real gravitational Lie Jacobi triples',all((bracket(x,bracket(y,z))+bracket(y,bracket(z,x))+bracket(z,bracket(x,y))).is_zero() for x in basis for y in basis for z in basis))
check('invariant cross pairing',all(B(bracket(x,y),z)==B(x,bracket(y,z)) for x in basis for y in basis for z in basis))
check('normalized cubic Palatini equality',S3==IP3)
check('all eighteen physical cubic gradients',all(S3.derivative(wv[3*i+A])==a*jfield[i][A] and S3.derivative(fv[3*i+A])==a*jfield[i][A+3] for i in range(3) for A in range(3)))
sub={v:R(0) for v in list(wv)+list(fv)}
sub[fv[0]]=lam;sub[wv[4]]=lam;sub[wv[8]]=lam
check('concentrating admissible coframe cubic coefficient',S3.subs(sub)==2*a*lam**3)
F=R.fraction_field();k=F(lam);src=F(a);y=-src/(2*a*k)
check('physical stationary quartic Schur coefficient',a*k*y**2+src*y==-a/(4*k))
result={'scope':'Exact physical gravitational cubic source and quartic propagator normalization; no complete-space analytic or loop claim. Concentrating test has alpha=lam(P1 e1+J2 e2+J3 e3).','sage_version':SAGE_VERSION,'checks':checks,'all_passed':all(x['passed'] for x in checks),'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest()}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results/kernel-exports';store.mkdir(parents=True,exist_ok=True)
out=Path(tempfile.mkdtemp(prefix='ads-bv-tree-normalization-',dir=store))
(out/'executed-source.py').write_bytes(SOURCE.read_bytes());(out/'result.json').write_text(json.dumps(result,indent=2)+'\n')
save({'S3':S3,'j':jfield},str(out/'source-exact.sobj'))
print(json.dumps({'output':str(out/'result.json'),'all_passed':result['all_passed'],'checks':len(checks)},indent=2))
if not result['all_passed']:raise AssertionError('Check failed; inspect actual result.')
