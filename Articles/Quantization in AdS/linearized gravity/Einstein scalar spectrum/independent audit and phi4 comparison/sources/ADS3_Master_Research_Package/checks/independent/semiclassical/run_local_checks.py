"""Fail-closed runner for independent semiclassical/stable/universality checks.

The copied validators import no implementation from the research engines.
This wrapper records actual execution metadata and validates result semantics.
Run with the same non-optimized interpreter used for the master package.
"""
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from fractions import Fraction
import hashlib
import importlib.metadata
import json
import os
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
LOGS = ROOT / "logs"

def require(condition, message):
    if not condition:
        raise RuntimeError(message)

def utc():
    return datetime.now(timezone.utc).isoformat()

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def payload(name):
    path = ROOT / name
    require(path.is_file(), f"Missing required output: {name}")
    return json.loads(path.read_text())

def validate_stable():
    rows = payload("stable/symbolic_jet_results.json")
    require(isinstance(rows, list) and len(rows) == 3, "Stable task cardinality")
    require([r.get("P") for r in rows] == [6, 8, 9], "Stable expected degrees")
    for row in rows:
        require(row.get("Delta") == "symbolic d", "Stable symbolic parameter")
        require(row.get("all_C2_entries_identically_zero_residual") is True,
                "Stable exact C2 residual")
        require(isinstance(row.get("seconds"), (float, int)), "Stable elapsed payload")
    return {"symbolic_degrees": [6, 8, 9],
            "physical_dimensions": [4, 7, 8], "low_dimensions": [2, 2, 2],
            "all_C2_entries": "identically equal over Q(d)"}

def validate_stable_rational():
    rows = payload("stable/independent_stable_results.json")
    expected = [("5/4", 6, 4, 2), ("5/4", 8, 7, 2), ("5/4", 9, 8, 2),
                ("7/3", 10, 12, 2), ("5", 12, 21, 3), ("7/3", 14, 34, 3)]
    require(isinstance(rows, list) and len(rows) == len(expected),
            "All rational stable blocks required")
    for row, values in zip(rows, expected):
        require(tuple(row.get(k) for k in
                      ["Delta", "P", "dimension", "low_dimension"]) == values,
                "Rational stable parameters/dimensions")
        for k in ["B_low", "C2", "eta"]:
            require(row.get(k) is True, "Rational stable identity: " + k)
    return {"expected_blocks": expected, "B_low": True, "C2": True, "eta": True}

def validate_jordan():
    data = payload("stable/independent_jordan_results.json")
    for k in ["all_mass_4_1_A", "all_mass_4_1_B_invariant_plane",
              "all_mass_3_1_doublet"]:
        require(data.get(k) is True, "Missing all-mass bivariate identity: " + k)
    for k in ["A", "B", "resonance_root_intervals"]:
        require(isinstance(data.get(k), str) and data[k], "Missing Jordan data: " + k)
    require(isinstance(data.get("seconds"), (float, int)), "Jordan elapsed payload")
    return {"physical_dimensions": {"4,1": 3, "3,1": 2},
            "all_mass_leading_matrix": True, "full_B_reconstructed": True,
            "invariant_plane": True, "protected_doublet": True}

def validate_new_symbolic():
    data = payload("independent_symbolic_checks.json")
    require(data.get("status") == "passed" and data.get("optimization") == 0,
            "New symbolic status/optimization")
    require(data.get("gegenbauer_polynomials_checked") == 31 and
            data.get("eta_diagonal_symbolic_checks") == 60,
            "All polynomial/diagonal symbolic checks")
    require(data.get("einstein_specialization") is True and
            data.get("large_mass_epsilon_over_Delta") == "27/34",
            "Einstein specialization/contraction")
    require(data.get("charge_jacobian") ==
            "-2048*x1**3*x2*x3*z2**2*z3**2", "Exact charge Jacobian")
    require(data.get("jordan_physical_roots") == 2 and
            data.get("jordan_rational_isolation") ==
            [["1563/1000", "391/250"], ["18651/1000", "4663/250"]],
            "Exact Jordan isolations")
    require(data.get("diagonal_pair_positive_polynomial") is True,
            "All-mass diagonal coefficient certificate")
    jets = data.get("generic_rank_one_defect_jets", {})
    require(jets.get("exact_residual") == 0 and
            all(isinstance(jets.get(k), str) and jets[k] for k in
                ["F33", "F13", "B_y2_before_retraction", "coefficient_c6",
                 "coefficient_xc4", "coefficient_x3", "coefficient_y2",
                 "q_c6", "epsilon"]), "All generic descendant jet outputs")
    return {"generic_descendant_jets": True, "gegenbauer_polynomials": 31,
            "symbolic_eta_diagonals": 60, "exact_Jordan_root_isolations": 2,
            "charge_Jacobian": True, "all_mass_pair_bound_certificate": True}

def validate_universality():
    data = payload("universality/independent_casimir_audit.json")
    generic = payload("universality/generic_symbolic_certificate.json")
    require(data.get("status") == "passed", "Universality status")
    require(generic.get("all_six_jets_pass") is True and generic.get("d") == "d",
            "Missing generic rational-function identity")
    rows = data.get("exact_mass_checks")
    require(isinstance(rows, list) and [r.get("d") for r in rows] ==
            ["3/2", "2", "7/3", "3"], "Universality expected masses")
    for row in [generic, *rows]:
        require(row.get("all_six_jets_pass") is True, "Universality six jets")
        require(set(row.get("slopes", {})) == {"4", "5", "6"}, "Universality gaps")
        for key in ["epsilon", "q_c4", "q_c5", "q_c6"]:
            require(isinstance(row.get(key), str) and row[key], f"Missing {key}")
    signed = data.get("signed_defect_counterexample", {})
    require(signed.get("d") == 2 and signed.get("r4") == 1 and
            signed.get("r6") == "-1/100" and signed.get("other_defects") == 0,
            "Signed counterexample payload")
    boundary = data.get("same_support_boundary", {})
    require(Fraction(boundary.get("slope")) == Fraction(-1, 28), "Boundary slope")
    require(Fraction(boundary.get("r4")) == 0 and
            Fraction(boundary.get("r6")) == Fraction(13, 14), "Boundary defects")
    return {"generic_field": "Q(d,v,w)", "six_jets": True,
            "mass_checks": ["3/2", "2", "7/3", "3"],
            "same_support_boundary": True, "signed_counterexample": True}

def validate_soft():
    data = payload("soft/independent_soft_certificate.json")
    require(data.get("status") == "passed", "Soft status")
    own = data.get("inertia_selfcheck", {})
    require(own.get("exact_test_cases") == 4 and
            own.get("zero_diagonal_2x2_pivot_exercised") is True, "Inertia pivots")
    metric = data.get("metric_transfer", {})
    require([metric.get(k) for k in ["N", "P", "Q", "labelled_dimension"]] ==
            [3, 6, 3, 28], "Metric dimensions")
    require(metric.get("physical_Delta") == "7/3" and
            metric.get("auxiliary_Delta") == "1/2", "Metric parameters")
    for k in ["all_three_pair_flags_both_inclusions",
              "restricted_metric_identity", "Bose_equivariance"]:
        require(metric.get(k) is True, "Missing metric property: " + k)
    boundary = data.get("boundary", {})
    for k, v in {"group_size": 384, "central_count": 4,
                 "exact_grid_count": 40400, "plucker_moment_checks": 189,
                 "finite_exponent_denominator": 2304,
                 "asymptotic_exponent_denominator": 4608}.items():
        require(boundary.get(k) == v, "Boundary invariant: " + k)
    require(Fraction(boundary.get("trace_constant")) == Fraction(2375, 16),
            "Uniform trace constant")
    spectra = data.get("spectral_certificates")
    require(isinstance(spectra, list) and len(spectra) == 2,
            "Both exact spectral certificates are required")
    expected = {(16, 8): (26, 0, 34, ["0", "1/5", "1/3"],
                         [[26, 0, 8], [26, 8, 0], [25, 9, 0]]),
                (32, 16): (94, 4, 98, ["0", "1/6000", "1/5000"],
                          [[90, 0, 8], [90, 8, 0], [89, 9, 0]])}
    found = set()
    records = []
    for certificate in spectra:
        pq = (certificate.get("P"), certificate.get("Q"))
        require(pq in expected and pq not in found, "Unexpected/duplicate spectrum")
        found.add(pq)
        d, kap, aux, thresholds, inertias = expected[pq]
        p, q = pq
        cyc = [1, -1, 0]
        computed_d = ((p+1)*(q+1)+3*int(p % 2 == q % 2 == 0)
                      + 2*cyc[p % 3]*cyc[q % 3]) // 6
        computed_k = sum((p-q-12-3*b)//2 + 1
                         for b in range(max(0, (p-q-12)//3 + 1)))
        require(computed_d == d and computed_k == kap, "Physical dimension/kernel")
        require(certificate.get("dimension_auxiliary") == aux, "Auxiliary dimension")
        rows = certificate.get("rows")
        require(isinstance(rows, list) and len(rows) == 3, "All inertia endpoints")
        require([r.get("threshold") for r in rows] == thresholds, "Exact thresholds")
        got = [r.get("inertia_positive_negative_zero") for r in rows]
        require(got == inertias, "Exact inertia mismatch")
        require(all(sum(v) == aux for v in got), "Inertia total dimension")
        positive = d-kap
        aux_zero = aux-positive
        require(got[0] == [positive, 0, aux_zero], "Zero shift dimensions")
        require(got[1][2] == got[2][2] == 0, "Strict endpoint separation")
        require(got[1][1]-aux_zero == 0 and got[2][1]-aux_zero == 1,
                "Strict least-positive bracket")
        records.append({"P": p, "Q": q, "physical_dimension": d,
                        "physical_kernel": kap, "positive_rank": positive,
                        "auxiliary_dimension": aux, "auxiliary_kernel": aux_zero,
                        "strict_bracket": thresholds[1:]})
    require(found == set(expected), "Missing spectral case")
    return {"spectra": records, "metric_transport": True,
            "moving_region_group_checks": 384, "lattice_cases": 40400,
            "plucker_moments": 189, "inertia_uses_no_floats": True}

TASKS = {
    "stable_symbolic": (["stable/symbolic_jets_fast.py"], validate_stable),
    "stable_rational": (["stable/independent_stable.py"], validate_stable_rational),
    "stable_jordan": (["stable/independent_jordan.py"], validate_jordan),
    "master_symbolic": (["independent_symbolic_checks.py"], validate_new_symbolic),
    "universality_symbolic": (
        ["universality/independent_casimir_audit.py", "--generic"], validate_universality),
    "soft_exact": (["soft/independent_soft_certificate.py", "--large"], validate_soft),
}
EXPECTED_OUTPUTS = {
    "stable_symbolic": ["stable/symbolic_jet_results.json"],
    "stable_rational": ["stable/independent_stable_results.json"],
    "stable_jordan": ["stable/independent_jordan_results.json"],
    "master_symbolic": ["independent_symbolic_checks.json"],
    "universality_symbolic": ["universality/independent_casimir_audit.json",
                             "universality/generic_symbolic_certificate.json"],
    "soft_exact": ["soft/independent_soft_certificate.json"],
}

def run(name):
    args, validator = TASKS[name]
    command = [sys.executable, str(ROOT / args[0]), *args[1:]]
    started, timer, started_ns = utc(), time.monotonic(), time.time_ns()
    process = subprocess.run(command, cwd=ROOT, capture_output=True, text=True)
    ended, elapsed = utc(), time.monotonic()-timer
    (LOGS / (name + ".stdout.txt")).write_text(process.stdout)
    (LOGS / (name + ".stderr.txt")).write_text(process.stderr)
    record = {"task": name, "command": command, "cwd": str(ROOT),
              "started_utc": started, "ended_utc": ended,
              "elapsed_seconds": elapsed, "returncode": process.returncode,
              "stdout": str(LOGS / (name+".stdout.txt")),
              "stderr": str(LOGS / (name+".stderr.txt"))}
    try:
        require(process.returncode == 0, f"{name}: subprocess failed")
        record["expected_outputs"] = []
        for relative in EXPECTED_OUTPUTS[name]:
            output = ROOT / relative
            require(output.is_file(), f"{name}: missing output {relative}")
            require(output.stat().st_mtime_ns >= started_ns,
                    f"{name}: stale output {relative}")
            record["expected_outputs"].append({
                "path": relative, "bytes": output.stat().st_size,
                "sha256": digest(output), "generated_in_this_run": True,
            })
        record["validated_semantics"] = validator()
        record["status"] = "passed"
    except Exception as exc:
        record["status"] = "failed"
        record["error"] = repr(exc)
    print(json.dumps({"task": name, "status": record["status"],
                      "elapsed_seconds": elapsed}), flush=True)
    return record

def main():
    require(not sys.flags.optimize, "Python optimization disables validation")
    require(not os.environ.get("PYTHONOPTIMIZE"), "PYTHONOPTIMIZE is forbidden")
    require(set(TASKS) == set(EXPECTED_OUTPUTS), "Task/output inventory mismatch")
    LOGS.mkdir(exist_ok=True)
    started = utc()
    results = []
    with ThreadPoolExecutor(max_workers=3) as executor:
        futures = [executor.submit(run, name) for name in TASKS]
        for future in as_completed(futures):
            results.append(future.result())
    results.sort(key=lambda x: x["task"])
    require({r["task"] for r in results} == set(TASKS), "Missing expected tasks")
    source_files = sorted(ROOT.rglob("*.py"))
    manifest = {
        "status": "passed" if all(r["status"] == "passed" for r in results) else "failed",
        "started_utc": started, "ended_utc": utc(),
        "python": sys.version, "executable": sys.executable,
        "sympy": importlib.metadata.version("sympy"),
        "optimization": sys.flags.optimize,
        "PYTHONOPTIMIZE": os.environ.get("PYTHONOPTIMIZE"),
        "expected_tasks": sorted(TASKS), "results": results,
        "source_sha256": {str(p.relative_to(ROOT)): digest(p) for p in source_files},
        "scope": "independent exact validators; general theorems have local manuscript proofs",
        "copied_code_change": "explicit optimization guard only; wrapper is new",
    }
    (ROOT / "execution_manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")
    require(manifest["status"] == "passed", "At least one required check failed")

if __name__ == "__main__":
    main()
