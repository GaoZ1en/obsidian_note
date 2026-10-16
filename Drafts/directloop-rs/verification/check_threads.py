#!/usr/bin/env python3
"""Regression check for worker count, batch size and concurrent exact reducers."""
import argparse
import json
import subprocess
from pathlib import Path
from benchmark import EXPECTED

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--output", type=Path, default=root / "verification/thread-checks.json")
args = parser.parse_args()
cases = [(1,2048,False),(4,2048,False),(16,2048,False),(4,256,False),(4,17,False),(4,2048,True)]
records = []
signatures = []
for workers,batch,serial in cases:
    command = [str(root / "target/release/directloop"),"--max-length","18",
               "--threads",str(workers),"--batch-size",str(batch),"--quiet"]
    if serial:
        command.append("--serial-ranks")
    rows = json.loads(subprocess.run(command,check=True,capture_output=True,text=True).stdout)
    assert [row["length"] for row in rows] == list(range(4, 19, 2))
    for row in rows:
        assert [row[k] for k in ("loops","sde","tre","all")] == EXPECTED[row["length"]]
    if batch == 2048:
        signature = [[row[k] for k in ("sde_operations","tre_operations","all_operations")] for row in rows]
        signatures.append(signature)
        assert signature == signatures[0], "worker scheduling changed elimination order"
    records.append({"workers":workers,"batch_size":batch,"serial_ranks":serial,
                    "counts_match":True,"last_level":rows[-1]})
    print(f"Passed: workers={workers}, batch={batch}, serial_ranks={serial}")
args.output.write_text(json.dumps(records,indent=2)+"\n")
