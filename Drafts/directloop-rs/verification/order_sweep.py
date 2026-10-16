#!/usr/bin/env python3
"""Sequential, bounded comparisons of exact row/pivot ordering strategies."""
import argparse
import hashlib
import json
import os
import platform
import subprocess
import tempfile
import time
from pathlib import Path
from benchmark import EXPECTED

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-length", type=int, default=20, choices=range(4, 23, 2))
    parser.add_argument("--threads", type=int, default=4)
    parser.add_argument("--timeout", type=float, default=180)
    parser.add_argument("--batch-size", type=int, default=256)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--orders", nargs="+", default=["input", "short", "pivot-asc", "pivot-desc"])
    parser.add_argument("--pivots", nargs="+", default=["first", "short"])
    args = parser.parse_args()
    binary = ROOT / "target/release/directloop"
    report = {"platform": platform.platform(), "binary_sha256": hashlib.sha256(binary.read_bytes()).hexdigest(),
              "maximum_length": args.max_length, "generation_workers": args.threads, "batch_size": args.batch_size, "runs": []}
    for pivot in args.pivots:
        for order in args.orders:
            with tempfile.TemporaryDirectory(prefix="directloop-order-") as directory:
                command = [str(binary), "--max-length", str(args.max_length), "--threads", str(args.threads),
                           "--row-order", order, "--pivot-strategy", pivot, "--batch-size", str(args.batch_size),
                           "--output", str(Path(directory) / "results"), "--quiet"]
                with tempfile.TemporaryFile(mode="w+") as stdout, tempfile.TemporaryFile(mode="w+") as stderr:
                    started = time.perf_counter()
                    child = subprocess.Popen(command, stdout=stdout, stderr=stderr)
                    timed_out = False
                    while True:
                        pid, status, usage = os.wait4(child.pid, os.WNOHANG)
                        if pid:
                            break
                        if time.perf_counter() - started > args.timeout:
                            timed_out = True
                            child.kill()
                            _, status, usage = os.wait4(child.pid, 0)
                            break
                        time.sleep(.02)
                    elapsed = time.perf_counter() - started
                    child.returncode = os.waitstatus_to_exitcode(status)
                    stdout.seek(0)
                    stderr.seek(0)
                    record = {"row_order": order, "pivot_strategy": pivot, "wall_seconds": elapsed,
                              "peak_rss_bytes": usage.ru_maxrss * (1 if platform.system() == "Darwin" else 1024),
                              "exit_code": child.returncode, "timed_out": timed_out}
                    if child.returncode == 0:
                        rows = json.loads(stdout.read())
                        assert [row["length"] for row in rows] == list(range(4, args.max_length + 1, 2))
                        for row in rows:
                            assert [row[k] for k in ("loops", "sde", "tre", "all")] == EXPECTED[row["length"]], record
                        record.update(counts_match=True, levels=rows)
                    else:
                        record["error"] = stderr.read()
                    report["runs"].append(record)
                    args.output.parent.mkdir(parents=True, exist_ok=True)
                    args.output.write_text(json.dumps(report, indent=2) + "\n")
                    print(f"{order}/{pivot}: {elapsed:.3f}s, RSS {record['peak_rss_bytes']/1024**3:.3f} GiB, exit {child.returncode}", flush=True)


if __name__ == "__main__":
    main()
