# Supplied-text audit of benchmark §§7–8

## Status and scope

**Scoped acceptance: no substantive mathematical correction is required.** This records the already completed supplied-text audit; it is **not** a fresh independent derivation.

The inspected text was only §§7–8, lines 429–528, of the [vacuum quantum equivalence benchmark](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L429-L528>). Acceptance is conditional on the referenced equations (2.2) and (3.1) matching the supplied oscillator and Virasoro setup; those earlier sections were not inspected in this audit. Line references identify the snapshot originally inspected and may shift after subsequent edits.

This archive transcribes the completed assessment. No new review, source reading, mathematical derivation, or CAS computation was performed to create it. The benchmark and the independent report/evidence were not modified.

## 1. All-level theorem and operator closures

The statement and argument at lines 431–451 are correct. Equality of the central charge fixes the full vacuum Gram form and its null radical, not merely a finite collection of ranks. The resulting isometry on the dense descendant quotient extends uniquely to a Hilbert-space unitary.

The closure qualification is valid and conservative. The distinction between two meanings of adjointness should be kept explicit:

- If \(L_n^\dagger=L_{-n}\) means **literal Hilbert-space adjoint equality**, the finite-dimensional energy-level block shifts force the given closed mode operators to equal their canonical closures. The unitary therefore transports those closed operators and their domains.
- If this denotes only **formal adjointness on the descendant core**, the established conclusion concerns the core and its canonical closures. Arbitrarily specified additional domains or extensions must not silently be included.

The finite-level maximal-domain description in the independent derivation provides the precise version of this distinction. No separate choice of a null quotient is available once the positive-semidefinite vacuum form and unitarity are fixed.

## 2. Thermal identity and complex rotation parameter

The identity and proof at lines 467–487 are correct.

- Restricting genuine normalized expectations to \(0<q<1\), and analytic continuation to points with \(|q|<1\) and \(Z_0(q)\ne0\), handles the complex-\(q\) qualification.
- The expression \(q\partial_q\log Z_0\) means \(qZ_0'/Z_0\); no globally defined logarithm is required.
- The finite-block trace argument is sound. Traces over negative energy levels are understood to be zero.
- Under the cyclic vacuum hypotheses, partition bounds guarantee the relevant energy-weighted trace convergence throughout \(|q|<1\).
- The cylinder-convention numerator \(cn^3/12\) is correct. For complex \(q\), the factor \(q^{-c/24}\) itself requires a local branch away from \(q=0\), but its logarithmic derivative and the displayed Ward identity are branch-independent.

No correction to the thermal formula is required.

## 3. Squeezing, necessity, energy, and original rotations

The claims at lines 500–527 are correct.

- Necessity of square summability is established through vanishing overlaps with a **dense set of cylinder vectors**, not merely through vanishing overlap with the original vacuum.
- Sufficiency requires strong convergence of both the finite implementers and their adjoints. Line 527 explicitly supplies this, supporting the abbreviated statement at line 515.
- The finite-mean-energy threshold \(p>1\) and the Hamiltonian-domain threshold \(p>3/2\) are correct and properly distinguished from the implementability threshold \(p>1/2\).
- The fixed-original-Hamiltonian requirement \(r_n=0\) is correctly separated from fixed-time implementation of the original flow in abstract \(b\)-Fock space.
- The almost-every-time obstruction for nonsquare-summable squeezing, and the exceptional times \(\pi\mathbb Z\) for constant nonzero squeezing, are correct.

### Minor assumption clarification

At the originally inspected line 517, write:

> For the decaying family \(r_n=n^{-p}\), \(p>0\), …

Alternatively, specify \(p\ge0\) if including the constant case. Negative \(p\) lies outside the preceding uniformly bounded squeezing hypothesis and its smooth-sequence-space conclusion.

### Optional wording clarification

At the originally inspected line 519, “the squeeze map commuting with the same original rotation flow” makes the distinction from merely implementing that flow especially explicit. This is a clarification, not a correction of the mathematics.

## Disposition

The completed audit was sent to the parent with scoped acceptance and the minor \(p>0\) clarification. No original text was edited and no new computation was performed. This archive does not alter the independence claim or the evidence of the earlier independent report.
