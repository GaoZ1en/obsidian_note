#!/usr/bin/env python3
"""Independent symbolic verification of the fixed-wall metric corner identity.

Run with Python containing SymPy (e.g. Sage's Python), NOT Sage preparsing:
  sage --python this_file.py
  sage --python this_file.py --output-prefix /new/unique/output-prefix

Optional exports are opened exclusively; existing outputs are never overwritten.
The coefficient gamma is suppressed in algebraic checks and reinstated in text.
"""
import argparse
import hashlib
import json
import platform
from itertools import product
from pathlib import Path
import sympy as sp


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-prefix', default=None)
    args = parser.parse_args()
    checks = []
    observations = {}

    def check_zero(label, expression):
        entries = list(expression) if isinstance(expression, sp.MatrixBase) else [expression]
        normalized = [sp.factor(sp.cancel(v)) for v in entries]
        passed = all(v == sp.S.Zero for v in normalized)
        checks.append({'label': label, 'passed': passed,
                       'normalized_residuals': [str(v) for v in normalized]})

    # GENERIC FIRST-JET TEST. Coordinates (x0,x1,rho); wall rho=constant.
    # Background g_rhorho=1, g_rhoi=0 in a Gaussian neighborhood. The
    # tangential 2x2 q and all its first jets are algebraically independent.
    # det(q) != 0 is required algebraically, det(q) < 0 physically.
    # All six h components and all eighteen first jets dh are independent:
    # this calculation DOES NOT restrict variations to Gaussian gauge.
    q00, q01, q11 = sp.symbols('q00 q01 q11')
    g = sp.Matrix([[q00, q01, 0], [q01, q11, 0], [0, 0, 1]])
    gi = g.inv()
    dg = []
    for k in range(3):
        u, v, w = sp.symbols(f'q00_{k} q01_{k} q11_{k}')
        dg.append(sp.Matrix([[u, v, 0], [v, w, 0], [0, 0, 0]]))
    h00, h01, h02, h11, h12, h22 = sp.symbols('h00 h01 h02 h11 h12 h22')
    h = sp.Matrix([[h00, h01, h02], [h01, h11, h12], [h02, h12, h22]])
    dh = []
    for k in range(3):
        z = sp.symbols(f'h00_{k} h01_{k} h02_{k} h11_{k} h12_{k} h22_{k}')
        dh.append(sp.Matrix([[z[0], z[1], z[2]], [z[1], z[3], z[4]],
                             [z[2], z[4], z[5]]]))
    G = [[[sp.factor(sum(gi[m, l] * (dg[i][l, j] + dg[j][l, i] - dg[l][i, j])
                         for l in range(3)) / 2)
           for j in range(3)] for i in range(3)] for m in range(3)]

    # n.v computed from covariant derivatives of LOWER h.
    nh = [sp.Matrix(3, 3, lambda i, j: dh[k][i, j] - sum(
        G[l][k][i] * h[l, j] + G[l][k][j] * h[i, l] for l in range(3)))
          for k in range(3)]
    vn = sp.factor(sum(gi[2, i] * gi[k, j] * nh[k][i, j]
                       for i, j, k in product(range(3), repeat=3)) -
                   sum(gi[2, k] * gi[i, j] * nh[k][i, j]
                       for i, j, k in product(range(3), repeat=3)))

    # Independently vary the RAW coordinate Christoffel formula.
    # K_ij=-n_rho Gamma^rho_ij and delta n_rho=h_rhorho/2.
    hup = gi * h * gi
    DGnormal = [[sp.factor(sum(
        -hup[2, l] * (dg[i][l, j] + dg[j][l, i] - dg[l][i, j]) +
        gi[2, l] * (dh[i][l, j] + dh[j][l, i] - dh[l][i, j])
        for l in range(3)) / 2) for j in range(2)] for i in range(2)]
    qi = gi[:2, :2]
    K = sp.Matrix(2, 2, lambda i, j: -G[2][i][j])
    trK = sp.factor(sp.trace(qi * K))
    hs = h[:2, :2]
    s = sp.factor(sp.trace(qi * hs))
    Ks = sp.factor(sp.trace(qi * K * qi * hs))
    DKij = sp.Matrix(2, 2, lambda i, j: h22 * K[i, j] / 2 - DGnormal[i][j])
    DK = sp.factor(-Ks + sp.trace(qi * DKij))

    bup = qi * sp.Matrix([h02, h12])
    db = []
    for k in range(2):
        dqi = -qi * dg[k][:2, :2] * qi
        db.append(dqi * sp.Matrix([h02, h12]) +
                  qi * sp.Matrix([dh[k][0, 2], dh[k][1, 2]]))
    Db = sp.factor(sum(db[i][i] + sum(G[i][i][j] * bup[j] for j in range(2))
                       for i in range(2)))
    drs = sp.factor(sp.trace(-qi * dg[2][:2, :2] * qi * hs +
                             qi * dh[2][:2, :2]))
    ell_inv = sp.Symbol('ell_inv')
    source = (trK - ell_inv) * s - Ks
    check_zero('generic normal EH potential', vn - (Db - Ks + trK*h22 - drs))
    check_zero('generic extrinsic-curvature variation', DK - (drs/2 - Db - trK*h22/2))
    check_zero('full boundary identity including counterterm',
               vn + 2*DK + (trK-ell_inv)*s - source + Db)

    # HODGE AND FRAME CHECKS at an adapted orthonormal frame (e0,e1,e2).
    # eta=(-,+,+), epsilon=e0 wedge e1 wedge e2, n=E2,
    # epsilon_Gamma=e0 wedge e1. B_ab are components of the 2-form B.
    eta = sp.diag(-1, 1, 1)
    def star3_twoform(B):
        return sp.Matrix([sp.expand(sum(
            B[i, j] * eta[i, i] * eta[j, j] * sp.LeviCivita(i, j, k)
            for i, j in product(range(3), repeat=2))/2) for k in range(3)])
    def star2_oneform(v):
        return sp.Matrix([-v[1], -v[0]])

    u0, u1, v0, v1 = sp.symbols('u0 u1 v0 v1')
    sv = star2_oneform(sp.Matrix([v0, v1]))
    check_zero('intrinsic Lorentz Hodge wedge pairing',
               u0*sv[1]-u1*sv[0]-(-u0*v0+u1*v1))
    normal_wedge_u = sp.Matrix([[0,0,-u0],[0,0,-u1],[u0,u1,0]])
    check_zero('bulk/intrinsic Hodge compatibility',
               star3_twoform(normal_wedge_u)[:2,0]-star2_oneform(sp.Matrix([u0,u1])))

    M = sp.Matrix(3, 3, sp.symbols('m00 m01 m02 m10 m11 m12 m20 m21 m22'))
    B = eta*M-(eta*M).T
    alpha = star3_twoform(B)  # gamma suppressed
    hf = eta*M+(eta*M).T
    C = sp.Matrix([hf[2,1], hf[2,0], 0])
    alpha_pull = sp.Matrix([alpha[0],alpha[1],0])
    F = sp.simplify(C-alpha_pull)
    check_zero('generic frame obstruction C-alpha',
               F-sp.Matrix([2*M[2,1],2*M[2,0],0]))
    fixed_normal = {M[2,0]:0, M[2,1]:0}
    check_zero('fixed internal normal implies C=alpha', F.subs(fixed_normal))
    adapted_FG = dict(fixed_normal)
    adapted_FG.update({M[0,2]:0, M[1,2]:0, M[2,2]:0})
    check_zero('adapted FG C pullback', C.subs(adapted_FG))
    check_zero('adapted FG alpha pullback', alpha_pull.subs(adapted_FG))
    metric_FG = {M[2,0]:M[0,2], M[2,1]:-M[1,2], M[2,2]:0}
    observations['alpha on metric FG slice only, gamma suppressed'] = [
        str(sp.simplify(z.subs(metric_FG))) for z in alpha_pull]
    observations['alpha full components, gamma suppressed'] = list(map(str,alpha))
    observations['C-alpha tangential components, gamma suppressed'] = list(map(str,F))
    observations['intrinsic Hodge convention'] = '*Gamma e0=-e1; *Gamma e1=-e0'
    observations['bulk Hodge convention'] = '*(e0^e1)=-e2; *(e0^e2)=e1; *(e1^e2)=e0'

    # PURE LORENTZ COUNTEREXAMPLE on a METRIC FG slice.
    # Family e(s,t)=exp(s B01) exp(t R12) ebar, with commuting (s,t).
    L1 = sp.Matrix([[0,1,0],[1,0,0],[0,0,0]])
    L2 = sp.Matrix([[0,0,0],[0,0,1],[0,-1,0]])
    check_zero('B01 preserves metric', L1.T*eta+eta*L1)
    check_zero('R12 preserves metric', L2.T*eta+eta*L2)
    A = L1.T*eta*L2
    DB = 2*(A-A.T)  # delta(e_a wedge delta e^a)(d_s,d_t)
    DF = -star3_twoform(DB)
    check_zero('pure Lorentz obstruction has coefficient -2 e1',
               DF-sp.Matrix([0,-2,0]))
    observations['delta(C-alpha)(B01,R12), gamma suppressed'] = list(map(str,DF))

    # ON-SHELL ADS3 realization of the same algebraic counterexample.
    # Positive symbols are safe here because this is ordinary Python, not
    # Sage-preparsed scalar arithmetic which can strip SymPy assumptions.
    rr, LL = sp.symbols('r ell', positive=True)
    tt, pp = sp.symbols('t phi')
    coords = [tt, pp, rr]
    ga = sp.diag(-rr**2/LL**2, rr**2, LL**2/rr**2)
    gai = ga.inv()
    Ga = [[[sp.simplify(sum(gai[a,d]*(sp.diff(ga[d,b],coords[c])+
                sp.diff(ga[d,c],coords[b])-sp.diff(ga[b,c],coords[d]))
                for d in range(3))/2) for c in range(3)] for b in range(3)]
                for a in range(3)]
    Ric = sp.Matrix(3,3,lambda a,b: sp.simplify(sum(
        sp.diff(Ga[c][a][b],coords[c])-sp.diff(Ga[c][a][c],coords[b])+
        sum(Ga[c][c][d]*Ga[d][a][b]-Ga[c][b][d]*Ga[d][a][c]
            for d in range(3)) for c in range(3))))
    qa = ga[:2,:2]
    Ka = qa.applyfunc(lambda z:sp.diff(z,rr))*rr/(2*LL)
    Sa = (sp.trace(qa.inv()*Ka)-1/LL)*qa.inv()-qa.inv()*Ka*qa.inv()
    check_zero('AdS3 Einstein equation Ric+2g/ell^2', Ric+2*ga/LL**2)
    check_zero('AdS3 extrinsic curvature K=q/ell', Ka-qa/LL)
    check_zero('AdS3 renormalized source tensor', Sa)
    observations['on-shell example'] = 'e0=(r/ell)dt, e1=r dphi, e2=ell dr/r; phi period 2pi'
    observations['corner integral at r=R'] = '-4*pi*gamma*R for ordered pair (B01,R12) and positive dphi orientation'

    result = {
        'suite': 'Independent fixed-wall boundary/corner derivation',
        'python': platform.python_version(),
        'sympy': sp.__version__,
        'source_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'assumptions': {
            'dimension_signature': '3D, (-,+,+)',
            'orientation': 'epsilon=e0^e1^e2, epsilon_Gamma=i_n epsilon',
            'wall': 'fixed embedding, spacelike unit outward normal; no equations of motion used in generic test',
            'generic_jet_domain': 'q00,q01,q11 and 9 first jets independent; det(q)!=0 algebraically, det(q)<0 physically',
            'background_coordinate_choice': 'g_rhorho=1 and g_rhoi=0 in a Gaussian neighborhood; all their background first derivatives vanish',
            'variation_domain': 'all 6 symmetric h components and all 18 first derivatives independent; not gauge-restricted',
            'frame_comparison': 'at an adapted orthonormal background; M^a_b arbitrary until explicit slice substitutions',
            'coefficient': 'gamma suppressed in symbolic frame/source checks',
            'execution': 'ordinary Python file executed without Sage preparsing',
        },
        'checks': checks,
        'observations': observations,
        'all_passed': all(c['passed'] for c in checks),
    }
    text = json.dumps(result, indent=2, ensure_ascii=False)
    summary = '\n'.join([
        f"Python {result['python']}; SymPy {result['sympy']}",
        f"Source SHA256: {result['source_sha256']}",
        *[f"{'PASS' if c['passed'] else 'FAIL'}: {c['label']} | residuals={c['normalized_residuals']}" for c in checks],
        'OBSERVATIONS:',
        *[f'{k}: {v}' for k,v in observations.items()],
        f"ALL_PASSED={result['all_passed']}",
    ]) + '\n'
    if args.output_prefix:
        prefix = Path(args.output_prefix)
        with Path(str(prefix)+'.json').open('x', encoding='utf-8') as f:
            f.write(text+'\n')
        with Path(str(prefix)+'.txt').open('x', encoding='utf-8') as f:
            f.write(summary)
        print('JSON_EXPORT='+str(prefix)+'.json')
        print('TEXT_EXPORT='+str(prefix)+'.txt')
    print(summary)
    if not result['all_passed']:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
