# Supplied-text audit of note 18, §§5–7

## Judgment

**The integrated nonlinear-domain, wall-extension, and formulation-interface claims are sound under the stated small-field hypotheses and the explicit ghost-domain qualification below.** No normalization or analytic-domain mismatch with the frozen independent proof was found. Two small precision edits are recommended: clarify the support of the test vector, and state the smooth-vector assumption in the general no-go quantifier. An additional sentence defining the finite-radius action notation would improve clarity without changing the theorem.

This is a **supplied-text audit**, not an independent rediscovery or another kernel verification. No source note or frozen review artifact was changed; no kernel was run.

## Exact version and scope

Inspected source: [note 18](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>), preserved as [the complete snapshot](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/note18-snapshot.md>). Snapshot SHA-256:

`77ae90273f915f7422aee94227b0817f250cd5973f7886fb8e741c5a437bb054`

Capture time and original path are in [snapshot metadata](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/snapshot.json>). All line references below refer to that immutable snapshot, not a subsequently edited source.

The comparison authority was [the frozen independent nonlinear proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/report.md>), with its [freeze/provenance record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/FREEZE.md>) and separate [finite-fixture evidence-label caveat](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/evidence-label-caveat.md>). The actual gravitational linear operators, earlier component formulas, and the parent-owned L2 concentration coefficient in (28) were not independently reverified in this limited pass.

## §5: nonlinear domain and stationary extension

Accepted [snapshot:334–376](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/note18-snapshot.md#L334-L376>):

- The condition \(m>9/2\) puts the lowest exponent \(m-3\) strictly above the three-dimensional multiplication threshold \(3/2\). The stated product bound and the degree-shifted boundedness of \(D,h\) are consistent. The norm bound does not incorrectly retain a \(\Lambda^{-1}\) factor after the gain is spent on the degree shift.
- \(\mathcal L_m=\operatorname{im}(h:\mathcal X_m\to\mathcal X_m)=\operatorname{ran}(hD)\) is closed in this mixed topology. This does not contradict the nonclosed equal-order/L2 image addressed earlier.
- The distinction between the weak full pairing and the strongly nondegenerate fixed-band pairing is correct. Strong retained pairing does not require finite rank; fixed-band equivalence of the Sobolev norms and L2 is sufficient.
- Both contraction radii are safe. The equal-order estimate correctly keeps the derivative-loss warning; the mixed-domain statement is genuinely Q-stable.
- The physical-body Neumann inverse justifies the formal coefficients. Symmetric formal powers of the even ghost antifields are stated explicitly; no false nilpotency premise remains. Retained coefficients are band-limited, and the physical-body multiplication followed by \(h\) supplies the bootstrapping used here.
- Critical-locus lifting is correctly conditional on vanishing retained gradient plus UV stationarity and sufficiently small body. It does not impose full UV equations at arbitrary off-shell retained fields.

The small physical H4 sector used in §6 is the representative \(\mathcal X_5\) sector. It is not an inconsistent claim that every \(\mathcal X_m\) has exactly H4 physical regularity.

## §6: actual combined relative wall action

Accepted [snapshot:397–454](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/note18-snapshot.md#L397-L454>):

- The action normalization is \(\kappa=2a\), with bulk cosmological coefficient \(-\kappa/6\), wall coefficient \(-\kappa\), and area coefficient \(+\kappa\), matching the original conventions.
- The finite-radius remainder in (30) is \(+\kappa f\wedge w/2\). The stated bulk and wall pieces cancel the linear \(e_0\wedge w\) flux at the same radius. There is no erroneous separate-flux vanishing argument.
- The sign and coefficient of the exact derivative in (31) agree with the frozen local first-variation check. Its disappearance uses a **closed** wall, not an assumed boundary condition on \(\delta n\).
- Principal-curvature decay, boundary-area growth, the linear coefficient's L2 bound, uniform collar traces, and the quadratic remainder give the actual limit in (32). The finite-radius formula uses \(S_{\rm rel}(q;M_R)\); only the limit uses \(S_{\rm rel}(q;M)\).
- The result is correctly limited to the combined relative physical action, rather than Brown–Henneaux/source/BFV/CPS transport.

**Optional notation clarification near line 417:** explicitly write that \(I_{P,R}\) means the original bulk integral over \(M_R\) plus its wall integral over \(\Sigma_R\), before any finite part, whereas \(S_{\rm rel}(q;M_R)\) is just the quadratic-plus-cubic polynomial integrated over \(M_R\). The current context already supports this reading; the sentence would remove any ambiguity.

## §7: interface obstruction and the exact quantifiers

The explicit one-generator sequence and its Sobolev exponents agree with the frozen counterexample. The general finite-pair no-go is also correct under independent product-neighborhood assumptions. The exclusions for smooth scales, pulled-back nonlinear domains, and restricted stationary images are appropriate.

Two small wording repairs:

1. [Snapshot:460](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/note18-snapshot.md#L460>): replace “a smooth compactly supported \(X=\partial_1\) on its support” by “a smooth compactly supported vector field \(X\) equal to \(\partial_1\) on \(\operatorname{supp}\chi\).” The former has an ambiguous antecedent; a compactly supported vector cannot equal a nonzero constant on its entire support through the cutoff transition.
2. [Snapshot:470–480](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/supplied-note18-audit.ye33hb3w/note18-snapshot.md#L470-L480>): make explicit that the **diffeomorphism-ghost domain contains small compactly supported smooth vector fields, independent of the unrestricted coframe neighborhood**. This premise is used in line 480 but should appear in the general statement. With it, the conditions \(t\geq s+1\) and \(s\geq t\) are incompatible as asserted. Without it, a restricted or trivial diffeomorphism-ghost domain would not support the fixed-vector test.

Neither repair alters the substantive construction. Subject to this quantifier clarification, the supplied sections accurately incorporate the independently derived results, with their intended limitations.
