"""Independent exact verification of all-chirality three-body compression.

The reference calculation constructs translation-primary polynomials directly
in x=z1-z3,y=z2-z3 and their barred counterparts, obtains the pair channels by
the differential Casimir, and sums all three pair Hamiltonians on the full
Bose-invariant primary space.  It never calls a Racah coefficient, CG formula,
or the compressed matrix to construct that reference Hamiltonian.

This is an independent many-body/representation check, not a fresh derivation
of the Einstein two-body dynamics; the supplied physical pair kernel remains
the shared dynamical input.  Raw canonical checks are recorded separately.
"""
from functools import lru_cache
from pathlib import Path
import json
import time
import sympy as s
from three_body_nonchiral import exact_spectrum, pair_gamma, primary_dimension

x = s.Symbol('x')


@lru_cache(None)
def differential_pair_casimir(delta, J):
    # Matrix on x^r y^(J-r), computed by differentiating each monomial.
    C = s.zeros(J+1)
    for r in range(J+1):
        t = J-r
        C[r, r] += 2*r*t+delta*(r+t)+delta*(delta-1)
        if r > 0:
            C[r-1, r] -= r*t+delta*r
        if t > 0:
            C[r+1, r] -= r*t+delta*t
    return C


@lru_cache(None)
def permutations(J):
    p12, p23, p13 = (s.zeros(J+1) for _ in range(3))
    for r in range(J+1):
        p12[J-r, r] = 1
        for a in range(r+1):
            p23[a, r] = (-1)**(J-a)*s.binomial(r, a)
        for a in range(r, J+1):
            p13[a, r] = (-1)**a*s.binomial(J-r, a-r)
    for p in (p12, p23, p13):
        assert p*p == s.eye(J+1)
    return p12, p23, p13


@lru_cache(None)
def differential_channel_basis(delta, J):
    C = differential_pair_casimir(delta, J)
    I = s.eye(J+1)
    vectors = []
    for k in range(J+1):
        null = (C-(delta+k)*(delta+k-1)*I).nullspace()
        assert len(null) == 1
        vectors.append(null[0])
    E = s.Matrix.hstack(*vectors)
    inv = E.inv()
    assert C*E == E*s.diag(*[(delta+k)*(delta+k-1) for k in range(J+1)])
    return E, inv


def full_primary_reference(delta, P, Q, matrices=False):
    pl, pr = permutations(P), permutations(Q)
    p12, p23, p13 = [s.kronecker_product(pl[i], pr[i]) for i in range(3)]
    identity = s.eye((P+1)*(Q+1))
    Bose = (identity+p12+p23+p13+p12*p23+p23*p12)/6
    assert Bose*Bose == Bose
    cols = Bose.columnspace()
    B = s.Matrix.hstack(*cols) if cols else s.zeros(identity.rows, 0)
    assert B.cols == primary_dimension(P,Q)
    if not B.cols:
        return {'dimension': 0, 'charpoly': s.S.One, 'matrix': s.zeros(0)}
    assert p12*B == B and p23*B == B and p13*B == B
    EL, IL = differential_channel_basis(delta, P)
    ER, IR = differential_channel_basis(delta, Q)
    E = s.kronecker_product(EL, ER)
    inverse = s.kronecker_product(IL, IR)
    pair_coordinates = s.MutableDenseMatrix(inverse*B)
    # Wrong pair parity is identically absent in a physical Bose state.
    for k in range(P+1):
        for ell in range(Q+1):
            row = k*(Q+1)+ell
            if (k+ell) % 2:
                assert all(t == 0 for t in pair_coordinates.row(row))
            else:
                pair_coordinates[row,:] *= pair_gamma(delta,k,ell)
    pair_action = E*pair_coordinates
    full_action = (identity+p23+p13)*pair_action
    pivots = B.T.rref()[1]
    square = B[list(pivots),:]
    H = (square.inv()*full_action[list(pivots),:]).applyfunc(s.factor)
    assert full_action == B*H
    display = s.factor if B.cols <= 10 else s.factor_terms
    out = {'dimension': B.cols, 'charpoly': display(H.charpoly(x).as_expr()),
           'matrix': H}
    if matrices:
        out['basis'] = B
    return out


def check(delta,P,Q):
    started = time.perf_counter()
    reference = full_primary_reference(delta,P,Q)
    compressed = exact_spectrum(delta,P,Q,decimals=min(P,Q)<=4)
    b = s.sympify(compressed['baseline_G_coefficient'])
    proposed = s.sympify(compressed['physical_residual_characteristic_polynomial']).subs(x,x-b)
    assert s.expand(reference['charpoly']-proposed) == 0
    if min(P,Q) == 1:
        assert compressed['baseline_multiplicity'] == primary_dimension(max(P,Q)-12,1)
    if min(P,Q) == 2:
        expected = max(0,(max(P,Q)-12)//2)
        assert compressed['baseline_multiplicity'] == expected
    return {**compressed,
            'independent_full_primary_characteristic_polynomial': str(reference['charpoly']),
            'independent_full_primary_matrix': [[str(v) for v in reference['matrix'].row(i)]
                                                 for i in range(reference['matrix'].rows)],
            'exact_characteristic_residual': '0',
            'elapsed_seconds': round(time.perf_counter()-started,3)}


def main():
    cases=[]
    pairs=[(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(10,1),(13,1),
           (2,2),(3,2),(4,2),(6,2),(10,2),(12,2),(14,2),
           (3,3),(4,3),(6,3),(8,3),(4,4),(6,4),(15,3),(17,5)]
    for P,Q in pairs:
        item=check(s.Integer(2),P,Q)
        cases.append(item)
        print(json.dumps({k:item[k] for k in ['Delta','primary_bidegree',
                         'physical_primary_dimension','auxiliary_dimension',
                         'baseline_multiplicity','G_coefficients_decimal',
                         'elapsed_seconds'] if k in item}),flush=True)
    for d,P,Q in [(s.Rational(3,2),4,2),(s.Rational(5,4),4,3),
                  (s.Rational(7,3),3,3)]:
        item=check(d,P,Q);cases.append(item)
        print(json.dumps({k:item[k] for k in ['Delta','primary_bidegree',
                         'physical_primary_dimension','auxiliary_dimension',
                         'baseline_multiplicity','G_coefficients_decimal',
                         'elapsed_seconds']}),flush=True)
    output={'method':__doc__,'exact_cases':len(cases),'results':cases}
    Path(__file__).with_name('nonchiral_verification.json').write_text(
        json.dumps(output,ensure_ascii=False,indent=2)+'\n')


if __name__=='__main__':
    main()
