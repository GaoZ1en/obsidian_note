"""Fail-closed exact checks for the ancillary formal appendix.

The inherited polynomial/finite-block audit is rerun unchanged in a subprocess.
New calculations verify the general coefficient identity for the hypergeometric
Casimir, dynamic oscillator finite differences, and Weyl coordinate correction.
"""
from pathlib import Path
import json
import platform
import subprocess
import sys
import time

import sympy as s

HERE = Path(__file__).resolve().parent


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def main():
    started = time.perf_counter()
    result = {
        "status": "running",
        "environment": {
            "python": sys.version,
            "platform": platform.platform(),
            "sympy": s.__version__,
        },
        "tests": [],
    }
    proc = subprocess.run(
        [sys.executable, str(HERE / "inherited_physics_audit.py")],
        cwd=HERE,
        text=True,
        capture_output=True,
        check=False,
    )
    require(proc.returncode == 0, f"Inherited audit failed: {proc.stderr}")
    raw = json.loads(proc.stdout)
    expected_keys = {
        "cubic_identity_residual",
        "quartic_gravity_zero",
        "H3_A_b4",
        "H3_C_B4",
        "degenerate_BCH_resolvent_residual",
    }
    require(set(raw) == expected_keys, "Unexpected inherited audit schema")
    b, B, beta, omega = s.symbols("b B beta omega")
    symbols = {str(x): x for x in (b, B, beta, omega)}
    expected = {
        "cubic_identity_residual": s.Integer(0),
        "quartic_gravity_zero": -8 * omega * (
            B**3 * b * beta + B**2 * b**2 * beta**2
            + B**2 * b**2 + B * b**3 * beta
        ),
        "H3_A_b4": -16 * beta * omega,
        "H3_C_B4": 16 * beta * omega,
    }
    for key, val in expected.items():
        require(s.expand(s.sympify(raw[key], locals=symbols) - val) == 0, key)
    require(raw["degenerate_BCH_resolvent_residual"] == "Matrix([[0, 0], [0, 0]])",
            "Finite degenerate resolvent mismatch")
    result["tests"].append({
        "name": "inherited_exact_physics_audit",
        "status": "passed",
        "checks": 5,
        "stdout": raw,
        "stderr": proc.stderr,
        "returncode": proc.returncode,
        "scope": "Polynomial BCH and one finite 2+2 block; no full third-order OFPT rerun",
    })

    # Arbitrary-coefficient proof of C.14: q is symbolic, not a Taylor cutoff.
    h, q, d = s.symbols("h q d")
    bqm1 = q * (2*h + q - 1) / (h+q-1)**2
    bqm2 = q*(q-1)*(2*h+q-2)*(2*h+q-1) / ((h+q-2)**2*(h+q-1)**2)
    hminus = (h-1)**2*(2*h+q-2)*(2*h+q-1) / ((h+q-1)**2*(2*h-2)*(2*h-1))
    hplus = 2*h*(2*h+1)*q*(q-1) / (h**2*(h+q-1)**2)
    left = (h+q-d)**2 + (-2*(h+q-1)**2+2*d*(h+q-1)-d)*bqm1 + (h+q-2)**2*bqm2
    right = (d-h)**2*hminus + (d*(d-2)-h*(h-1))/2*bqm1
    right += h*h*(d+h-1)**2/(4*(2*h-1)*(2*h+1))*hplus
    require(s.factor(left-right) == 0, "General hypergeometric Casimir coefficient")
    result["tests"].append({
        "name": "hypergeometric_Casimir_general_coefficient",
        "status": "passed", "checks": 1,
        "scope": "Rational identity for symbolic h, q, Delta; negative-index endpoints handled in proof",
    })

    n, om, Om = s.symbols("n omega Omega")
    en = -((2*n+1)**2/Om + n*(n-1)/(Om-2*om)
           + (n+1)*(n+2)/(Om+2*om)) / (8*Om*om**2)
    lam = -(2/Om**2 + 1/(Om**2-4*om**2)) / (4*om**2)
    require(s.factor(en-en.subs(n,0)-n*(en.subs(n,1)-en.subs(n,0))-lam*n*(n-1)) == 0,
            "Dynamic oscillator pair finite difference")
    static = -3/(4*Om**2*om**2)
    require(s.factor(lam-static + 1/(Om**2*(Om**2-4*om**2))) == 0,
            "Dynamic-static difference")
    result["tests"].append({
        "name": "dynamic_oscillator_pair_coefficient",
        "status": "passed", "checks": 2,
        "dynamic_minus_static": str(s.factor(lam-static)),
    })

    x = s.symbols("Q", real=True)
    J = s.Function("J", real=True)(x)
    psi = s.Function("psi")(x)
    exact = s.sqrt(J) / J * s.diff((1/J)*s.diff(psi/s.sqrt(J), x), x)
    a = J**(-2)
    weyl = a*s.diff(psi,x,2) + s.diff(a,x)*s.diff(psi,x) + s.diff(a,x,2)*psi/4
    require(s.simplify(exact-weyl + s.diff(J,x)**2*psi/(4*J**4)) == 0,
            "General Weyl coordinate anomaly")
    eps = s.symbols("epsilon")
    require(s.simplify((s.diff(J,x)**2/(8*J**4)).subs(J,1+3*eps*x*x).doit()
                       - 9*eps**2*x*x/(2*(1+3*eps*x*x)**4)) == 0,
            "Cubic coordinate example")
    result["tests"].append({
        "name": "general_unitary_minus_naive_Weyl_kinetic_operator",
        "status": "passed", "checks": 2,
        "scope": "General positive Jacobian J(Q) and cubic specialization",
    })
    result["status"] = "passed"
    result["total_checks"] = sum(t["checks"] for t in result["tests"])
    result["seconds"] = time.perf_counter() - started
    (HERE / "ancillary_run.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"status": result["status"], "checks": result["total_checks"],
                      "seconds": result["seconds"]}))


if __name__ == "__main__":
    main()
