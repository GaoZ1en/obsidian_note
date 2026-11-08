"""Independent arithmetic audit of the parent-supplied phi4 degree-seven factor.
No expected Galois group supplied. Physical-block identification is the parent's check.
"""
from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json,hashlib
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
R=PolynomialRing(QQ,'z');z=R.gen()
f=z**7-QQ(15464)/105*z**6+QQ(34112812)/3675*z**5-QQ(13915105992)/42875*z**4+QQ(6121266601088)/900375*z**3-QQ(2688764472364192)/31513125*z**2+QQ(6239553019946496)/10504375*z-QQ(92942375977436928)/52521875
Z=PolynomialRing(ZZ,'z');F=Z(f*lcm(c.denominator() for c in f.list()));F=F//F.content()
cert7=None;certtrans=None;checked=[]
for p in prime_range(2,1000):
 if F.leading_coefficient()%p==0:continue
 fp=F.change_ring(GF(p))
 if fp.gcd(fp.derivative()).degree()>0:continue
 factors=fp.factor();degs=sorted([int(h.degree()) for h,e in factors for _ in range(e)])
 row={'prime':int(p),'degrees':degs,'factors':str(factors),'square_free':True,'discriminant_mod_prime':int(fp.discriminant())}
 checked.append(row)
 if degs==[7] and cert7 is None:cert7=row
 # A unique 2-cycle and all other cycle lengths odd yield a transposition
 # after raising Frobenius to the odd lcm of the other lengths.
 if degs.count(2)==1 and all(k==2 or k%2==1 for k in degs) and certtrans is None:
  row['transposition_power']=int(lcm(k for k in degs if k!=2));certtrans=row
 if cert7 is not None and certtrans is not None:break
assert cert7 is not None and certtrans is not None
checks=[{'label':'phi4_degree7_primitive_integral_polynomial','passed':bool(F.degree()==7 and F.content()==1)}, {'label':'phi4_degree7_Q_irreducible','passed':bool(f.is_irreducible())}, {'label':'phi4_degree7_modular_7_cycle','passed':bool(cert7['degrees']==[7])}, {'label':'phi4_degree7_modular_transposition','passed':bool(certtrans['transposition_power']%2==1)}, {'label':'phi4_degree7_squarefree_discriminant','passed':bool(F.discriminant()!=0 and cert7['discriminant_mod_prime']!=0 and certtrans['discriminant_mod_prime']!=0)}]
assert all(x['passed'] for x in checks)
result={'source_file':str(OUT/'results/phi4_nbody_N8_P3_Q3_D2.json'),'source_line':292,'polynomial':str(f),'primitive_integer_polynomial':str(F),'discriminant':str(F.discriminant()),'irreducibility_certificate':cert7,'transposition_certificate':certtrans,'tested_good_primes':checked,'Galois_group':'S7','proof':'Irreducibility (already mod p) gives transitivity in prime degree seven, hence primitivity. The second square-free Frobenius cycle type has a power equal to one transposition. Conjugate transpositions form a nonempty invariant graph; primitivity forces it connected, so their subgroup is S7.','scope':'Arithmetic certificate for the supplied factor; physical N8,P=Q3,d2 even-block identification is checked independently by the parent, not reconstructed here. S7 is nonsolvable, excluding one universal radical formula for all such physical eigenvalues, not excluding integrability.','all_passed':True,'checks':checks,'sage_version':sage_version}
path=OUT/'results/audit2_stable_phi4_galois7.json';path.write_text(json.dumps(result,indent=2)+'\n')
print('IRREDUCIBLE',cert7);print('TRANSPOSITION',certtrans);print('GALOIS S7');print('RESULT',path)
