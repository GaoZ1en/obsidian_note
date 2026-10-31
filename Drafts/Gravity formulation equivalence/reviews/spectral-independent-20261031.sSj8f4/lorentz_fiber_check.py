# Supplied-follow-up audit: exact theta*-dependent mixed block and Lorentz fiber.
# This is a new focused check, not a rerun of either frozen suite.
from sage.all import *
from sage.env import SAGE_VERSION
from pathlib import Path
import os, tempfile, json
N=2; ell=2*N+1; ng=3*ell
eps=QQ(3)/5; kappa=QQ(7)/3
A=matrix(QQ,ell,ell,lambda i,j:(1 if i==j else 0)+(eps/2 if abs(i-j)==1 else 0))
AA=block_diagonal_matrix(A,A,A)
E=ExteriorAlgebra(QQ,names=tuple('th'+str(i) for i in range(ng))+tuple('xi'+str(i) for i in range(ng))+tuple('ch'+str(i) for i in range(ng)))
gens=E.gens(); th=gens[:ng]; xi=gens[ng:2*ng]; ch=gens[2*ng:]

def sign3(a,b,c):
    if len({a,b,c})<3:return 0
    return Permutation([a+1,b+1,c+1]).signature()

def vmul(M,v):
    return [sum((M[i,j]*v[j] for j in range(M.ncols())),E.zero()) for i in range(M.nrows())]

def mm(X,Y):
    # Sage's generic Matrix(ExteriorAlgebra) multiplication is not implemented.
    # Explicit ordered coefficient multiplication keeps every Grassmann sign.
    Z=matrix(E,X.nrows(),Y.ncols())
    yr={k:[(j,Y[k,j]) for j in range(Y.ncols()) if Y[k,j]!=0] for k in range(Y.nrows())}
    for i in range(X.nrows()):
      for k in range(X.ncols()):
        if X[i,k]!=0:
          for j,w in yr[k]:Z[i,j]+=X[i,k]*w
    return Z

# The antisymmetric physical-antifield embedding, with exact Fourier mixing.
half=A.inverse().transpose()/2
estar={}
for a in range(3):
  for mu in range(3):
    estar[a,mu]=[sum((sign3(a,mu,c)*half[i,j]*th[c*ell+j] for c in range(3) for j in range(ell)),E.zero()) for i in range(ell)]
rotation={}
for a in range(3):
  for mu in range(3):
    rotation[a,mu]=[sum((sign3(a,mu,c)*A[i,j]*ch[c*ell+j] for c in range(3) for j in range(ell)),E.zero()) for i in range(ell)]
action=sum((estar[a,mu][i]*rotation[a,mu][i] for a in range(3) for mu in range(3) for i in range(ell)),E.zero())
canonical=sum((th[i]*ch[i] for i in range(ng)),E.zero())
checks={'finite-Lorentz-pairing':bool(action==canonical)}

# Derive the only nonzero even/odd mixed-Hessian block from i_xi E*.
# Integrated e* coefficients are dual, hence the field Fourier coefficient
# at h is the dual entry with mode -h. Projection keeps output k in [-N,N].
K=matrix(E,9*ell,3*ell)
for a in range(3):
  for mu in range(3):
    for oi,k in enumerate(range(-N,N+1)):
      for nu in range(3):
        for ii,j in enumerate(range(-N,N+1)):
          h=k-j
          if -N<=h<=N:
            K[(a*3+mu)*ell+oi,nu*ell+ii]=-sum((sign3(sig,nu,mu)*estar[a,sig][-h+N] for sig in range(3)),E.zero())/kappa

# Arbitrary even omega-mixing is harmless; use a dense exact rational example.
Om=matrix(QQ,ng,ng,lambda i,j:QQ(((3*i+5*j)%11)-5)/13)
D=block_matrix(QQ,[[identity_matrix(QQ,ng),Om],[zero_matrix(QQ,ng),AA]])
Dinv=block_matrix(QQ,[[identity_matrix(QQ,ng),-Om*AA.inverse()],[zero_matrix(QQ,ng),AA.inverse()]])
checks['ghost-D-inverse']=bool(D*Dinv==identity_matrix(QQ,2*ng))
checks['ghost-D-determinant']=bool(D.det()==A.det()**3)
Bmix=matrix(E,18*ell,6*ell)
for i in range(9*ell):
  for j in range(3*ell): Bmix[9*ell+i,3*ell+j]=K[i,j]
M=block_matrix(E,[[identity_matrix(E,18*ell),Bmix],[zero_matrix(E,6*ell,18*ell),matrix(E,D)]])
Minv=block_matrix(E,[[identity_matrix(E,18*ell),-mm(Bmix,matrix(E,Dinv))],[zero_matrix(E,6*ell,18*ell),matrix(E,Dinv)]])
checks['theta-dependent-mixed-M-inverse']=bool(mm(M,Minv)==identity_matrix(E,24*ell))
checks['theta-block-is-nonzero']=bool(any(v!=0 for v in K.list()))
checks['theta-block-has-only-degree-one']=bool(all(len(mon)==1 for entry in K.list() for mon in entry.monomial_coefficients()))
# C=0, so its Schur term vanishes exactly, despite a nonzero theta* block.
checks['Schur-ghost-block-unchanged']=bool(matrix(E,D)-mm(zero_matrix(E,6*ell,18*ell),Bmix)==matrix(E,D))

# At hbar=1 the fiber exponential factors because theta*_i chi_i squares to zero.
integrand=prod((E.one()-th[i]*ch[i] for i in range(ng)),E.one())
fiber_mon=prod(th,E.one())*prod(ch,E.one())
key=next(iter(fiber_mon.monomial_coefficients()))
coefficient=integrand.monomial_coefficients().get(key,QQ.zero())
expected=(-1)**(ng*(ng+1)//2)
checks['normalized-fiber-top-coefficient']=bool(coefficient==expected)
report={'sage_version':SAGE_VERSION,'N_one_chain':N,'eps':str(eps),'kappa':str(kappa),
 'integrated_theta_star_generators':ng,'integrated_chi_generators':ng,
 'mixed_matrix_even':18*ell,'mixed_matrix_odd':6*ell,
 'detD':str(D.det()),'BerM':str(1/D.det()),'full_Ber':str(1/D.det()**2),
 'fiber_raw_orientation_at_hbar1':int(coefficient),'checks':checks,'count':len(checks),'all_checks_true':all(checks.values()),
 'scope':'Checks the analytic slice reduction; does not independently reconstruct the complete off-slice generating functional.'}
root=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
root.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='spectral-lorentz-fiber.',dir=root))
(out/'result.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(str(out));print('count=',len(checks),'all_true=',all(checks.values()))
