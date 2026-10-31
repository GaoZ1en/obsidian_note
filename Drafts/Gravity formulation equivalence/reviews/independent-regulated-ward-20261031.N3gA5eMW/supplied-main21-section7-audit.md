# Supplied-text audit of note21 §7 and result bullet 5

## Verdict

**Correct for the fixed actual scalar-principal Hodge weight, with two scope qualifications that should be made explicit.** The exact variation, finite graded model, numerical residuals and Ward/QME diagnostic agree with the frozen independent evidence. The text correctly does not identify a finite-cutoff defect with a continuum anomaly.

This is a **supplied-text audit**, not a fresh independent derivation or a new CAS run. No parent text was edited. Only the requested passages and their immediate fixed-operator context were read; the proofs elsewhere in the parent note and other agents' artifacts were not inspected or reverified.

## Snapshot and frozen evidence

The audited [parent note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md>) had SHA-256:

```text
b92baacd5460a7ee151e0964fffebf2748e3b89b0d50350232baf8baa2f1b847
```

The [initial independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/report.md>) had SHA-256:

```text
16063da2aa754287fa450a34e4a4913cad344a85b67b999c0b2f561373a1d0ca
```

The [new KV follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md>) had SHA-256:

```text
88f22355cbbda6bff01052e120eab4d2e7934b7c3dd3379376fe17d26c16d008
```

The original 26 Wolfram and 25 Sage checks remain frozen. The separate KV follow-up has 13 new passing checks, not a rerun of those originals.

## Required scope clarifications

1. **Ordinary limit versus finite part.** At [note21:599–606](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L599-L606>), prefix the ordinary-limit argument with:

   > For the fixed actual order-two Hodge weight, whose principal symbol is scalar, and compact physical variations in the stated globally admissible odd-class calculus, …

   This makes the crucial hypothesis explicit. Odd-class parity plus even order alone guarantees the **zero canonical finite part**, not the ordinary zero limit. A positive nonscalar-principal even-order odd-class weight can have the nonzero \(\varepsilon^{-1/2}\) coefficient proved in (K9) of the [follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md#L129-L160>). The actual Hodge weight does have scalar principal symbol, so this is a scope clarification, not a contradiction of its intended conclusion.

   Correspondingly, change the phrase “canonical-trace limit” in [result bullet 5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L25>) to “canonical heat finite part,” optionally adding that the actual scalar-principal order-two case has an ordinary zero limit. Arbitrary trace-class global remainders give \(O(\sqrt\varepsilon)+o(1)\), not automatically a uniform \(O(\sqrt\varepsilon)\) rate.

2. **Varying weight.** In [note21:606](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L606>), “smoothly varying admissible weight” should specify preservation of odd class and fixed even order, compatible common domains/spectral cuts, and uniform differentiable heat asymptotics. These are what justify commuting variation with finite part. The zero-FP versus potentially divergent ordinary-limit distinction already stated there is correct; the scalar example (K11) in the [follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-regulated-ward-20261031.N3gA5eMW/kv-followup.md#L162-L200>) verifies why the distinction is necessary.

## Verified against existing evidence

- [Equations (42)–(43)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L574-L593>) have the correct signs, orderings, coefficients, Duhamel term, and separate action factor \(1/2\). The commutator rewrite is exactly \(-\tfrac12\tau([H,A])+\tfrac13\tau([AH,A]+[H,A^2])\).
- The source \(\nu=1+t\), CME/transport, odd covariance sign, normalized \(\gamma_1\), and \(W_1=\tfrac12\log\det K_b-2\log(1+t)\) in [the finite model](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L612-L633>) match the frozen exact exterior/Gaussian checks. The values \(29/840,-1/840,229/245,119/6000\) and source-omission increment \(1/(1+t)\) are correct.
- [Equation (46) and the counterterm equations](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L635-L655>) have the Euclidean signs fixed by the stated BV convention. The generator/source and BV-Laplacian data are not silently inferred from the determinant.
- The qualifications at [note21:608](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L608>) and [note21:641–655](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L641-L655>) correctly exclude a continuum QME or unavoidable-anomaly claim.

## Optional precision and unverified boundary

- At [note21:572](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L572>), qualify “Compact test insertions suffice” by “for the fixed physical operators under the global trace estimates of §3.” The preceding abstract condition \(A,H\in\mathfrak S_4\) by itself does not identify an admissible spatial calculus.
- At [note21:633](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/21 Low-wheel heat traces and an AdS gravitational tadpole.md#L633>), clarify that the **fixed-heat** defects vanish as the weight tends to one; the tail-only \(\det_4\) subtraction residual is a different mismatch and does not vanish by that limit.
- The cited §3 global estimates, the actual low-wheel/gravitational tadpole and generator-insertion calculations outside §7, and their extension to noncompact/full graded data were not reverified in this scoped audit. The new follow-up provides the determinant ordering/weight argument conditionally on those analytic hypotheses; it does not close the source/generator Ward layer.
