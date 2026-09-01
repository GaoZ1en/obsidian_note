# Stage 4.5 xAct Bianchi-bundle result

Executed `scripts/stage45_bianchi_bundle_xact.wl` in a fresh dedicated
xAct `core` kernel, then repeated the three residuals through
`xact_verify_residuals` with the `canonical_contract` pipeline.

Structured verdict:

```text
ok=true
allZero=true
profile=core
pipeline=canonical_contract
pipelineSteps=[ToCanonical,ContractMetric,ToCanonical]
loadErrors=[]
loadMessages=[]
setupMessages=[]
transportStderr=[]
V92 B antisymmetry in the last pair: zero
V92 Weyl cyclic identity underlying B cyclicity: zero
V92 B trace: zero
unknownHeads=[] for every check
truncated=false for every check
```

The cyclic check uses `RiemannYoungProject` because the algebraic Weyl
cyclic identity is a multiterm Young symmetry.  These three zero residuals
support the bundle identities in calculation 12.4.  The independent
dimension, incidence-map invertibility and frozen principal matrices are
the exact component calculation V80--V91, not consequences of V92 alone.
