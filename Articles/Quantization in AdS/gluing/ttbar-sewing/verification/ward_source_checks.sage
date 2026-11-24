"""Local order-two Ward/source calculation, 2026-11-15.
Run: sage --nodotsage -python verification/ward_source_checks.sage

This is a specified free-Euclidean-time midpoint finite-part contact rule,
NOT a claim that all Jacobi identities or a Hilbert metric completion hold.
No spectrum or energy eigenvalues enter. All polynomials are full plane-Wick.
"""
import sympy as S
from math import factorial, comb
from collections import defaultdict
from functools import lru_cache

I, pi = S.I, S.pi

# A monomial is ((0,a),(0,b),...,(1,c),...) for R^(a),R^(b),...,L^(c).
def canon(ms):
    if len(set(ms)) < len(ms):
        return None, 0
    inversions = sum(ms[i] > ms[j] for i in range(len(ms))
                     for j in range(i + 1, len(ms)))
    return tuple(sorted(ms)), (-1) ** inversions


def clean(x):
    return {k: S.expand(v) for k, v in x.items() if S.expand(v) != 0}


def add(*xs):
    out = defaultdict(lambda: S.S(0))
    for x in xs:
        for k, v in x.items():
            out[k] += v
    return clean(out)


def scale(x, c):
    return clean({k: c * v for k, v in x.items()})


def substitute(x, rule):
    return clean({k: S.simplify(v.subs(rule)) for k, v in x.items()})


def dx(x, free=False):
    out = defaultdict(lambda: S.S(0))
    for mon, co in x.items():
        for j, (ch, n) in enumerate(mon):
            ms = list(mon)
            ms[j] = (ch, n + 1)
            key, sign = canon(ms)
            if sign:
                speed = (-1 if ch == 0 else 1) if free else 1
                out[key] += co * sign * speed
    return clean(out)


def dn(x, n, free=False):
    for _ in range(n):
        x = dx(x, free)
    return x


def parts(n, k):
    if k == 0:
        if n == 0:
            yield ()
    elif k == 1:
        yield (n,)
    else:
        for a in range(n + 1):
            for rest in parts(n - a, k - 1):
                yield (a,) + rest


@lru_cache(None)
def matchings(A, B):
    out = []
    def rec(j, used, pairs):
        if j == len(A):
            out.append(tuple(pairs))
            return
        rec(j + 1, used, pairs)
        for k in range(len(B)):
            if k not in used and A[j][0] == B[k][0]:
                rec(j + 1, used | {k}, pairs + [(j, len(A) + k)])
    rec(0, set(), [])
    return tuple(out)


@lru_cache(None)
def midpoint_residue(a, b, u, v, ub, vb):
    """Residue difference at upper poles, with epsilon set to 1.

    Forward: (s+i/2)^u (s-i/2)^v (-i/2)^ub (i/2)^vb /
             [(s+i)^a (s-i)^b].
    Backward: change i -> -i in this rational kernel, but NOT in
    the Wick-contraction prefactor.  Only u+v+ub+vb=a+b-1 is used.
    """
    value = S.S(0)
    if b:
        for j in range(u + 1):
            for k in range(v + 1):
                t = b - 1 - j - k
                if t >= 0:
                    value += ((-I / 2) ** ub * (I / 2) ** vb
                              * comb(u, j) * (3 * I / 2) ** (u - j)
                              * comb(v, k) * (I / 2) ** (v - k)
                              * S.binomial(-a, t) * (2 * I) ** (-a - t))
    if a:
        for j in range(u + 1):
            for k in range(v + 1):
                t = a - 1 - j - k
                if t >= 0:
                    value -= ((I / 2) ** ub * (-I / 2) ** vb
                              * comb(u, j) * (I / 2) ** (u - j)
                              * comb(v, k) * (3 * I / 2) ** (v - k)
                              * S.binomial(-b, t) * (2 * I) ** (-b - t))
    return S.simplify(value)


@lru_cache(None)
def monomial_bracket(A, B):
    """FP i int dy [A(y,+eps/2)B(x,-eps/2)
                        - B(x,+eps/2)A(y,-eps/2)].

    CR=i/[2pi(s+i eps)], CL=-i/[2pi(s-i eps)].
    ALL uncontracted endpoints are Taylor-expanded in BOTH free
    Euclidean time and space, not just in spatial separation.
    """
    out = defaultdict(lambda: S.S(0))
    full = A + B
    for pairs in matchings(A, B):
        if not pairs:
            continue
        ids = list(range(len(full)))
        sign, co = 1, S.S(1)
        ar = al = 0
        for ia, ib in sorted(pairs):
            j, k = ids.index(ia), ids.index(ib)
            sign *= (-1) ** (k - j - 1)
            ids.remove(ia)
            ids.remove(ib)
            ch, a = full[ia]
            _, b = full[ib]
            if ch == 0:
                ar += a + b + 1
            else:
                al += a + b + 1
            co *= ((-1) ** a * factorial(a + b)
                   * (I if ch == 0 else -I) / (2 * pi))
        # Other total Taylor orders have nonzero powers of eps and do
        # not contribute to its constant Laurent coefficient.
        for increments in parts(ar + al - 1, len(ids)):
            u = sum(n for q, n in zip(ids, increments)
                    if q < len(A) and full[q][0] == 0)
            v = sum(n for q, n in zip(ids, increments)
                    if q < len(A) and full[q][0] == 1)
            ub = sum(n for q, n in zip(ids, increments)
                     if q >= len(A) and full[q][0] == 0)
            vb = sum(n for q, n in zip(ids, increments)
                     if q >= len(A) and full[q][0] == 1)
            residue = midpoint_residue(ar, al, u, v, ub, vb)
            if residue == 0:
                continue
            ms = [(full[q][0], full[q][1] + n)
                  for q, n in zip(ids, increments)]
            key, ss = canon(ms)
            if ss:
                # i times 2pi i times the upper-residue difference.
                out[key] += (sign * ss * (-2 * pi) * residue * co
                             / S.prod(factorial(n) for n in increments))
    return tuple(clean(out).items())


def bracket(A, B):
    out = defaultdict(lambda: S.S(0))
    for a, ca in A.items():
        for b, cb in B.items():
            for mon, value in monomial_bracket(a, b):
                out[mon] += ca * cb * value
    return clean(out)


# Independent derivation of the single-stress action via test functions.
def anomaly(a, b):
    return S.simplify(-I / (4 * pi) * sum(
        S.Rational((-1) ** j * comb(b, j) * (a + j),
                   (a + j + 1) * (a + j + 2)) for j in range(b + 1)))


def test_function_action(v, energy=False):
    """Coefficients of f^(n) in i[int f p,v], or int f h0.
    Elementary conformal transformation plus plane-Wick anomaly.
    """
    out = defaultdict(lambda: defaultdict(lambda: S.S(0)))
    for mon, co in v.items():
        for j, (ch, a) in enumerate(mon):
            sg = 1 if energy and ch == 1 else -1
            for n in range(a + 1):
                ms = list(mon)
                ms[j] = (ch, a + 1 - n)
                key, ss = canon(ms)
                if ss:
                    out[n][key] += co * ss * sg * comb(a, n)
            for n in range(1, a + 2):
                ms = list(mon)
                ms[j] = (ch, a + 1 - n)
                key, ss = canon(ms)
                if ss:
                    out[n][key] += co * ss * sg * S.Rational(1, 2) * comb(a, n - 1)
        for ch in [0, 1]:
            inds = [j for j, a in enumerate(mon) if a[0] == ch]
            if len(inds) == 2:
                ia, ib = inds
                a, b = mon[ia][1], mon[ib][1]
                remaining = tuple(q for j, q in enumerate(mon) if j not in inds)
                sg = 1 if ch == 0 or energy else -1
                out[a + b + 2][remaining] += co * sg * anomaly(a, b)
    return {n: clean(x) for n, x in out.items()}


def charge_stress_action(v, energy=False):
    return scale(add(*[scale(dn(x, n), (-1) ** n)
                       for n, x in test_function_action(v, energy).items()]), -1)


# Exact total-spatial-derivative test by the finite local exterior basis.
def primitive(x):
    if not x:
        return {}
    # One spatial derivative lowers the total jet sum by one.
    sectors = {(tuple(ch for ch, _ in mon), sum(n for _, n in mon) - 1)
               for mon in x}
    candidates = set()
    for chs, total in sectors:
        if total < 0:
            continue
        for increments in parts(total, len(chs)):
            key, ss = canon(list(zip(chs, increments)))
            if ss:
                candidates.add(key)
    candidates = sorted(candidates)
    if not candidates:
        return None
    columns = [dx({mon: S.S(1)}) for mon in candidates]
    rows = sorted(set(x).union(*(set(col) for col in columns)))
    mat = S.Matrix([[col.get(row, 0) for col in columns] for row in rows])
    vec = S.Matrix([x.get(row, 0) for row in rows])
    try:
        sol, params = mat.gauss_jordan_solve(vec)
    except ValueError:
        return None
    sol = sol.subs({p: 0 for p in params})
    result = clean(dict(zip(candidates, sol)))
    assert add(dx(result), scale(x, -1)) == {}
    return result


checks = []
def check(name, condition):
    condition = bool(condition)
    checks.append((name, condition))
    print(('PASS ' if condition else 'FAIL ') + name, flush=True)
    return condition


R = {((0, 0),): S.S(1)}
L = {((1, 0),): S.S(1)}
r = {((0, 0), (0, 1)): -I / 2}
l = {((1, 0), (1, 1)): I / 2}
h0, p = add(r, l), add(r, scale(l, -1))
v1 = {((0, 0), (0, 1), (1, 0), (1, 1)): -S.S(1)}
h1 = add(v1, scale(dn(h0, 2), 1 / (12 * pi)))
q1 = add(scale(v1, 3), scale(dn(h0, 2), 1 / (12 * pi)))
B05 = {((0, 0), (0, 5)): I, ((1, 0), (1, 5)): -I}
B14 = {((0, 1), (0, 4)): I, ((1, 1), (1, 4)): -I}
B23 = {((0, 2), (0, 3)): I, ((1, 2), (1, 3)): -I}
A = {((0, 0), (0, 3), (1, 0), (1, 1)): S.S(1),
     ((0, 0), (0, 1), (1, 0), (1, 3)): S.S(1)}
B = {((0, 1), (0, 2), (1, 0), (1, 1)): S.S(1),
     ((0, 0), (0, 1), (1, 1), (1, 2)): S.S(1)}
C = {((0, 0), (0, 2), (1, 0), (1, 2)): S.S(1)}
basis = [B05, B14, B23, A, B, C]
a, b, c, d, e, f = S.symbols('a b c d e f')
qs, ka, kc = S.symbols('qs ka kc')
h2 = add(*[scale(x, t) for x, t in zip(basis, [a, b, c, d, e, f])])
v2 = add(scale(B05, qs), scale(A, ka), scale(C, kc))

check('free R equation', bracket(h0, R) == scale(dx(R), -1))
check('free L equation', bracket(h0, L) == dx(L))
check('central coefficient kappa=1/(48pi)', S.simplify((-I / 2) * anomaly(0, 1) - 1 / (48 * pi)) == 0)
check('first-order energy Ward', add(dx(h1, True), bracket(v1, h0)) == {})
check('first-order momentum Ward', add(bracket(v1, p), dx(q1)) == {})
check('external spatial derivative compatibility', bracket(v1, dn(h0, 2)) == dn(bracket(v1, h0), 2))
check('single-stress action independent derivation energy', bracket(v2, h0) == charge_stress_action(v2, True))
check('single-stress action independent derivation momentum', bracket(v2, p) == charge_stress_action(v2))
check('integrated self commutator has local spatial primitive', primitive(bracket(v1, v1)) is not None)
print('D1_v1 =', bracket(v1, v1), flush=True)
print('D1_h1 =', bracket(v1, h1), flush=True)

R2 = add(dx(h2, True), bracket(v1, h1), bracket(v2, h0))
equations = list(R2.values()) + [a - b + c - qs, d - e - ka, f - 2 * e - kc]
solution = S.solve(equations, [a, b, c, d, e, f, qs, ka, kc], dict=True)
print('GENERAL_ENERGY_SOLUTION =', solution, flush=True)
check('unique one-parameter energy solution', len(solution) == 1 and kc not in solution[0])
solution = solution[0]
check('full energy residual vanishes identically', substitute(R2, solution) == {})
check('integral h2 agrees with v2', all(S.simplify(x.subs(solution)) == 0
      for x in [a - b + c - qs, d - e - ka, f - 2 * e - kc]))
J2 = add(scale({((0, 0), (0, 4)): I, ((1, 0), (1, 4)): -I}, a - qs),
         scale({((0, 1), (0, 3)): I, ((1, 1), (1, 3)): -I}, c),
         scale({((0, 0), (0, 2), (1, 0), (1, 1)): S.S(1),
                ((0, 0), (0, 1), (1, 0), (1, 2)): S.S(1)}, e))
check('explicit local density improvement h2-v2=J2_prime',
      substitute(add(h2, scale(v2, -1), scale(dx(J2), -1)), solution) == {})

momentum = add(dx(h2), charge_stress_action(v2))
qsolution = S.solve(list(momentum.values()), [a, b, c, d, e, f], dict=True)
print('GENERAL_PRESSURE_SOLUTION =', qsolution, flush=True)
check('unique pressure solution', len(qsolution) == 1)
check('full momentum residual vanishes identically', substitute(momentum, qsolution[0]) == {})

for label, cv in [('inner-pair symmetric', -S.Rational(47, 24) / pi),
                  ('whole-composite determinant FP', -S.Rational(35, 24) / pi)]:
    hs = {t: S.simplify(v.subs(kc, cv)) for t, v in solution.items()}
    hs[kc] = cv
    ps = {t: S.simplify(v.subs(solution).subs(kc, cv)) for t, v in qsolution[0].items()}
    print(label, 'h2 coefficients:', hs, flush=True)
    print(label, 'q2 coefficients:', ps, flush=True)
    check(label + ' energy Ward', substitute(R2, hs) == {})
    check(label + ' momentum Ward', substitute(substitute(momentum, ps), hs) == {})

# Exact contact correction required if naive full-Wick Leibniz is used:
# all fully-Wick sextics in D1(v1) vanish, but the displayed lower-degree
# D1(v1) is nonzero.  This is a failure of naive Leibniz, not an anomaly.
check('D1v1 is nonzero (naive full-Wick Leibniz is insufficient)', bool(bracket(v1, v1)))

# Test that the left integrated entry ignores spatial total derivatives.
test_density = {((0, 0), (0, 2), (1, 0), (1, 1)): S.S(1)}
check('integrated total-derivative entry on h0', bracket(dx(test_density), h0) == {})
check('integrated total-derivative entry on R', bracket(dx(test_density), R) == {})
check('integrated total-derivative entry on v1', bracket(dx(test_density), v1) == {})

# Restricted H0 Jacobi tests. These are necessary, not a proof of Jacobi.
for label, obj in [('R', R), ('r', r), ('v1', v1)]:
    jac = add(dx(bracket(v1, obj), True),
              scale(bracket(v1, dx(obj, True)), -1),
              scale(bracket(dx(v1, True), obj), -1))
    check('H0,V1,' + label + ' Jacobi', jac == {})
    if jac:
        print('JACOBI_RESIDUAL', label, jac, flush=True)

# A genuinely nonlinear diagnostic: G=int r l'. No answer is assumed.
g = {((0, 0), (0, 1), (1, 0), (1, 2)): S.Rational(1, 4)}
vg = bracket(v1, g)
nonlinear_jacobies = {}
for label, obj in [('R', R), ('L', L), ('r', r)]:
    jac = add(bracket(v1, bracket(g, obj)),
              scale(bracket(g, bracket(v1, obj)), -1),
              scale(bracket(vg, obj), -1))
    nonlinear_jacobies[label] = jac
    check('nonlinear V1,G,' + label + ' Jacobi', jac == {})
    if jac:
        print('NONLINEAR_JACOBI_RESIDUAL', label, jac, flush=True)
print('J_R7 =', nonlinear_jacobies['R'].get(((0, 7),), 0), flush=True)
jr = nonlinear_jacobies['R']
car_defect = S.simplify(2 * jr.get(((0, 4), (1, 0), (1, 2)), 0)
                        - 5 * jr.get(((0, 5), (1, 0), (1, 1)), 0))
print('J_R_CAR_SKEW_DEFECT_D4 =', car_defect, '* :L L_doubleprime:', flush=True)
check('explicit nonlinear CAR defect coefficient', car_defect == 49 * I / (512 * pi))
# Can a local dimension-eight correction to the charge commutator alone
# repair its action on both elementary CAR generators?  This does not
# assume such a correction exists, and does not modify the Ward prescription.
repair_monomials = set()
for chs in [(0, 0), (1, 1), (0, 0, 1, 1),
            (0, 0, 0, 0), (1, 1, 1, 1)]:
    jet_sum = 8 - len(chs) // 2
    for jets in parts(jet_sum, len(chs)):
        mon, sign = canon(list(zip(chs, jets)))
        if sign:
            repair_monomials.add(mon)
repair_monomials = sorted(repair_monomials)
repair_variables = S.symbols('z0:' + str(len(repair_monomials)))
repair_density = dict(zip(repair_monomials, repair_variables))
repair_equations = []
for label, obj in [('R', R), ('L', L)]:
    repair_equations += list(add(bracket(repair_density, obj),
                                scale(nonlinear_jacobies[label], -1)).values())
repair_solution = S.linsolve(repair_equations, repair_variables)
print('GENERATOR_LEVEL_LOCAL_JACOBI_REPAIR =', repair_solution, flush=True)
if repair_solution != S.EmptySet:
    repair_tuple = next(iter(repair_solution))
    free = set().union(*(v.free_symbols for v in repair_tuple))
    simple_repair = substitute(repair_density, dict(zip(repair_variables, repair_tuple)))
    simple_repair = substitute(simple_repair, {z: 0 for z in free})
    print('ONE_LOCAL_JACOBI_REPAIR_DENSITY =', simple_repair, flush=True)
    print('COMPOSITE_r_REPAIR_RESIDUAL =', add(bracket(simple_repair, r),
          scale(nonlinear_jacobies['r'], -1)), flush=True)
print('CHECK_SUMMARY =', checks, flush=True)
# The nonlinear Jacobi failures are genuine diagnostics, not test success.
# All other checks must pass; do not hide an unrelated failed sanity check.
unexpected = [name for name, ok in checks if not ok and not name.startswith('nonlinear ')]
assert not unexpected, unexpected
