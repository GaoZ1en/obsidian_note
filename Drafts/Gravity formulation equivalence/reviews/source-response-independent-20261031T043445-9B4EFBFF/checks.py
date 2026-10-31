#!/usr/bin/env sage --python
"""Independent source-response checks. Run: sage --python checks.py
All c-dependent checks use a symbolic central charge. A finite PBW check is
only a diagnostic of signs/normalization and thermal low-level insertions.
"""
from sage.all import QQ, PolynomialRing, Partitions
from functools import lru_cache
from pathlib import Path
import json
import sys
import sage.version
import mpmath as mp

OUT = Path(__file__).resolve().parent
results = {"sage_version": sage.version.version, "checks": [], "tables": {}}

def record(label, condition, detail=None):
    if type(condition) is not bool:
        raise TypeError("Check did not return an exact Python bool: " + label)
    row = {"label": label, "passed": condition}
    if detail is not None:
        row["detail"] = detail
    results["checks"].append(row)
    print(("PASS " if condition else "FAIL ") + label)

R = PolynomialRing(QQ, names=("c", "h", "n", "s"))
c, h, n, s = R.gens()
F = R.fraction_field()
p, r = (s-n)/2, (s+n)/2
A = 2*n*h + c*n**3/12
K = F(A)/(n+s)
P = h + c*(r**2-3*r*p+3*p**2)/24
Ward = F(2*h*p+c*p**3/12)/r
record("canonical Fourier denominator", K*(n+s) == A)
record("covariant Ward versus canonical contact polynomial", Ward == -2*K+2*P)
record("cylinder-to-plane central-shift identity", A == 2*n*(h+c/24)+c*n*(n**2-1)/12)
record("vacuum n=1 commutator vanishes", A.subs({h:-c/24,n:1}) == 0)
record("thermal n=1 commutator is twice L0 mean", A.subs({n:1}) == 2*(h+c/24))
record("nonstatic spatial zero mode is only covariant contact", (Ward-2*P).subs({n:0}) == 0)
results["tables"]["symbolic"] = {"K": str(K), "P": str(P), "Ward": str(Ward)}

# Generic vacuum-module PBW implementation: L_-lambda |0>, lambda_i >= 2.
# All operations below are exact over QQ[c]; no target c is substituted.
C = PolynomialRing(QQ, "central_charge")
cc = C.gen()

def plus(target, source, scalar=1):
    for key, val in source.items():
        target[key] = target.get(key, C.zero()) + scalar*val
        if target[key] == 0:
            del target[key]
    return target

@lru_cache(None)
def act_tuple(m, state):
    state = tuple(state)
    if not state:
        return (((-m,), C.one()),) if m <= -2 else ()
    if m == 0:
        return ((state, C(sum(state))),)
    k, rest = state[0], state[1:]
    if m <= -2 and -m >= k:
        return (((-m,) + state, C.one()),)
    ans = {}
    # L_m L_-k = L_-k L_m + (m+k)L_(m-k) + central.
    for v, a in act_tuple(m, rest):
        plus(ans, dict(act_tuple(-k, v)), a)
    plus(ans, dict(act_tuple(m-k, rest)), m+k)
    if m == k:
        plus(ans, {rest:C.one()}, cc*C(m*(m*m-1))/12)
    return tuple(sorted(ans.items()))

def act(m, state):
    return dict(act_tuple(int(m), tuple(state)))

def composed(m, ell, state):
    ans = {}
    for v, a in act(ell, state).items():
        plus(ans, act(m, v), a)
    return ans

@lru_cache(None)
def basis(level):
    if level < 0:
        return ()
    if level == 0:
        return ((),)
    return tuple(tuple(lam) for lam in Partitions(level) if min(lam) >= 2)

levels = 8
pbw_ok = True
bad = []
for level in range(levels+1):
    for state in basis(level):
        for mode in range(1,5):
            lhs = composed(mode, -mode, state)
            plus(lhs, composed(-mode, mode, state), -1)
            rhs = {state:C(2*mode*level)+cc*C(mode*(mode*mode-1))/12}
            rhs = {k:v for k,v in rhs.items() if v != 0}
            if lhs != rhs:
                pbw_ok = False
                bad.append((level, state, mode, str(lhs), str(rhs)))
record("PBW commutator on levels 0..8, modes 1..4", pbw_ok, bad)

traces = {}
for mode in (1,2,3):
    f, g = [], []
    for level in range(levels+1):
        f.append(sum((composed(mode, -mode, st).get(st,C.zero()) for st in basis(level)), C.zero()))
        g.append(sum((composed(-mode, mode, st).get(st,C.zero()) for st in basis(level)), C.zero()))
    good = all(g[j] == (f[j-mode] if j >= mode else 0) for j in range(levels+1))
    record("levelwise KMS trace-shift identity, n="+str(mode), good)
    traces[str(mode)] = {"Tr_level_Ln_Lminusn": [str(x) for x in f],
                         "Tr_level_Lminusn_Ln": [str(x) for x in g]}
record("physical thermal L1 insertion starts at level 2", traces["1"]["Tr_level_Ln_Lminusn"][2] == "4")
record("vacuum L2 Lminus2 normalization", composed(2,-2,()).get((),C.zero()) == cc/2)
record("vacuum L3 Lminus3 normalization", composed(3,-3,()).get((),C.zero()) == 2*cc)
results["tables"]["PBW_dimensions"] = [len(basis(j)) for j in range(levels+1)]
results["tables"]["PBW_traces"] = traces

# A deliberately naive full finite cutoff does not obey KMS: retain its
# boundary residual as evidence, rather than interpreting a cutoff as proof.
Q = PolynomialRing(C, "q")
q = Q.gen()
cutoff_boundary = {}
for mode in (1,2):
    f = [C(x) for x in traces[str(mode)]["Tr_level_Ln_Lminusn"]]
    g = [C(x) for x in traces[str(mode)]["Tr_level_Lminusn_Ln"]]
    residual = sum(g[j]*q**j for j in range(levels+1)) - q**mode*sum(f[j]*q**j for j in range(levels+1))
    cutoff_boundary[str(mode)] = str(residual)
    record("finite cutoff KMS residual begins beyond retained levels, n="+str(mode), all(residual[j] == 0 for j in range(levels+1)))
    record("finite cutoff KMS is not an exact proof, n="+str(mode), residual != 0)
results["tables"]["finite_cutoff_boundary_residual"] = cutoff_boundary

# The vacuum cylinder sum has OPE c/(2 w^4), without choosing c.
Z = PolynomialRing(QQ, "z").fraction_field()
z = Z.gen()
def zd(f):
    return z*f.derivative(z)
S = z/(1-z)
S3minusS = zd(zd(zd(S))) - zd(S)
record("vacuum Fourier sum gives c/2 times z^2/(1-z)^4", S3minusS/12 == z**2/(2*(1-z)**4))

# Numerical integration checks ONLY the KMS denominator/normalization.
# The amplitude A_n stays factored out: no numerical central charge is used.
mp.mp.dps = 70
numeric_rows = []
for beta in (mp.mpf("0.7"), mp.mpf("1.3")):
    for theta in (mp.mpf("0"), mp.mpf("0.37")):
        for mode in (-3,-1,1,2,4):
            for kk in (-2,0,3):
                omega = 2*mp.pi*kk/beta - mode*theta/beta
                b = beta-1j*theta
                integral = mp.quad(lambda tt: mp.exp(-(mode+1j*omega)*tt)/(1-mp.exp(-b*mode)), [0,beta])
                expected = 1/(mode+1j*omega)
                err = abs(integral-expected)
                numeric_rows.append({"beta":str(beta),"theta":str(theta),"n":mode,"k":kk,"absolute_error":mp.nstr(err,12)})
max_error = max(mp.mpf(row["absolute_error"]) for row in numeric_rows)
record("direct time integral: Matsubara plus angular shear denominators", bool(max_error < mp.mpf("1e-60")), "max absolute error="+mp.nstr(max_error,15))
results["tables"]["time_integral_checks"] = numeric_rows

# Constant Beltrami mode: b(mu)=beta(1+mu)/(1-mu), so W'' fixes the
# variance plus the geometrical h seagull. Use an exact truncated Taylor ring.
U = PolynomialRing(QQ, names=("mu","beta","meanH","varianceH"))
mu, beta, meanH, varianceH = U.gens()
db = 2*beta*mu + 2*beta*mu**2
Wexp = -meanH*db + varianceH*(2*beta*mu)**2/2
coeff2 = Wexp.monomial_coefficient(mu**2*beta*meanH) # includes all variable powers, not a univariate coefficient
expectedW = -2*beta*meanH*mu + (-2*beta*meanH+2*beta**2*varianceH)*mu**2
record("constant Beltrami Teichmuller Hessian", Wexp == expectedW)

results["all_passed"] = all(row["passed"] for row in results["checks"])
raw = OUT / "raw-checks.json"
raw.write_text(json.dumps(results, indent=2)+"\n", encoding="utf-8")
print("RAW_OUTPUT="+str(raw))
print("ALL_PASSED="+str(results["all_passed"]))
if not results["all_passed"]:
    sys.exit(1)
