#!/usr/bin/env python3
"""Run every mandatory master-note suite in a new, isolated output directory.

No network, original repository, extracted archive, or historical absolute path
is needed. Independent source trees are copied into this run's workspace,
because those unchanged scripts write their results beside their source files.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import platform
import shutil
import subprocess
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT/"checks"))

from portable_semantics import (
    CLUSTER_TASKS, FINITE_FILES, GROUPS, PHYSICS_FILES, SEMICLASSICAL_FILES,
    exact_inventory, load_semiclassical_validator, mutation_checks, require,
    validate_cluster, validate_finite, validate_physics,
    validate_semiclassical, validate_summary,
)
from semantic_check import validate_directory as validate_hierarchy_directory

PINNED = {
    "sympy": "1.14.0", "mpmath": "1.3.0", "python-flint": "0.9.0",
    "numpy": "2.3.5", "scipy": "1.17.0",
}


def utc():
    return datetime.now(timezone.utc).isoformat()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_json(path, data):
    path.write_text(json.dumps(data, indent=2, ensure_ascii=False)+"\n", encoding="utf-8")


def no_optimization():
    require(not sys.flags.optimize and os.environ.get("PYTHONOPTIMIZE") in (None, "", "0"),
            "Python optimization is forbidden: inherited assertions and validation must remain active.")


def protected_hashes():
    paths = []
    for directory in [ROOT/"code", ROOT/"checks"]:
        paths.extend(p for p in directory.rglob("*")
                     if p.is_file() and "__pycache__" not in p.parts and p.suffix != ".pyc")
    paths.extend(ROOT/p for p in ["reproduce_all.py", "run_verification.py", "requirements.txt"])
    return {str(p.relative_to(ROOT)): sha(p) for p in sorted(paths)}


def fresh_json(path, started_ns):
    require(path.is_file(), "Missing required result: "+str(path))
    require(path.stat().st_mtime_ns >= started_ns, "Stale result: "+str(path))
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (UnicodeError, json.JSONDecodeError) as exc:
        raise ValueError("Invalid JSON result: "+str(path)) from exc
    require(isinstance(data, (dict, list)) and bool(data), "Empty or invalid payload: "+str(path))
    return data


def read_payloads(directory, names, started_ns):
    return {name: fresh_json(directory/name, started_ns) for name in names}


def copy_independent_sources(name, group_dir, output_root):
    source = ROOT/"checks"/"independent"/name
    destination = group_dir/"work"/"checks"
    require(source.is_dir(), "Missing independent source tree: "+name)
    files = sorted(source.rglob("*.py"))
    require(len(files) == {"physics": 4, "cluster": 8, "semiclassical": 7}[name],
            "Unexpected independent source inventory: "+name)
    records = []
    for original in files:
        copied = destination/original.relative_to(source)
        copied.parent.mkdir(parents=True, exist_ok=True)
        require(not copied.exists(), "Workspace is not fresh")
        shutil.copyfile(original, copied)
        require(sha(original) == sha(copied), "Source copy hash mismatch")
        records.append({
            "source": str(original.relative_to(ROOT)),
            "workspace": str(copied.relative_to(output_root)),
            "sha256": sha(original), "edits": [],
        })
    # JSON results and logs are deliberately not copied into the workspace.
    require(not list(destination.rglob("*.json")), "Historical JSON copied into a fresh workspace")
    write_json(group_dir/"workspace_source_copies.json", records)
    return destination, records


def invoke(command, cwd, log_prefix, env):
    tick, start = time.monotonic(), utc()
    done = subprocess.run(command, cwd=cwd, env=env, capture_output=True, text=True)
    stdout, stderr = log_prefix.with_suffix(".stdout.log"), log_prefix.with_suffix(".stderr.log")
    stdout.write_text(done.stdout, encoding="utf-8")
    stderr.write_text(done.stderr, encoding="utf-8")
    row = {"command": [str(x) for x in command], "cwd": str(cwd),
           "started_utc": start, "ended_utc": utc(),
           "elapsed_seconds": round(time.monotonic()-tick, 6),
           "returncode": done.returncode, "stdout": stdout.name, "stderr": stderr.name}
    return row


def artifacts(directory, output_root, started_ns):
    rows = []
    for path in sorted(directory.rglob("*")):
        if not path.is_file() or path.suffix in (".py", ".pyc") or "__pycache__" in path.parts:
            continue
        require(path.stat().st_mtime_ns >= started_ns, "Nonfresh run artifact: "+str(path))
        rows.append({"path": str(path.relative_to(output_root)), "sha256": sha(path),
                     "bytes": path.stat().st_size, "generated_in_this_run": True})
    require(rows, "No run artifacts generated")
    return rows


def check_cluster_manifest(work, started_ns):
    data = fresh_json(work.parent/"runs"/"cluster_run_manifest.json", started_ns)
    require(data["all_checks_pass"] is True and data["optimization_level"] == 0 and
            data["program_count_expected"] == 7, "Cluster manifest status/optimization/count")
    rows = data["runs"]
    require([r["checker"] for r in rows] == [name for name, _ in CLUSTER_TASKS],
            "Cluster manifest task inventory")
    for row, (name, output) in zip(rows, CLUSTER_TASKS):
        require(row["returncode"] == 0 and row["semantic_pass"] is True and
                row["empty_payload_rejected"] is True, "Cluster task failed its semantic gate")
        require(row["source_sha256"] == sha(work/(name+".py")), "Cluster source hash changed")
        require(row["output"] == output and row["output_sha256"] == sha(work/output),
                "Cluster payload hash changed")


def check_semiclassical_manifest(work, started_ns):
    data = fresh_json(work/"execution_manifest.json", started_ns)
    require(data["status"] == "passed" and data["optimization"] == 0 and
            data["PYTHONOPTIMIZE"] is None, "Semiclassical status/environment")
    require(data["expected_tasks"] == sorted(SEMICLASSICAL_FILES), "Semiclassical manifest inventory")
    rows = data["results"]
    exact_inventory([r["task"] for r in rows], SEMICLASSICAL_FILES, "Semiclassical executed tasks")
    for row in rows:
        require(row["status"] == "passed" and row["returncode"] == 0 and
                bool(row["validated_semantics"]), "Semiclassical task failed")
        exact_inventory([r["path"] for r in row["expected_outputs"]],
                        SEMICLASSICAL_FILES[row["task"]], "Semiclassical output record")
        for output in row["expected_outputs"]:
            path = work/output["path"]
            require(output["generated_in_this_run"] is True and
                    output["sha256"] == sha(path) and output["bytes"] == path.stat().st_size,
                    "Semiclassical output provenance mismatch")
    sources = {str(p.relative_to(work)): sha(p) for p in sorted(work.rglob("*.py"))}
    require(data["source_sha256"] == sources, "Semiclassical source inventory/hash mismatch")


def main():
    no_optimization()
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output-dir", type=Path, required=True,
                    help="A directory that does not yet exist; it will contain all fresh outputs.")
    args = ap.parse_args()
    output = args.output_dir.resolve()
    if output == ROOT or output in ROOT.parents:
        ap.error("Output cannot replace the package or an ancestor directory.")
    for protected in [ROOT/"code", ROOT/"checks", ROOT/"docs", ROOT/"provenance"]:
        if output == protected or protected in output.parents:
            ap.error("Output must be outside code/, checks/, docs/ and provenance/.")
    if output.exists():
        ap.error("Output already exists. Choose a new directory to preserve run provenance.")
    require(sys.version_info >= (3, 11), "Use Python 3.11 or later; Python 3.12.14 was tested.")
    versions = {name: importlib.metadata.version(name) for name in PINNED}
    require(versions == PINNED, "Install the exact versions in requirements.txt before reproducing.")
    output.mkdir(parents=True, exist_ok=False)
    env = os.environ.copy()
    env.pop("PYTHONOPTIMIZE", None)
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    env["OPENBLAS_NUM_THREADS"] = "1"
    env["OMP_NUM_THREADS"] = "1"
    before = protected_hashes()
    write_json(output/"protected_sources_before.json", before)
    summary = {
        "schema": "ADS3-portable-reproduction-v1", "status": "running",
        "started_utc": utc(), "python": sys.version, "python_executable": sys.executable,
        "platform": platform.platform(), "dependencies": versions,
        "optimization": sys.flags.optimize,
        "environment_overrides": {"PYTHONOPTIMIZE": None, "PYTHONDONTWRITEBYTECODE": "1",
                                  "OPENBLAS_NUM_THREADS": "1", "OMP_NUM_THREADS": "1"},
        "output_directory": str(output), "groups": [],
        "record_type": "fresh_portable_execution",
        "scope": "E=E0+G*g+o(G), on the dressed scalar branch with no independent free boundary graviton. Finite/symbolic checks supplement the manuscript proofs and do not establish all-order energy control.",
    }
    write_json(output/"reproduce_all_summary.json", summary)
    payload_sets, validators = {}, {"finite": validate_finite, "physics": validate_physics,
                                   "cluster": validate_cluster}
    total_start = time.monotonic()
    current = None
    try:
        for name in GROUPS:
            group_dir = output/name
            group_dir.mkdir()
            started_ns, tick = time.time_ns(), time.monotonic()
            current = {"name": name, "status": "running", "started_utc": utc(),
                       "commands": [], "returncode": None}
            summary["groups"].append(current)
            print(json.dumps({"stage": "start", "suite": name}), flush=True)
            if name == "hierarchy":
                commands = [[sys.executable, "-B", str(ROOT/"run_verification.py"),
                             "--output-dir", str(group_dir)]]
                cwd = ROOT
            elif name == "finite":
                commands = [[sys.executable, "-B", str(ROOT/"checks"/"finite_regressions.py"),
                             "--output-dir", str(group_dir)]]
                cwd = ROOT
            else:
                work, copied = copy_independent_sources(name, group_dir, output)
                current["workspace_source_copies"] = copied
                entries = {"physics": ["check_physics.py", "check_ancillary.py"],
                           "cluster": ["run_cluster_checks.py"],
                           "semiclassical": ["run_local_checks.py"]}[name]
                commands = [[sys.executable, "-B", str(work/entry)] for entry in entries]
                cwd = work
            for index, command in enumerate(commands, 1):
                result = invoke(command, cwd, group_dir/f"command_{index:02d}", env)
                current["commands"].append(result)
                current["returncode"] = result["returncode"]
                require(result["returncode"] == 0,
                        f"{name}: subprocess failed; inspect {group_dir}/command_{index:02d}.stderr.log")
            if name == "hierarchy":
                validation = validate_hierarchy_directory(ROOT, group_dir)
                require(validation["status"] == "passed", "Hierarchy payload validation failed")
                gate = fresh_json(group_dir/"semantic_check.json", started_ns)
                require(gate["status"] == "passed" and gate["optimized_invocation_rejected"] is True and
                        gate["negative_payload_mutations_rejected"] == 9, "Hierarchy rejection gates")
                validation["optimized_invocation_rejected"] = True
                validation["negative_payload_mutations_rejected"] = 9
            elif name == "finite":
                payload_sets[name] = read_payloads(group_dir, FINITE_FILES, started_ns)
                validation = validate_finite(payload_sets[name])
            elif name == "physics":
                payload_sets[name] = read_payloads(work, PHYSICS_FILES, started_ns)
                validation = validate_physics(payload_sets[name])
            elif name == "cluster":
                check_cluster_manifest(work, started_ns)
                payload_sets[name] = read_payloads(work, [p for _, p in CLUSTER_TASKS], started_ns)
                validation = validate_cluster(payload_sets[name])
            else:
                check_semiclassical_manifest(work, started_ns)
                files = [p for paths in SEMICLASSICAL_FILES.values() for p in paths]
                payload_sets[name] = read_payloads(work, files, started_ns)
                module = load_semiclassical_validator(work)
                validators[name] = lambda payloads: validate_semiclassical(payloads, module)
                validation = validators[name](payload_sets[name])
            current.update(status="passed", ended_utc=utc(),
                           elapsed_seconds=round(time.monotonic()-tick, 6),
                           validated_semantics=validation,
                           artifacts=artifacts(group_dir, output, started_ns))
            print(json.dumps({"stage": "finished", "suite": name, "status": "passed",
                              "seconds": current["elapsed_seconds"]}), flush=True)
            write_json(output/"reproduce_all_summary.json", summary)
        after = protected_hashes()
        write_json(output/"protected_sources_after.json", after)
        summary["protected_sources_unchanged"] = before == after
        summary["status"] = "passed"
        validation = validate_summary(summary)
        negatives = mutation_checks(payload_sets, validators, summary)
        optimized = subprocess.run(
            [sys.executable, "-O", str(ROOT/"reproduce_all.py"), "--output-dir",
             str(output/"forbidden_optimized_run")], env=env, capture_output=True, text=True)
        require(optimized.returncode != 0 and "optimization is forbidden" in optimized.stderr,
                "Optimized portable invocation was not rejected")
        require(not (output/"forbidden_optimized_run").exists(), "Optimized run created outputs")
        negatives["optimized_invocation"] = {"rejected": True, "returncode": optimized.returncode,
                                             "stderr": optimized.stderr}
        write_json(output/"portable_rejection_checks.json", negatives)
        validation["negative_payload_cases_rejected"] = negatives["rejected_cases"]
        validation["optimized_invocation_rejected"] = True
        summary["validation"] = validation
        summary["verification_units"] = {
            "mandatory_hierarchy_jobs": 11, "finite_regression_tasks": 7,
            "independent_physics_programs": 2, "physics_checks": 111, "ancillary_checks": 10,
            "independent_cluster_programs": 7, "independent_semiclassical_programs": 6,
            "note": "These are different units of coverage and are not summed into an artificial single test count.",
        }
    except Exception as exc:
        summary["status"] = "failed"
        summary["error"] = repr(exc)
        if current is not None and current.get("status") == "running":
            current.update(status="failed", ended_utc=utc(), error=repr(exc))
        after = protected_hashes()
        write_json(output/"protected_sources_after.json", after)
        summary["protected_sources_unchanged"] = before == after
    summary.update(ended_utc=utc(), elapsed_seconds=round(time.monotonic()-total_start, 6))
    write_json(output/"reproduce_all_summary.json", summary)
    print(json.dumps({"status": summary["status"], "elapsed_seconds": summary["elapsed_seconds"],
                      "summary": str(output/"reproduce_all_summary.json"),
                      **({"error": summary["error"]} if "error" in summary else {})}), flush=True)
    return 0 if summary["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
