#!/usr/bin/env python3
"""Fresh exact phi4 normalization/Fock check for the polynomial-scalar source audit.
Run: sage --nodotsage -python reusable_formula_check.py --output NEW.json
No imports of any existing research engine or retained result matrix.
This uses elementary p,q<=1 KG modes, exact Beta moments, and literal Fock
contractions; the general-N (1,1) block is derived, not loaded or fitted.
"""
from sage.all import QQ, PolynomialRing, matrix, vector, factorial, prod
from sage.env import SAGE_VERSION
from pathlib import Path
import argparse, hashlib, json, platform, subprocess

BASE = Path('/Users/koishi/Documents/Note')
SOURCE = BASE / 'Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison'
TARGET = BASE / 'Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit'


def run():
    R = PolynomialRing(QQ, ['d', 'N']); d, N = R.gens(); F=R.fraction_field()
    Y = PolynomialRing(F, 'y'); y = Y.gen()
    # Mode e_00=F0, e_11=F0*((d+1)y-1), e_10/01=F0*sqrt(d*y),
    # F0=(1-y)^(d/2)/sqrt(2*pi). Angular factors enforce J conservation.
    # r dr=dy/[2(1-y)^2], so C/c0=2(2d-1)*int (1-y)^(2d-2) poly dy.
    def beta_moment(poly, b):
        return F(sum(a*factorial(i)/prod(b+j for j in range(i+1))
                     for i,a in enumerate(Y(poly).list())))
    def overlap_units(poly):
        return F(2*(2*d-1)*beta_moment(poly,2*d-1))
    checks={}
    def ck(name, residual):
        checks[name] = bool(residual == 0)
        if not checks[name]: raise AssertionError((name,str(residual)))
    g=overlap_units(1)                           # C_00,00;00,00 / c0
    e=overlap_units(((d+1)*y-1)**2)              # C_00,11;00,11 / c0
    s=overlap_units(d*y)                        # C_00,10;00,10 / c0
    t=overlap_units(d**2*y**2)                  # C_10,01;10,01 / c0
    x=overlap_units(d*y*((d+1)*y-1))            # C_00,11;10,01 / c0
    ck('ground_overlap_equals_2c0',g-2)
    ck('nontrivial_transition_overlap',x-1/(2*d+1))
    # KG norms include 2*omega, radial Jacobian 1/2, and angular 2*pi.
    ck('KG_00',d*beta_moment(1,d)-1)
    ck('KG_11',(d+2)*beta_moment(((d+1)*y-1)**2,d)-1)
    ck('KG_10',(d+1)*beta_moment(d*y,d)-1)
    # A=(a00†)^(N-1)a11†|0>, B=(a00†)^(N-2)a10†a01†|0>.
    # Their Gram ratio is G_A/G_B=N-1; use G=diag(N-1,1).
    # Quartic ordered-sum coefficient is 1/4. Four permutations for distinct
    # legs yield a single C; the identical ground pair yields C/4.
    aa=F(g*(N-1)*(N-2)/4+(N-1)*e)
    bb=F(g*(N-2)*(N-3)/4+2*(N-2)*s+t)
    K=matrix(F,[[aa,x],[(N-1)*x,bb]])
    G=matrix(F,[[N-1,0],[0,1]])
    v=vector(F,[1,-1])    # Both lowerings: sqrt(d)*(1-1)=0.
    vd=vector(F,[1,N-1])  # Double global descendant of ground condensate.
    z0=F(N*(N-1)/2); z1=F(z0-N/(2*d+1))
    for i,a in enumerate(G*K-K.transpose()*G):
        for j,b in enumerate(a): ck('Gram_adjoint_%d_%d'%(i,j),b)
    for i,b in enumerate(K*v-z1*v): ck('general_N_primary_eigenvector_%d'%i,b)
    for i,b in enumerate(K*vd-z0*vd): ck('general_N_descendant_eigenvector_%d'%i,b)
    ck('general_N_trace',K.trace()-z0-z1)
    ck('general_N_determinant',K.det()-z0*z1)
    # k=l=1 CG coefficients (1,-1)/sqrt(2) give physical coincidence
    # e00*e11-e10*e01=-(1-y)*F0^2. A norm-one Bose pair has expectation
    # (1/2) int |Psi|^2, not int |Psi|^2.
    coinc=Y(((d+1)*y-1)-d*y)
    ck('pair_11_coincidence',coinc+(1-y))
    ck('pair_11_coefficient',overlap_units(coinc**2)/2-(2*d-1)/(2*d+1))
    # First number-changing resonance (d=2, incoming 22 and 000 children),
    # plus a nonresonant nonzero control, both through the same moment map.
    zero13=beta_moment(10*y*y-8*y+1,F(3))
    ck('D2_22_to_0000_resonance',zero13)
    if beta_moment(1,F(3))==0: raise AssertionError('negative control identically zero')
    checks['nonresonant_nonzero_control']=True
    # Direct chiral coincidence only tests k=0; it is not a substitute for the
    # full mixed spacetime coincidence/matched-Casimir constraint.
    def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
    rels=['README.md','phi4 spectrum.md','phi4 arbitrary N spectrum.md',
          'phi4 further structures.md','phi4 stable spectra and resonances.md',
          'structural comparison.md','universality and limits.md',
          'scripts/phi4_checks.py','scripts/phi4_nbody_spectrum.py',
          'scripts/phi4_nbody_certify.py','scripts/phi4_stable_pencils.py',
          'scripts/phi4_stable_certification.py','scripts/contact_structure.py',
          'scripts/contact2_rectangular.py','results/phi4_checks.json',
          'results/phi4_nbody_certification.json','results/phi4_stable_certification_02.json',
          'results/contact_structure.json','results/contact2_rectangular.json']
    hashes={r:sha(SOURCE/r) for r in rels}
    old=json.loads((SOURCE/'results/phi4_nbody_certification.json').read_text())
    matches={
        'nbody_engine_matches_certificate':hashes['scripts/phi4_nbody_spectrum.py']==old['metadata']['engine_sha256'],
        'radial_source_matches_certificate':hashes['scripts/phi4_checks.py']==old['metadata']['reused_script_sha256'],
        'certifier_matches_certificate':hashes['scripts/phi4_nbody_certify.py']==old['certifier_sha256'],
        'old_978_json_matches_certificate':hashes['results/phi4_checks.json']==old['old_978_result_sha256']}
    def git(*a):
        p=subprocess.run(['git',*a],cwd=BASE,check=True,text=True,capture_output=True)
        return p.stdout.rstrip('\n')
    return {
        'scope':'Fresh exact symbolic d,N check; no existing research engine imports; not a rerun of 978/8579 checks.',
        'assumptions':['d=Delta>1 real','integer N>=2 for the physical (1,1) block',
                       'L=1','Sint=-lambda phi^4/4!','AdS-invariant free-vacuum Wick subtraction',
                       'fixed boundary clock; regular center and fast falloff',
                       'K is unit-lambda coefficient, output matrices are K/c0'],
        'Sage':SAGE_VERSION,'Python':platform.python_version(),
        'independent_exact_checks':checks,'all_passed':all(checks.values()),
        'integrated_overlaps_in_c0_units':{'ground':str(g),'ground_radial11':str(e),'ground_spin1':str(s),'spin1_spinMinus1':str(t),'transition':str(x)},
        'basis':'A=(a00dag)^(N-1)*a11dag|0>; B=(a00dag)^(N-2)*a10dag*a01dag|0>',
        'K_over_c0':[[str(a) for a in row] for row in K.rows()],
        'Gram_up_to_common_positive_factor':[['N-1','0'],['0','1']],
        'primary_vector':['1','-1'],'primary_eigenvalue':str(z1),
        'descendant_vector':['1','N-1'],'descendant_eigenvalue':str(z0),
        'pair11_coincidence_stripped':str(coinc),
        'minimal_1to3_integral':str(zero13),'nonresonant_control':str(beta_moment(1,F(3))),
        'HEAD':git('rev-parse','HEAD'),
        'source_status_porcelain':git('status','--porcelain=v1','--',str(SOURCE)),
        'root_AGENTS_status':git('status','--porcelain=v1','--','AGENTS.md'),
        'source_tracked_diff_stat':git('diff','--stat','--',str(SOURCE)),
        'source_sha256':hashes,'retained_certificate_hash_matches':matches,
        'self_sha256':sha(Path(__file__))}


def main(argv=None):
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args(argv)
    out=args.output.resolve()
    if out.parent != TARGET.resolve(): raise ValueError('Output must stay in the authorized phi4-audit directory')
    if out.exists(): raise FileExistsError(out)
    result=run();out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'all_passed':result['all_passed'],'exact_check_count':len(result['independent_exact_checks']),
                      'hash_matches':result['retained_certificate_hash_matches'],'output':str(out)},indent=2))

if __name__=='__main__': main()
