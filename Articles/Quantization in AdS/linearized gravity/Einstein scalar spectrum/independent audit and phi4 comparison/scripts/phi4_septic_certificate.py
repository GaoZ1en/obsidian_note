"""Reconstruct a physical phi4 septic and certify its Galois group by finite fields."""
from sage.all import *
from pathlib import Path
import sys,importlib.util,json,hashlib
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
def load(name,file):
    q=ROOT/'scripts'/file;sp=importlib.util.spec_from_file_location(name,str(q));m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m);return m
s=load('stable','phi4_stable_pencils.py');e=load('nbody','phi4_nbody_spectrum.py')
rep,H,Phi,M,G=s.make_block(3,3,characteristic=False)
H8=matrix(QQ,H.nrows(),[QQ(v(8)(2)) for v in H.list()]);M8=matrix(QQ,M.nrows(),[QQ(v(8)(2)) for v in M.list()]);G8=matrix(QQ,G.nrows(),[QQ(v(8)(2)) for v in G.list()])
assert M8.transpose()*G8==G8*M8
# The entire independently implemented finite primary space agrees spectrally.
b=e.primary_block(8,3,3,QQ(2));assert M8.charpoly()==b['K'].charpoly()
R=PolynomialRing(QQ,'z');z=R.gen();cp=R(M8.charpoly());fac=cp.factor();septic=[f for f,m in fac if f.degree()==7 and m==1]
assert len(septic)==1;f=septic[0]
assert cp==(z-QQ(698)/35)*f
# Clear denominators primitively; keep the physical eigenvalue variable unscaled.
g=(f*f.denominator()).change_ring(ZZ);g=g/g.content();g=PolynomialRing(ZZ,'z')(g)
certs={}
for p in prime_range(2,1000):
    if g.leading_coefficient()%p==0:continue
    gp=g.change_ring(GF(p));sf=gp.gcd(gp.derivative()).degree()==0
    if not sf:continue
    factors=gp.factor();degrees=sorted(int(h.degree()) for h,m in factors for _ in range(m))
    if degrees==[7] and 'irreducible' not in certs:certs['irreducible']={'prime':int(p),'degrees':degrees,'polynomial_mod_p':str(gp),'factors':str(factors),'squarefree':True}
    if degrees==[2,5] and 'transposition' not in certs:certs['transposition']={'prime':int(p),'degrees':degrees,'polynomial_mod_p':str(gp),'factors':str(factors),'squarefree':True}
    if len(certs)==2:break
assert len(certs)==2
# Prime degree + irreducibility => primitive; a (2)(5) element's fifth power
# is a transposition. Its conjugate-edge graph is connected by primitivity,
# so those transpositions generate the whole S7.
roots=f.roots(AA,multiplicities=False)
assert len(roots)==7 and all(0<r<28 for r in roots)
report={'status':'passed','physical_sector':{'N':8,'P':3,'Q':3,'Delta':'2','parity':'even','dimension':7},'units':'eigenvalue divided by c0=1/(24*pi)','full_primary_matrix':[[str(v) for v in row] for row in M8.rows()],'independent_general_N_charpoly_match':True,'full_primary_charpoly':str(cp),'septic_monic':str(f),'septic_primitive':str(g),'certificates':certs,'conclusion':'Gal(f/Q)=S7','proof':'irreducible prime degree implies primitive; squarefree (2,5) Frobenius has transposition fifth power; primitive group containing transposition is S7','all_seven_roots_positive_below_28':True,'root_display':[str(r.n(45)) for r in roots],'scope':'No uniform radical formula; does not rule out every integrability notion','script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
out=ROOT/'results'/'phi4_septic_certificate.json'
if out.exists():raise FileExistsError(out)
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print(certs);print(out)
