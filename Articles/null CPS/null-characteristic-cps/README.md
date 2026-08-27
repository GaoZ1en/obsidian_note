# Null Characteristic Covariant Phase Space

## Direct Verdict

The original sheet-constraint result remains valid and has not been weakened. In addition, the radiative quantization chain now closes on one explicit benchmark:

$$
M=\mathbb R^{1,1}_{t,z}\times S^2_R,
$$

with a fixed $U(1)$ Chern sector, fixed $\ell=0$ electric flux for the main Fock representation, matched finite-rectangle $H^1$ characteristic data, and the declared finite-endpoint/no-null-infinity-flux policy. This is a stationary ultrastatic product background, not $3+1$ Minkowski spacetime.

For every $\ell\geq1$, the Maxwell action reduces to two gauge-invariant massive scalar masters, the Bessel/Riemann formula gives a bounded Goursat inverse, the reduced characteristic form is weakly nondegenerate, global stationary modes are normalized on the complete two-sheet cross, and the resulting CCR/Fock, Hamiltonian, Wightman, Peierls and modewise symplectic-composition statements are explicit.

The general curved-background bulk reconstruction claim remains conditional. The benchmark theorem does not turn sheet transport integration into a generic Maxwell Goursat theorem.

For source-free \(3+1\)-dimensional $U(1)$ Maxwell theory on the fixed product double-null diamond

$$
D=[0,U]_u\times[0,V]_v\times S,
\qquad
ds^2=-2\,du\,dv+q_{AB}dx^A dx^B,
$$

the action and Lee--Wald current determine the characteristic flux without adding a corner oscillator. The principal sheetwise radiative profiles are

$$
F_{vA}|_{N_+},\qquad F_{uA}|_{N_-},
$$

but this pair is not complete double-null characteristic data. The constraint-complete gauge-invariant field-strength data are

$$
\mathcal X_F=(r_A,p_A;E_0,b^0_{AB}),
\qquad
r_A=F_{vA}|_{N_+},\quad p_A=F_{uA}|_{N_-},
$$

where $E_0=F_{uv}|_{S_0}$ and $b^0_{AB}=F_{AB}|_{S_0}$ are shared corner integration data. Indeed, the nonzero source-free fields $F=E_c\,du\wedge dv$ and $F=B_c\,\operatorname{vol}_S$, for nonzero constants $E_c,B_c$, both have $r=p=0$. Thus restriction to $(r,p)$ is not injective. Proper gauge transformations are exactly the gauge directions whose cut charge variation vanishes under the declared endpoint policy.

In the original general product formalism, the proved statement is only that $\mathcal X_F$ parameterizes the sheet data satisfying the Maxwell/Bianchi transport constraints. A bijection with bulk Maxwell solutions requires a Goursat existence-and-uniqueness theorem with the displayed regularity, bundle, corner and endpoint hypotheses. That general step remains conditional. In the declared $\mathbb R^{1,1}\times S^2_R$, fixed-sector, $\ell\geq1$ benchmark, calculations 06--07 supply the missing theorem explicitly in matched per-mode $H^1$ spaces and on the smooth weighted harmonic core.

The candidate corner pair has a qualified positive verdict:

$$
\Omega_{S_0}=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}
$$

is derived after the two null sheets are given independent gauge frames, their longitudinal potentials are integrated by parts, and the diagonal cut gauge group is reduced at the electric-flux matching moment map. It is not an additional universal term in the raw bulk CPS current. It vanishes when $E_0$ is fixed, when the relative frame is fixed, or when one works from the start in one smooth bulk trivialization.

The naive formula

$$
P_X\stackrel{?}{\simeq}(P_{N_+}\times P_{N_-})//G(S_0)
$$

is false as a bulk-composition statement on the unrestricted product. Electric-flux matching is the moment map, but magnetic-curvature and connection/transition compatibility are additional restriction equations, with harmonic and bundle data added when topology requires them. The correct first-pass object is

$$
P_X\simeq \mathcal C_{S_0}/G_{\mathrm{diag}}(S_0),
$$

conditional on bulk Goursat reconstruction and regular reduction. Before that analytic identification, $\mathcal C_{S_0}/G_{\mathrm{diag}}(S_0)$ is the formally derived compatible characteristic relation, not a map on the unrestricted product.

## Scope

- original formal layer: fixed product double-null metric with $q_{AB}$ independent of $(u,v)$ and a local contractible cut;
- closed benchmark: $\mathbb R^{1,1}\times S^2_R$ in one fixed $U(1)$ bundle/Chern sector;
- smooth data on finite null segments;
- matched $H^1$ master profiles for the explicit finite-rectangle Goursat theorem;
- no gauge fixing in the action/CPS derivation; Lorenz or generator gauge is used only as an optional reconstruction proof device;
- fixed $\ell=0$ electric flux for the radiative Fock theorem; the optional extended frame--flux representation is separate;
- B1 Weyl/Peierls first, then a global stationary B2 quasifree state pulled back to characteristic data;
- gravity appears only as a comparison.

## Main Result Chain

$$
\text{action}
\longrightarrow
\theta,\omega
\longrightarrow
\text{null pullbacks}
\longrightarrow
\begin{matrix}
\text{sheetwise radiative profiles}\\
+\ \text{shared corner integration data}\\
+\ \text{transport and corner compatibility}
\end{matrix}
\longrightarrow
\text{compatible characteristic relation}
\longrightarrow
\text{gauge reduction}
\longrightarrow
\text{$S^2$ master fields}
\longrightarrow
\text{Bessel Goursat modes}
\longrightarrow
\text{symplectic normalization}
\longrightarrow
\text{CCR/Fock and Hamiltonian}
\longrightarrow
\text{Peierls and symplectic composition}.
$$

## File Map

- `calculations/00-formalism-and-statements.md`: conventions and the theorem/lemma ledger in narrative order.
- `calculations/01-maxwell-double-null.md`: action, Hodge star, Maxwell/Bianchi decomposition, characteristic data and reconstruction.
- `calculations/02-corner-gauge-reduction.md`: cut charges, proper versus charged gauge, relative frames, and the corner pair.
- `calculations/03-composition-and-associativity.md`: corrected reduction formula and multi-segment associativity.
- `calculations/04-general-null-cps.md`: abstraction extracted only after Maxwell.
- `calculations/05-gravity-comparison.md`: bounded Maxwell--gravity comparison.
- `calculations/06-s2-harmonic-master-reduction.md`: action-derived exact/coexact reduction and the two radiative masters.
- `calculations/07-characteristic-mode-reconstruction.md`: Bessel Goursat theorem, data dictionary and local/global modes.
- `calculations/08-symplectic-mode-normalization.md`: weak nondegeneracy, complete-cross normalization and symplectic transform.
- `calculations/09-canonical-and-fock-quantization.md`: Weyl algebra, stationary $J_X$, Fock space, Hamiltonian and correlators.
- `calculations/10-peierls-and-propagator-check.md`: causal kernel and gauge-invariant Maxwell Peierls equality.
- `calculations/11-modewise-composition.md`: radiative weak-symplectic composition and associativity.
- `zero-modes-and-superselection.md`: electric flux, magnetic Chern class and optional frame representation.
- `literature/literature-comparison.md`: novelty and source map.
- `verification/CLAIM_LEDGER.md`: `proved / checked symbolically / conditional / conjectural / false` ledger.
- `scripts/`: classical Maxwell, exact master/quantization and numerical kernel regressions.

## Current Phase

The first-paper benchmark chain is closed for the radiative $\ell\geq1$ sectors of $\mathbb R^{1,1}\times S^2_R$. The finite-rectangle Goursat inverse is proved in a matched $H^1$ graph space, stationary mode completeness is proved on the no-null-infinity-flux energy image, and the characteristic inverse equals the Peierls bracket on compact gauge-invariant smearings.

The exact remaining boundaries are:

- a uniform same-order Sobolev theorem for the full angular tower without derivative weights;
- a finite cross has only stationary overlap kernels, not unique global coefficients or a vacuum without outer-extension/global-state input;
- arbitrary curved double-null backgrounds, caustics and non-product cuts;
- large-gauge periodicity of the optional $\ell=0$ relative frame and sums over Chern sectors;
- nonlinear/non-Abelian or gravitational symplectic composition.

None of these boundaries reopens the proved product-background radiative theorem, and none permits integrated sheet transport alone to be advertised as generic bulk surjectivity.

## Claim Boundary

The general lesson is

$$
\text{characteristic null data}
=\text{sheetwise radiative data}
+\text{lower-dimensional corner integration/constraint data}
+\text{compatibility}.
$$

A null surface used only to measure symplectic flux may be described by its flux-carrying variables. A null cross used as characteristic input for bulk reconstruction must retain the corner/Coulomb data and compatibility conditions. On the benchmark, the $\ell\geq1$ corner coefficients are values of the same master solutions and are not extra oscillators; the $\ell=0$ electric flux and magnetic Chern integer are separate sectors. No claim is made for unrestricted completed null data, caustics, non-Abelian reduction, gravity dynamics, sharp sheetwise Hilbert-space factorization, a continuum partial trace, or recovery of B2 cross covariance from regional states.
