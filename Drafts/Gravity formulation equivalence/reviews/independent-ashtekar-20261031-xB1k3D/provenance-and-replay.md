# Evidence preservation and safe replay

The independent analytic phase and both exact CAS executions preceded inspection of the supplied parent text. The supplied-text audit is separate. No parent source was edited and no passed mathematics calculation was rerun.

## Frozen execution record

The following read-only archives preserve the exact source bytes used by the two recorded Mathematica calls:

- [Main executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/checks.executed-source.txt>).
- [Off-shell executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell.executed-source.txt>).

These are archival text, not the designated replay entry points: their original fixed export names are retained to preserve the historical source exactly. Do not execute the archives over the recorded output directory.

The [frozen fresh-phase report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.fresh-phase.md>) preserves the pre-audit derivation and its original evidence index. The [current report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.md>) differs only in evidence links/provenance explanations, not in mathematics.

Raw server-returned records, including the exact `Get[...]` arguments, outputs and `upstreamTruncated: false`, are preserved in the [main diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/main-tool-diagnostics.json>) and [off-shell diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-tool-diagnostics.json>). The actual expression outputs separately preserve `Messages -> {}` and `FailedOrAbortedPresent -> False`.

## Replay behavior

The executable [main source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/checks.wl>) and [off-shell source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-evolution-checks.wl>) have only the following post-execution change: before computation, if either expected output already exists, a fresh UUID-named subdirectory is created beneath this review directory. Exports then target that new directory. If unique-directory creation fails, the script aborts before computation/export.

The formulas, definitions, checks, and report construction were not changed. This replay-output plumbing was statically inspected but not executed, respecting the request not to rerun passed calculations. No later output is attributed to the original execution. The saved original results have not been replaced.

## SHA-256 record

The hashes below were obtained after the archives were frozen and before the replay-only edits. No command writes to the original output files.

| Artifact | SHA-256 |
|---|---|
| [Main executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/checks.executed-source.txt>) | `fb433034e6fb24469ccb10b4c9ba91576cdaab0208f8f826ee7de48b05d406b3` |
| [Off-shell executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell.executed-source.txt>) | `f92881f243aef94bb437f110c1194b656db7a6e3df3378af12d1294a4431b278` |
| [Frozen report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.fresh-phase.md>) | `cd2d32e7272331a816ff3af0204b01482ebea2d3f789c7276538d90a6ecd35b6` |
| [Main text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/actual-output.txt>) | `2b2d3319d577ab701a0401e57483769431ae7bfb96d19b8c34c4448027f806f4` |
| [Main WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/actual-output.wxf>) | `eba367e095d83dc6de5a48c3d6d767a5ebed0a50e413d3092580b317830f8333` |
| [Off-shell text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-actual-output.txt>) | `f2c8523cfaf64c62a2b3a6b5b95feccd5a7ca9bcc023fb6a891088cbd03d7d30` |
| [Off-shell WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-actual-output.wxf>) | `a04162be0066ea8ebbed4ff741ba4648b68e97abd6aebf5e4e7332e956d31195` |
| [Main raw diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/main-tool-diagnostics.json>) | `a05125f596a4fb721f7dae323785d9ab6e0c382191bd3a7e893f8429ece91b84` |
| [Off-shell raw diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-tool-diagnostics.json>) | `57042481ebc02ffab723cc17782cb3e47c99ce6cbb5930428945c98893756fee` |
