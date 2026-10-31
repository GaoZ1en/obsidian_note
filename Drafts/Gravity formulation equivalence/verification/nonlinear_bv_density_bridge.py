#!/usr/bin/env python3
"""New exact finite-density checks; does not rerun the cubic jet suite.
Run as ordinary Python under Sage. New private exports only.
"""
from sage.all import QQ, PolynomialRing, PowerSeriesRing, matrix, identity_matrix, diagonal_matrix, save
from sage.env import SAGE_VERSION
from pathlib import Path
import os, tempfile, json, time
start=time.monotonic()
R=PolynomialRing(QQ,names=['d0','d1','d2','t']+[f'e{a}{mu}' for a in range(3) for mu in range(3)])
z=dict(zip(R.variable_names(),R.gens()));K=R.fraction_field();d=[z[f'd{i}'] for i in range(3)];E=d[0]*d[1]*d[2]
pairs=[(0,0),(1,1),(2,2),(0,1),(0,2),(1,2)]
def eps(i,j,k):return 0 if len({i,j,k})<3 else (1 if (i,j,k) in [(0,1,2),(1,2,0),(2,0,1)] else -1)
# Column order: six symmetric metric coordinates, then three infinitesimal
# left rotations Omega_ij=epsilon_ijk r_k. Overall orientation is not discarded.
J=matrix(K,9,9)
for c,(i,j) in enumerate(pairs):
    if i==j:J[3*i+i,c]=1/(2*d[i])
    else:J[3*i+j,c]=J[3*j+i,c]=1/(d[i]+d[j])
for i in range(3):
    for j in range(3):
        for k in range(3):J[3*i+j,6+k]=eps(i,j,k)*d[j]
Gmetric=diagonal_matrix(K,[E/(d[i]**4) for i in range(3)]+[2*E/(d[i]**2*d[j]**2) for i,j in pairs[3:]])
Gxi=diagonal_matrix(K,[E*d[i]**2 for i in range(3)])
checks=[];residuals={}
def check(label,xs):
    vals=list(xs);checks.append({'label':label,'passed':all(x==0 for x in vals),'residual_count':len(vals)});residuals[label]=[str(x) for x in vals]
check('polar coframe metric frame Jacobian absolute square',[J.det()**2-1/(64*E**2)])
check('dynamical symmetric metric L2 volume exponent',[Gmetric.det()-8/E**2])
check('dynamical diffeomorphism parameter L2 ghost exponent',[Gxi.det()-E**5])
# Square ratios avoid square-root branches; orientation E>0 fixes them.
check('joint finite pushforward equals geometric target density squared',[(E**3/E/E)**2/E**9-(Gmetric.det()/8)/Gxi.det()])

P=PolynomialRing(QQ,names=['h00','h11','h22','h01','h02','h12']);hh=dict(zip(P.variable_names(),P.gens()))
S=PowerSeriesRing(P,'x',default_prec=4);x=S.gen()
H=matrix(P,[[hh['h00'],hh['h01'],hh['h02']],[hh['h01'],hh['h11'],hh['h12']],[hh['h02'],hh['h12'],hh['h22']]])
logdet=(identity_matrix(S,3)+x*H.change_ring(S)).det().log()
trace_series=x*H.trace()-x**2*(H**2).trace()/2+x**3*(H**3).trace()/3
check('full non diagonal cubic log density trace expansion',[(logdet-trace_series).truncate()])
check('auxiliary and full logarithmic coefficients',[(-QQ(3)/4*logdet+QQ(3)/4*trace_series).truncate(),(-QQ(7)/4*logdet+QQ(7)/4*trace_series).truncate()])

EE=matrix(R,3,3,[z[f'e{a}{mu}'] for a in range(3) for mu in range(3)]);detE=EE.det()
# For nu=det(e)^(-1), compute coefficients of xi^nu omega*^sigma_a
# in (log nu,G3), multiplying by 2a det(e) to clear denominators.
weighted=[]
for nu in range(3):
    for a in range(3):
        for sigma in range(3):
            lhs=-sum(detE.derivative(z[f'e{a}{mu}'])*eps(nu,sigma,mu) for mu in range(3))
            rhs=sum(EE.adjugate()[mu,a]*eps(nu,mu,sigma) for mu in range(3))
            weighted.append(lhs-rhs)
check('weighted BV divergence all nilpotent coefficients',weighted)
unit={z[f'e{a}{mu}']:int(a==mu) for a in range(3) for mu in range(3)}
example=sum(EE.adjugate()[mu,1]*eps(0,mu,2) for mu in range(3)).subs(unit)
check('weighted divergence is genuinely nonzero example',[example-1])
result={'scope':'Finite pointwise density and nilpotent weighted-BV-divergence coefficients only; not a gauge-invariant lattice, continuum functional Jacobian or QME.',
        'sage_version':SAGE_VERSION,'checks':checks,'all_passed':all(c['passed'] for c in checks),'residuals':residuals,
        'orientation':'det(e)>0; infinitesimal frame columns Omega_ij=epsilon_ijk r_k',
        'polar_signed_jacobian':str(J.det()),'weighted_divergence_nonzero_coefficient_after_2a_detE':str(example),
        'finite_density_ratio':'J_body=(det(e)/det(ebar))^(-7/2)',
        'elapsed_seconds':time.monotonic()-start}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports';store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='nonlinear-bv-density.',dir=store))
with (out/'result.json').open('x') as f:json.dump(result,f,indent=2);f.write('\n')
save({'J':J,'Gmetric':Gmetric,'Gxi':Gxi,'logdet':logdet,'weighted_residuals':weighted},str(out/'exact.sobj'))
print(json.dumps({'result':str(out/'result.json'),'native':str(out/'exact.sobj'),'all_passed':result['all_passed'],'groups':len(checks),'elapsed_seconds':result['elapsed_seconds']},indent=2))
