"""Exact complete three-scalar global-primary O(G) spectrum.

The scalar gap Delta is the renormalized physical one.  A state with primary
bidegree (P,Q) has E=3*Delta+P+Q+G*gamma+o(G).  This module constructs a
positive Gram compression whose size depends on min(P,Q), and not on max(P,Q)
once the latter exceeds min(P,Q)+2.  All coefficients are rational when Delta
is rational.  Only SymPy is required beyond the Python standard library.

The spectrum is represented exactly by a characteristic polynomial.  A
nonzero eigenvector of the compressed matrix lifts by Bose symmetrization of
the explicit pair-primary polynomials given in the companion note.  Zero
eigenvectors of the auxiliary matrix are discarded; the physical baseline
multiplicity follows from the Molien character and its rank.
"""

from functools import lru_cache
from math import factorial
from pathlib import Path
import argparse
import json
import sympy as s


@lru_cache(None)
def rf(x, n):
    x = s.sympify(x)
    out = s.S.One
    for j in range(n):
        out *= x+j
    return out


def pair_gamma(delta, k, ell):
    """Established Einstein two-body kernel, on even pair Bose parity."""
    d = s.sympify(delta)
    if (k+ell) % 2:
        raise ValueError('Only simultaneous pair-even channels are physical.')
    n, spin = min(k, ell), abs(k-ell)
    h = d+n
    c, mu = h*(h-1), d*(d-2)
    u = 4*mu-8*c
    if spin >= 4:
        return s.factor(u)
    if spin == 2:
        return s.factor(u+(n+1)*(n+2)*(2*d+n-1)*(2*d+n)
                        / ((2*h-1)*(2*h+1)*(2*h+3)))
    if n == 0:
        # Cancels the removable apparent pole at Delta=3/2 before evaluating.
        v0 = 2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
        return s.factor(u+v0)
    return s.factor(u*(2*h-2)/(2*h-1)
                    -2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1)))


def residual_potential(delta, k, ell):
    d = s.sympify(delta)
    c = (d+ell)*(d+ell-1)
    return s.factor(pair_gamma(d, k, ell)-(4*d*(d-2)-8*c))


def primary_dimension(P, Q):
    if min(P, Q) < 0:
        return 0
    eps = lambda j: 1 if j % 2 == 0 else 0
    cyc = lambda j: (1, -1, 0)[j % 3]
    value = ((P+1)*(Q+1)+3*eps(P)*eps(Q)+2*cyc(P)*cyc(Q))
    assert value % 6 == 0
    return value//6


def chiral_primary_dimension(P):
    if P < 0:
        return 0
    return P//6+(0 if P % 6 == 1 else 1)


def baseline_dimension(P, Q):
    """All-index kernel theorem; generator degrees 12+Q,...,12+2Q."""
    if P < Q:
        P, Q = Q, P
    return sum(chiral_primary_dimension(P-12-Q-j) for j in range(Q+1))


@lru_cache(None)
def racah_a(delta, J):
    d = s.sympify(delta)
    if d.is_Integer and d > 0:
        # O(Delta) factors even when J is enormous.
        return s.Integer((-1)**J)*s.factorial(2*d-1)/s.factorial(d-1)/rf(J+d, int(d))
    return s.Integer((-1)**J)*rf(d, J)/rf(2*d, J)


@lru_cache(None)
def racah_weight(delta, J, k):
    d = s.sympify(delta)
    if not 0 <= k <= J:
        raise ValueError('Pair degree must lie between zero and J.')
    return s.factor(rf(J+3*d-1, k)*rf(-J, k)*rf(2*d-1, k)
                    / (rf(1-d-J, k)*rf(2*d+J, k)*s.factorial(k))
                    *(2*d+2*k-1)/(2*d-1))


@lru_cache(None)
def racah_polynomial(delta, J, k, ell):
    d = s.sympify(delta)
    out = s.S.Zero
    for r in range(min(k, ell)+1):
        out += (rf(-k, r)*rf(k+2*d-1, r)*rf(-ell, r)*rf(ell+2*d-1, r)
                / (rf(d, r)*rf(-J, r)*rf(J+3*d-1, r)*s.factorial(r)))
    return s.factor(out)


@lru_cache(None)
def rational_recoupling(delta, J, k, ell):
    """Diagonal similarity of the orthonormal real symmetric Racah matrix."""
    return s.factor(racah_a(delta, J)*racah_weight(delta, J, ell)
                    *racah_polynomial(delta, J, k, ell))


def channels(P, Q):
    return [(k, ell) for ell in range(Q+1)
            for k in range(min(P, ell+2)+1) if (k+ell) % 2 == 0]


def compressed_matrix(delta, P, Q):
    d = s.sympify(delta)
    if d.is_number and d <= 1:
        raise ValueError('The physical fast-falloff scalar gap must satisfy Delta>1.')
    if min(P, Q) < 0:
        raise ValueError('Primary degrees must be nonnegative integers.')
    if P < Q:
        P, Q = Q, P
    labels = channels(P, Q)
    potentials = [residual_potential(d, k, ell) for k, ell in labels]
    # All these coefficients are strictly positive for Delta>1.
    if d.is_number and any(v <= 0 for v in potentials):
        raise AssertionError('The residual-potential positivity was violated.')
    n = len(labels)
    mat = s.zeros(n)
    for i, (k, ell) in enumerate(labels):
        for j, (r, t) in enumerate(labels):
            gram3 = ((1 if i == j else 0)
                     +2*rational_recoupling(d, P, k, r)
                       *rational_recoupling(d, Q, ell, t))
            mat[i, j] = s.factor(gram3*potentials[j])
    baseline = s.factor(6*d*(d-2)-8*(3*d/2+Q)*(3*d/2+Q-1))
    return mat, labels, potentials, baseline


def _strip_zero_roots(poly, variable):
    polynomial = s.Poly(poly, variable)
    order = min(monom[0] for monom, coeff in polynomial.terms() if coeff)
    return s.Poly(polynomial.as_expr()/variable**order, variable), order


def exact_spectrum(delta, P, Q, decimals=False, include_matrix=False):
    """Return all primary corrections and physical multiplicities exactly."""
    d = s.sympify(delta)
    original = [P, Q]
    if P < Q:
        P, Q = Q, P
    M, labels, potentials, baseline = compressed_matrix(d, P, Q)
    x = s.Symbol('x')
    raw = M.charpoly(x).as_expr()
    nonzero, auxiliary_zeros = _strip_zero_roots(raw, x)
    rank = M.rows-auxiliary_zeros
    dimension = primary_dimension(P, Q)
    multiplicity = dimension-rank
    assert multiplicity >= 0
    assert multiplicity == baseline_dimension(P,Q)
    # The all-index positivity theorem implies semisimplicity of zero.
    # Avoid optional factorization of very high-degree irreducible polynomials.
    display = s.factor if nonzero.degree() <= 10 else s.factor_terms
    nonzero_display = display(nonzero.as_expr())
    physical_charpoly = x**multiplicity*nonzero_display
    report = {
        'Delta': str(d), 'primary_bidegree': original,
        'calculation_bidegree': [P, Q],
        'primary_free_energy': str(3*d+P+Q),
        'physical_primary_dimension': dimension,
        'auxiliary_dimension': M.rows,
        'residual_rank': rank,
        'baseline_G_coefficient': str(baseline),
        'baseline_multiplicity': multiplicity,
        'auxiliary_zero_roots_to_discard': auxiliary_zeros,
        'channels': [list(t) for t in labels],
        'positive_pair_residuals': [str(v) for v in potentials],
        'nonzero_residual_characteristic_polynomial': str(nonzero_display),
        'physical_residual_characteristic_polynomial': str(physical_charpoly),
        'variable_meaning': 'x=gamma-baseline, E=3*Delta+P+Q+G*gamma+o(G)',
        'descendants': 'Each independent global left/right descendant has the same gamma.',
    }
    if include_matrix:
        report['rational_compressed_matrix'] = [[str(M[i,j]) for j in range(M.cols)]
                                                for i in range(M.rows)]
    if decimals:
        # Exact real-root isolation handles multiplicities without factorization.
        vals = []
        roots = s.polys.polytools.intervals(nonzero, eps=s.Rational(1,10**24))
        for (a, b), rootmult in roots:
            value = float((a+b)/2+baseline)
            vals.extend([value]*rootmult)
        assert len(vals) == rank
        vals.extend([float(baseline)]*multiplicity)
        report['G_coefficients_decimal'] = sorted(vals)
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta', default='2')
    parser.add_argument('--left', type=int, required=True)
    parser.add_argument('--right', type=int, required=True)
    parser.add_argument('--matrix', action='store_true')
    parser.add_argument('--decimals', action='store_true')
    parser.add_argument('--output')
    args = parser.parse_args()
    report = exact_spectrum(s.Rational(args.delta), args.left, args.right,
                            decimals=args.decimals, include_matrix=args.matrix)
    payload = json.dumps(report, ensure_ascii=False, indent=2)+'\n'
    if args.output:
        Path(args.output).write_text(payload)
    else:
        print(payload, end='')


if __name__ == '__main__':
    main()
