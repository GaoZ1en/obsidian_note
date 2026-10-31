#!/usr/bin/env sage --nodotsage
"""Exact finite-dimensional iR Fourier-to-upper-thimble normalization checks.
Run: sage --nodotsage verify_multiplier.py
No continuum determinant is established by this finite algebra test.
"""
from sage.all import *
from pathlib import Path
import json, hashlib
HERE=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-elliptic-gaussian-20261031-0624-1f0b')
K=QuadraticField(-1,'ii'); ii=K.gen()
R=PolynomialRing(K,names=('a','s','eps')); a,s,eps=R.gens()
# sqrt(2) cancels in all tests: M=N/sqrt(2).
N=matrix(R,[[1,-ii],[1,ii]])
L=matrix(R,[[0,s],[s,0]])
Reg=matrix(R,[[eps,ii*a*s],[ii*a*s,eps]])
checks={
    'upper_thimble_orientation_det_i': N.det()/2==ii,
    'upper_thimble_positive_quadratic': N.transpose()*L*N/2==s*identity_matrix(R,2),
    'Fourier_regulator_determinant': Reg.det()==eps**2+a**2*s**2,
    # i*pi/(a*s), multiplied by (a/(pi*i))*s^2, equals s.
    'one_parameter_normalization': (a/ii)*s*s*(ii/(a*s))==s,
}
# Physical H_T = diag(2,-2,3,-3), two gauge singular values 2,3.
H=diagonal_matrix(QQ,[2,-2,3,-3,0,0])
G=matrix(QQ,6,2,lambda j,k: [2,3][k] if j==4+k else 0)
P=G.transpose()*G
Lfull=block_matrix([[H,G],[G.transpose(),zero_matrix(QQ,2)]])
Hphys=H[:4,:4]
eigs=Lfull.eigenvalues()
nminus=sum(1 for e in eigs if e<0)
checks['finite_HG_zero']=H*G==zero_matrix(QQ,6,2)
checks['finite_det_factorization']=abs(Lfull.det())==P.det()*abs(Hphys.det())
checks['finite_inertia']=nminus==2+2
# Divide both integrals by (pi/a)^2. Physical dimension=4, r=2.
Zquot=K(P.det().sqrt())*ii**2/K(abs(Hphys.det()).sqrt())
Zaug=(1/ii)**2*K(P.det())*ii**nminus/K(abs(Lfull.det()).sqrt())
checks['finite_full_gaussian_quotient']=Zquot==Zaug==-1
checks['normalized_density_scalar']=2*a/ii == (a/ii)*2
result={
 'provenance':'Fresh finite-dimensional derivation of the multiplier bridge.',
 'source_sha256':hashlib.sha256((HERE/'verify_multiplier.py').read_bytes()).hexdigest(),
 'checks':{k:bool(v) for k,v in checks.items()},
 'one_pair_fourier_integral':'i*pi/sqrt(eps^2+a^2*s^2) -> i*pi/(a*s), a,s>0; eps -> 0+',
 'one_pair_upper_thimble_integral':'i*pi/(a*s)',
 'plain_L2_density_fourier_scalar_per_parameter':'a/(pi*i)',
 'normalized_dx_over_sqrt_2pi_scalar_per_parameter':'2*a/i',
 'spectral_log_branch_for_upper_thimble':'log(-r)=log(r)-i*pi',
 'finite_full_eigenvalues':list(map(str,eigs)),
 'finite_full_quotient_divided_by_pi_over_a_squared':str(Zquot),
 'limitations':['The convergent Gaussian formula uses analytic continuation with positive real regulator; the script verifies its determinant and orientation algebra, not a continuum measure.']
}
(HERE/'multiplier-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
for name,value in checks.items(): print(('PASS ' if value else 'FAIL ')+name)
print('FINITE_EIGENVALUES:',eigs)
print('ALL_CHECKS_PASSED:',all(checks.values()))
assert all(checks.values())
