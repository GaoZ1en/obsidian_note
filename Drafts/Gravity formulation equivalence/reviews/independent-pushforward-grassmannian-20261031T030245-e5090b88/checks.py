"""Exact reproducible checks for the independent pushforward/Grassmannian report.
Run with SageMath 10.9: sage --nodotsage checks.py
No original note or report is read or modified. Each execution writes a new,
private diagnostic directory under $DSH_HOME/research-results/kernel-exports.
The finite matrices contain the complete finite-rank tangent blocks; they are
not numerical Fourier truncations or evidence for the analytic kernel bound.
"""
from sage.all import QQ, ZZ, PolynomialRing, QuadraticField, matrix, diagonal_matrix, version
from pathlib import Path
import os
import tempfile
import json
import traceback
import hashlib

store = Path(os.environ.get('DSH_HOME') or (Path.home() / '.dsh')) / 'research-results' / 'kernel-exports'
store.mkdir(parents=True, exist_ok=True, mode=0o700)
out = Path(tempfile.mkdtemp(prefix='independent-pushforward-', dir=store))
records = []
errors = []

def check(label, condition, detail=None):
    if condition is not True and condition is not False:
        raise TypeError('Check must return an exact Python boolean: ' + label)
    row = {'label': label, 'passed': condition}
    if detail is not None:
        row['detail'] = detail
    records.append(row)
    print(('PASS ' if condition else 'FAIL ') + label)
    if detail is not None:
        print('  ' + str(detail))

try:
    print('Sage version: ' + version())
    print('All algebra is exact over QQ or QQ(i).')
    # Direct composition of A_m e_j=(j-m)e_{j+m}.
    defects = []
    for m in range(-5, 6):
        for n in range(-5, 6):
            for j in range(-8, 9):
                comm = (j-n)*(j+n-m) - (j-m)*(j+m-n)
                expected = -(m-n)*(j-m-n)
                if comm != expected:
                    defects.append((m, n, j, comm, expected))
    check('[A_m,A_n] = -A_[e_m,e_n]', len(defects) == 0,
          {'tested_triples': 11*11*17, 'defects': defects})

    R = PolynomialRing(QQ, 'p')
    p = R.gen()
    S = p*(p-1)*(14*p-13)/6
    def sumsq(n):
        return n*(n+1)*(2*n+1)/6
    check('Exact sum-of-squares polynomial',
          sumsq(2*p-2)-sumsq(p-2) == S,
          str(S))
    check('H-isotropy residual polynomial',
          (p-1)*S(p+1)-(p+2)*S == QQ(9)/2*p*(p-1),
          str((p-1)*S(p+1)-(p+2)*S))
    jsum = p*(p-3)/2
    j2sum = p*(2*p*p-9*p+13)/6
    nonorth = 2*p**3 + p*jsum - j2sum
    check('Different nonorthogonal-idempotent trace polynomial',
          nonorth == QQ(13)/6*(p**3-p), str(nonorth))

    K = QuadraticField(-1, 'ii')
    ii = K.gen()
    from functools import lru_cache
    modes = list(range(-10, 11))
    pos = {j: k for k, j in enumerate(modes)}
    dim = len(modes)
    P = diagonal_matrix(QQ, [1 if j >= -1 else 0 for j in modes], sparse=True)
    ImP = 1-P
    @lru_cache(None)
    def A(m):
        M = matrix(QQ, dim, sparse=True)
        for j in modes:
            if j+m in pos:
                M[pos[j+m], pos[j]] = j-m
        return M
    @lru_cache(None)
    def C(m):
        return ImP*A(m)*P
    @lru_cache(None)
    def DQ(m):
        # Complexification: bar(e_m)=-e_{-m}; the adjoint is conjugate-linear.
        return C(m)-C(-m).transpose()
    @lru_cache(None)
    def DR(m):
        return A(m)*P-P*A(m)
    @lru_cache(None)
    def omega(m, n):
        return (P*(DQ(m)*DQ(n)-DQ(n)*DQ(m))*P).trace()
    @lru_cache(None)
    def omega_R(m, n):
        return (P*(DR(m)*DR(n)-DR(n)*DR(m))*P).trace()
    def expected(m, n):
        if m+n != 0 or abs(m) <= 1:
            return K(0)
        return K(-1 if m > 0 else 1)*S(abs(m))

    mismatches = [(m,n,str(omega(m,n)),str(expected(m,n)))
                  for m in range(-8,9) for n in range(-8,9)
                  if omega(m,n) != expected(m,n)]
    check('Complete finite-rank Q-curvature matrices, modes -8..8',
          len(mismatches) == 0,
          {'matrix_dimension': dim, 'pairs': 17*17, 'mismatches': mismatches})
    check('Positive Witt diagonal values',
          [omega(pv,-pv) for pv in range(2,9)] == list(map(K,[-5,-29,-86,-190,-355,-595,-924])),
          {str(pv): str(omega(pv,-pv)) for pv in range(2,9)})
    check('Different R-curvature matrices agree with their polynomial',
          all(omega_R(pv,-pv) == QQ(13)/6*(pv**3-pv) for pv in range(2,9)),
          {str(pv): str(omega_R(pv,-pv)) for pv in range(2,9)})
    check('Real tangent derivatives are Hermitian',
          all((DQ(pv)-DQ(-pv)).conjugate_transpose() == DQ(pv)-DQ(-pv)
              and (ii*(DQ(pv)+DQ(-pv))).conjugate_transpose() == ii*(DQ(pv)+DQ(-pv))
              for pv in range(1,9)))
    check('h tangent directions vanish for Q',
          all(DQ(m).is_zero() for m in [-1,0,1]))
    target = matrix(K, dim)
    target[pos[-1],pos[-2]] = 3
    check('Nonorthogonal R varies along real h direction e1-e-1',
          DR(1)-DR(-1) == target,
          'dR = 3 |e_-1><e_-2|, whereas dQ=0')

    def bracket(X,Y):
        Z = {}
        for m,x in X.items():
            for n,y in Y.items():
                Z[m+n] = Z.get(m+n,K(0)) + x*y*(m-n)
        return {m:x for m,x in Z.items() if x != 0}
    def Om(X,Y):
        return sum((x*y*omega(m,n) for m,x in X.items() for n,y in Y.items()),K(0))
    def f(pv): return {pv:K(1),-pv:K(-1)}
    def c(pv): return {pv:ii,-pv:ii}
    a, X, Y = f(1), f(2), c(3)
    residual_real = Om(bracket(a,X),Y)+Om(X,bracket(a,Y))
    residual_complex = -omega(3,-3)+4*omega(2,-2)
    check('Complex H-isotropy invariance fails by +9', residual_complex == 9,
          str(residual_complex))
    check('Real H-isotropy invariance fails by +18i', residual_real == 18*ii,
          str(residual_real))
    check('Curvature on two real p=2 directions is -10i',
          Om(f(2),c(2)) == -10*ii, str(Om(f(2),c(2))))

    # Exact jet calculation used only in the optional stabilizer argument.
    J = PolynomialRing(QQ, 'p0,p1,p2,p3,v0,v1,v2,v3')
    p0,p1,p2,p3,v0,v1,v2,v3 = J.gens()
    F = J.fraction_field()
    def dx(expr):
        expr = F(expr)
        return (expr.derivative(p0)*p1 + expr.derivative(p1)*p2
                + expr.derivative(p2)*p3 + expr.derivative(v0)*v1
                + expr.derivative(v1)*v2 + expr.derivative(v2)*v3)
    def dy(expr): return dx(expr)/p0
    u = F(p0*v0)
    transformed = dy(dy(dy(u)))+dy(u)
    expect = ((p3/p0**3-4*p1*p2/p0**4+3*p1**3/p0**5+p1/p0)*v0
              +(2*p2/p0**3-3*p1**2/p0**4+1)*v1 +v3/p0**2)
    check('Exact third-derivative pushforward identity', transformed == expect)
    reduced = transformed.subs({v3:-v1})
    circle_S = p2/p0-QQ(3)/2*(p1/p0)**2
    expect_reduced = ((p3/p0**3-4*p1*p2/p0**4+3*p1**3/p0**5+p1/p0)*v0
                      +(2*circle_S+p0**2-1)/p0**2*v1)
    check('Circle-Schwarzian coefficient for stabilizer', reduced == expect_reduced)

except Exception:
    errors.append(traceback.format_exc())
    print(errors[-1])
finally:
    result = {
        'sage_version': version(),
        'coefficient_fields': ['QQ', 'QQ(i)'],
        'records': records,
        'errors': errors,
        'all_passed': not errors and all(r['passed'] for r in records),
        'scope': 'Exact finite-rank matrix/algebra checks only; the Fourier estimate and Frechet smoothness are proved analytically in the report.'
    }
    (out/'diagnostics.json').write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
    lines = ['Sage version: '+version(), 'Output directory: '+str(out)]
    for row in records:
        lines.append(('PASS ' if row['passed'] else 'FAIL ')+row['label'])
        if 'detail' in row:
            lines.append('  '+str(row['detail']))
    lines.extend(errors)
    lines.append('ALL_PASSED = '+str(result['all_passed']))
    (out/'diagnostics.txt').write_text('\n'.join(lines)+'\n', encoding='utf-8')
    try:
        source = Path(__file__).read_bytes()
        (out/'checks.py').write_bytes(source)
        (out/'source.sha256').write_text(hashlib.sha256(source).hexdigest()+'  checks.py\n', encoding='utf-8')
    except NameError:
        pass
    print('DIAGNOSTICS_DIRECTORY = '+str(out))
    print('ALL_PASSED = '+str(result['all_passed']))
    if not result['all_passed']:
        raise SystemExit(1)
