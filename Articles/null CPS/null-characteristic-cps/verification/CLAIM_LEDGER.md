# Verification and Claim Ledger

| ID | Claim | Status | Assumptions | Evidence | Remaining boundary |
|---|---|---|---|---|---|
| A1 | $g^{uv}=-1$, $det g=-det q$, and the Hodge map (2.2) | checked symbolically | flat product double-null metric, chosen orientation | `maxwell_double_null_checks.wl` | curved (q_{AB}(u,v,x)) not included |
| A2 | action admits $\theta=-\delta A\wedge *F$ and current (1.1) | proved | fixed metric | direct variation | boundary counterterms can change polarization |
| A3 | Maxwell decomposition (3.1) | checked symbolically | product metric | exact component check | none in stated model |
| A4 | Bianchi decomposition (3.2) | checked symbolically | torsion-free cut derivative | exact component check | none in stated model |
| A5 | free data are ($r_A,p_A;E_0,b^0_{AB}$) | proved | smooth finite segments | integrated transport equations | topology adds finite sectors |
| A6 | null pullbacks (5.1)--(5.2) | checked symbolically | orientation manifest | exact wedge/Hodge component check | none in stated model |
| A7 | gauge contraction is a cut exact form | proved + checked symbolically | linearized equations | (d(\epsilon *\delta F)) identity | field-dependent gauge parameters require extra terms |
| B1 | restriction of a bulk solution gives compatible data | proved | smooth solution | Maxwell/Bianchi equations | none |
| B2 | compatible smooth data reconstruct a unique bulk Maxwell field modulo proper gauge | conditional | standard Goursat theorem, fixed bundle and endpoint policy | formal lift and subsidiary constraint argument | completed function-space theorem not supplied |
| B3 | $G^*\Omega_\Sigma=\Omega_{N_+}+\Omega_{N_-}$ | proved conditional on existence of (G) + checked symbolically on an exact polynomial pair | zero side symplectic flux | Stokes, $d\omega=0$, and `maxwell_double_null_checks.wl` | nonzero side flux must be retained |
| C1 | raw CPS needs an added universal corner two-form | false | raw Lee--Wald current | Stokes identity | a changed polarization may expose endpoint terms |
| C2 | generator dressing yields corner potential (3.1) | proved + checked symbolically | compact cut/no cut boundary | integration by parts and transport | future endpoints must be controlled |
| C3 | diagonal cut gauge moment map is $E_+-E_-$ | proved + checked symbolically | Abelian frame action | contraction of corner two-form | outward-normal notation becomes $E_{\perp,+}+E_{\perp,-}$ |
| C4 | reduced pair is $\int\delta E_0\wedge\delta\lambda_{\mathrm{rel}}$ | proved under precise conditions | variable flux, independent frames, zero moment level | reduction of (3.1) | absent in fixed-flux or single-frame sectors |
| C5 | product reduction alone reconstructs the bulk | false | unrestricted product | magnetic/connection counterexample | corrected compatibility locus required |
| D1 | corrected composition is compatibility locus plus diagonal reduction | proved formally | regular smooth Abelian quotient | equations (2.1)--(2.3) | functional-analytic quotient not proved |
| D2 | relative frames compose additively and reduction is associative | proved formally + checked symbolically | Abelian group, regular levels | Section 4--5 and script | non-Abelian singular strata excluded |
| E1 | the combined Maxwell theorem story is absent from prior literature | conditional novelty claim | search through 2026-08-27 | literature matrix | negative search is not exhaustive proof |
| E2 | gravity pair is obtained by replacing flux with area | false | none | different actions and extended sectors | only structural analogy retained |
| F1 | CCR/Peierls bracket matches the characteristic inverse | conjectural target | gauge-invariant compact smearings | not yet executed | required for B1 quantum/algebraic closure |
| F2 | regional marginals determine global cross covariance | false | generic quasifree state | B2 information-loss argument from scalar benchmark | global state input required |

## Executed Check Contract

Run from the project root:

    wolframscript -file scripts/maxwell_double_null_checks.wl

The script was executed with Wolfram Engine 14.3.0 and finished with `ALL CHECKS PASSED`. The independent `xact_verify_residuals` run used the `components` profile, loaded xTensor/xPert/xTras/xCoba without errors, and returned `allZero=true` for the scalarized inverse-metric, Hodge, null-pullback and corner-moment-map residuals. A symbolic pass establishes only the displayed finite algebraic identities; it does not prove Goursat well-posedness, quotient regularity or novelty.

## Verified

- All exact finite component and orientation identities listed as checked symbolically.
- Formal smooth reduction and associativity algebra.

## Assumptions

- Signature $(-+++)$, $ds^2=-2du\,dv+q_{AB}dx^A dx^B$, $q_{AB}$ independent of $(u,v)$.
- Compact cut without boundary or compactly supported cut variations.
- Field-independent $U(1)$ gauge parameters for the charge calculation.

## Not Verified

- Exact Sobolev Goursat isomorphism.
- Weak nondegeneracy of the completed reduced two-form.
- Large-gauge periodicities, nontrivial harmonic sectors and bundle sums.
- Peierls/CCR comparison, non-Abelian extension and gravity.
