# Separately labeled supplied-text audit of the 4D synthesis

## Verdict

**The boundary/corner claims in the supplied synthesis are correct under its stated domain and corner representative.** No sign error, hidden use of the bulk torsion equation in the stated off-shell boundary contract, or incorrect canonical Immirzi dependence was found. Two finite-quotient/notation clarifications below are recommended; they do not alter the theorem after its declared gauge category is retained.

This is **not** a fresh blind review. It began only after the independent [report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_report.md>), [script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37.wl>), [actual 25-check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_output.txt>), and [kernel return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_kernel_return.json>) had been preserved and their paths sent to the parent. The parent then requested this additional supplied-text audit. No parent source was edited and no passed CAS calculation was rerun.

## Text inspected and checks

The inspected text was [the synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md>), Results and Sections 1, 3–6. The parent was concurrently adding qualifications; the final inspected pass re-read lines 197–311, which included the new closed-corner and raw-C qualification. The line locators below refer to that inspected revision and may move after parent edits.

1. **Boundary domain:** [lines 79–86](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L79-L86>) correctly distinguish zero pulled-back torsion from full torsion zero, preserve it under variations, and permit a free internal normal. The weaker Gauss restriction is sufficient by the explicit residual identity, not by an unannounced bulk on-shell restriction.
2. **Off-shell transgression:** [lines 138–164](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L138-L164>) have the correct signs for the bulk split, the Nieh–Yan relation, and the separate wall identity. The cap transgression is retained or treated as endpoint data, rather than erased from a full off-shell action.
3. **Metric/tetrad corner signs:** [lines 178–214](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L178-L214>) agree with the independent arbitrary-first-jet calculation. In particular, the Hodge star is applied before wall pullback and the metric corner retains mixed variations.
4. **Actual boundary descent and nonuniqueness:** [lines 197–245](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L197-L245>) now clearly specify the integration-by-parts corner representative and allow permitted wall-closed alternatives. The independent-connection residual is retained with the correct sign. The Holst residual is \(+T_I\wedge\delta e^I/(\kappa\beta)\), and the corner is negative \(\mathcal E/(2\kappa\beta)\).
5. **Arbitrary source versus Dirichlet:** [lines 247–249](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L247-L249>) correctly distinguish the surviving symmetric extrinsic contorsion correction from the metric Brown–York response. It vanishes for Dirichlet variations without requiring full torsion zero.
6. **Regional equality:** [lines 253–265](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L253-L265>) establish the integrated-potential identity, not merely a bulk-current comparison. The result includes free internal-normal variations.
7. **Finite quotient qualification:** [lines 267–279](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L267-L279>) declare all smooth Lorentz maps and matched proper diffeomorphisms, do not assume a globally preferred coframe, and restrict the symplectomorphism conclusion to a regular common metric reduction. This avoids a claim that every gravitational quotient is a smooth manifold. See the precision suggestion below concerning disconnected gauge-map components.
8. **Exact counterexample:** [lines 283–311](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L283-L311>) match the saved exact family and direct bulk result \(+\mathcal A/(\kappa\beta)\). The lower-wall identity frame avoids cancellation. The canonical corner cancels the raw pairing. The final paragraph correctly states that raw \(C=0\) is not generally the full metric-Dirichlet prescription, but can solve the restricted constant-boundary-frame descent.
9. **Caps:** [line 96](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L96>) and [line 164](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L164>) sufficiently delimit the timelike-wall result and common endpoint treatment. The text does not establish an arbitrary moving-corner or null-boundary action, and does not say it does.

## Precision suggestions sent to the parent

### 1. Keep the metric pullback and quotient separate

At [line 13 and equation (0.1)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L5-L13>), write the equality on coframe space as

\[
\iota^*\Theta_\beta=p^*\Theta_g,\qquad
p(e)=\eta_{IJ}e^I\otimes e^J,
\]

and perform the metric quotient afterward. The map \(\iota:e\mapsto(e,\omega(e))\) itself is auxiliary elimination, not the quotient. The current notation is conventional shorthand but the accompanying sentence conflates these operations.

### 2. Do not infer disconnected finite redundancies from null tangent vectors

At [line 269](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L267-L269>), the equality of potentials proves that infinitesimal Lorentz directions are null. It does not, by that fact alone, decide whether different connected components of the group of maps \(M\to SO_0(1,3)\) are to be identified. The preceding paragraph already **declares all such components proper**, which is enough for the finite correspondence. A precise replacement would be:

> All infinitesimal Lorentz frame directions, including boundary ones, are null. With every component of the full frame-map group included in the declared proper gauge relation, the finite frame fibers are identified; no additional Lorentz edge mode is retained in this polarization.

This is a clarification of the existing domain, not a new assumption or counterexample.

## Audit limits

The determinant/Gaussian and axial-source statements in the Results were outside this boundary reviewer’s independent computation; their separate evidence was not re-audited here. The abstract auxiliary-injectivity proof in Section 2, source calculations in Sections 7–8, and unrelated relative-CPS source files were not read for this supplied-text audit. The verdict above is scoped to the wall/corner, off-shell-domain, and finite-correspondence claims actually inspected.

The two malformed fragment links in the independent report were corrected as formatting-only edits during this audit. No derivation or saved actual result was changed.
