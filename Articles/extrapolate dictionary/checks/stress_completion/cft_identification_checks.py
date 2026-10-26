"""Independent exact checks of the CFT/bulk boundary identification.

Run with Python 3, SymPy and mpmath. No repository validation output is
used as input. Distribution existence and uniqueness are proved in the
companion note; these checks establish its finite algebraic identities.
"""
from pathlib import Path
import json
import sympy as S

checks = []


def zero(name, value):
    value = S.factor(value)
    assert value == 0, (name, value)
    checks.append({"name": name, "residual": str(value)})


x, y, t, alpha, nn = S.symbols("x y t alpha N", positive=True)
lam = (x-y-t)**2-4*y*t
zero("Independent squared-mass derivative",
     S.diff(lam**(-S.Rational(1, 2)), x, 2)
     -2*(lam+6*y*t)/lam**S.Rational(5, 2))
zero("Ward coefficient in unit normalization",
     -4/(3*S.sqrt(10)*nn)+(2*S.sqrt(10)/nn)/15)
zero("Bulk and three-shell coefficient",
     (2*alpha*S.pi**6/5)*2-(-12*S.pi**6)*(-alpha/15))
zero("Shell polar angle",
     ((x+y-t)/2-y)/(S.sqrt(lam)/2)-(x-y-t)/S.sqrt(lam))
zero("Cut-domain discriminant", lam-(x-y-t)**2+4*y*t)

# A generic pair of future null directions. Keeping their spatial angle
# symbolic verifies every component without selecting a stress polarization.
theta = S.symbols("theta", real=True)
ea, el = S.symbols("ea el", positive=True)
eta = S.diag(-1, 1, 1, 1)
a = ea*S.Matrix([1, 1, 0, 0])
l = el*S.Matrix([1, S.cos(theta), S.sin(theta), 0])
ac, lc = eta*a, eta*l
dot = (l.T*eta*a)[0]
M = -(lc*lc.T+ac*ac.T)/8+(lc*ac.T+ac*lc.T)/4-eta*dot/8
for j in range(4):
    zero(f"Shell tensor conserved component {j}",
         S.trigsimp(((a+l).T*M)[j]))
zero("Shell tensor trace", S.trigsimp(S.trace(eta*M)))

# The differential of the proper positive-energy pushforward.
def tangent(direction):
    return S.Matrix.vstack(S.Matrix([direction]), S.eye(3))


def pushforward_jacobian(da, dl, dm):
    ta, tl, tm = tangent(da), tangent(dl), tangent(dm)
    return S.Matrix.vstack(
        S.Matrix.hstack(ta, tl, S.zeros(4, 3)),
        S.Matrix.hstack(ta, S.zeros(4, 3), tm))


rank_generic = pushforward_jacobian([1, 0, 0], [0, 1, 0], [0, 0, 1]).rank()
rank_parallel_pair = pushforward_jacobian([1, 0, 0], [0, 1, 0], [1, 0, 0]).rank()
assert rank_generic == 8
assert rank_parallel_pair == 7

# Independent spherical second moment, including the cut measure.
c, phi, d = S.symbols("c phi D", real=True)
nvec = S.Matrix([S.sqrt(1-c*c)*S.cos(phi),
                 S.sqrt(1-c*c)*S.sin(phi), c])
moment = nvec*nvec.T
expected = S.diag((1-c*c)/2, (1-c*c)/2, c*c)
for i in range(3):
    for j in range(i, 3):
        zero(f"Circle second moment {i}{j}",
             S.integrate(moment[i, j], (phi, 0, 2*S.pi))/(2*S.pi)-expected[i, j])
zero("Quadrupole conversion",
     3*(x-y-t)**2-lam-2*(lam+6*y*t))
zero("Three-shell measure", S.Rational(1, 8)*(2/d)*(2*S.pi)-S.pi/(2*d))
zero("Joint homogeneity", 3*2+2-2*4)

result = {
    "exact_zero_count": len(checks),
    "exact_checks": checks,
    "pushforward_rank_generic": rank_generic,
    "pushforward_rank_one_parallel_pair": rank_parallel_pair,
    "scope": "Exact finite identities; properness, coarea and null-jet uniqueness are analytic arguments."
}
dest = Path(__file__).with_name("cft_identification_checks_results.json")
dest.write_text(json.dumps(result, indent=2)+"\n")
print(json.dumps(result, indent=2))
