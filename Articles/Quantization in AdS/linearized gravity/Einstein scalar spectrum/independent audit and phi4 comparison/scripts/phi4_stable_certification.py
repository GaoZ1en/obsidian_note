"""Certify symbolic stable-N pencils against a separate finite-N implementation.
Also certifies an actual square-root splitting, not merely a coordinate Jordan block.
All files are new output snapshots; no old result is overwritten.
"""
from sage.all import *
from pathlib import Path
from collections import Counter
import sys,importlib.util,json,hashlib
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
def load(name,file):
    spec=importlib.util.spec_from_file_location(name,str(ROOT/'scripts'/file));m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m
s=load('stable','phi4_stable_pencils.py');e=load('nbody','phi4_nbody_spectrum.py')
checks=[]
def check(label,v):
    if v is not True and v is not False:raise TypeError((label,type(v)))
    checks.append({'label':label,'passed':v})
    if not v:raise AssertionError(label)
for p,q in [(1,1),(2,0),(2,1),(3,0),(2,2),(3,1),(4,0),(4,1)]:
    rep,H,Phi,M,G=s.make_block(p,q,characteristic=False);sts=s.states(p,q)
    for dd in [QQ(3)/2,QQ(2),QQ(7)/3]:
        for nn in [max(p+q,2),p+q+2]:
            basis=e.occupation_basis(nn,p,q);labs=e.labels(p,q);ix={occ:i for i,occ in enumerate(basis)};perm=[]
            for st in sts:
                c=Counter(st);c[(0,0)]=nn-len(st);perm.append(ix[tuple(c.get(lab,0) for lab in labs)])
            HH=matrix(QQ,H.nrows(),[QQ(v(nn)(dd)) for v in H.list()]);gg=s.metric(p,q)
            GG=matrix(QQ,gg.nrows(),[QQ(v(nn)(dd)) for v in gg.list()])
            EF=e.hamiltonian(nn,p,q,dd);EG=e.gram(nn,p,q,dd)
            check(f'full_matrix_p{p}q{q}N{nn}d{dd}',HH==EF.matrix_from_rows_and_columns(perm,perm))
            check(f'full_Gram_p{p}q{q}N{nn}d{dd}',GG==EG.matrix_from_rows_and_columns(perm,perm)/factorial(nn))
R=PolynomialRing(QQ,'x');x=R.gen();K=NumberField(x*x+x-3,'dc',embedding=(AA(13).sqrt()-1)/2);dc=K.gen()
rep,H,Phi,M,G=s.make_block(2,2,characteristic=False)
A=matrix(K,3,[s.D(v)(dc) for row in rep['A'] for v in row]);B=matrix(K,3,[s.D(v)(dc) for row in rep['B'] for v in row])
lam=-2/(2*dc+1);den=(2*dc+1)*(2*dc+3);beta2=18/den**2;offset=-(dc+2)/den
check('resonant_A_algebraic_multiplicity2',A.charpoly()(lam)==0 and A.charpoly().derivative()(lam)==0 and A.charpoly().derivative(2)(lam)!=0)
check('resonant_A_geometric_multiplicity1',(A-lam*identity_matrix(K,3)).right_nullity()==1)
check('offdiagonal_splitting_coefficient_squared',A[2,0]*B[0,2]==beta2)
GG=matrix(AA,3,[AA(v(8)(dc)) for v in G.list()])
for k in range(1,4):check('Gram_positive_Sylvester_minor'+str(k),GG[:k,:k].determinant()>0)
RT=PolynomialRing(K,['t','z','b']);t,z,b=RT.gens()
pencil=(lam*t*t+z*t+b)*identity_matrix(RT,3)-t*t*A.change_ring(RT)-B.change_ring(RT)
poly=pencil.det();coeff=lambda power:sum(c*z**mon[1]*b**mon[2] for mon,c in poly.dict().items() if mon[0]==power)
gap=lam-A[1,1]
check('Newton_top_degree4',poly.degree(t)==4)
check('Newton_simple_two_branches',coeff(4)==gap*(z*z-beta2))
check('Newton_common_constant_term',(coeff(3)-2*gap*z*(b-offset)).reduce([z*z-beta2])==0)
# Independent primary projector tests for FIN-01, using explicit lowering/raising.
for nn in [1,2,3,4]:
 for pp,qq in [(1,1),(2,0),(2,2),(3,1)]:
  dd=QQ(7)/3;dim=len(e.occupation_basis(nn,pp,qq));Lproject=[]
  for axis,P in [(0,pp),(1,qq)]:
   proj=identity_matrix(QQ,dim);down=identity_matrix(QQ,dim)
   for j in range(1,P+1):
    leftP=pp-(j-1)*(axis==0);leftQ=qq-(j-1)*(axis==1)
    down=e.ladder(nn,leftP,leftQ,dd,axis,False)*down
    up=identity_matrix(QQ,len(e.occupation_basis(nn,pp-j*(axis==0),qq-j*(axis==1))))
    for k in range(j):up=e.ladder(nn,pp-(j-k)*(axis==0),qq-(j-k)*(axis==1),dd,axis,True)*up
    proj+=(-1)**j*up*down/(factorial(j)*prod(nn*dd+2*P-r-2 for r in range(j)))
   Lproject.append(proj)
  Proj=Lproject[0]*Lproject[1];gf=e.gram(nn,pp,qq,dd);X=e.primary_block(nn,pp,qq,dd)['X']
  check(f'FIN_primary_idempotence_N{nn}_{pp}_{qq}',Proj*Proj==Proj)
  check(f'FIN_primary_physical_metric_N{nn}_{pp}_{qq}',Proj.transpose()*gf==gf*Proj)
  check(f'FIN_primary_complete_image_N{nn}_{pp}_{qq}',Proj*X==X and Proj.rank()==X.ncols())
# Unique LR-odd (3,3) vector has support on at most four excited particles.
r,H,ph,M,G=s.make_block(3,3,parity='odd',characteristic=False)
rmax=max(len(st) for i,st in enumerate(s.states(3,3)) if any(ph[i,j]!=0 for j in range(ph.ncols())))
check('odd33_max_four_excited_particles',rmax==4)
oddrows=[]
for nn in [4,5,6,8]:
 for dd in [QQ(3)/2,QQ(2),QQ(7)/3]:
    eb=e.primary_block(nn,3,3,dd);value=QQ(M[0,0](nn)(dd))
    check(f'odd33_eigenvalue_N{nn}_d{dd}',eb['K'].charpoly()(value)==0)
    oddrows.append({'N':nn,'Delta':str(dd),'eigenvalue_over_c0':str(value)})
# Specialization below the stable range is not a recipe for a physical quotient.
extra={'resonant_mass_minpoly':'Delta^2+Delta-3','resonant_mass':float(dc),'sqrtN_coefficient_squared':str(beta2),'sqrtN_coefficient':float(sqrt(AA(beta2))),'common_O1_shift':str(offset),'odd33_support_rmax':rmax,'odd33_values':oddrows,'scope':'All symbolic pencil checks plus selected finite values; no large-label QFT remainder bound'}
out=ROOT/'results'/'phi4_stable_certification_02.json'
if out.exists():raise FileExistsError(out)
report={'status':'passed','exact_checks':len(checks),'checks':checks,'conclusions':extra,'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print('passed',len(checks));print(json.dumps(extra));print(out)
