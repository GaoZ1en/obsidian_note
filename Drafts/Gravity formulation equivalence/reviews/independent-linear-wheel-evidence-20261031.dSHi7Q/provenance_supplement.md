# Original linear-wheel server evidence: archival supplement

This is a provenance-only supplement to the [frozen independent linear-wheel proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG/proof.md>). **No mathematical computation was rerun. No frozen source, result, or proof was modified.** The three pre-existing original server envelopes and their unchanged mathematical source files were copied byte-for-byte into this new directory. All ten frozen original-file SHA256 hashes were equal before and after the archival operation.

The [machine-readable supplement](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/evidence_supplement.json>) preserves original tool names, call ids, session ids, invocation arguments, completeness/truncation metadata, diagnostics, raw-envelope hashes, source-snapshot hashes, and the original-directory before/after hashes. The source-snapshot hashes are explicitly distinguished from the server's wrapper-code hash.

## Original calls and failures

1. [Initial finite-fiber Sage return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/initial_fiber_original_server_return.json>): 31 mathematical checks, none failed. The actual `version()` **DeprecationWarning** is retained verbatim. [Unchanged source snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/initial_fiber_source_snapshot.py>).
2. [First spectral return with partial failure](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/first_spectral_partial_failure_original_server_return.json>): `Series::serlim` from a noninteger truncation order `5/2`; the tail asymptotic remained unevaluated. This is not represented as a wholly successful run. The already returned integral, low-band primitive and heat-coefficient residuals were zero. [Unchanged first source snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/first_spectral_partial_failure_source_snapshot.wl>).
3. [Original successful v2 spectral return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/spectral_v2_success_original_server_return.json>): evaluated tail asymptotic, zero displayed residuals, and `Messages -> {}`. This is the old v2 call, not a new rerun. [Unchanged v2 source snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/spectral_v2_success_source_snapshot.wl>).

All three original envelopes report `completeness: server-returned` and `upstreamTruncated: false`. UI display abbreviation is not presented as a truncated server result.

## Raw-envelope SHA256

| Original call | SHA256 |
|---|---|
| Initial fiber Sage | `9651ea943d37e7e2991dbdbcf87b14a8d361f4e0ed793f2fec8474627c133cc2` |
| First spectral, partial failure | `d32d99ee3d32d796db082da2fb0f94e86bdc4e5137270c66359c3d6be816bfdd` |
| Spectral v2 | `33e4a0f81bf220ae94b228522a143356d08f7cd428b3e07cc52b72690c303e44` |

The [archival script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q/archive_provenance.py>) only copies bytes, parses metadata, and computes SHA256. It neither imports nor executes any of the mathematical source snapshots. It refuses to overwrite the supplement's evidence files.
