"""Independent numerical screen of the finite-B endpoint integrals.

This script is evidence for exact-integrand consistency, not a proof of
uniformity in B or of a distributional limit.  The analytic audit is in
joint_limit_review.md.  Neither pre-existing run logs nor Mathematica is used.
"""
import json
import math
import pathlib
import warnings

from scipy.integrate import quad, IntegrationWarning
from scipy.special import jv, yv


def beta(v):
    if v <= 1.0:
        return 1.0
    if v >= 2.0:
        return 0.0
    a, b = math.exp(-1.0 / (v - 1.0)), math.exp(-1.0 / (2.0 - v))
    return b / (a + b)


def endpoint_integral(kind, c, radial_scale):
    # F^-: a=1,b=0.  F^+: a=0,b=1.  These retain the zero
    # free-mass endpoint exactly, rather than substituting a small number.
    def integrand(u):
        if u == 0.0:
            return 0.0
        if kind == "minus":
            return (math.pi / 8.0 * u**3 * beta(u / radial_scale)
                    * (yv(2, u) * jv(0, c*u) + jv(2, u) * yv(0, c*u)))
        return (math.pi / 64.0 * u**5 * beta(u / radial_scale)
                * (yv(0, c*u) * jv(0, u) + jv(0, c*u) * yv(0, u)))

    end = 2.0 * radial_scale
    n = max(4, math.ceil(end / (math.pi / 4.0)))
    vals, errs = [], []
    for k in range(n):
        val, err = quad(integrand, end*k/n, end*(k+1)/n,
                        epsabs=2e-10, epsrel=2e-11, limit=100)
        vals.append(val)
        errs.append(err)
    return math.fsum(vals), math.fsum(errs)


records = []
with warnings.catch_warnings(record=True) as collected:
    warnings.simplefilter("always", IntegrationWarning)
    for kind in ("minus", "plus"):
        for c in (1.0, 0.1, 0.001, 0.00001):
            for radial_scale in (1.0, 3.0, 10.0, 30.0):
                value, error = endpoint_integral(kind, c, radial_scale)
                records.append({
                    "kind": kind, "hard_mass": 1.0, "zero_free_mass": 0.0,
                    "transfer_mass": c, "B": radial_scale,
                    "integral": value, "reported_quadrature_error": error,
                    "absolute_log_normalized": abs(value)/(1.0+abs(math.log(c*c))),
                })

if len(records) != 32 or any(
        not math.isfinite(r[field])
        for r in records for field in ("integral", "reported_quadrature_error")):
    raise ArithmeticError("incomplete or nonfinite numerical screen")
if collected:
    raise ArithmeticError("integration warnings require review")

payload = {
    "scope": "32 sampled compact-cutoff radial integrals; numerical evidence only",
    "exact_zero_count": 0,
    "exact_residuals": {},
    "profile": "beta=1 on [0,1], smooth transition, beta=0 on [2,infinity)",
    "records": records,
    "integration_warnings": [str(w.message) for w in collected],
    "max_log_normalized": max(r["absolute_log_normalized"] for r in records),
    "max_reported_quadrature_error": max(r["reported_quadrature_error"] for r in records),
}
path = pathlib.Path(__file__).with_name("joint_limit_independent_results.json")
path.write_text(json.dumps(payload, indent=2) + "\n")
print(json.dumps({k: v for k, v in payload.items() if k != "records"}, indent=2))
