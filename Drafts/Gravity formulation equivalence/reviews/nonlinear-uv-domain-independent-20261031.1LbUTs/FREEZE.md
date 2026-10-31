# Frozen independent nonlinear UV-domain review

Frozen at 2026-10-31T01:00:23.796524+00:00.

Primary result: [report.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/report.md>).

The report derives the Q-stable mixed Sobolev CS completion, true stationary elimination, formal-even BV extension, quartic/CME identity, combined relative wall extension, and an explicit same-completion geometric-map counterexample. Its final general no-go corollary was supplied by the parent after the concrete counterexample and is separately labeled as an audited supplied proposal. No parent synthesis was read before this freeze. Original notes were not edited.

## Exact verification provenance

- SageMath 10.9: one successful run, 11 exact groups passed; all retained BV degrees present; naive quartic master defect nonzero and canceled by the tree term. No error, warning, stderr, transport error, or truncation in the actual [sage-server-return.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-server-return.json>).
- Sage exact submitted-code hash, before the archival trailing newline: `9fe65d5a1acbfb3deade169f6d5ab8bd6f0104b1ef048e9f321a27c5a6390e86`.
- Wolfram: one successful run, 7 exact wall-variation groups passed; normal constraints, first variation before/after tangential divergence, and primitive checked. `Failed=False`, `Messages={}`; actual envelope in [wall-server-return.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-server-return.json>), native result in [wall-result.wxf](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-result.wxf>).
- These finite algebraic checks do not prove the analytic Sobolev/domain/existence statements or the gravitational linear operators. Those proof boundaries are explicit in the report.
- No successful kernel run was repeated for this freeze. The replay scripts write fresh private kernel-export directories and do not overwrite research notes.

## Excluded failed exploration

The first Sage invocation stopped before evaluating its check groups with `AttributeError: 'sage.rings.integer.Integer' object has no attribute 'bit_count'`. Its returned submitted-code hash was `99b53540b596f941d9ececc193f2249e0c278a67915baf2f85de0d22dba4206e`. The correction used `int(mask).bit_count()`. This failure is not a failed mathematical identity, not a successful test, and not included among the 11 passed groups. The failure was returned in-session without a persisted envelope path; the successful original envelope and exact source are archived here. There were no other failed kernel attempts in this review.

## Frozen SHA-256 hashes

| File | SHA-256 of archived bytes |
| --- | --- |
| [report.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/report.md>) | `2e40c815c548c4845f2e1c17d4b6cf7e173d05d01fde9221e4bdd2c87ecce0a6` |
| [finite-graded-check.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/finite-graded-check.py>) | `3950d99aada827be69add3c011525318f8b01305d486e4f954c143d0ad4c462e` |
| [sage-checks.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-checks.json>) | `b5d6d26de857f31b29cc4a15bd63cf0547eade6461fe29dae326464d898bdc4d` |
| [sage-result.sobj](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-result.sobj>) | `6373c443d92bbc36cf485933b4088c95cf48faa470a0b603c1c37a60fb88a343` |
| [sage-server-return.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-server-return.json>) | `6e857dc07122fc35a364b494f2f654c5143dd8747936f04304e7c195e5e84820` |
| [wall-first-variation.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-first-variation.wl>) | `39ca25d26eba5d2e3faf5a6270a59febb2a0bbffdc11c0119cce58bb61305c0d` |
| [wall-checks.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-checks.txt>) | `8ba6793cf3ecc00550c2b81392c01f58e5e40c659e19e0281ec37fd7300527a7` |
| [wall-result.wxf](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-result.wxf>) | `d4d746229596c29ca5af0dbfbdefab6d549d6700ee5fb7c9421ab64908334ed5` |
| [wall-server-return.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-server-return.json>) | `2a1460f4a363f5bc14b9e54be8808432525e84a18c54a337cf7be3c1a04978ec` |

All local links in the primary report were checked to resolve at freeze time. No independent child reviewer could be spawned at this delegation depth; the report is the parent's independently initialized nonlinear review, not a claim of an additional third-party audit of itself.
