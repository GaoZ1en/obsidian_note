# Run with SageMath 10.9: sage --nodotsage grassmann_check.py
# All source definitions are self-contained; no previous review is read.
from sage.all import *
from sage.env import SAGE_VERSION
from pathlib import Path
import os, tempfile, json

K=QuadraticField(-1,'ii'); ii=K.gen()
checks={}; results={}
for N in range(2,6):
    modes=list(range(-N,N+1))
    names=tuple('c'+('m'+str(-k) if k<0 else str(k)) for k in modes)
    E=ExteriorAlgebra(K,names=names); gs=E.gens(); c=dict(zip(modes,gs))
    Qc={k:sum((ii*n*c[m]*c[n] for m in modes for n in modes if m+n==k),E.zero()) for k in modes}
    def Q(poly):
        out=E.zero()
        for inds,coeff in poly.monomial_coefficients().items():
            inds=list(inds)
            for j,idx in enumerate(inds):
                left=prod((gs[a] for a in inds[:j]),E.one())
                right=prod((gs[a] for a in inds[j+1:]),E.one())
                out += coeff*((-1)**j)*left*Qc[modes[idx]]*right
        return out
    q2=Q(Qc[1]); mon=c[-N]*c[1]*c[N]
    coeff=q2.monomial_coefficients().get(next(iter(mon.monomial_coefficients())),K.zero())
    checks['ghost-nonnilpotency-N'+str(N)]=bool(coeff==-(2*N+1)*(N-1))
    results['Q2c1-N'+str(N)]=str(q2)
    if N==2:
        checks['N2-full-Q2c1']=bool(q2==-5*c[-2]*c[1]*c[2])
        results['N2-all-Q2']={str(k):str(Q(Qc[k])) for k in modes}

# Exact discrete checks independently of Wolfram matrix routines.
for N in range(1,5):
    ell=2*N+1
    A=matrix(QQ,ell,ell,lambda i,j:(1 if i==j else 0)+(QQ(3)/10 if abs(i-j)==1 else 0))
    B=matrix(QQ,ell,ell,lambda i,j:QQ(5)/4*(-QQ(1)/3)**abs(i-j))
    defect=A*B-identity_matrix(QQ,ell)
    checks['defect-rank-N'+str(N)]=bool(defect.rank()==2)
    checks['defect-edge-N'+str(N)]=bool(defect[0,0]==QQ(1)/8 and defect[-1,-1]==QQ(1)/8)
    checks['exact-A-det-N'+str(N)]=bool(A.det()==((QQ(9)/10)**(ell+1)-(QQ(1)/10)**(ell+1))/(QQ(4)/5))
    checks['exact-B-det-N'+str(N)]=bool(B.det()==2**(ell-1)/((QQ(4)/5)*(QQ(9)/5)**(ell-1)))
    # Full 24ell-even and 24ell-odd Jacobians, all directions included.
    Je=block_diagonal_matrix(identity_matrix(QQ,21*ell),B,B,B)
    Jo=block_diagonal_matrix(identity_matrix(QQ,21*ell),A,A,A)
    ber=Je.det()/Jo.det()
    checks['full-parity-Ber-N'+str(N)]=bool(ber==(B.det()/A.det())**3)
    results['N'+str(N)+'-rational']=dict(detA=str(A.det()),detB=str(B.det()),
       defectRank=int(defect.rank()),evenDimension=int(Je.nrows()),oddDimension=int(Jo.nrows()),
       fullChainBerezinian=str(ber))

report={'sage_version':SAGE_VERSION,'checks':checks,'count':len(checks),
        'all_checks_true':all(checks.values()),'results':results}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='spectral-independent-sage.',dir=store))
(out/'result.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
(out/'result.txt').write_text('\n'.join([f'{k}: {v}' for k,v in checks.items()])+ '\n\n'+json.dumps(results,indent=2)+'\n',encoding='utf-8')
print(str(out)); print('count=',len(checks),'all_true=',all(checks.values()))
