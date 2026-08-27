# Null Characteristic Covariant Phase Space

## Direct Verdict

The sheet-constraint layer of the classical Maxwell calculation closes at the formal smooth level. Bulk reconstruction remains conditional on an explicit analytic Goursat theorem.

For source-free \(3+1\)-dimensional $U(1)$ Maxwell theory on the flat double-null diamond

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

The proved statement is only that $\mathcal X_F$ parameterizes the sheet data satisfying the Maxwell/Bianchi transport constraints. A bijection with bulk Maxwell solutions requires a Goursat existence-and-uniqueness theorem with the displayed regularity, bundle, corner and endpoint hypotheses; that step is currently conditional.

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

- fixed flat double-null metric, with a local contractible cut as the proved algebraic model;
- compact $S^2$ allowed after fixing the $U(1)$ bundle sector and treating its magnetic flux separately;
- smooth data on finite null segments;
- no gauge fixing in the action/CPS derivation; Lorenz or generator gauge is used only as an optional reconstruction proof device;
- classical phase space first; CCR/Peierls and B2 state questions are deferred;
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
\text{gauge reduction and composition}.
$$

## File Map

- `calculations/00-formalism-and-statements.md`: conventions and the theorem/lemma ledger in narrative order.
- `calculations/01-maxwell-double-null.md`: action, Hodge star, Maxwell/Bianchi decomposition, characteristic data and reconstruction.
- `calculations/02-corner-gauge-reduction.md`: cut charges, proper versus charged gauge, relative frames, and the corner pair.
- `calculations/03-composition-and-associativity.md`: corrected reduction formula and multi-segment associativity.
- `calculations/04-general-null-cps.md`: abstraction extracted only after Maxwell.
- `calculations/05-gravity-comparison.md`: bounded Maxwell--gravity comparison.
- `literature/literature-comparison.md`: novelty and source map.
- `verification/CLAIM_LEDGER.md`: `proved / checked symbolically / conditional / conjectural / false` ledger.
- `scripts/maxwell_double_null_checks.wl`: exact convention and identity checks.

## Current Phase

The finite sheet-constraint calculation, the raw CPS identities and their symbolic convention checks are the current closed core. The remaining mathematical gap is a fully cited function-space theorem proving existence, uniqueness and continuous dependence for precisely the displayed compatible Maxwell data on the chosen finite diamond. Global bundle/harmonic sectors and the Peierls comparison remain separate blockers. The project therefore does not claim that integrated transport equations prove bulk surjectivity.

## Claim Boundary

The general lesson is

$$
\text{characteristic null data}
=\text{sheetwise radiative data}
+\text{lower-dimensional corner integration/constraint data}
+\text{compatibility}.
$$

A null surface used only to measure symplectic flux may be described by its flux-carrying variables. A null cross used as characteristic input for bulk reconstruction must retain the corner/Coulomb data and compatibility conditions. No claim is made for unrestricted completed null data, caustics, non-Abelian reduction, gravity dynamics, sharp Hilbert-space factorization, a continuum partial trace, or recovery of B2 cross covariance from regional states.
