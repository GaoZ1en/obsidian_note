#!/usr/bin/env python3
"""Static/data audit only; this program does not prove the research theorems.
Run with any Python 3.12+ from any directory. Writes only bundle_audit.json.
Known artifacts are explicit: historical snapshot links are intentionally not audited.
"""
from pathlib import Path
from urllib.parse import urlsplit, unquote
import ast
import datetime
import hashlib
import json
import re
import sys
import zipfile

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "verification/bundle_audit.json"
DOCS = ["README.md", "local-baseline.md", "quantum-sewing.md", "continuum-and-replica.md",
        "reviews/finite-independent.md", "reviews/continuum-independent.md",
        "reviews/ising-continuum-independent.md", "reviews/lattice-numerics.md",
        "verification/evidence-index.md"]
SCRIPTS = ["verification/transfer_replica_checks.wl", "verification/cft_character_checks.wl",
           "verification/ising_continuum_checks.wl", "verification/finite_review_checks.sage",
           "verification/spin_chain_checks.py", "verification/audit_bundle.py"]
REPORTS = ["verification/transfer_replica_results.json", "verification/cft_character_results.json",
           "verification/ising_continuum_results.json", "verification/finite_review_results.json",
           "verification/spin_chain_results.json"]


def sha(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


def main():
    report = {"status": "running", "scope": "Static/data consistency; not a proof audit",
              "timestamp_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
              "python": sys.version, "checks": {}, "failures": []}
    OUT.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")

    def check(label, condition):
        val = bool(condition)
        report["checks"][label] = val
        if not val:
            report["failures"].append(label)

    loaded = {}
    for rel in REPORTS:
        try:
            loaded[rel] = json.loads((ROOT / rel).read_text())
            check("json_parse:" + rel, True)
        except Exception as exc:
            check("json_parse:" + rel, False)
            report.setdefault("errors", {})[rel] = repr(exc)
    if len(loaded) == len(REPORTS):
        transfer = loaded[REPORTS[0]]
        chars = loaded[REPORTS[1]]
        ising = loaded[REPORTS[2]]
        exact = loaded[REPORTS[3]]
        spin = loaded[REPORTS[4]]
        check("transfer_exact_8", len(transfer["exact_checks"]) == 8 and all(v is True for v in transfer["exact_checks"].values()))
        check("modular_exact_5", len(chars["exact_checks"]) == 5 and all(v is True for v in chars["exact_checks"].values()))
        check("sage_exact_7", len(exact["checks"]) == 7 and all(x["status"] == "passed" and x["value"] is True for x in exact["checks"]))
        check("transfer_no_messages", transfer["messages"] == [])
        check("swap_residual_small", transfer["swap_residual"] < 1e-40)
        check("ising_dense_vs_product_small", all(x["dense_vs_product_residual"] < 1e-35 for x in ising["finite_product_checks"]))
        errs = [x["frobenius_error"] for x in transfer["symmetric_trotter"]]
        check("strang_errors_decrease", all(a > b > 0 for a, b in zip(errs, errs[1:])))
        check("strang_last_ratio_near_four", abs(errs[-2] / errs[-1] - 4) < .01)
        check("spin_complete", spin["status"] == "complete")
        gs = spin["ground_states"]
        expected = {("ising", n) for n in (8, 10, 12, 14)} | {("potts3", n) for n in (6, 8, 10)}
        check("spin_expected_seven_sizes", {(g["model"], g["N"]) for g in gs} == expected and len(gs) == 7)
        check("spin_34_intervals", sum(len(g["interval_entropies"]) for g in gs) == 34)
        check("spin_code_hash", spin["script_sha256"] == sha(ROOT / "verification/spin_chain_checks.py"))
        check("spin_residuals", max(g["residual_2norm"] for g in gs) < 5e-12)
        check("spin_entropies_order", all(e["S1"] >= e["S2"] >= 0 for g in gs for e in g["interval_entropies"]))
        check("spin_CMI_positive", all(x["I_A_C_given_B"] > 0 for g in gs for x in g["CMI"]))
        check("ising_energy_crosscheck", max(g["analytic_energy_abs_error"] for g in gs if g["model"] == "ising") < 1e-11)
        # Compare literal reproducibility SETUP/CHECKS in the exact Sage source.
        tree = ast.parse((ROOT / "verification/finite_review_checks.sage").read_text())
        literals = {}
        for node in tree.body:
            if isinstance(node, ast.Assign):
                for target in node.targets:
                    if isinstance(target, ast.Name) and target.id in {"SETUP", "CHECKS"}:
                        literals[target.id] = ast.literal_eval(node.value)
        check("sage_setup_matches_saved", literals.get("SETUP", "").strip() == exact["setup"].strip())
        expected_checks = [(x["label"], x["condition"]) for x in exact["checks"]]
        raw_checks = literals.get("CHECKS", [])
        if raw_checks and isinstance(raw_checks[0], dict):
            raw_checks = [(x["label"], x["condition"]) for x in raw_checks]
        check("sage_check_expressions_match", list(raw_checks) == expected_checks)
        report["numerical_summary"] = {"max_ground_residual": max(g["residual_2norm"] for g in gs),
                                       "strang_last_ratio": errs[-2] / errs[-1],
                                       "number_exact_checks": 20}

    link_count = 0
    bad_links = []
    controls = []
    for rel in DOCS:
        p = ROOT / rel
        data = p.read_bytes()
        text = data.decode("utf-8")
        if any(b < 32 and b not in (9, 10) for b in data):
            controls.append(rel)
        for target in re.findall(r"\]\(<([^>]+)>\)", text):
            parsed = urlsplit(target)
            if parsed.scheme in ("http", "https", "mailto"):
                continue
            link_count += 1
            path = Path(unquote(parsed.path))
            if not path.is_absolute():
                path = p.parent / path
            if not path.exists():
                bad_links.append({"document": rel, "target": target})
        check("display_math_balanced:" + rel, text.count(r"\[") == text.count(r"\]"))
        check("inline_math_balanced:" + rel, text.count(r"\(") == text.count(r"\)"))
    check("authored_links_exist", not bad_links)
    check("no_unexpected_control_characters", not controls)
    report["local_link_count"] = link_count
    report["bad_links"] = bad_links
    report["control_character_files"] = controls

    record_path = ROOT / "sources/local-descent/EXTRACTION_RECORD.json"
    source = json.loads(record_path.read_text())
    archive = Path(source["archive"])
    check("archive_unchanged", sha(archive) == source["archive_sha256"])
    with zipfile.ZipFile(archive) as zf:
        for name, digest in source["members"].items():
            check("snapshot:" + name,
                  hashlib.sha256(zf.read(name)).hexdigest() == digest == sha(record_path.parent / name))
    manifest_files = DOCS + SCRIPTS + REPORTS + ["sources/1111.1987v1.pdf", "sources/1111.1987v1-page33.png"]
    report["sha256"] = {rel: sha(ROOT / rel) for rel in manifest_files}
    report["status"] = "passed" if not report["failures"] else "failed"
    OUT.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: report[k] for k in ("status", "failures", "local_link_count", "bad_links", "control_character_files")}, ensure_ascii=False, indent=2))
    print(str(OUT))
    if report["failures"]:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
