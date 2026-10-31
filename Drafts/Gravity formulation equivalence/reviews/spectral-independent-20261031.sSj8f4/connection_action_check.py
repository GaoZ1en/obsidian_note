# Post-freeze independent addendum: original finite connection Gaussian source.
# Run with SageMath; exact rational specialization eps=3/5, s=4/5.
from sage.all import *
from sage.env import SAGE_VERSION
from pathlib import Path
import os, tempfile, json
K=QuadraticField(-1,'ii'); ii=K.gen()
eps=QQ(3)/5; ss=QQ(4)/5; qq=QQ(1)/9
checks={}; rows=[]
for N in range(1,7):
    ell=2*N+1
    A=matrix(K,ell,ell,lambda i,j:(1 if i==j else 0)+(eps/2 if abs(i-j)==1 else 0))
    # k=-N,...,N and f'=i k f_k; Hermitian norm uses normalized Haar integral.
    u=vector(K,[ii*k*eps/2 if abs(k)==1 else 0 for k in range(-N,N+1)])
    response=(u.conjugate()*A.inverse()*u)
    closed=(1-ss)*(1-qq**N)/(1-qq**(N+1))
    gap=(1-ss)-response
    checks['response-N'+str(N)]=bool(response==closed)
    checks['gap-N'+str(N)]=bool(gap==2*ss*qq**(N+1)/(1-qq**(N+1)))
    B=matrix(K,ell,ell,lambda i,j:(-QQ(1)/3)**abs(i-j)/ss)
    # P omega(e) is B u, not the finite stationary A^-1 u.
    checks['projected-torsionfree-not-stationary-N'+str(N)]=bool(A*B*u!=u)
    rows.append(dict(N=N,response=str(response),continuum_response=str(1-ss),gap=str(gap)))
report=dict(sage_version=SAGE_VERSION,checks=checks,count=len(checks),all_checks_true=all(checks.values()),rows=rows)
root=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
root.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='spectral-connection-action.',dir=root))
(out/'result.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(str(out));print('count=',len(checks),'all_true=',all(checks.values()))
