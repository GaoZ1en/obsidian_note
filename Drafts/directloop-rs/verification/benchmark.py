#!/usr/bin/env python3
"""Run independent processes; check every result before reporting timings.

python3 verification/benchmark.py --max-length 18 --threads 4 --repetitions 3
Add --mathematica to compare the original notebook (requires wolframscript).
Build the release binary first. Python is only needed for this optional benchmark.
"""
import argparse
import hashlib
import json
import os
import platform
import statistics
import subprocess
import tempfile
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
# Notebook's separate comparison table: validation only, never generation input.
EXPECTED = {
    4: [1, 0, 0, 0], 6: [2, 0, 0, 0], 8: [9, 2, 0, 2],
    10: [24, 7, 0, 7], 12: [119, 48, 6, 51],
    14: [584, 279, 72, 316], 16: [3801, 2021, 762, 2383],
    18: [25563, 14665, 7088, 17709],
    20: [185537, 112565, 64079, 137775],
    22: [1374414, 874040, 561495, 1077512],
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-length", type=int, default=18, choices=range(4, 23, 2))
    parser.add_argument("--threads", type=int, default=4)
    parser.add_argument("--repetitions", type=int, default=3)
    parser.add_argument("--mathematica", action="store_true")
    parser.add_argument("--output", type=Path)
    parser.add_argument("--binary", type=Path, default=ROOT / "target/release/directloop")
    parser.add_argument("--extra-arg", action="append", default=[], help="Additional binary argument; use --extra-arg=--flag")
    args = parser.parse_args()
    if args.threads < 1 or args.repetitions < 1:
        parser.error("threads and repetitions must be positive")
    binary = args.binary.resolve()
    binary_hash = hashlib.sha256(binary.read_bytes()).hexdigest()
    records = []
    # Each run uses a fresh directory. Temporary run/checkpoint data is removed
    # when done; only the requested benchmark report is retained.
    for i in range(args.repetitions):
        with tempfile.TemporaryDirectory(prefix="directloop-benchmark-") as tmp:
            command = [str(binary), "--max-length", str(args.max_length), "--threads",
                       str(args.threads), "--output", str(Path(tmp) / "rust"), "--quiet"] + args.extra_arg
            with tempfile.TemporaryFile(mode="w+") as stdout, tempfile.TemporaryFile(mode="w+") as stderr:
                start = time.perf_counter()
                child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
                _, status, usage = os.wait4(child.pid, 0)
                wall = time.perf_counter() - start
                child.returncode = os.waitstatus_to_exitcode(status)
                stdout.seek(0)
                stderr.seek(0)
                output, errors = stdout.read(), stderr.read()
                if child.returncode:
                    raise subprocess.CalledProcessError(child.returncode, command, output, errors)
            rows = json.loads(output)
            assert [row["length"] for row in rows] == list(range(4, args.max_length + 1, 2))
            for row in rows:
                assert [row[k] for k in ("loops", "sde", "tre", "all")] == EXPECTED[row["length"]]
            peak_rss = usage.ru_maxrss * (1 if platform.system() == "Darwin" else 1024)
            run = {"rust_external_wall_seconds": wall, "peak_rss_bytes": peak_rss, "rust_levels": rows}
            if args.mathematica:
                output = Path(tmp) / "mma.json"
                subprocess.run(
                    ["wolframscript", "-file", str(ROOT / "verification/benchmark_notebook.wls"),
                     str(output), str(args.max_length), str(args.threads)],
                    check=True, capture_output=True, text=True,
                )
                mma = json.loads(output.read_text())
                for row in mma["levels"]:
                    assert [row[k] for k in ("Loops", "SDE", "TrE", "AllE")] == EXPECTED[row["L"]]
                # Drop temporary absolute paths from the portable report.
                mma.pop("data_directory", None)
                for row in mma["levels"]:
                    row.pop("DataDirectory", None)
                run["mathematica"] = mma
            records.append(run)
            print(f"run {i+1}: Rust {wall:.4f}s, peak RSS {peak_rss / 1024**3:.3f} GiB", flush=True)
    report = {
        "platform": platform.platform(), "machine": platform.machine(),
        "binary_sha256": binary_hash,
        "extra_args": args.extra_arg,
        "max_length": args.max_length, "generation_workers": args.threads,
        "runs": records,
        "median_rust_external_wall_seconds": statistics.median(r["rust_external_wall_seconds"] for r in records),
    }
    if args.mathematica:
        report["median_mathematica_engine_wall_seconds"] = statistics.median(r["mathematica"]["wall_seconds"] for r in records)
        report["median_workflow_speedup"] = report["median_mathematica_engine_wall_seconds"] / report["median_rust_external_wall_seconds"]
    text = json.dumps(report, ensure_ascii=False, indent=2)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text + "\n")
    else:
        print(text)


if __name__ == "__main__":
    main()
