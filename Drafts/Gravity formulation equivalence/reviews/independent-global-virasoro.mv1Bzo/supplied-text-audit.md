# Supplied-text audit of the integrated global-lift sections

**Verdict: the mathematical claims in the requested scope are correct as stated; no substantive correction is required.** This is a supplied-text consistency audit, not a fresh independent derivation. No parent source was edited and no computation was rerun.

## Scope and evidence

Audited [Sections 6–8 of the integrated note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L252-L374>), using its supplied conventions and trace normalization. The earlier analytic tangent/Grassmannian proofs were not independently re-audited here. The relevant [CPS convention](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L20-L25>) was read for alignment. The independent global construction and the later central-weight clarification are documented in [this review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/report.md>).

## Checks

- **Actual group and actual PSL:** the lift-independent cocycle and exact Möbius restriction in [Section 6](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L252-L294>) preserve the explicit group-level proof, not merely its infinitesimal consequence.
- **Global phase:** [Section 6.2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L296-L310>) correctly distinguishes the Bott datum q from the relative holonomy χ=q exp(2πic/24), including actual PSL versus its double cover.
- **Signs:** [Section 7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L312-L336>) consistently uses central weight −1. It therefore has quantum central term +σ_c and line curvature +iω_c=−σ_c=−iΩ_c. With the supplied trace formula, the c=−26 and c=13 model curvatures are TrR and −TrR/2 respectively.
- **Root versus acting group:** [Section 7.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L338-L356>) correctly identifies the relative root phase, excludes the other root by its −1 PSL loop, and distinguishes a replacement double cover from a forbidden half-integer weight under the unchanged central circle.
- **Actual models versus canonical identification:** [Sections 7–8](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L312-L374>) legitimately claim actual homogeneous curvature-matching lines. They do not upgrade curvature agreement to a canonical determinant functor or a quantum-equivalence result. The connection-modification argument is correctly labeled an additional-choice construction.

## Minor precision suggestions, not substantive objections

1. At [line 314](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L314>), say that the central component of the left Maurer–Cartan form **on E_c^rel** descends to P_c. The quotient P_c itself is not a group and has no Maurer–Cartan form of its own.
2. Near [line 267](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L263-L271>), explicitly define mean(F−x)=(2π)^−1∫₀^{2π}(F−x)dx.
3. Optionally, after [the tensor-product curvature equation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L332-L336>), state that the tensor product carries the Baer-sum projective action, represented by E_(C+13), not the unchanged original extension.

The provenance statement about the Wolfram records remains appropriately limited: script-reported message lists are not being conflated with absent wrapper/process diagnostics.
