# Separately labeled supplied-note audit. Does not execute/alter frozen outputs.
from pathlib import Path
import hashlib, json, time
HERE=Path(__file__).resolve().parent
FROZEN=HERE.parent/'check_map_path.py'
source=FROZEN.read_text()
assert hashlib.sha256(source.encode()).hexdigest()=='924dcb2815cd65f15d568c6e7b4825e2ca91080d95098f0484b28013d4678a9b'
# Load only the independent algebra, conventions, and G3/G4 definitions.
# Stop before its full test suite and all output-writing statements.
exec(compile(source.split('bridge=bv(G3,S2)')[0],str(FROZEN),'exec'),globals())
checks=[]; diagnostics={}
start=time.time()
F3=-G3
F4=(1/(2*kap))*top(add(dot(E,vcontract(xi,vcontract(xi,RR))),dot(W,vcontract(xi,vcontract(xi,TT)))))
Gamma4_formula=2*F4-sum((ld(F3,p)*ld(F3,q) for q,p in zip(qvars,pvars)),Z)
check('note19 eq16 component ordering and normalization',Gamma4_formula+2*G4)
check('note19 eq15 cubic right generator',F3+G3)

# Exact coframe resolvent, with symbolic kappa and all antifield blocks.
Fm=matrix(R,3,3,[ev[3*a+m] for a in range(3) for m in range(3)])
Bm=identity_matrix(R,3)+s*Fm
det=Bm.det(); adj=Bm.adjugate()
chi_num=[sum((A(adj[a,m])*xi[m] for m in range(3)),Z) for a in range(3)]
payload=[]
for a in range(3):
    payload.append(add(TT[a],*(scale(-s*ev[9+3*b+a],RR[b]) for b in range(3)),scale(s/kap,add(*(wedge(W[b],j(a,E[b])) for b in range(3))))))
Pi_num=[add(*(scale(adj[m,a],payload[m]) for m in range(3))) for a in range(3)]
Gamma13_num=A(det)*top(add(dot(RR,vcontract(xi,w)),scale(1/kap,dot(E,vcontract(xi,W)))))+top(dot(Pi_num,vcontract(xi,f)))
Gamma2_num=top(add(dot(RR,vcontract(chi_num,w)),dot(TT,vcontract(chi_num,f)),scale(1/kap,dot(W,vcontract(chi_num,E)))))
check('note19 exact determinant-cleared eq2 equals eq13',Gamma13_num-Gamma2_num)
check('determinant-cleared resolvent cubic jet',trunc(Gamma2_num-A(det)*F3,3,True))
check('determinant-cleared resolvent quartic jet',trunc(Gamma2_num-A(det)*(F3-2*s*G4),4,True))

# Expected nonzero mutations, not purported identities.
for label,res in [
 ('omitting 2F4 in note19 eq16 is detected',Gamma4_formula-2*F4+2*G4),
 ('opposite coframe-resolvent sign is detected at degree4',trunc(Gamma2_num-A(det)*(F3+2*s*G4),4,True)),
 ('missing half in logarithm is detected',G4)
]:
    checks.append({'label':label,'passed':bool(res!=0),'nonzero_terms':int(nterms(res))})
    diagnostics[label]=str(res)

result={'audit_kind':'post-freeze supplied-note19 audit, not independent initial derivation','supplied_note_sha256':'c8b23c76b1e7526b4cf4c284f01778ac9a8d5fbdfd9baafbb6fd75903ff034f9','frozen_engine_sha256':hashlib.sha256(source.encode()).hexdigest(),'checks':checks,'all_passed':all(c['passed'] for c in checks),'elapsed_seconds':time.time()-start,'Gamma13_numerator_terms':int(nterms(Gamma13_num)),'Gamma2_numerator_terms':int(nterms(Gamma2_num))}
(HERE/'audit_results.json').write_text(json.dumps(result,indent=2)+'\n')
(HERE/'audit_actual_diagnostics.txt').write_text('\n\n'.join(k+'\n'+v for k,v in diagnostics.items())+'\n')
print(json.dumps(result,indent=2))
if not result['all_passed']: raise AssertionError('Supplied-note audit failed')
