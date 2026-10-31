# Evidence, diagnostics, and replay

## Deliverables

- [Independent analytic derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/independent-derivation.md>): projected Hessians, global Schatten proof on the actual stationary domain, local non-trace-class proof, trace-class fourth-wheel tail, geometric ghost obstruction, and actual-graph realization.
- [Separately requested follow-ups](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md>): the explicit retained radial counterexample to a flat BV trace, and the exact conditional ghost-factor normalization.
- [Symbol-check source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check.wl>), [readable result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check-result.txt>), and [machine result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check-result.wxf>).
- [Radial-check source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-check.wl>), [readable result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-result.txt>), and [machine result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-result.wxf>).

No parent note was edited. All generated derivation and computational artifacts are confined to this new unique review directory.

## Inspected authority and conventions

- [Root AGENTS](</Users/koishi/Documents/Note/AGENTS.md>) was read before work. A glob for additional AGENTS under the Drafts tree found none.
- [Note18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) was read in full: real nonunitary gravitational complex, positive norm versus cyclic pairing, actual four degree blocks, gap/domains, closed UV Lagrangian, stationary domain and full formal completion.
- [Note19:31–360](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L31-L360>) supplies the fixed ghost/cotangent chart, exact generator, cubic endpoints, and common physical stationary family.
- [Note16:18–350](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L18-L350>) supplies the exact geometric transformations, ghost-only off-shell remainder, pairing conventions, and the distinction between a pointwise Berezinian and a functional density.
- The math-computation skill and its Wolfram reference were loaded before kernel use. Only the matching Wolfram reference was needed.

This session is the parent's independently initialized review. The parent supplied no candidate Hessian verdict initially. The radial field and principal-factor remedy were sent later and are explicitly labeled follow-ups. Further agent delegation was unavailable at the depth limit.

## Computational diagnostics

### Principal-symbol batch

- Exact arithmetic and symbolic matrices; no floating-point test or numerical tolerance.
- Gravitational basis: J1,J2,J3,P1,P2,P3; epsilon123=1; [P,P]=−epsilon J.
- Normal frame e0=I, k=dx3, coexact form basis 1,dx1,dx2,dx1∧dx2.
- Fourteen checks passed; `Failed -> False`; `Messages -> {}`.
- Checks include ad(P3) eigenvalues/rank/cube, the actual 18-by-6 ghost symbol and its free-pairing contraction, order-zero T=[[0,W],[0,F]], nonzero early CS powers, and formal supertrace cancellations without vanishing absolute norms.
- Exact machine result retained in WXF, readable InputForm preview retained alongside it.
- Original tool transport record: [raw JSON](</Users/koishi/.dsh/research-results/session-ec7666ab9ad4/dbdd3bbda769-research-result.json>).

### Targeted radial batch

- Assumptions b>0 and r>0 for the radial identities, with the smooth r=0 limit taken separately.
- Seven checks passed; `Failed -> False`; `Messages -> {}`.
- Checks cover the sine-band representation, radial scalar Laplacian conjugation, origin value/even expansion, positivity, and exact squared L2 norm 2π²b.
- The rank-three vector ghost projector was not replaced by a scalar projector in the analytic argument. Its nonzero homogeneous diagonal was established from the actual R1 and its gradient intertwiner, not computed by this scalar CAS batch.
- Original tool transport record: [raw JSON](</Users/koishi/.dsh/research-results/session-ec7666ab9ad4/4f0b6ec92fc1-research-result.json>).

There were no failed kernel attempts, no excluded computational labels, and no background jobs. The final hashing command returned `[exit code: 0]`.

## Analytic inputs not replaced by CAS

1. Bounded-geometry heat diagonal bounds for the actual Laplace-type Hodge blocks, together with the given spectral gap.
2. Schatten interpolation and the heat integral of Δ^(−1/2), explicitly displayed in the derivation.
3. The standard local singular-value Weyl law for smooth classical negative-order pseudodifferential operators. Its matrix singular-symbol formula is displayed; nonzero principal symbols yield positive Weyl constants.
4. High-frequency weakly null packets for noncompactness of a nonzero order-zero symbol.
5. Spectral convergence PΛ→I in Sobolev norms and the already established stationary contraction theorem.
6. The half-line sine-transform spectral theorem and positive-trace monotone convergence for the radial follow-up.

The CAS checks verify the finite algebra at the weak point—the actual gravitational ghost symbol and a nonzero semisimple CS symbol—but do not purport to verify these functional-analytic theorems numerically.

## Snapshot hashes

SHA-256 hashes were recorded after the analytic reports and exact checks were written. Source-note hashes identify the inspected project version at the time of the final hash command, not an assertion that no other session may later update a note.

| File | SHA-256 |
|---|---|
| [Note18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) | `24a6dd696cebc45c896b8fb81493228caf1788079035227c170aac2a820aaa9b` |
| [Note19](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md>) | `3457e93cd555e5645d25edb09bbed82094efd7b775f9e9368d71a87e7d63220b` |
| [Note16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>) | `67ba95bec2561a42c51f1c181b406619d557e6bafcf173cf906c920fa3b49ee3` |
| [Independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/independent-derivation.md>) | `34426425725e3da550ad5506743939e4f4f87bcb57106bc699c33c6b5806f1e8` |
| [Follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md>) | `9db9ee09805f9490d9a3c2f58aa09e56f1efb3068e50a8e41441c6dd3f278252` |
| [Symbol source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check.wl>) | `8c30706869658a7dd449ab0ce22845807397153b45bf6b1d09c5019b08dc13e5` |
| [Symbol machine result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check-result.wxf>) | `14c8d49d567d753e7e3e9264c5fd6ebfa2574fb3abd32cee393d82c548e1a238` |
| [Radial source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-check.wl>) | `614c1ded2f6643547e1b2b49bce7a2b1590fb30d3a46ce2a37e302226417bfef` |
| [Radial machine result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-result.wxf>) | `81759d4cdda3239e1e74756d6c1e7fb9c15eb8800373f6a8eefd553cd5bc1c5b` |

## Safe replay

Each Wolfram source is self-contained and may be run in a fresh kernel with `Get[absoluteSourcePath]`. It currently exports to this review directory. To preserve the frozen result, first make a new unique review subdirectory and change the source's `dir` assignment in a new copied source, rather than overwriting these results. No kernel state from another batch is required.
