#!/usr/bin/env python3
"""Static archive/link audit only: no mathematical kernel or numerical rerun.

Run with ordinary Python 3. Each invocation writes one new private report directory.
The named document set and expected hashes are explicit; this does not scan the vault.
"""
from pathlib import Path
import hashlib
import json
import re
import tempfile
from datetime import datetime, timezone
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parent.parent
A = ROOT / "reviews/independent-detlift-20261031.8djLkr"
B = ROOT / "reviews/analytic-welding-evidence.RdV6Bs"
C = ROOT / "reviews/relative-fredholm-independent.txN5Fm"
DOCS = [
    ROOT / "README.md",
    ROOT / "00 Research report.md",
    ROOT / "04 Comparison and open problems.md",
    ROOT / "10 Vacuum quantum equivalence benchmark.md",
    ROOT / "11 Projective vacuum curvature and global lifts.md",
    ROOT / "12 Fredholm determinant of the vacuum tangent bundle.md",
    ROOT / "verification/README.md",
    ROOT / "reviews/Independent reviews.md",
    ROOT / "sources/Source evidence.md",
    A / "supplied-text-audit-sections-7-8.md",
    B / "evidence-index.md",
    C / "metric_lift_supplement.md",
    ROOT / "reviews/supplied-global-big-cell-audit-RdV6Bs.md",
]


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


# Validate standard inline Markdown links (angle-bracket and plain destinations).
# Fragment checks validate line bounds, not whether historic line locators still
# identify the same sentence after a source revision. Remote URLs are not fetched.
link_rx = re.compile(r"\[[^\]\n]*\]\((?:<([^>\n]+)>|([^)\n]+))\)")
line_rx = re.compile(r"L(\d+)(?:-L?(\d+))?")
broken, links, fragments, remote = [], 0, 0, 0
markdown_hashes = {}
line_counts = {}
for doc in DOCS:
    text = doc.read_text(encoding="utf-8")
    markdown_hashes[str(doc.relative_to(ROOT))] = digest(doc)
    for match in link_rx.finditer(text):
        target = match.group(1) or match.group(2)
        parts = urlsplit(target)
        if parts.scheme and parts.scheme != "file":
            remote += 1
            continue
        links += 1
        path = Path(unquote(parts.path)) if parts.path else doc
        if not path.is_absolute():
            path = doc.parent / path
        if not path.exists():
            broken.append({"document": str(doc), "target": target,
                           "reason": "missing local target"})
            continue
        anchor = line_rx.fullmatch(parts.fragment)
        if anchor and path.is_file():
            fragments += 1
            if path not in line_counts:
                line_counts[path] = len(path.read_text(encoding="utf-8").splitlines())
            first = int(anchor.group(1))
            last = int(anchor.group(2) or first)
            if not (1 <= first <= last <= line_counts[path]):
                broken.append({"document": str(doc), "target": target,
                               "reason": "line fragment outside current file"})

manifest = json.loads((ROOT / "verification/vacuum_fredholm_copy_manifest.json").read_text())
hash_checks = []
for item in manifest["files"]:
    path = Path(item.get("copy", item["source"]))
    entry = {"path": str(path), "expected_sha256": item["sha256"],
             "sha256_match": digest(path) == item["sha256"],
             "byte_count_match": path.stat().st_size == item["byte_count"]}
    if "copy" in item:
        original = Path(item["source"])
        entry["original_present"] = original.is_file()
        entry["original_byte_equal"] = (original.read_bytes() == path.read_bytes()
                                         if original.is_file() else None)
    hash_checks.append(entry)

expected = {
    B / "lanzadecristoforis-preciso-2003.pdf": "1c003696d3c8326ed5736f3f15ac72f33515aec98659a2a18c8bef992bc2335a",
    B / "checks.wl": "0309de501a771dc2619abec9fdb458905a640af5b3529f78cb0769f9de6061b2",
    B / "kernel-checks.txt": "78b4a9a11cf836c8d73d120045aca0665f0ede4bfc1e035fcaac8e2e381feb9c",
    B / "failed-inline-mcp-return.json": "a2f65272aee7400dccc90e298a6181294a791da057e630915088d8fa2e0e5094",
    B / "failed-inline-source.wl": "8b6650369c7865e3a600bab8a88db57b6d895266e50580b89a84bf1f66ba41a2",
    B / "successful-mcp-return.json": "1d17ac284791688ce4dfd336c73b3064a8f6198ec552966500186f499e5bc728",
    B / "successful-invocation.wl": "1e5687a885a00b1ada559dcd3f729c723e5fce5dca2dadaa6c8036d0e35718c1",
    C / "exact_checks.mcp-return.json": "31115abb1b393f5bd723d6f1e553b74117099f7305c9662d0cfbde0fff0f5996",
    C / "geometric_checks.mcp-return.json": "b92b6a6c0887796e17db06c831816a454c324b33c04e9066839cfa19e68fcadd",
    C / "exact_checks.wl": "3f23513c5ca70085c5f23730466cf5b406c4269fdf5bae22c62535b8be4a1bcc",
    C / "geometric_checks.wl": "b079b5b686729fce9b5fdf08af807e708492f6cc64e0ef3c2ea350227b2d777b",
}
for path, sha in expected.items():
    hash_checks.append({"path": str(path), "expected_sha256": sha,
                        "sha256_match": digest(path) == sha})

# The first audit found one extra terminal LF in each C invocation text file.
# Preserve the raw byte-equality result, and check exactly the documented suffix;
# do not strip arbitrary whitespace or change any archived source/return.
invocations = [
    (B / "failed-inline-mcp-return.json", B / "failed-inline-source.wl", b""),
    (B / "successful-mcp-return.json", B / "successful-invocation.wl", b""),
    (C / "exact_checks.mcp-return.json", C / "exact_checks.executed-source.wl", b"\n"),
    (C / "geometric_checks.mcp-return.json", C / "geometric_checks.executed-source.wl", b"\n"),
]
invocation_checks = []
for raw, source, suffix in invocations:
    payload = json.loads(raw.read_text())
    argument = payload["arguments"]["code"].encode("utf-8")
    archived = source.read_bytes()
    invocation_checks.append({"raw": str(raw), "source": str(source),
                              "decoded_arguments_byte_equal": archived == argument,
                              "expected_archival_suffix_hex": suffix.hex(),
                              "matches_declared_archival_bytes": archived == argument + suffix,
                              "argument_byte_count": len(argument),
                              "archive_byte_count": len(archived),
                              "archive_sha256": digest(source),
                              "upstream_truncated": payload["upstreamTruncated"]})

failed_raw = json.loads((B / "failed-inline-mcp-return.json").read_text())
failed_text = "\n".join(v.get("text", "") for v in failed_raw["received"]["content"])
failed_attempt_preserved = "ToExpression::sntxi" in failed_text and "$Failed" in failed_text
unexecuted_draft_labeled = "UNEXECUTED DRAFT" in (C / "lift_audit_checks.wl").read_text()
checks = {
    "local_link_targets_and_line_bounds": not broken,
    "all_expected_hashes": all(row["sha256_match"] for row in hash_checks),
    "manifest_byte_counts": all(row.get("byte_count_match", True) for row in hash_checks),
    "all_four_private_original_copies_equal": all(
        row.get("original_present", True) and row.get("original_byte_equal", True)
        for row in hash_checks),
    "archived_invocations_match_declared_endings": all(
        row["matches_declared_archival_bytes"] for row in invocation_checks),
    "four_invocation_envelopes_untruncated": all(
        row["upstream_truncated"] is False for row in invocation_checks),
    "syntax_failure_preserved": failed_attempt_preserved,
    "unexecuted_draft_explicitly_labeled": unexecuted_draft_labeled,
}
report = {
    "scope": "static archival/link integrity only; no mathematical verification or rerun",
    "timestamp_utc": datetime.now(timezone.utc).isoformat(),
    "script_sha256": digest(Path(__file__)),
    "documents": markdown_hashes,
    "local_link_occurrences": links,
    "line_fragment_occurrences": fragments,
    "remote_links_not_fetched": remote,
    "broken_links_or_fragments": broken,
    "hash_checks": hash_checks,
    "invocation_checks": invocation_checks,
    "checks": checks,
    "all_static_checks_pass": all(checks.values()),
}
outdir = Path(tempfile.mkdtemp(prefix="fredholm-archive-audit.", dir=ROOT / "verification"))
outfile = outdir / "result.json"
with outfile.open("x", encoding="utf-8") as handle:
    json.dump(report, handle, indent=2, ensure_ascii=False)
    handle.write("\n")
print(json.dumps({"report": str(outfile), "documents": len(DOCS),
                  "hashes": len(hash_checks), "local_link_occurrences": links,
                  "checks": checks, "issues": broken}, indent=2, ensure_ascii=False))
raise SystemExit(0 if report["all_static_checks_pass"] else 1)
