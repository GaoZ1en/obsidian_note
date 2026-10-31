# Supplied-text audit of benchmark Section 4

## Scoped verdict

**Section 4 is accepted at its expressly conditional algebraic scope. No sign, factor-of-two, quotient-representation, or counterexample correction is required.** This is not certification of a geometric half-form construction or of a quantum gravity central charge.

This audit was performed only after the independent derivation was completed and reported. The supplied text inspected was [Section 4, lines 199–273](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L199-L273>). No other section, linked parent implementation, linked output, or other reviewer report was read. No source text was edited and no settled calculation was rerun.

## Accepted points

1. **Trace and tensor-density signs.** Equations (4.1)–(4.3) use exactly the trace ordering independently derived. The positive-m crossing coefficient is (-m-j)(2m-j), and the resulting cubic coefficient is -13/6. The density convention at line 240 is a=-lambda relative to rho_m^(a)e_j=(am-j)e_(m+j); it correctly gives -(6lambda^2-6lambda+1)/6.

2. **Dual half versus determinant.** [Lines 244–252](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L244-L252>) fix the occupied-polarization convention and apply the dual sign and square-root factor separately: c_det=-26, sigma_dual-half=-sigma/2, hence the conditional increment +13. The condition identifying and selecting the line is explicit. Nothing here proves that the physical quantization uses it.

3. **Curvature qualification.** [Line 254](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L254>) correctly distinguishes the projection-connection curvature -sigma from the occupied-sea commutator cocycle +sigma. It also correctly prevents the conjugated splitting from being promoted to an intrinsic quotient Chern connection: neither P_-1 nor P_2 commutes with all of sl(2). The separately mentioned relative central-extension connection is an infinitesimal model, not an identification with a geometric determinant.

4. **Projective tangent quotient and finite factor.** [Line 256](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L256>) correctly uses W_-1/h, distinguishes its h action from the unprojected W_2 action, retains the finite det(h) factor, and explicitly denies that g/h is a full adjoint g-module. Equality of the two trace cocycles is not mistaken for equality of equivariant vacua.

5. **Compression counterexample.** Equation (4.5) is correct. The alternative Jacobi triple used at [line 270](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L270>) is also correct:

   (2-3) tau(5,-5) + (3+5) tau(-2,2) + (-5-2) tau(-3,3)
   = (-1)(-112) + 8(0) - 7(0) = 112.

   It is consistent with the independent counterexample 72 at (1,3,-4); these are different valid failures, not discrepant results.

6. **Limits of the conclusion.** [Line 258](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L258>) preserves the necessary distinction between base-space contractibility and a specified infinite-dimensional equivariant determinant/root/connection construction. Its refusal to infer a continuum gravity central charge is appropriate.

## Precision edits recommended, not algebraic corrections

- At [line 252](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L252>), call -13/24 the **cylinder vacuum-energy shift**, not simply the “vacuum energy.” A self-contained replacement is: “Nor should the matching cylinder vacuum-energy shift -13/24, with L_0^cyl=L_0^vac-c/24, be added again as a second correction.” Vacuum-normalized L_0 annihilates the invariant vacuum; the negative constant belongs to cylinder normalization.

- At [line 224](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L224>), “All other diagonal conditions vanish” could more explicitly read: “The trace vanishes for m+n nonzero; negative m follows by antisymmetry, and m=0 gives zero.” This avoids any possible reading that the nonzero negative-m counterparts vanish.

- If an extra sign reminder is desired after [line 254](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L254>), the model dual half-form has curvature +sigma/2 while its commutator cocycle is -sigma/2. The current sentence already fixes the convention, so this is optional clarification.

## Evidence boundary

The formulas were compared against the completed independent analytic derivation and exact finite-crossing checks. The implementation-count and output-provenance statements at [line 272](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L272>) were not independently inspected in this supplied-text audit; acceptance here does not certify the stated 2,904 comparisons or fourteen checks. No assertion is made about the remainder of the benchmark document.
