# Independent Theory and Calculation Audit

## 0. Audit scope and direct verdict

This file independently audits the thirteen pre-audit Markdown files and all twenty Wolfram scripts in this directory. The audit uses the project convention

$$
\kappa_{\mathrm p}^{2}=8\pi G,
\qquad
g=G+\kappa_{\mathrm p}h+\kappa_{\mathrm p}^{2}k+O(\kappa_{\mathrm p}^{3}),
$$

and keeps fixed-embedding, moving-embedding, finite-wall, fused-horizon, compact, anchored, classical, and quantum claims separate.

**Overall verdict:** the compact BTZ calculations and the selected-mode AdS-Rindler regulator calculations are largely correct within their explicitly declared sectors. The fixed-surface Noether/area expansion, local AdS$_3$ Jacobi calculation, BTZ Brown--York charge, direct Lee--Wald canonical energy, brick-wall orientation, and selected-mode sequential-limit statements are supported by the displayed derivations and fresh Wolfram runs.

The project is nevertheless **not correct as a closed construction at its current advertised claim tier**. There are four decisive problems:

1. **Incorrect:** the claimed full-tower fixed-anchor obstruction in H42 is too strong. A single odd-frequency real quadrature cannot fix both anchors, but different frequencies can cancel at the two anchors. Therefore one does not have to delete every odd frequency. The natural fixed-anchor space is a constrained mode-sum subspace, not the direct sum of individually fixed modes.
2. **Not reproduced:** the current clean audit gives **239/240**, not 240/240. `ads_rindler_inner_wall_endpoint_pullback_check.wl` returns `$Failed` for the exact quadratic $(\chi,u)$ endpoint relation and exits with `11/12 tests passed`.
3. **Overstated:** H36 is a conditional synthesis, not a proved phase-space existence theorem. H1--H6 include the essential polarization, transgression, decay, and representative-existence inputs rather than deriving them. Additional analytic convergence and differentiability assumptions are also needed.
4. **Overstated:** H40's moving-edge script verifies algebraic templates and one compact cancellation, but does not independently derive the complete moving finite-action potential, the full embedding momentum, or an integrable moving-wall phase space.

The safe achieved claim tier is:

> a collection of correct finite-cutoff identities, compact BTZ benchmarks, a selected-mode AdS-Rindler sequential-limit benchmark, and a conditional route to a dressed classical identity; not a closed general horizon phase space, not a full fixed-anchor Virasoro no-go theorem, and not a JLMS/crossed-product construction.

## 1. Audit method and evidence levels

The following evidence levels are used below.

- **Analytic:** derived directly from the displayed definitions without importing the target formula.
- **Exact symbolic:** a nontrivial residual is simplified to zero by a fresh Wolfram run.
- **Numerical/sampled:** finitely many points, finite intervals, or extrapolation probes agree with the target.
- **Algebraic regression:** a finite-dimensional or abstract placeholder model checks an algebraic pattern, not the gravitational realization.
- **Source-audited:** text extraction and rendered pages of the primary paper support the stated source boundary.
- **Conditional:** the conclusion follows only after the listed phase-space, regularity, convergence, or boundary assumptions are supplied.

The twenty scripts were run sequentially with local `wolframscript` because the dedicated xAct verification interface was unavailable in this session. Nineteen scripts completed successfully. One script had one blocked symbolic limit, giving 239 successes and one `$Failed` evaluation rather than a nonzero residual.

Primary sources checked in extracted text and rendered form:

- [Harlow--Wu, Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616);
- [Speranza, Local phase space and edge modes for diffeomorphism-invariant theories](https://arxiv.org/abs/1706.05061);
- [Takayanagi--Tamaoka, Gravity Edges Modes and Hayward Term](https://arxiv.org/abs/1912.01636);
- [Colin-Ellerin--Lin--Penington, Generalized entropy of gravitational fluctuations](https://arxiv.org/abs/2501.08308).

## 2. Decisive incorrect claims

### 2.1 H42 does not prove that the full fixed-anchor phase space is absent

For one real frequency,

$$
f_m(\phi)=A_m\cos m\phi+B_m\sin m\phi,
\qquad a=\frac\pi4,
$$

the endpoint matrix is

$$
M_m=
\begin{pmatrix}
\cos ma&\sin ma\\
\cos ma&-\sin ma
\end{pmatrix},
\qquad
\det M_m=-\sin\frac{m\pi}{2}.
$$

**Correct:** an individual odd-frequency sector contains no nonzero real quadrature that vanishes at both endpoints. The uniform bound

$$
|f_m(a)|^2+|f_m(-a)|^2=A_m^2+B_m^2
$$

for odd $m$ is also correct.

**Incorrect:** it does not follow that every odd frequency must be deleted from a fixed-anchor mode space. The endpoint condition for a sum is

$$
\sum_m f_m(a)=0,
\qquad
\sum_m f_m(-a)=0,
$$

not $f_m(\pm a)=0$ for every $m$. A direct counterexample using only odd frequencies is

$$
f(\phi)=\cos(3\phi)-\cos(5\phi),
$$

for which

$$
f\!\left(\frac\pi4\right)
=f\!\left(-\frac\pi4\right)=0.
$$

Thus, on the $t=0$ domain used in Section 3 of the source note, cross-frequency cancellation defeats the claimed no-go. Subject to continuity of endpoint evaluation in the selected weighted topology, the fixed-anchor space is naturally the kernel of two linear endpoint maps. It is generally a codimension-at-most-two constrained subspace, not the direct sum of per-frequency kernels. If the intended condition is instead that the anchor worldlines remain fixed for every $t$, that is a different and stronger phase-space definition; it must be stated and analysed separately rather than inferred from the $t=0$ argument.

The statement should be rewritten as:

> The standard frequency basis is not adapted to the fixed-anchor constraint: no individual odd-frequency real quadrature is tangent to the fixed-anchor domain. A fixed-anchor mode space may nevertheless contain correlated superpositions of even and odd frequencies. Its construction requires a weighted topology in which endpoint evaluation is continuous, followed by restriction to the kernel of the two endpoint maps.

This correction is required in:

- `AdS-Rindler finite mode space and anchor obstruction.md`, Sections 4--5;
- `draft.md`, Section 11.3 and the final claim status;
- `expanded formulas.md`, Section 12.5;
- `regulated horizon phase space theorem.md`, Section 8;
- `formula verification ledger.md`, H42 and the current summary;
- `README.md`, `TODO.md`, and `Drafts.md` wherever the full-tower obstruction is called closed.

### 2.2 The two-mode matrix is typeset incorrectly

The fresh script output is

$$
\mathcal J^{(2)}\simeq
\begin{pmatrix}
2.66666666666667&-1.99336768791636\,i\\
1.99336768791636\,i&2.97142857142857
\end{pmatrix},
$$

with numerical eigenvalues

$$
\{4.81823112585172,\ 0.819864112243516\}.
$$

The current Markdown has commas before `i`, and one displayed eigenvalue list contains a doubled comma. These are definite transcription errors rather than convention choices.

### 2.3 The recorded 240/240 completion status is false for the fresh run

`ads_rindler_inner_wall_endpoint_pullback_check.wl` presently reports

```text
k+2h/sqrt(3pi) endpoint = {0, 0, 0, 0, $Failed, 0}
11/12 tests passed
failed tests: {exact k+2h/sqrt(3pi) endpoint component {2, 3}}
```

This is not evidence that the $(\chi,u)$ relation is nonzero. It is evidence that the exact limit was not evaluated within the script's 120-second `TimeConstrained` block. The correct status is:

> Five of the six exact quadratic endpoint relations are freshly reproduced. The $(\chi,u)$ component is computationally blocked in the current script. The target relation remains consistent with the separate endpoint algebra and high-precision full-current checks, but the advertised 12/12 exact pullback regression is not currently reproduced.

Until the check is repaired, `README.md` and the ledger must not say that all twenty scripts pass 240/240.

## 3. Claim-by-claim audit of H01--H42

### 3.1 Conventions, boundaries, and charge organization

| Claim | Verdict | Audit |
|---|---|---|
| H01 | **Correct.** | Signature, coupling, perturbative expansion, and outward-normal conventions are internally consistent. |
| H02 | **Correct.** | The Einstein--Hilbert potential agrees with the inherited sign convention. This audit did not rederive the whole parent article. |
| H03 | **Correct under the stated precise conditions.** | The local Einstein--GHY identity is correct for a fixed non-null timelike embedding, constant subtraction $c_a$, and the declared $K_{ij}$ sign. It does not establish the allowed inner phase space. |
| H04 | **Correct under the stated precise conditions.** | The sum $-C_\infty-C_\epsilon$ follows componentwise only after the boundary source terms are killed or retained consistently and no extra endpoint functional is present. |
| H05 | **Correct.** | $C_a$ is linear in the normal. The ledger correctly warns that the same shortcut does not apply blindly to every term in $\mu_{\xi,a}$. |
| H06 | **Correct for the orthogonal/fixed-cut setup.** | Outer-minus-inner is an induced-orientation conversion. The non-orthogonal cut-normal map is not covered by this entry. |
| H07 | **Correct at finite wall under the listed symmetry and boundary assumptions.** | It does not prove a horizon-limit area theorem. |
| H08 | **Correct only as an explicit benchmark calibration.** | Three-point evaluation for one mode supports $\omega_{\rm p}=-\omega_{2501}$ there. A general algebraic convention map between the two full component formulas has not been proved. |
| H09 | **Correct as a benchmark value.** | The number $3424/15-74\pi$ is not independently derived here from the new finite action. |
| H10 | **Correct structurally; incomplete in project conventions.** | A Hayward term and area--boost pair are supported by the primary literature. The complete initial/final and inner/outer Lorentzian sign table is still absent. |
| H11 | **Correct.** | A Harlow--Wu corner one-form and a Hayward action functional are different field-space degrees and must not be identified without a derivation. |
| H12 | **Correct under fixed-wall, field-independent, wall-preserving symmetry assumptions.** | The off-shell Cartan identity is sound. The on-shell outer-minus-inner law remains conditional on source, flux, and joint control. |
| H13 | **Correct for the verified fixed embedding and local AdS$_3$ displacement formulas; conditional in general.** | It is not a general phase-space existence result. |
| H14 | **Correct only for the field-independent linearized gauge vectors used in the algebra.** | The finite-action surface identification and a field-dependent HW choice $v[h]$ require additional work. |

### 3.2 Compact BTZ calculations

| Claim | Verdict | Audit |
|---|---|---|
| H15 | **Correct.** | Background Einstein equation, normals, $K_R$, $K_\epsilon$, and GHY density are freshly reproduced. |
| H16 | **Correct.** | The stationary bulk Noether cut gives the expected $A/(4G)$ after the declared orientation conversion. It is a background normalization only. |
| H17 | **Correct.** | The complete artificial inner Brown--York wall generator tends to zero and must not be called the horizon area charge. |
| H18 | **Correct.** | Varying $r_+$ changes the fixed-wall induced metric, so it is not a Dirichlet tangent. |
| H19 | **Correct as a narrow implication.** | Radial gauge kills the displayed $C_\epsilon$ term. It does not kill Brown--York source work or canonical-pair flux. This distinction agrees with Appendix B.3 of 2501.08308v2. |
| H20 | **Correct.** | The field-space derivative of the local boundary identity gives the displayed canonical-pair flux. |
| H21 | **Correct on the one-parameter fixed-boost family.** | It is a regulator-removal comparison with an $O(\epsilon^2)$ residual, not a finite-wall differentiability theorem. |
| H22 | **Correct.** | The collar-supported vector produces an exact diffeomorphism family, vanishes near the wall, and restores the asymptotic Brown--Henneaux representative. |
| H23 | **Correct for the selected $m=1$ family.** | The outer Brown--York coefficients and the $h^2/k$ split are freshly reproduced. |
| H24 | **Correct under the collar, vacuum, and second-order constraint assumptions.** | The factor of two is the Taylor-coefficient/second-derivative conversion. H25 supplies an independent current check. |
| H25 | **Correct for the declared radial completion class.** | The exact primitive residual vanishes and all four high-precision integrations agree. This does not cover moving walls or altered boundary data. |
| H26 | **Correctly described as sampled evidence.** | The exact reason is diffeomorphism covariance; two 100-digit points are not a global symbolic proof. |
| H27 | **Correct for a fixed cut and fixed boost first jet.** | The symbolic residual confirms the $\tfrac{s}{2}p_{kk}p_{ll}$ obstruction in the project Taylor convention. |
| H28 | **Correct locally under the Fermi-frame assumptions.** | The Jacobi operator, integration-by-parts terms, and $V\mapsto V-v_\perp$ rule are supported. Noncompact endpoint control remains separate. |
| H30 | **Correct for the exact Gaussian-radial collar sector.** | It does not extend to general source-retaining or moving walls. |

### 3.3 AdS-Rindler selected-mode calculations

| Claim | Verdict | Audit |
|---|---|---|
| H31 | **Correct for the declared $a=\pi/4$ geometry.** | Intersection, strip scalings, joint-normal limits, and raw/proper tail conversion are freshly reproduced. The known `Limit::alimv` warnings do not change the returned residuals. |
| H32 | **Correct for the selected fixed-embedding mode and sequential limit.** | The right joint was computed explicitly and the left is inferred by reflection. No moving-joint conclusion follows. |
| H33 | **Correct for the selected mode.** | The endpoint density and the four quadratic area-sector tails are freshly reproduced. This does not establish the integrated area for a general mode sum. |
| H34 | **Not fully proven by the current clean test set.** | The exact wall algebra and high-precision full-current checks support the displayed $\sinh^2\epsilon$ tails. The exact global-to-Rindler pullback has one blocked quadratic component, so the claim must be marked provisionally supported rather than 12/12 exact. The tested correlated paths are examples, not a uniform theorem over all two-parameter limits. |
| H35 | **Correct for the selected fixed embeddings.** | The large-$R$ density and full boundary-layer strip limit are freshly reproduced. |

### 3.4 General theorem, cocycle, moving edge variables, and mode space

| Claim | Verdict | Audit |
|---|---|---|
| H29 | **The symplectic algebra is correct; the gravitational finite-action realization is not explicitly derived.** | $\mathbb k^{\rm FA}$ is defined operationally, while its complete wall and joint expressions are not constructed for general non-Killing $u$. |
| H36 | **Correct only as a conditional proof schema after strengthening the hypotheses; not proved as a general theorem.** | H1--H6 assume the crucial polarization, transgression, decay, and HW representative. One must also assume twice differentiable renormalized outer Hamiltonians, convergence of bulk and surface limits, compatibility of the $\epsilon$-dependent phase spaces, and a defined matter symplectic/boundary sector. Without these, (4.3)/(11.12) is not established. |
| H37 | **Correct for field-independent $v,w$ in the linearized additive model.** | The 4/4 script is an algebraic identity for a generic antisymmetric bilinear form. It does not prove the surface descent, nor the composition law for a field-dependent $v[h]$ or finite noncommuting diffeomorphisms. |
| H38 | **Correct.** | The source explicitly derives the radial-gauge boundary-form zero for its setup and phrases the broader stationary-horizon extension as an expectation under uniform decay. |
| H39 | **Correct within the trace-Legendre family.** | The Neumann identities, fixed-boost residual, and invariant divergence of the raw modes are freshly reproduced. This is not a no-go theorem for all mixed polarizations. |
| H40 | **Kinematic formulas are structurally correct; the advertised verification tier is too strong.** | Speranza supports the pulled-back bulk potential and its on-shell $\int(\theta+i_\chi L)+\int Q_\chi$ form; Takayanagi--Tamaoka supports the area--boost pair in the relevant corner setup. The 10/10 script itself mostly checks linearity, product rules, antisymmetry, and a cancellation engineered by $I_{{\rm corner},\zeta}=I_{\rm fuse}-W_\zeta$. It does not derive the complete boundary-improved project potential from a moving action or prove integrability. |
| H41 | **Correct for the compact examples and selected AdS-Rindler normal solution.** | Compact Jacobi invertibility and the two smooth glued pure-diffeomorphism representatives are valid. The selected noncompact normal solution is proper at both anchors. A global full Gaussian-null extension and a weighted infinite-mode theorem remain unproved. |
| H42 | **Partly correct and partly incorrect.** | The individual-frequency determinant, odd-mode lower bound, and numerical two-mode matrix are correct. The full fixed-anchor no-go is false because cross-frequency cancellations exist. The script also does not test positivity explicitly and its “tail” tests only check finite scaled probes for absence of indeterminate values; they are not analytic $e^{-2|u|}$ estimates. |

## 4. Audit of the main theoretical synthesis

### 4.1 Finite-action multi-wall descent

**Verdict: correct under the following precise conditions:** every wall is fixed and non-null; its outward normal and induced orientation are used consistently; the action is differentiable on the selected boundary polarization; the symmetry vector is field independent and preserves the wall and its data; and non-orthogonal or moving-joint terms are retained.

The project correctly distinguishes:

- the local Einstein--GHY identity from the integrated orientation conversion;
- the Harlow--Wu one-form $C_a$ from a Hayward scalar action;
- radial gauge from a boundary condition;
- zero $C_a$ from zero Brown--York canonical-pair flux;
- the artificial wall Brown--York generator from the fused bulk Noether/area corner.

These distinctions are among the strongest parts of the project and should be preserved.

### 4.2 Fixed-surface Noether charge versus geometric area

**Verdict: correct for the fixed cut; correct in a moving gauge only after the geometric displacement and endpoint terms are included.**

The pointwise expansion

$$
[\lambda^2]
\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)
=\frac{s}{2}\int_\gamma\sqrt q\,p_{kk}p_{ll}
$$

is supported. The local AdS$_3$ area split and the fact that the second-order embedding displacement drops out by background extremality are also correct. What is not automatic is the global existence of a representative satisfying all normal-plane conditions while preserving the declared boundary phase space.

### 4.3 Canonical energy and the selected compact mode

**Verdict: correct for the selected collar mode.**

The Brown--York surface representation places the quadratic coefficient in the $k$-linear term, but the off-shell $k$ identity plus the second-order equation converts it to the pure-$h$ current. The independent Lee--Wald integral reproduces

$$
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
=\frac{\pi^2(r_+^2+1)}{r_+}.
$$

The note is right not to infer vanishing canonical energy from the vanishing $h^2$ Brown--York coefficient.

### 4.4 H36 is a conditional implication, not a completed general phase space

The theorem becomes defensible only in the following form:

> Let a family of regulated solution spaces $\mathcal P_\epsilon$ be given such that the renormalized Hamiltonians and symplectic forms are twice differentiable, all bulk and boundary integrals converge in a common topology, the $\epsilon\to0$ maps between the phase spaces are controlled, the Brown--York boundary data form an integrable Lagrangian polarization, the wall/joint descent and source-to-corner transgression have the stated limits, the first- and second-order constraints hold, and a compatible extremal/HW representative exists on every orbit. Then the displayed outer-area-canonical-energy identity follows.

This is mathematically useful, but it is not a construction of those hypotheses. For matter, $\mathcal M_\xi^{(2)}$ must be defined from a specified matter action, symplectic current, wall data, and normalization; otherwise the theorem should be stated only for vacuum Einstein gravity.

### 4.5 Moving embeddings and edge phase space

Speranza's primary derivation distinguishes the exact pullback potential

$$
\theta'=X^*\theta[\phi;\delta\phi+\mathcal L_\chi\phi]
$$

from its on-shell rewrite

$$
\Theta'=\int_\Sigma(\theta+i_\chi L)+\int_{\partial\Sigma}Q_\chi.
$$

This supports the project's refusal to append a bare $Q_\chi$ after already covariantizing the potential. It does not by itself prove that every project-specific GHY, counterterm, Harlow--Wu, and joint improvement is correctly captured by the short formula $\Theta_{{\rm p},X}=\Theta_{\rm p}[g;\Delta_Xg]$. That requires varying the complete moving action, including the embeddings, normals, corner locations, and shape derivative of every boundary density.

Likewise,

$$
P_j^{\rm wall}=D_i\Pi^i{}_j,
\qquad
P_\perp^{\rm wall}=-\Pi^{ij}K_{ij}
$$

is correctly the contribution obtained by integrating the Brown--York source term by parts. It should not be called the complete embedding momentum until bulk shape-variation, counterterm, endpoint, and constraint pieces have been assembled.

The compact matched-corner formula is algebraically true because

$$
W_\zeta+I_{{\rm corner},\zeta}
=\frac\zeta2I_{\rm fuse}
+\left(1-\frac\zeta2\right)I_{\rm fuse}
=I_{\rm fuse}.
$$

It is a consistent redistribution of the same comparison functional between wall and corner polarizations. It is not an independent finite-$\epsilon$ Neumann construction.

## 5. Calculation and regression audit

### 5.1 Fresh execution summary

| Class | Fresh result | Meaning |
|---|---:|---|
| Nineteen completed scripts | 228/228 within those scripts | Their declared tests pass. |
| Endpoint pullback script | 11/12 | One exact symbolic limit returned `$Failed`. |
| Total | 239/240 | The directory-wide 240/240 statement is not currently reproducible. |

The failure is computationally blocked, not a demonstrated nonzero residual. The audit therefore does not reject the target endpoint relation; it rejects the claim that it is presently verified by a clean 12/12 exact regression.

### 5.2 Tests whose evidence tier is lower than their prose description

1. `finite_action_gauge_cocycle_check.wl` proves a quadratic-form identity in a generic four-dimensional vector space. It does not verify a gravitational surface form.
2. `moving_embedding_edge_algebra_check.wl` verifies definitions and product rules. Its combined-gauge check is the tautology $\Theta(\mathcal L_wg)+\Theta(-\mathcal L_wg)=0$ in a linear placeholder.
3. `ads_rindler_mode_space_check.wl` checks that scaled densities at $u=\pm15$ are finite; it does not compute the exact asymptotic coefficient or an integrable dominating bound. It checks real eigenvalues, not positivity, although the printed two eigenvalues happen to be positive.
4. `btz_collar_einstein_check.wl` is explicitly sampled at two points and one $r_+$; its prose correctly relies on diffeomorphism covariance for the exact identity.
5. `ads_rindler_inner_wall_current_check.wl` uses finite Richardson and correlated-limit probes. These support the selected limit prescription but do not cover arbitrary correlations between wall and anchor cutoffs.

### 5.3 Recommended regression repairs

1. Replace the time-constrained direct limit for the blocked $(\chi,u)$ component by an analytic $z=e^{-|u|}$ series at fixed $\chi>0$, then verify the first nonzero coefficient of

   $$
   k_{\chi u}+\frac{2}{\sqrt{3\pi}}h_{\chi u}
   $$

   vanishes before taking $z\to0^+$.
2. Make every blocked evaluation fail with a distinct `Blocked` status rather than being counted with Boolean failures.
3. In the mode-space script, add explicit tests

   $$
   \min\operatorname{spec}\mathcal J^{(2)}>0
   $$

   and exact/controlled limits of $e^{2|u|}\mathcal j_{mn}(u)$.
4. Add a fixed-anchor superposition test, for example $\cos3\phi-\cos5\phi$, so the per-mode determinant is not again mistaken for a full-space no-go.
5. For H40, replace placeholder linearity tests with a variation of the complete finite action on a moving finite BTZ wall and an explicit check of all bulk, GHY, counterterm, endpoint, and Hayward terms.

## 6. Required edits by file

### Priority 0: correct false conclusions

- `AdS-Rindler finite mode space and anchor obstruction.md`: replace the full-tower no-go by the per-frequency obstruction and formulate the constrained mode-sum problem.
- `draft.md`, `expanded formulas.md`, `regulated horizon phase space theorem.md`, `README.md`, `TODO.md`, `Drafts.md`, and H42 of `formula verification ledger.md`: propagate the same correction.
- Correct the two-mode matrix and eigenvalue punctuation.

### Priority 1: correct verification status

- Replace every current `240/240` statement by the fresh 239/240 status and identify the blocked component.
- Downgrade H34 from fully exact pullback verification to “five exact components plus independent exact wall algebra and high-precision full-current support” until the script is repaired.
- Distinguish exact residuals, sampled checks, numerical extrapolations, and finite-dimensional algebraic regressions in the final summary.

### Priority 2: narrow the theorem language

- Rename “Conditional finite-action horizon theorem” to “Conditional finite-action implication” unless the analytic phase-space and convergence assumptions are added and proved.
- State the main identity for vacuum Einstein gravity. Add matter only after defining $\mathcal M_\xi^{(2)}$ and the matter boundary/symplectic data.
- State H37 only for field-independent linearized gauge vectors; isolate the field-dependent $v[h]$ extension as a separate target.
- In H40, call $P_j^{\rm wall},P_\perp^{\rm wall}$ the Brown--York wall contribution to embedding momentum, not the total embedding momentum.

### Priority 3: construct the remaining objects

1. Choose a weighted sequence/function space for the AdS-Rindler tower in which both endpoint evaluations are continuous.
2. Define the fixed-anchor phase space as the kernel of the two endpoint maps and construct a basis adapted to that kernel.
3. Evaluate the full finite-action $\Upsilon$ form on that constrained space or on a genuinely moving-anchor extended space.
4. Derive an explicit non-collar finite-$\epsilon$ polarization and test its compatibility with the smooth HW representatives.
5. Vary the complete moving action rather than only covariantizing algebraic placeholders.

## 7. Recommended replacement for the project status

The current README status should be replaced by a statement of the following form:

> The compact BTZ background, collar-mode outer charge, direct canonical energy, fixed-surface Noether/area expansion, and selected-mode AdS-Rindler sequential regulator accounting are verified at their stated local or finite-mode tiers. A conditional fixed-embedding identity is available assuming a differentiable Lagrangian polarization, uniform regulator control, wall-to-corner transgression, and existence of a compatible extremal/HW representative. The moving-edge formulas currently provide a classical kinematic template and a compact algebraic matching, not a complete moving finite-action phase space. For the AdS-Rindler tower, individual odd-frequency modes are not fixed-anchor tangents, but cross-frequency fixed-anchor superpositions exist; a weighted constrained mode space and its full finite-action form remain to be constructed. The fresh regression status is 239/240 because one exact endpoint component is computationally blocked.

## 8. Final claim tier

**Verified:** compact BTZ geometry and orientations; background bulk Noether area normalization; vanishing artificial-wall generator; fixed-boost one-parameter transgression; collar finite-wall triviality; selected $m=1$ outer Brown--York coefficient; selected-mode canonical energy and radial-completion independence; fixed-cut Noether/area obstruction; local AdS$_3$ Jacobi and displacement algebra; selected-mode AdS-Rindler regulator geometry, joint zero, area tails, inner-wall algebra, outer strip, and sequential-limit behavior, subject to the one blocked exact pullback component stated above.

**Correct only conditionally:** multi-wall Hamiltonian reduction; the dressed area-plus-canonical-energy identity; surface identification of the gauge-completion cocycle; extremal/HW existence on a declared global phase space; moving-wall and moving-joint application of the complete project finite action.

**Incorrect:** the inference from an individual odd-frequency endpoint obstruction to absence of a full fixed-anchor mode-sum phase space; the claim that all twenty fresh regressions currently pass 240/240; the malformed printed two-mode matrix/eigenvalue list.

**Not verified:** a universal inner-wall polarization; full field-dependent HW cocycle; complete moving-action embedding momentum; integrability of generic normal translations; weighted infinite-mode bounds; a complete fixed- or moving-anchor $\Upsilon_{mn}$; full canonical-energy positivity; matter completion; quantum edge Hilbert space; von Neumann algebras, crossed products, or quantum/nonperturbative JLMS.

## 9. Incremental audit of the post-audit additions

**Audit date:** 2026-08-13

This section audits the material added after Sections 0--8 were written. It
does not silently rewrite the earlier snapshot. Where this section gives an
updated regression result or verdict, the newer statement supersedes the
corresponding statement above.

### 9.1 Direct verdict

**The new material repairs the earlier fixed-anchor no-go error and supplies
several correct finite-dimensional, stationary, or abstract symplectic
constructions. It does not prove the new README claim that the project is
closed as a classical finite-action theorem on the projected diagonal
sector.**

There is one definite mathematical defect in the stated spectral theorem:
the ordinary Fourier truncation used in H51 does not preserve the fixed-anchor
subspace. There are also three decisive proof gaps:

1. the finite data used to reconstruct the switching anomaly do not prove the
   universal fifth-jet lemma;
2. the explicit diagonal regulator schedule is conditional on a uniform
   remainder estimate that has not been derived;
3. the added cotangent edge curvature cancels the obstruction by construction,
   but has not been derived from the declared gravitational finite action or
   identified with a geometric embedding/anchor phase space.

Consequently H53 is presently a **conditional classical identity in a selected
auxiliary symplectic completion**, not a constructed finite-action theorem.

### 9.2 Scope and fresh evidence

The incremental audit re-read all 20 Markdown files and all 48 Wolfram scripts
in this directory, including the response to the first audit, H43--H60 in the
ledger, the revised theorem/draft/status files, and the new moving-boundary,
spectral-edge, weak-collar, and HW notes.

Fresh calculation evidence:

| Check | Fresh result | Evidential meaning |
|---|---:|---|
| All 48 `*.wl` scripts with their default settings | 48/48 processes exited 0 | Every declared default test completed without a reported failure. |
| Repaired endpoint-pullback script | 12/12 | The former blocked component is now exact; the earlier 239/240 status is superseded. |
| Ten nondefault proper-transition probes | 10/10 branches, each 5/5 | The ten stated diagonal anomalies were freshly recomputed from the proper-profile integrals. |
| Seven nondefault proper-bilinear probes | 7/7 branches, each 5/5 | The seven extra cross anomalies hardcoded in the rank-audit script were freshly recomputed. |
| Optional full residue scan in the high-frequency script | not run | The default script explicitly prints that the residue-class layer limits were not run. |

Passing these regressions verifies the identities actually evaluated by the
scripts. It does not by itself prove the functional-analytic completion,
uniform regulator estimates, existence of a nonlinear solution family, or
action-derived edge phase space.

### 9.3 Verdicts on H43--H60

| Entry | Verdict | Precise scope or defect |
|---|---|---|
| H43 | **Correct under the declared stationary finite-dimensional assumptions.** | The smooth nonuniform BTZ collar is locally exact Einstein, and the Brown--York source has the stated primitive. The family is generated by proper diffeomorphisms that vanish at infinity, so it is a useful moving-section benchmark but not a nontrivial radiative phase space or a proof of the general H0$_X$--H6$_X$ package. |
| H44 | **Correct for the local kernel bound; not fully verified for the residue-class asymptotics.** | The exact two-frequency kernels and endpoint factorization support a polynomial bound and continuity for $s>5/2$. The eight-periodic diagonal profiles are entered as derived formulas and tested internally; the default script does not derive them from the exact kernel or run its optional residue scan. |
| H45 | **Correct as a necessary kinematic statement, not sufficient.** | Moving endpoint values require additional anchor/embedding data, but this alone does not produce a differentiable action, a Hamiltonian normal translation, or a convergent phase space. |
| H46 | **Correct as a finite-mode right-end linear benchmark.** | It is not an infinite-mode or two-ended existence theorem. |
| H47 | **Correct falsification at the selected finite-mode tier.** | The fresh nonzero finite-wall flux samples disprove automatic polarization for the displayed family. They do not classify every possible boundary condition. |
| H48 | **Correct as finite-mode numerical suppression only.** | The samples support decay for fixed displayed modes; they do not establish the uniform-in-mode estimate required by the diagonal limit. |
| H49 | **Correct for the exact right-end symbolic jet and its displayed degree count.** | Extending the selected $q^2,q^3$ information to a uniform full-tail bound, and transferring it to both ends, remains an analytic assumption unless derived explicitly. |
| H50 | **Correct for the isolated right joint and its displayed degree count.** | It does not prove a combined time-dependent wall-plus-joint polarization. |
| H51 | **Incorrect as written, and otherwise only partially proved.** | The definition of $V_M$ by ordinary Fourier truncation fails to preserve fixed anchors. The finite-rank edge cancellation and the freshly recomputed 21 data are correct. The universal fifth-jet switching lemma, residue-class diagonal limit, and completed spectral theorem are not established by the current artifacts. |
| H52 | **Correct for projector algebra on a chosen finite-dimensional complement; conditional as a gravitational HW theorem.** | $P^2=P$ and the displayed cocycle identities follow from the selected splitting. Independence of off-cut extension, the gravitational surface descent, and the infinite-mode completion are not proved. |
| H53 | **Not proven by the current notes or tests.** | Its regression assigns the desired cancellations and final identity algebraically. It does not derive them by varying the complete gravitational action, and it depends on the unresolved parts of H51, H52, H59, and H60. |
| H54 | **Correct as an abstract pullback and cotangent realization.** | The ambient pullback potential and combined degeneracy $(\mathcal L_wg,-w)$ have the standard extended-phase-space structure. The radial homotopy and cotangent graph cancel a closed finite-rank two-form, but the resulting Darboux variables are nonunique and are not yet derived from geometric anchor, joint, or embedding variables. |
| H55 | **Correct for the stationary wavy-BTZ wall family.** | The normal, induced metric, extrinsic curvature, Brown--York momentum, and source primitive are exact in that family. A time-dependent/nonorthogonal combined family remains open. |
| H56 | **Correct for the isolated nonorthogonal joint.** | The area--boost canonical pair and residual check are exact in the displayed geometry; this does not by itself provide the complete moving-boundary action. |
| H57 | **Correct endpoint algebra and trace threshold.** | Endpoint factorization and continuity for $s>5/2$ are supported. Treating the introduced endpoint momentum as the physical anchor momentum still requires an action derivation. |
| H58 | **Correct at the normal-value solver tier.** | Adding Jacobi homogeneous solutions solves the two endpoint normal-value conditions. It is not yet a full strong HW vector with all jets, global regularity, and phase-space compatibility. |
| H59 | **Correct only conditional on the stated uniform estimate.** | The schedule script substitutes $L=M^{10}$, $\epsilon=M^{-10}$, and $R=M^{30}$ into assumed error monomials. It does not derive the decisive uniform $(m,n,L)$ remainder bound or constants independent of the modes and cutoff. |
| H60 | **The trace threshold and time-conjugation algebra are correct; the weak-collar theorem and symplectomorphism claim are not proved.** | The graph norm controls jets only through $|I|\leq1$, whereas the extension uses $j_{ab}$. The isometry of `Ext` is true by definition of the target norm. Continuity of the gravitational finite-action forms and admissibility of the completed vector fields are asserted, not derived. |

### 9.4 Definite H51 spectral-domain error

The note calls $P_{\leq M}$ the real Fourier projection and writes

$$
V_M=P_{\leq M}\mathcal H_A^s,
\qquad
V_M\subset V_{M+1},
\qquad
f_M=P_{\leq M}f.
$$

Ordinary Fourier projection does not preserve the two endpoint constraints.
A concrete counterexample is

$$
f=P_A\cos5\phi
=\cos5\phi-\frac1{\sqrt2}\cos4\phi.
$$

It obeys

$$
f(\pi/4)=f(-\pi/4)=0,
$$

so $f\in\mathcal H_A^s$. But ordinary truncation at $M=4$ gives

$$
P_{\leq4}f=-\frac1{\sqrt2}\cos4\phi,
\qquad
(P_{\leq4}f)(\pm\pi/4)=\frac1{\sqrt2}\neq0.
$$

Thus $P_{\leq4}f\notin\mathcal H_A^s$, and (2.1) is false with the stated
definition. The phrase “with the two complement directions treated as in the
adapted Riesz basis” does not repair the theorem because it leaves the actual
operator undefined and conflicts with calling it the ordinary Fourier
projection.

**Required repair.** Define an adapted partial-sum operator $Q_M$ explicitly,
for example as the coordinate projection onto the first $M$ vectors of a
proved Riesz basis of $\mathcal H_A^s$. Then prove

$$
Q_M\mathcal H_A^s\subset\mathcal H_A^s,
\qquad
Q_MQ_{M+1}=Q_M,
\qquad
Q_Mf\to f\quad\text{in }H^s,
$$

and replace every occurrence of $P_{\leq M}$ in the theorem, regulator map,
and diagonal argument by $Q_M$. Merely writing $P_A P_{\leq M}$ is not enough
unless nestedness, uniform boundedness, and strong convergence are also proved.

### 9.5 What the H51 anomaly calculations do and do not prove

The fresh nondefault runs confirm the exact transition-anomaly values

$$
0,-\frac{11}{6},-5,-\frac{19}{6},0,
\qquad
-1,-\frac56,0,-\frac{29}{6},-\frac{35}{3},
$$

for the ten declared cosine/sine probes, and confirm the seven selected cross
values used to complete the rank to 21. Therefore the finite data table is no
longer merely historical ledger evidence in this audit.

However, `ads_rindler_transition_fifth_jet_rank_audit.wl` inserts the seven
cross values as constants and solves a 21-parameter reflected fifth-jet
ansatz. Unique reconstruction inside that ansatz proves only

> if the full anomaly belongs to this 21-dimensional endpoint-jet class, then
> its coefficients are the displayed ones.

It does not prove the antecedent. The current derivative-counting prose does
not derive the general two-frequency transition distribution, show that no
bulk term survives, or establish a uniform endpoint distributional limit.
Those are the missing steps in the universal proper-transition lemma.

Likewise, the high-frequency script contains exact symbolic two-frequency
kernels, but the residue-class diagonal profiles are entered as separate
closed formulas. Its default nine tests integrate and compare those profiles;
they do not derive the profiles from the kernels. The optional full residue
scan that attempts that link is explicitly disabled by default and was not
completed in this audit.

**Required repair.** Derive the general regulated anomaly
$A_{mn}^{(L)}$ before specializing to finitely many modes, prove its
distributional endpoint limit, and obtain the fifth-jet functional and the
eight residue classes from that one expression. The rank reconstruction can
then remain as an independent check rather than serving as the proof.

### 9.6 H59 does not prove its uniform regulator estimate

The schedule

$$
L_M=M^{10},
\qquad
\epsilon_M=M^{-10},
\qquad
R_M=M^{30}
$$

does suppress the monomials entered in
`ads_rindler_explicit_schedule_check.wl`. This proves the elementary implication

$$
\text{uniform estimate (2.3)/(15.1)}
\quad\Longrightarrow\quad
\text{the displayed schedule makes the error vanish}.
$$

It does not prove the estimate itself. In particular, no current script or
derivation establishes a cutoff-independent constant in a bound of the form

$$
\left|B_{mn}^{(L)}-B_{mn}^{\rm local}-A_{mn}\right|
\leq
C(1+m+n)^8\frac{1+\log L}{L^2}
$$

for all relevant $m,n,L$. A finite derivative count and identification of the
slowest rational tail do not control every scaled-layer term, all profile
derivatives, or the uniform constant.

**Required repair.** Produce either an exact symbolic $(m,n,L)$ kernel or a
term-by-term scaled-layer estimate with an explicit integrable majorant and a
constant independent of $m,n,L$. The schedule script should then test the
derived residual, not only the final exponents.

### 9.7 H53--H54: abstract cancellation versus a gravitational edge phase space

For any closed finite-rank two-form

$$
F=\frac12F_{IJ}(a)\,da^I\wedge da^J,
$$

the radial homotopy formula locally constructs a primitive, and an auxiliary
cotangent pair can be chosen so that its curvature is $-F$. H54 and the
corresponding scripts correctly implement this abstract symplectic fact.

That fact is not yet a derivation of the physical edge sector. The added
variables have not been obtained by varying the original bulk plus GHY,
counterterm, Hayward, and embedding action; their gauge transformations and
moment maps have not been identified; and no boundary condition has been
shown to make the relevant normal translations Hamiltonian. The extended
phase-space literature supports the use of embedding/coordinate fields and
the complete pullback potential, but it does not imply that an arbitrary
obstruction-dependent Darboux pair is the unique or physical gravitational
completion. In particular, Speranza's extended-phase-space analysis states
that normal surface translations require boundary conditions and are not
generically Hamiltonian; classifying such boundary conditions is a separate
problem. See [Speranza, *Local phase space and edge modes for diffeomorphism-invariant theories*](https://arxiv.org/abs/1706.05061) and [Donnelly--Freidel, *Local subsystems in gauge theory and gravity*](https://arxiv.org/abs/1601.04744).

`classical_subregion_identity_algebra_check.wl` does not close this gap. It
sets the embedding contribution equal to minus the metric cross term, inserts
a vertical term together with its negative, and defines the outer quantity as
area plus energy. The resulting zero residuals are consistency checks of those
assignments, not an independent gravitational derivation.

**Required repair.** Either:

1. write a new extended edge action whose variation produces the declared
   Darboux potential, derive its gauge action and moment maps, and prove
   differentiability and integrability; or
2. state explicitly that the construction is a selected auxiliary symplectic
   completion and downgrade H53 to a conditional identity.

### 9.8 H60 weak-collar defect

The graph norm (5.1) contains

$$
\sum_{|I|\leq1}\|j_I[h]\|^2,
$$

whereas the extension (5.2) contains the second normal jet $j_{ab}$. As
written, the norm does not control all data used by `Ext`. Defining the target
norm by

$$
\|v\|_{\mathscr C^s}:=\|\operatorname{Ext}^{-1}v\|_{\mathscr J^s}
$$

makes `Ext` an isometry tautologically, but does not prove that the completion
is a space of admissible spacetime vector fields or that the CPS/finite-action
bilinear forms extend continuously to it.

The time-covariant projection identity

$$
P_A(t)=U_tP_A(0)U_{-t}
$$

is correct algebraically. Calling $U_t$ a symplectomorphism additionally uses
the unresolved convergence, edge-action, and anchor-momentum claims; the
finite trigonometric regression does not prove those analytic and variational
inputs.

**Required repair.** Include every jet used by `Ext` in the graph norm, define
a physical Sobolev collar space independently of `Ext`, prove a bounded
extension into that space, and establish continuity of each bulk, wall, joint,
and edge bilinear form. Only then take the completion and prove time covariance
of the resulting total form.

### 9.9 Additional file-level corrections

#### Priority 0: theorem statements

- `projected spectral edge completion.md`: replace the false ordinary Fourier
  domain by a precisely defined adapted partial-sum system and re-prove the
  diagonal theorem with it.
- `regulated horizon phase space theorem.md`, `README.md`, `draft.md`,
  `expanded formulas.md`, `TODO.md`, and `Drafts.md`: remove the statement that
  H53 closes the classical finite-action theorem. Replace it by the conditional
  claim tier in Section 9.10 below.
- H59 in `formula verification ledger.md`: distinguish the verified exponent
  substitution from the unproved uniform estimate.
- H60 in the ledger and `explicit regulators weak collar and time covariance.md`:
  repair the jet norm and downgrade the weak-collar and symplectomorphism claims
  until the continuity proof exists.

#### Priority 1: evidence labels

- H51 in `formula verification ledger.md`: state that the 21 anomaly values are
  freshly reproducible, but that the universal fifth-jet ansatz and optional
  residue scan are not proved by the default regression.
- H52: label the cocycle script as finite-dimensional splitting algebra, not a
  gravitational surface-descent computation.
- H53: label `classical_subregion_identity_algebra_check.wl` as a definitional
  consistency check.
- H54: distinguish “abstract cotangent realization” from “action-derived
  geometric edge sector.”
- H43 and H55: state explicitly that the successful families are stationary
  and locally diffeomorphic to BTZ and carry no nontrivial outer charge.

#### Priority 2: internal consistency and notation

- `AdS-Rindler finite mode space and anchor obstruction.md`: reconcile the
  opening statement that the infinite form remains to be constructed with the
  later H51 claim; after this audit, the correct status is still conditional.
- `AdS-Rindler anchor regulator.md`: replace the reference to “raw constant
  anchor tails (5.2)” by “vanishing corrected raw tails”; (5.2) is no longer a
  constant-tail result.
- `formula verification ledger.md`: remove the control-character corruption in
  the H51 occurrence of $\Theta_{\rm edge}$.
- Define whether every matched corner functional is part of the varied action
  or only a comparison representative. Do not use the latter as evidence for
  action differentiability.

### 9.10 Recommended replacement for the current project status

> The earlier fixed-anchor full-tower no-go has been corrected: the
> fixed-anchor space is a codimension-two Sobolev kernel, and the bounded
> projection and finite-mode endpoint algebra are explicit. Stationary moving
> BTZ walls, an isolated nonorthogonal joint, normal-value HW solvers, and
> finite-rank cotangent cancellation provide correct controlled benchmarks.
> All 48 default Wolfram scripts currently pass, and the 17 nondefault anomaly
> branches used in H51 have been freshly reproduced. A complete classical
> finite-action theorem is nevertheless not established. The stated spectral
> truncation does not preserve fixed anchors; the universal fifth-jet lemma and
> uniform diagonal regulator estimate remain unproved; the weak HW collar lacks
> a complete norm/continuity construction; and the auxiliary edge pairs have
> not been derived from a differentiable gravitational edge action. The current
> result is therefore a conditional classical identity plus finite-dimensional,
> stationary, and abstract symplectic benchmarks, not a closed continuum
> subregion phase-space theorem.

### 9.11 Updated final claim tier

**Verified:** the H42 correction and bounded fixed-anchor projection; the
repaired 12/12 endpoint pullback; all declared default script tests; all 17
nondefault anomaly values; the controlled stationary H43/H55 BTZ families;
the isolated H56 joint; H57 endpoint factorization and trace continuity;
H58 normal-value solver; the H54 ambient pullback and abstract radial-homotopy/
cotangent cancellation; the algebraic time-conjugation of the fixed-anchor
projection.

**Assumptions required:** existence of a common twice-differentiable nonlinear
solution family; an adapted nested spectral basis with uniformly bounded
partial sums; the universal fifth-jet transition lemma; uniform regulator
error bounds; continuity of the complete finite-action form on a correctly
defined weak HW collar; an action-derived edge/anchor sector with Hamiltonian
normal translations; compatibility of the field-dependent HW section with the
completed phase space.

**Incorrect as written:** H51's ordinary Fourier definition of $V_M$ and its
nested fixed-anchor claim; the README/TODO/ledger statement that H53 already
closes the classical finite-action theorem; treating the H59 exponent script
as a proof of its uniform estimate; treating the H60 pullback norm as an
independent extension theorem.

**Not verified:** the universal switching distribution; the optional exact
residue-class scan; the uniform diagonal continuum limit; a physical
action-derived realization of the added edge pairs; generic normal-translation
integrability; a complete field-dependent HW cocycle; a time-dependent combined
wall/joint family; positivity of the full canonical energy; matter completion;
quantum edge Hilbert spaces or operator-algebraic JLMS.
