#!/usr/bin/env python3
"""Measure an isolated run, retaining checkpoints on resource-limit termination.

macOS/Linux; standard library only. RSS samples are KiB from ps. On macOS,
also monitor physical footprint (including compressed memory) and swap growth.
"""
import argparse
import ctypes
import hashlib
import json
import platform
import re
import resource
import subprocess
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GIB = 1024 ** 3


class RUsageV0(ctypes.Structure):
    _fields_ = [("uuid", ctypes.c_uint8 * 16)] + [
        (name, ctypes.c_uint64) for name in (
            "user_time", "system_time", "pkg_idle_wkups", "interrupt_wkups",
            "pageins", "wired_size", "resident_size", "phys_footprint",
            "proc_start_abstime", "proc_exit_abstime")]


def swap_bytes():
    if platform.system() != "Darwin":
        return None
    value = subprocess.check_output(["sysctl", "vm.swapusage"], text=True)
    match = re.search(r"used = ([\d.]+)M", value)
    return int(float(match[1]) * 1024 ** 2) if match else None


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--max-length", type=int, default=24)
    parser.add_argument("--threads", type=int, default=4)
    parser.add_argument("--memory-limit-gib", type=float, default=8)
    parser.add_argument("--swap-growth-limit-gib", type=float, default=1.5)
    parser.add_argument("--run-dir", type=Path, required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--max-seconds", type=float, help="Optional wall-time stopping threshold")
    parser.add_argument("--row-order", choices=["input", "short", "pivot-asc", "pivot-desc"])
    parser.add_argument("--pivot-strategy", choices=["first", "short"])
    parser.add_argument("--batch-size", type=int)
    args = parser.parse_args()
    run_dir = args.run_dir.resolve()
    if run_dir.exists() and any(run_dir.iterdir()):
        parser.error("run directory must be empty")
    run_dir.mkdir(parents=True, exist_ok=True)
    # Logs are outside the engine's initially empty result directory.
    logs = run_dir.parent / (run_dir.name + "-logs")
    logs.mkdir(exist_ok=False)
    binary = ROOT / "target/release/directloop"
    command = [str(binary), "--max-length", str(args.max_length), "--threads",
               str(args.threads), "--output", str(run_dir)]
    for flag, value in [("--row-order", args.row_order), ("--pivot-strategy", args.pivot_strategy),
                        ("--batch-size", args.batch_size)]:
        if value is not None:
            command.extend([flag, str(value)])
    binary_hash = hashlib.sha256(binary.read_bytes()).hexdigest()
    libproc = ctypes.CDLL("/usr/lib/libproc.dylib") if platform.system() == "Darwin" else None
    if libproc:
        libproc.proc_pid_rusage.argtypes = [ctypes.c_int, ctypes.c_int, ctypes.c_void_p]
        libproc.proc_pid_rusage.restype = ctypes.c_int
    baseline_swap = swap_bytes()
    samples = []
    reason = None
    started = time.monotonic()
    with (logs / "stdout.json").open("w") as stdout, (logs / "progress.log").open("w") as stderr:
        process = subprocess.Popen(command, stdout=stdout, stderr=stderr)
        print(f"Started PID {process.pid}; logs: {logs}", flush=True)
        try:
            while process.poll() is None:
                sample = {"elapsed_seconds": time.monotonic() - started}
                ps = subprocess.run(["ps", "-o", "rss=,pcpu=", "-p", str(process.pid)],
                                    capture_output=True, text=True)
                fields = ps.stdout.split()
                if len(fields) == 2:
                    sample.update(rss_bytes=int(fields[0]) * 1024, cpu_percent=float(fields[1]))
                if platform.system() == "Linux":
                    try:
                        status = Path(f"/proc/{process.pid}/status").read_text()
                    except FileNotFoundError:
                        status = ""
                    match = re.search(r"^VmSwap:\s+(\d+)\s+kB", status, re.MULTILINE)
                    sample["process_swap_bytes"] = int(match[1]) * 1024 if match else 0
                    sample["rss_plus_swap_bytes"] = sample.get("rss_bytes", 0) + sample["process_swap_bytes"]
                if libproc:
                    usage = RUsageV0()
                    if libproc.proc_pid_rusage(process.pid, 0, ctypes.byref(usage)) == 0:
                        sample["physical_footprint_bytes"] = usage.phys_footprint
                sample["system_swap_bytes"] = swap_bytes()
                samples.append(sample)
                memory = max(sample.get("rss_bytes", 0), sample.get("physical_footprint_bytes", 0),
                             sample.get("rss_plus_swap_bytes", 0))
                swap_growth = (sample["system_swap_bytes"] or 0) - (baseline_swap or 0)
                if memory > args.memory_limit_gib * GIB:
                    reason = "process memory limit exceeded"
                elif swap_growth > args.swap_growth_limit_gib * GIB:
                    reason = "system swap growth limit exceeded (system-wide measurement)"
                elif args.max_seconds is not None and sample["elapsed_seconds"] > args.max_seconds:
                    reason = "wall-time limit exceeded"
                if reason:
                    process.terminate()
                    break
                if len(samples) % 15 == 0:
                    print(f"{sample['elapsed_seconds']:.0f}s: RSS={sample.get('rss_bytes',0)/GIB:.2f} GiB, "
                          f"footprint={sample.get('physical_footprint_bytes',0)/GIB:.2f} GiB, "
                          f"CPU={sample.get('cpu_percent',0):.0f}%", flush=True)
                time.sleep(2)
        except KeyboardInterrupt:
            reason = "interrupted"
            process.terminate()
        try:
            code = process.wait(timeout=10)
        except subprocess.TimeoutExpired:
            process.kill()
            code = process.wait()
    elapsed = time.monotonic() - started
    usage = resource.getrusage(resource.RUSAGE_CHILDREN)
    peak_rss = usage.ru_maxrss * (1 if platform.system() == "Darwin" else 1024)
    table = run_dir / "table.json"
    levels = json.loads(table.read_text()) if table.exists() else []
    report = {
        "platform": platform.platform(), "binary_sha256": binary_hash,
        "maximum_length": args.max_length, "generation_workers": args.threads,
        "exit_code": code, "stop_reason": reason, "external_wall_seconds": elapsed,
        "memory_limit_gib": args.memory_limit_gib, "swap_growth_limit_gib": args.swap_growth_limit_gib,
        "wall_time_limit_seconds": args.max_seconds,
        "row_order": args.row_order, "pivot_strategy": args.pivot_strategy, "batch_size": args.batch_size,
        "peak_child_rss_bytes": peak_rss,
        "peak_sampled_footprint_bytes": max((s.get("physical_footprint_bytes", 0) for s in samples), default=0) if libproc else None,
        "peak_sampled_rss_plus_swap_bytes": max((s.get("rss_plus_swap_bytes", 0) for s in samples), default=0) if platform.system() == "Linux" else None,
        "baseline_system_swap_bytes": baseline_swap,
        "final_system_swap_bytes": swap_bytes(), "levels": levels, "samples": samples,
        "completed_requested_length": any(row["length"] == args.max_length for row in levels),
        "progress_tail": (logs / "progress.log").read_text().splitlines()[-10:],
        "measurement_notes": [
            "Memory is sampled every two seconds; threshold may be exceeded between samples.",
            "Wall time includes monitoring and up to two seconds of completion-detection delay.",
            "System swap is system-wide and cannot be attributed solely to this process.",
        ],
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2) + "\n")
    print(f"Finished: exit={code}, wall={elapsed:.2f}s, peak RSS={peak_rss/GIB:.3f} GiB, reason={reason}", flush=True)
    print(f"Report: {args.report}", flush=True)


if __name__ == "__main__":
    main()
