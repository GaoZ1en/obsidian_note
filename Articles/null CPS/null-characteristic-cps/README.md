# Null Characteristic Covariant Phase Space

## Direct Verdict

The first classical Maxwell layer closes at the formal smooth level, with one analytic boundary left explicit.

For source-free \(3+1\)-dimensional $U(1)$ Maxwell theory on the flat double-null diamond

$$
D=[0,U]_u\times[0,V]_v\times S,
\qquad
ds^2=-2\,du\,dv+q_{AB}dx^A dx^B,
$$

the action and Lee--Wald current determine the characteristic flux without adding a corner oscillator. The free field-strength profiles are

$$
F_{vA}|_{N_+},\qquad F_{uA}|_{N_-},
$$

while $F_{uv}$ and $F_{AB}$ are transported from shared data at $S_0=N_+\cap N_-$. Proper gauge transformations are exactly the gauge directions whose cut charge variation vanishes under the declared endpoint policy.

The candidate corner pair has a qualified positive verdict:

$$
\Omega_{S_0}=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}
$$

is derived after the two null sheets are given independent gauge frames, their longitudinal potentials are integrated by parts, and the diagonal cut gauge group is reduced at the electric-flux matching moment map. It is not an additional universal term in the raw bulk CPS current. It vanishes when $E_0$ is fixed, when the relative frame is fixed, or when one works from the start in one smooth bulk trivialization.

The naive formula

$$
P_X\stackrel{?}{\simeq}(P_{N_+}\times P_{N_-})//G(S_0)
$$

is incomplete. Electric-flux matching is the moment map, but magnetic and connection compatibility at the corner are additional restriction equations. The correct first-pass object is a compatibility locus followed by diagonal gauge reduction; it is naturally a symplectic relation, not a map on the unrestricted product.

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
\text{radiative profiles}\\
\text{Gauss/Bianchi transport}\\
\text{shared corner data}
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

The finite smooth classical calculation and its symbolic convention checks are the current closed core. The remaining mathematical gap is a fully cited function-space theorem that proves surjectivity of the restriction map for precisely the displayed gauge-invariant data on a compact cut, including global bundle sectors. The project therefore claims a formal smooth symplectic reconstruction theorem conditional on standard Maxwell Goursat well-posedness, not a new Sobolev theorem.

## Claim Boundary

No claim is made for unrestricted completed null data, caustics, non-Abelian reduction, gravity dynamics, sharp Hilbert-space factorization, a continuum partial trace, or recovery of B2 cross covariance from regional states.
