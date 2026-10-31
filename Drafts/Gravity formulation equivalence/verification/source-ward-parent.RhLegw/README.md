# Parent source/Ward bridge: exact execution evidence

## Mathematical scope

The [runnable source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_source_ward_bridge.wl>) supports the [source-dependent synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md>). It was executed twice in fresh xAct `components` kernels. The second run changes only the engine-version accessor, not a mathematical calculation. Both exact/native results are retained.

The actual command for both runs was:

```wolfram
Get["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_source_ward_bridge.wl"]
```

Tool profile: `components`; timeout 180000 ms; the returned raw envelopes preserve the submitted output limits. xTensor, xPert, xTras and xCoba were loaded. The script actually uses xCoba to compute scalar curvature of the complexified Beltrami metric. The subsequent stress-divergence, Fourier/contact and volume calculations use explicit Wolfram component/scalar algebra. This is one computational engine, not two independent engines.

Thirteen labeled residual groups reduce to zero with the script's declared `Simplify` normalization. Twelve stored groups are literal scalar zero; the vacuum PSL group is stored as the difference of factored and expanded equal polynomials, and the aggregate `Simplify` test verifies that it vanishes. The checks concern curvature, trace, conservation, Fourier/contact conversion, the temporal zero-spatial mode, vacuum PSL factor, geodesic-cutoff inversion, volume finite part, density-to-anomaly normalization, three constant-source modulus/Hessian/response checks, and a sinusoidal Weyl integral. They do not prove self-adjointness, Plancherel, trace interchange, or measure equivalence.

## Frozen runs

### Run 01: mathematics passed; version metadata wrong

- [Frozen source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run01-source.wl>)
- [Complete readable report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run01-preview.txt>)
- [Exact WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run01-result.wxf>)
- [Actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run01-server-raw.json>)

The unqualified `$Version` resolved to an xAct package version `{1.4.2,{2014,10,30}}`, not the engine version. This metadata error is preserved and is not counted as a mathematical failure or silently corrected in the frozen output. AllResidualsZero=True, Failed=False, UnevaluatedComputations=False, Messages={}.

Source SHA256: `e3ee522ec5e5b7361a4009ff6a86bcfce18b440d6a0b567ad0a337803785e58d`.
WXF SHA256: `7622b64211c632090b1158189852ccec4fba112bec9837f2775147e987325dd8`.

### Run 02: metadata corrected in a fresh kernel

- [Frozen source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run02-source.wl>)
- [Complete readable report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run02-preview.txt>)
- [Exact WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run02-result.wxf>)
- [Actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/source-ward-parent.RhLegw/run02-server-raw.json>)

The only source change is `$Version` to ``System`$Version`` in the metadata field. The corrected actual report states `14.3.0 for Mac OS X ARM (64-bit) (July 8, 2025)`, with the same thirteen successful normalized residual groups, Failed=False, UnevaluatedComputations=False and Messages={}. The server also reports `ok=true`, no truncation, loadErrors=[], loadMessages=[], messages=[], transportStderr=[], elapsedMs=3323. No separate process-exit/process-stderr inventory is supplied by this interface; those unavailable fields are not invented.

Source SHA256: `7151a0996f022e7094fc9b1dcc4b4474cf0b652afa0c5c541f35c5c8e3c2fd31`.
WXF SHA256: `46b5bd7a113cc7e7b5254586009b76460d8facb7b39f5afe144bf08abf8dcbfa`.

## Provenance and replay

The original private kernel exports are [run-01 preview](</Users/koishi/.dsh/research-results/kernel-exports/source-ward-parent.Q4iqM5/preview.txt>), [run-01 WXF](</Users/koishi/.dsh/research-results/kernel-exports/source-ward-parent.Q4iqM5/result.wxf>), [run-02 preview](</Users/koishi/.dsh/research-results/kernel-exports/source-ward-parent.wQLjJM/preview.txt>) and [run-02 WXF](</Users/koishi/.dsh/research-results/kernel-exports/source-ward-parent.wQLjJM/result.wxf>). The original automatically captured envelopes are [run 01](</Users/koishi/.dsh/research-results/session-3605db0fcd2b/bb7d4695a29c-research-result.json>) and [run 02](</Users/koishi/.dsh/research-results/session-3605db0fcd2b/e920e0a37ab2-research-result.json>). Copies preserve these bytes; no raw return was edited.

The runnable source creates a new private output directory on every execution. Frozen inputs/results must not be overwritten. The [independent review index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>) distinguishes the three fresh derivations from later supplied-text audits. Their proofs, finite checks, metadata errors and actual failed runs retain their own narrower scopes.
