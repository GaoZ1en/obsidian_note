"""Recompute the dictionary-extension checks and record their actual execution.

Requires Python 3, SymPy, NumPy, SciPy and mpmath. Existing result files
are removed before each program runs. No saved Wolfram output is read.
The runner validates exact residuals; sampled inequalities and numerical
thresholds remain the responsibility of the independently written programs.
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
    "cps_tail_checks.py": "cps_tail_checks_results.json",
    "finite_n_bps_checks.py": "finite_n_bps_checks_results.json",
    "regulator_checks.py": "regulator_results.json",
    "massive_uniform_checks.py": "massive_uniform_results.json",
    "soft_uniform_checks.py": "soft_uniform_results.json",
    "ward_moment_checks.py": "ward_moment_results.json",
    "ward_source_checks.py": "ward_source_results.json",
    "generic_twenty_prime_checks.py": "generic_twenty_prime_results.json",
    "generic_position_checks.py": "generic_position_results.json",
    "radial_response_checks.py": "radial_response_results.json",
    "joint_limit_independent_checks.py": "joint_limit_independent_results.json",
}


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def validate_result(data):
    if data.get("all_passed") is False:
        raise ValueError("program reported a failed check")
    exact = data.get("exact_residuals", data.get("residuals", data.get("exact")))
    if exact is not None:
        if any(str(value) != "0" for value in exact.values()):
            raise ValueError("nonzero exact residual")
        count = len(exact)
    else:
        exact = [entry for entry in data["checks"] if "residual" in entry]
        if any(str(entry["residual"]) != "0" or entry.get("passed") is False
               for entry in exact):
            raise ValueError("nonzero exact residual or failed symbolic check")
        count = len(exact)
    if "exact_zero_count" in data and data["exact_zero_count"] != count:
        raise ValueError("exact residual count mismatch")
    return count


def execute(script, result):
    result_path = HERE / result
    result_path.unlink(missing_ok=True)
    log_path = HERE / (Path(script).stem + ".log")
    start = time.monotonic()
    proc = subprocess.run([sys.executable, str(HERE / script)], cwd=HERE,
                          text=True, capture_output=True)
    log_path.write_text(proc.stdout + ("\nSTDERR:\n" + proc.stderr
                                      if proc.stderr else ""))
    entry = {
        "program": script,
        "source_sha256": sha(HERE / script),
        "exit_code": proc.returncode,
        "elapsed_seconds": round(time.monotonic() - start, 3),
        "result": result,
        "log": log_path.name,
        "log_sha256": sha(log_path),
        "stderr": proc.stderr,
    }
    try:
        if proc.returncode != 0:
            raise RuntimeError("program exited unsuccessfully")
        data = json.loads(result_path.read_text())
        entry["exact_zero_count"] = validate_result(data)
        entry["result_sha256"] = sha(result_path)
        entry["passed"] = True
    except (OSError, ValueError, KeyError, RuntimeError) as error:
        entry["passed"] = False
        entry["error"] = str(error)
    return entry


def main():
    started = datetime.now(timezone.utc).isoformat()
    results = []
    with ThreadPoolExecutor(max_workers=3) as pool:
        futures = [pool.submit(execute, script, result)
                   for script, result in JOBS.items()]
        for future in as_completed(futures):
            entry = future.result()
            results.append(entry)
            print(f"{entry['program']}: exit {entry['exit_code']}, "
                  f"passed={entry['passed']}, "
                  f"exact={entry.get('exact_zero_count', 0)}, "
                  f"{entry['elapsed_seconds']:.3f}s", flush=True)
    record = {
        "started_at_utc": started,
        "completed_at_utc": datetime.now(timezone.utc).isoformat(),
        "python": platform.python_version(),
        "packages": {name: importlib.metadata.version(name)
                     for name in ["sympy", "numpy", "scipy", "mpmath"]},
        "input_commit": "aa128cb903e0f3750a16a69487d64013d38667b1",
        "original_audit_commit": "ba8a9a5161a538c0d1addf7215c20cf64f4ddb79",
        "runner_sha256": sha(Path(__file__)),
        "program_count": len(results),
        "passed": all(entry["passed"] for entry in results),
        "exact_zero_count": sum(entry.get("exact_zero_count", 0)
                                for entry in results),
        "runs": sorted(results, key=lambda entry: entry["program"]),
        "evidence_scope": (
            "Actual exact identities, exact finite-dimensional examples, "
            "inequality checks, quadratures and parameter samples. "
            "Uniform distribution and operator-domain conclusions depend "
            "on the separately written analytic proofs. Historical "
            "Mathematica/xAct outputs were not executed or used as input."
        ),
    }
    (HERE / "execution_record.json").write_text(json.dumps(record, indent=2) + "\n")
    print(f"TOTAL: {record['program_count']} programs, "
          f"{record['exact_zero_count']} exact zero residuals, "
          f"passed={record['passed']}", flush=True)
    return 0 if record["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
