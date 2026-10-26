"""Run the independent checks accompanying the switched reconstruction.

Python 3 with SymPy, NumPy, SciPy and mpmath is required. Each program
recomputes its own identities and quadratures and writes its JSON record.
This driver records the executed sources and results; it does not treat
pre-existing results as a successful run.
"""
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import importlib.metadata
import json
import platform
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
JOBS = {
    "origin_causal_checks.py": "origin_causal_checks.json",
    "partial_injection_checks.py": "partial_injection_checks.json",
    "massive_exact_checks.py": "massive_exact_checks.json",
    "exact_mass_mismatch_checks.py": "exact_mass_mismatch_results.json",
    "soft_stress_endpoint_checks.py": "soft_stress_endpoint_results.json",
    "soft_q_endpoint_checks.py": "soft_q_endpoint_checks_results.json",
    "canonical_mass_raising_checks.py": "canonical_mass_raising_checks.json",
    "canonical_mass_order_checks.py": "canonical_mass_order_checks_results.json",
    "null_mass_boundary_jets_checks.py": "null_mass_boundary_jets_results.json",
    "cft_identification_checks.py": "cft_identification_checks_results.json",
    "cft_identification_independent_checks.py": "cft_identification_independent_results.json",
    "global_transfer_checks.py": "global_transfer_checks.json",
    "gauge_completion_checks.py": "gauge_completion_results.json",
    "causal_tt_source_bridge_checks.py": "causal_tt_source_bridge_results.json",
    "retarded_projector_checks.py": "retarded_projector_checks.json",
    "six_dimensional_seed_checks.py": "six_dimensional_seed_checks_results.json",
    "massive_trace_checks.py": "massive_trace_checks_results.json",
}


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def execute(script, result):
    (HERE/result).unlink(missing_ok=True)
    start = time.monotonic()
    proc = subprocess.run([sys.executable, str(HERE/script)], cwd=HERE,
                          text=True, capture_output=True)
    entry = {
        "program": script,
        "source_sha256": sha(HERE/script),
        "exit_code": proc.returncode,
        "elapsed_seconds": round(time.monotonic()-start, 3),
        "result": result,
        "stdout": proc.stdout,
        "stderr": proc.stderr,
    }
    if proc.returncode == 0 and (HERE/result).is_file():
        entry["result_sha256"] = sha(HERE/result)
        json.loads((HERE/result).read_text())
    else:
        entry["failed"] = True
    return entry


def main():
    results = []
    with ThreadPoolExecutor(max_workers=3) as pool:
        futures = [pool.submit(execute, script, result)
                   for script, result in JOBS.items()]
        for future in as_completed(futures):
            entry = future.result()
            results.append(entry)
            print(f"{entry['program']}: exit {entry['exit_code']}, "
                  f"{entry['elapsed_seconds']:.3f}s", flush=True)
    record = {
        "executed_at_utc": datetime.now(timezone.utc).isoformat(),
        "python": platform.python_version(),
        "packages": {name: importlib.metadata.version(name)
                     for name in ["sympy", "numpy", "scipy", "mpmath"]},
        "base_commit": "ba8a9a5161a538c0d1addf7215c20cf64f4ddb79",
        "program_count": len(results),
        "passed": all(not entry.get("failed") for entry in results),
        "runs": sorted(results, key=lambda entry: entry["program"]),
        "evidence_scope": "Actual symbolic identities, quadratures and samples. "
                          "The analytic distribution theorems require their written proofs. "
                          "Existing Mathematica/xAct outputs were not rerun or used as inputs.",
    }
    (HERE/"execution_record.json").write_text(json.dumps(record, indent=2)+"\n")
    return 0 if record["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
