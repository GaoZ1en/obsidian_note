#!/usr/bin/env python3
"""Independent Bargmann certificate for a general chiral affine defect.

No prior research code is imported.  The input eigenvalues through relative
degree six are (0, 0, v, w); arbitrary higher channels do not enter these
jets.  Descendant projectors are constructed as rank-one orthogonal
projectors.  The complete stable A and B operators follow directly from
occupation counting, before centering to the primary slice.
"""
from functools import lru_cache
from pathlib import Path
import argparse
import json
import sympy as s

d = s.symbols('d', positive=True)
v, w = s.symbols('v w', nonnegative=True)
x, y = s.symbols('x y')
MAX = 6
mom = (s.S.One,) + s.symbols('a1:7')


def simp(f):
    return s.factor(s.cancel(f))


@lru_cache(None)
def pair(T):
    G = s.diag(*[s.factorial(j)*s.factorial(T-j)/(s.rf(d,j)*s.rf(d,T-j))
                 for j in range(T+1)])
    out = s.zeros(T+1)
    for k, eigenvalue in ((4,v),(6,w)):
        if k > T:
            continue
        vec = s.Matrix([(-1)**(k-j)*s.binomial(k,j) for j in range(k+1)])
        for degree in range(k,T):
            raised = s.zeros(degree+2,1)
            for j in range(degree+1):
                raised[j+1] += (d+j)*vec[j]
                raised[j] += (d+degree-j)*vec[j]
            vec = raised.applyfunc(s.expand)
        norm = simp((vec.T*G*vec)[0])
        projector = (vec*vec.T*G/norm).applyfunc(simp)
        assert (projector*projector-projector).applyfunc(simp) == s.zeros(T+1)
        assert (projector.T*G-G*projector).applyfunc(simp) == s.zeros(T+1)
        out += eigenvalue*projector
    return out.applyfunc(simp)


@lru_cache(None)
def output(i,j):
    W = pair(i+j)
    return simp(sum(W[k,i]*mom[k]*mom[i+j-k] for k in range(i+j+1)))


def number(f):
    return s.expand(sum(mom[j]*s.diff(f,mom[j]) for j in range(1,MAX+1)))


def A(f):
    return simp(sum(output(0,j)*s.diff(f,mom[j]) for j in range(1,MAX+1)
                    if s.diff(f,mom[j]) != 0))


def B(f):
    value = s.S.Zero
    for j in range(1,MAX+1):
        df = s.diff(f,mom[j])
        if df != 0:
            value -= output(0,j)*(number(df)+df)
    for i in range(1,MAX+1):
        for j in range(i,MAX+1):
            df = s.diff(f,mom[i],mom[j])
            if df != 0:
                value += output(i,j)*df/(2 if i == j else 1)
    return simp(value.subs(mom[1],0))


def centered(p):
    return s.expand(sum(s.binomial(p,j)*(-mom[1])**(p-j)*mom[j]
                        for j in range(p+1)))


def main():
    retract = {mom[1]:0,mom[2]:x,mom[3]:y}
    records = {}
    for p in range(4,7):
        value = simp(A(centered(p)).subs(mom[1],0))
        slope = simp(s.diff(value,mom[p]))
        forcing = simp(value-slope*mom[p])
        retract[mom[p]] = simp(-forcing.subs(retract)/slope)
        records[str(p)] = {'slope':str(slope),'retraction':str(retract[mom[p]])}
    assert simp(retract[mom[4]] + 3*x*x) == 0
    assert simp(retract[mom[5]] + 2*x*y) == 0
    raw = B(centered(3)**2)
    low = simp(raw.subs(retract))
    epsilon = simp(low/(y*y+4*x**3))
    assert not epsilon.has(x,y)
    for f in (s.S.One,centered(2),centered(3),centered(2)**2,
              centered(2)*centered(3)):
        assert simp(B(s.expand(f)).subs(retract)) == 0
    assert simp(epsilon.subs(w,0)) == 0
    print('Generic chiral defect jets passed.',flush=True)

    # Einstein affine defects, computed without importing its old evaluator.
    a = -4*d*d + 2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
    b = -4*d*d + 4*d/((2*d+1)*(2*d+3))
    u = -4*d*d
    C = lambda k: (d+k)*(d+k-1)
    slope = simp((b-a)/(C(2)-C(0)))
    r4 = simp(u-a-slope*(C(4)-C(0)))
    r6 = simp(u-a-slope*(C(6)-C(0)))
    eps_einstein = simp(epsilon.subs({v:r4,w:r6}))
    expected = 54*d*(d+3)*(d+4)**2*(2*d*d+9*d+3)/((2*d-1)*(2*d+3)*(34*d**3+273*d*d+611*d+240))
    assert simp(eps_einstein-expected) == 0

    # A strict-support, bounded diagonal deformation at d=2.
    mass = s.Integer(2)
    cc = lambda k: (mass+k)*(mass+k-1)
    aa,bb = s.S.One,s.Rational(9,14)
    ss = (bb-aa)/(cc(2)-cc(0))
    defect = lambda k: -aa-ss*(cc(k)-cc(0))
    assert ss == -s.Rational(1,28)
    assert defect(4) == 0
    assert defect(6) == s.Rational(13,14)
    N = s.symbols('N', integer=True, positive=True)
    exact_P4 = simp(aa*N*(N-1)/2 + ss*4*(N*mass+3))
    assert simp(exact_P4-(N*(N-1)/2-2*N/s.Integer(7)-s.Rational(3,7))) == 0

    report = {
        'status':'all_passed',
        'construction':'Independent explicit Bargmann descendant projectors and occupation differential operator',
        'imports_from_previous_code':False,
        'generic_defect_retractions':records,
        'generic_B_low_y2':str(low),
        'generic_epsilon':str(epsilon),
        'r6_zero_epsilon':str(simp(epsilon.subs(w,0))),
        'Einstein_defect_4':str(r4),
        'Einstein_defect_6':str(r6),
        'Einstein_epsilon':str(eps_einstein),
        'strict_support_counterexample':{
            'Delta':2,'epsilon0':1,'epsilon2':'9/14','affine_slope':str(ss),
            'defect4':str(defect(4)),'defect6':str(defect(6)),
            'P4_exact_scalar':str(exact_P4),
            'P4_primary_multiplicity_for_N_at_least_4':2,
        },
    }
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=Path(__file__).with_suffix('.json'))
    target = parser.parse_args().output
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'status':'all_passed','output':str(target)}))


if __name__ == '__main__':
    main()
