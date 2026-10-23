"""Exact independent checks of primary-polynomial ranks.
Run with SageMath 10.9: sage --nodotsage verify_rank.sage.py
No external research notes or candidate reports are read.
"""
from sage.all import *
from sage.version import version as sage_version
import json
from pathlib import Path

OUT = Path(__file__).resolve().parent


def compositions(a, n):
    if n == 1:
        yield (a,)
    else:
        for k in range(a + 1):
            for tail in compositions(a - k, n - 1):
                yield (k,) + tail


def exact_family(N, m, J, Delta, field=QQ):
    """Original constrained x,y polynomials, with x_N,y_N eliminated."""
    R = PolynomialRing(field, ["x%d" % i for i in range(N-1)]
                       + ["y%d" % i for i in range(N-1)])
    variables = R.gens()
    x = list(variables[:N-1])
    y = list(variables[N-1:])
    x.append(-sum(x))
    y.append(-sum(y))
    t = [x[i]*y[i] for i in range(N)]
    h = [field(1)/(factorial(k)*prod(Delta+j for j in range(k)))
         for k in range(m+1)]
    H = [sum(prod(h[q[i]]*t[i]**q[i] for i in range(N))
             for q in compositions(a, N)) for a in range(m+1)]
    F = [H[m-r]*sum(y[i]**J*t[i]**r for i in range(N))
         for r in range(m+1)]
    dictionaries = [f.dict() for f in F]
    monomials = sorted(set().union(*(d.keys() for d in dictionaries)))
    M = matrix(field, [[d.get(q, 0) for q in monomials]
                       for d in dictionaries])
    return F, M


def expected_rank(m, J):
    if J == 0:
        return max(1, m)
    if J == 1:
        return m
    return m+1


def log_derivative_coefficients(m, Delta, field=QQ):
    """a_r = r [z^r] log 0F1(;Delta;z), indexed by r."""
    a = [field(0)]*(m+1)
    if m:
        a[1] = 1/Delta
    for r in range(2, m+1):
        a[r] = -sum(a[i]*a[r-i] for i in range(1, r))/(Delta+r-1)
    return a


records = []
for Delta in [QQ(3)/2, QQ(2), QQ(7)/3, QQ(5)]:
    for m in range(5):
        for J in range(7):
            F, M = exact_family(4, m, J, Delta)
            rank = M.rank()
            expected = expected_rank(m, J)
            assert rank == expected, (4, m, J, Delta, rank, expected)
            if J == 0 and m:
                a = log_derivative_coefficients(m, Delta)
                assert QQ(m)/4*F[0] == sum(a[r]*F[r] for r in range(1, m+1))
            records.append({"N": 4, "m": m, "J": J,
                            "Delta": str(Delta), "rank": int(rank)})

for m in [5, 6]:
    for J in range(4):
        F, M = exact_family(4, m, J, QQ(2))
        rank = M.rank()
        assert rank == expected_rank(m, J)
        if J == 0:
            a = log_derivative_coefficients(m, QQ(2))
            assert QQ(m)/4*F[0] == sum(a[r]*F[r] for r in range(1, m+1))
        records.append({"N": 4, "m": m, "J": J,
                        "Delta": "2", "rank": int(rank)})

for m in range(3):
    for J in range(5):
        F, M = exact_family(5, m, J, QQ(3)/2)
        rank = M.rank()
        assert rank == expected_rank(m, J)
        if J == 0 and m:
            a = log_derivative_coefficients(m, QQ(3)/2)
            assert QQ(m)/5*F[0] == sum(a[r]*F[r] for r in range(1, m+1))
        records.append({"N": 5, "m": m, "J": J,
                        "Delta": "3/2", "rank": int(rank)})

# Symbolic-Delta direct checks (rational-function field, not all-Delta proof).
D_ring = PolynomialRing(QQ, 'D')
D = D_ring.gen()
K = D_ring.fraction_field()
D = K(D)
symbolic_records = []
for m in range(4):
    for J in range(4):
        F, M = exact_family(4, m, J, D, K)
        rank = M.rank()
        assert rank == expected_rank(m, J)
        if J == 0 and m:
            a = log_derivative_coefficients(m, D, K)
            assert K(m)/4*F[0] == sum(a[r]*F[r] for r in range(1, m+1))
        symbolic_records.append({"N": 4, "m": m, "J": J,
                                 "Delta": "symbolic D", "rank": int(rank)})

# Explicit low-N exception, valid symbolically wherever the expressions exist.
F, M = exact_family(3, 1, 2, D, K)
assert F[1] == D/2*F[0]
assert M.rank() == 1
low_N = {"N3_m1_J2_relation": "F1=(Delta/2)F0", "rank": 1}

# Independent formal-power-series check of the displayed recurrence.
S = PowerSeriesRing(K, 'z', default_prec=13)
z = S.gen()
f = sum(z**k/(factorial(k)*prod(D+j for j in range(k))) for k in range(13))
logf = f.log()
a = log_derivative_coefficients(12, D, K)
assert all(a[r] == r*logf[r] for r in range(1, 13))

result = {"sage_version": str(sage_version),
          "direct_exact_rational_rank_checks": records,
          "direct_symbolic_rank_checks": symbolic_records,
          "low_N": low_N,
          "log_derivative_recurrence_verified_through_r": 12,
          "failures": 0}
(OUT/'exact_checks.json').write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
print("PASS:", len(records), "direct exact rational ranks;",
      len(symbolic_records), "symbolic-Delta generic ranks;")
print("PASS: symbolic J=0 relations and N=3,m=1,J=2 exception;")
print("PASS: log-derivative recurrence through r=12.")
print("All-Delta theorem is proved analytically in review.md; symbolic ranks alone are generic checks.")
print(str(OUT/'exact_checks.json'))
