# Independent finite-spin review: exact, reproducible verification.
# Python-compatible Sage code. Run with: sage --nodotsage -python <this file>
# Prints JSON only; never writes or overwrites a file itself.
# All seven setup/check expressions below reproduce the successful original
# mcp__sage__sage_verify_checks call, not a symbolic/numerical substitute.
import json
import platform
from datetime import datetime, timezone
from sage.env import SAGE_VERSION

SETUP = """from sage.all import QQ, identity_matrix, matrix, PolynomialRing
U=PolynomialRing(QQ,'x'); x=U.gen(); K=QQ.extension(x**2-2,'r'); r=K.gen()
R=PolynomialRing(K, names=('t','e')); t,e=R.gens()
I2=identity_matrix(R,2); X=matrix(R,[[0,1],[1,0]]); Z=matrix(R,[[1,0],[0,-1]])
kron=lambda a,b,c:a.tensor_product(b).tensor_product(c)
I8=identity_matrix(R,8); I4=identity_matrix(R,4)
P=kron(Z,X,I2); Q=kron(I2,Z,Z); W=kron(Z,I2,Z); H=P+Q
rho=(I8-t*H/r)/8; rhoe=rho+e*W/8
ab=lambda M:matrix(R,4,4,lambda i,j:sum(M[2*i+c,2*j+c] for c in range(2)))
bc=lambda M:matrix(R,4,4,lambda i,j:sum(M[4*a+i,4*a+j] for a in range(2)))
proj={(q,s):(I8+q*H/r)*(I8+s*W)/4 for q in (-1,1) for s in (-1,1)}"""

CHECKS = [
    {"label": "H_squared_2I", "condition": "H*H==2*I8"},
    {"label": "anticommutator_zero_commutator_nonzero", "condition": "P*Q+Q*P==0*I8 and P*Q-Q*P!=0*I8"},
    {"label": "AB_marginal", "condition": "ab(rho)==(I4-t*Z.tensor_product(X)/r)/4"},
    {"label": "BC_marginal", "condition": "bc(rho)==(I4-t*Z.tensor_product(Z)/r)/4"},
    {"label": "perturbation_preserves_both_marginals", "condition": "ab(rhoe)==ab(rho) and bc(rhoe)==bc(rho)"},
    {"label": "joint_projectors_idempotent_rank_two", "condition": "all(F*F==F and F.trace()==2 for F in proj.values())"},
    {"label": "perturbed_spectrum_exact", "condition": "all(rhoe*F==((1-q*t+s*e)/8)*F for (q,s),F in proj.items())"},
]

started_at = datetime.now(timezone.utc).isoformat()
namespace = {}
exec(SETUP, namespace)
results = []
for check in CHECKS:
    value = eval(check["condition"], namespace)
    status = "passed" if type(value) is bool and value is True else ("failed" if type(value) is bool else "non_boolean")
    results.append({**check, "status": status,
                    "value": value if type(value) is bool else repr(value),
                    "value_type": type(value).__module__ + "." + type(value).__name__})

record = {
    "schema": "finite-independent-review-v1",
    "verification_started_at_utc": started_at,
    "verification_finished_at_utc": datetime.now(timezone.utc).isoformat(),
    "sage_version": SAGE_VERSION,
    "python_version": platform.python_version(),
    "arithmetic": "Exact polynomial ring Q(r)[t,e], r^2=2; r is physically embedded as +sqrt(2).",
    "basis": "A tensor B tensor C, computational binary order 000,...,111",
    "setup": SETUP,
    "checks": results,
    "passed_count": sum(item["status"] == "passed" for item in results),
    "check_count": len(results),
    "all_passed": all(item["status"] == "passed" for item in results),
    "original_successful_mcp": {
        "tool": "mcp__sage__sage_verify_checks",
        "sage_version": "SageMath version 10.9, Release Date: 2026-05-04",
        "elapsed_ms": 3888,
        "code_sha256": "0d5e5c16a8d80bb72792615358262d1caa056785c2b1eed070a403e95cc0a458",
        "result_path": "/Users/koishi/.codex/mcp-results/sage_verify_checks-cV8NQz/result.json",
        "all_passed": True,
        "passed_count": 7,
        "exact_original_timestamp": None,
        "timestamp_note": "Original response has no timestamp; session-history storage unavailable. The UTC timestamps above are the reproducible rerun, not a fabricated original-run time."
    },
    "first_attempt_error": {
        "kind": "setup/interface TypeError, not a failed mathematical identity",
        "faulty_expression": "QQ.extension('x^2-2','r')",
        "message": "TypeError: polynomial (=x^2-2) must be a polynomial.",
        "repair": "U=PolynomialRing(QQ,'x'); x=U.gen(); K=QQ.extension(x**2-2,'r')",
        "effect": "All seven checks initially had status error because setup failed; after polynomial construction was corrected all seven passed.",
        "result_path": "/Users/koishi/.codex/mcp-results/sage_verify_checks-AueLGZ/result.json"
    },
    "rerun_export_repair": {
        "issue": "The first metadata-export rerun reached JSON serialization but Sage-preparsed Integer metadata was not JSON serializable.",
        "repair": "json.dumps(..., default=int) converts exact integer metadata to JSON integers; setup and checks are unchanged.",
        "result_path": "/Users/koishi/.codex/mcp-results/sage_run-wS51b0/result.json"
    },
    "scope": {
        "machine_verified": "Seven exact finite-matrix identities only.",
        "analytic_not_machine_verified": "Entropy-series positivity, Gibbs maximum-entropy uniqueness, Petz formula, all-order Duhamel convergence and multi-interface Fubini/shuffle theorem are proved in the companion review, not inferred from these seven checks.",
        "numerical_tolerances": None
    }
}
print(json.dumps(record, indent=2, ensure_ascii=False, default=int))
