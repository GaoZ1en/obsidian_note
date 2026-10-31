# Exact input of the first (failed JSON-export) Sage call; do not rerun as a success record.
from sage.all import *
from pathlib import Path
import os,tempfile,json
R=PolynomialRing(QQ, names=('w1','w2','w3','f1','f2','f3')); w1,w2,w3,f1,f2,f3=R.gens()
I3=identity_matrix(R,3); Z=zero_matrix(R,3)
def cross(v):
    x,y,z=v
    return matrix(R,[[0,-z,y],[z,0,-x],[-y,x,0]])
W=cross((w1,w2,w3)); F=cross((f1,f2,f3)); C=block_matrix([[W,-F],[F,W]])
expected=4*(f1*f1+f2*f2+f3*f3-w1*w1-w2*w2-w3*w3)
J=cross((1,0,0)); P=cross((0,1,0))
Csemi=block_matrix([[J,Z],[Z,J]])
Cnil=block_matrix([[J,-P],[P,J]])
# Exterior wedge/contraction at xi=e3 and physical j= e3 J1.
bases={p:list(Subsets(range(3),p)) for p in range(4)}
bases={p:[tuple(x) for x in bases[p]] for p in range(4)}
def wedge(a,p):
    mat=zero_matrix(QQ,binomial(3,p+1),binomial(3,p))
    for col,I in enumerate(bases[p]):
        if a in I: continue
        sign=(-1)**sum(1 for b in I if b<a)
        Jt=tuple(sorted((a,)+I)); mat[bases[p+1].index(Jt),col]=sign
    return mat
rows=[]
for p in range(3):
    E=wedge(2,p); I=E.transpose(); q=I*E
    leading_no_i=q.tensor_product(Csemi)
    rows.append({'p':p,'coexact_form_rank':int(q.rank()),'quadratic_trace_without_minus_i_squared':str((leading_no_i**2).trace()),'cubic_trace_without_i_factor':str((leading_no_i**3).trace()),'bv_sign':(-1)**(p+1)})
checks={'Killing_form':bool((C**2).trace()==expected),'odd_adjoint_cube_trace':bool((C**3).trace()==0),'semisimple_cube_nonzero':bool(Csemi**3!=0),'null_cube_zero':bool(Cnil**3==0),'null_square_nonzero':bool(Cnil**2!=0),'coexact_multiplicity_supercancellation':sum(row['bv_sign']*row['coexact_form_rank'] for row in rows)==0}
result={'sage_version':version(),'checks':checks,'Killing_form_actual':str((C**2).trace()),'exterior_rows':rows,'semisimple_cube':str(Csemi**3),'nilpotent_square':str(Cnil**2)}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'; store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='actual-gravity-wheel-',dir=store)); (out/'results.json').write_text(json.dumps(result,indent=2)+'\n'); save((C,Csemi,Cnil),str(out/'matrices.sobj'))
print(str(out/'results.json')); print(str(out/'matrices.sobj'))
