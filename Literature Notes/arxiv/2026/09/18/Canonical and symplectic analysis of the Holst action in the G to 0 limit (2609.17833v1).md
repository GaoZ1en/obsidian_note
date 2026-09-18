---
paper id: 2609.17833v1
title: Canonical and symplectic analysis of the Holst action in the G to 0 limit
authors:
  - Victor Julián Pérez-Aquino
  - Alberto Escalante
publication date: 2026-09-15T20:51
abstract: |-
  The paper studies a (G\to0) truncation of the Holst action with Dirac and Faddeev--Jackiw methods. It recovers the displayed self-dual Smolin constraint system at (gamma=i), proposes a gauge-fixed real-(gamma) model, and appends a canonical discussion of Pontryagin and Euler terms.
comments: "No page count supplied in official metadata"
url: https://arxiv.org/abs/2609.17833v1
summary: "The self-dual coefficient limit is reproducible, but the generic-Immirzi constraint classification and claimed two-degree-of-freedom model are not established."
tags: []
---

# Verdict

**Incorrect.** The generic-(\gamma) canonical analysis classifies ten constraints as second class even though its own displayed (10\times10) bracket matrix has rank at most two and cannot be inverted. Consequently the one-degree-of-freedom count made before gauge fixing is unsupported, and the later claim of two degrees of freedom after imposing (\omega_a^i=0) is not derived from a valid first-/second-class split.

The statement should be rewritten as:

> The (\gamma=i) substitution reproduces the displayed Smolin-type coefficients and the formal count of two complex canonical degrees of freedom before reality conditions. For (\gamma\neq i), the source exposes a degenerate presymplectic sector but does not determine whether it is gauge, a missing constraint, or an inconsistency; imposing (\omega_a^i=0) defines an additional reduced model rather than a demonstrated gauge fixing of the original theory.

The appendix's (\gamma=i) conclusion is also not justified by its displayed field redefinition, because that redefinition divides by (\gamma^2+1) and is singular at (\gamma=\pm i).

# Source map

1. **Introduction:** motivates the Ashtekar/Barbero--Immirzi comparison and Smolin's (G\to0) truncation.
2. **Holst action in the (G\to0) limit:**
   - removes the quadratic connection term from the curvature;
   - performs a (3+1) decomposition and changes variables to (A_a^i,\omega_a^i);
   - lists constraints and a Poisson-bracket matrix;
   - separates (\gamma=i) from (\gamma\neq i);
   - identifies the noninvertibility of the proposed Dirac matrix and imposes (\omega_a^i=0).
3. **Faddeev--Jackiw analysis:** reconstructs the same constraints as presymplectic zero modes, then adds gauge conditions until a displayed inverse symplectic matrix is obtained.
4. **Conclusions:** claims two propagating degrees of freedom in both the self-dual and gauge-fixed generic-(\gamma) cases.
5. **Appendix:** adds Pontryagin and Euler terms, analyzes the topological sector, and writes the shifted canonical momenta and constraints of the combined model.

# Starting action and conventions

The Holst action is written without an overall normalization as

$$
S[e,\omega]
=\int \star(e_I\wedge e_J)\wedge R^{IJ}
+\frac1\gamma\int e_I\wedge e_J\wedge R^{IJ}.
$$

The source uses internal indices (I,J=0,1,2,3), spatial internal indices (i,j,k), and spacetime indices (\mu,\nu=0,1,2,3). Its line

$$
\eta_{IJ}=(-1,0,0,0)
$$

is malformed; the intended Lorentz metric is presumably (\operatorname{diag}(-1,1,1,1)).

The (G\to0) prescription is applied only to the nonlinear part of the connection curvature:

$$
R_{\rho\sigma}^{IJ}
=\partial_\rho\omega_\sigma^{IJ}
-\partial_\sigma\omega_\rho^{IJ}.
$$

This is not the ordinary weak-field expansion of the tetrad. The source retains nonlinear powers of the triad momentum while Abelianizing the connection curvature.

The variable change is

$$
\omega_\alpha^{ij}=\epsilon^{ij}{}_k\omega_\alpha^k,
\qquad
\omega_\alpha^k=\gamma(A_\alpha^k+\omega_\alpha^{0k}).
$$

The field strengths are

$$
F_{ab}^i=\partial_a\omega_b^i-\partial_b\omega_a^i,
\qquad
\widetilde F_{ab}^i=\partial_aA_b^i-\partial_bA_a^i.
$$

# Canonical chain in the source

The momentum conjugate to (A_d^l) is

$$
\widetilde\pi_l^d
=-\eta^{abd}e_{aj}e_{bi}\epsilon^{ij}{}_l,
$$

whereas the momenta (\pi_k^\alpha) conjugate to (\omega_\alpha^k) vanish.

The canonical Hamiltonian is displayed as

$$
\begin{aligned}
\mathcal H_c={}&\widetilde N\epsilon_i{}^{jk}
\widetilde\pi_j^b\widetilde\pi_k^c
\left[\frac{\gamma^2+1}{\gamma^2}F_{bc}^i
-\frac1\gamma\widetilde F_{bc}^i\right]\\
&+2N^a\widetilde\pi_i^b\widetilde F_{ab}^i
-A_0^k\partial_c\widetilde\pi_k^c.
\end{aligned}
$$

The intended constraint list is

$$
Q=\epsilon_i{}^{jk}\widetilde\pi_j^b\widetilde\pi_k^c
\left[\frac{\gamma^2+1}{\gamma^2}F_{bc}^i
-\frac1\gamma\widetilde F_{bc}^i\right],
$$

$$
Q_a=2\widetilde\pi_i^b\widetilde F_{ab}^i,
\qquad
P_i=\partial_c\widetilde\pi_i^c,
\qquad
\phi_k^a=\pi_k^a,
$$

together with six symmetric relations (P^{ac}). The printed formulas for (P^{ac}) are not stable across the paper: the prefactor changes, one derivative loses its index, and the Faddeev--Jackiw version later uses incompatible derivative indices.

# Decisive failure of the generic-γ classification

The paper declares

- (P_i,Q_a,P^{ac}): twelve first-class constraints;
- (Q,\phi_k^a): ten second-class constraints.

It then displays the bracket matrix of the alleged second-class set as

$$
C=
\begin{pmatrix}
0_{9\times9} & B_{9\times1}\\
-B^{\mathsf T}_{1\times9} & D_{1\times1}
\end{pmatrix},
$$

where (B\) represents (\{\phi_k^a,Q\}) and (D\) represents (\{Q,Q\}).

For any vector ((x,s)\in\mathbb R^9\oplus\mathbb R),

$$
C(x,s)=(Bs,-B^{\mathsf T}x+Ds).
$$

The first component always lies in the one-dimensional span of (B), and the second component is a scalar. Hence

$$
\operatorname{rank}C\le2,
$$

so (C) cannot be invertible as a (10\times10) operator. This is structural and does not depend on the detailed distributional kernel.

Therefore the ten constraints cannot all be second class. The source itself notices the impossibility of constructing (C^{-1}), but interprets it as a reason to impose (\omega_a^i=0) rather than reopening the constraint classification. That move skips the required Dirac step: determine the null combinations, test their consistency, and decide whether they are first class or generate further constraints.

The printed count

$$
\frac12(36-2\times12-10)=1
$$

is arithmetically correct but physically inapplicable because the rank assumption behind the number ten is false.

# Self-dual branch

At (\gamma=i),

$$
\frac{\gamma^2+1}{\gamma^2}=0,
\qquad
-\frac1\gamma=i.
$$

The scalar constraint therefore reduces formally to

$$
Q=i\epsilon_i{}^{jk}\widetilde\pi_j^b\widetilde\pi_k^c
\widetilde F_{bc}^i.
$$

The six (P^{ac}) relations proportional to (\gamma^2+1) disappear, and the source keeps Gauss, vector, and scalar constraints as seven first-class constraints on an 18-dimensional phase space:

$$
\frac12(18-2\times7)=2.
$$

This finite count is reproducible. It is still a complex phase-space count; the required reality conditions and their effect on the reduced phase space are not developed.

# Generic-Immirzi reduction

The source imposes

$$
\omega_a^i=0,
\qquad
A_a^i=-\gamma\omega_a^{0i},
$$

and calls this a gauge fixing. It then keeps a Gauss, vector, and scalar system built from (A_a^i) and (\widetilde\pi_i^a), obtaining the standard canonical bracket

$$
\{A_a^i(x),\widetilde\pi_j^b(y)\}
=\delta_a^b\delta_j^i\delta^3(x-y).
$$

The problem is conceptual: a presymplectic null direction is a gauge direction only if its contraction with the equations vanishes appropriately and its generated transformation preserves the action and constraint surface. The paper alternately calls the (\omega) null sector an “inconsistency” and a “gauge symmetry,” without deriving its gauge generator. Thus (\omega_a^i=0) defines a further restriction, not an established gauge slice.

The statement that (\omega_a^i=0) forces vanishing intrinsic curvature is true for the Abelianized curvature (F=d\omega) locally, but it does not validate the preceding reduction.

# Faddeev--Jackiw analysis

The initial symplectic one-form is

$$
\int d^3x\,\widetilde\pi_i^a\dot A_a^i.
$$

Zero modes reproduce the Gauss, scalar, vector, and (P^{ac})-type relations. The source then appends them with multipliers, finds a remaining (\omega)-sector zero mode, and imposes

$$
A_0^i=N=N^a=0,
\qquad
\omega_a^i=0.
$$

After this restriction it writes a nonsingular symplectic matrix and its inverse.

Several printed expressions prevent a reliable independent reconstruction:

- the symplectic potential changes (\partial_b\omega_c^i-\partial_c\omega_b^i) to a plus sign in one occurrence;
- (\delta\Omega_3/\delta\pi_i^a) contains (\epsilon_i{}^{ik}), which vanishes identically and is evidently a repeated-index typo;
- (\delta\Omega_{4d}/\delta A_a^i) is printed twice;
- the (\Omega_5^{eb}) formula alternates between spatial derivatives (\partial_k) and (\partial_g), with conflicting index roles;
- the final text says the brackets come from ((f^{(2)})^{-1}) although the displayed invertible matrix is (f^{(3)}).

These are not all merely cosmetic because they enter the matrix claimed to be inverted.

# Pontryagin--Euler appendix

The appendix defines

$$
F=R-\frac1\gamma\star R,
\qquad
\widetilde F=F+\frac1\gamma\star F.
$$

Using (\star^2=-1) on Lorentz bivectors gives

$$
\widetilde F=\frac{\gamma^2+1}{\gamma^2}R,
\qquad
R=\frac{\gamma^2}{\gamma^2+1}\widetilde F.
$$

The second relation is singular at (\gamma=\pm i). Therefore the subsequent statement that one may simply set (\gamma=i) in the formulation obtained after this inversion is not established. A self-dual analysis must be performed before dividing by (\gamma^2+1), or by using chiral projectors adapted to the degenerate map.

The source-derived result that pure Pontryagin--Euler terms shift canonical momenta while carrying no local degrees of freedom is plausible, but the combined Holst-plus-topological constraint system is not independently verified here.

# Translation to the vault's formalism

This paper is useful mainly as a warning about presymplectic reduction. In the action-first CPS language, a degenerate two-form does not license setting the corresponding field to zero. One must first identify whether the kernel is

1. a genuine gauge direction generated by a first-class constraint;
2. a consequence of an incomplete constraint algorithm;
3. a reducibility relation;
4. or a physical degeneracy caused by an ill-posed truncation.

Only after that classification can a gauge condition such as (\omega_a^i=0) be imposed. Boundary terms would also have to be retained before declaring the generator pure gauge; the paper works on a spatial slice without a boundary-charge analysis.

For a reusable (G\to0) toy model, the clean branch is the (\gamma=i) coefficient limit, provided reality conditions are supplied. The generic-(\gamma) “Barbero-type” branch should not be imported into the vault as a validated canonical model.

# Verification log

## Source-derived

- The (3+1) decomposition, displayed momenta, constraint formulas, Faddeev--Jackiw matrices, and topological extension.
- The comparison with Smolin's self-dual model and the geometric interpretation proposed for (\omega_a^i=0).

## Checked

- Mathematica verified the self-dual coefficient limits
  $$
  \left.\frac{\gamma^2+1}{\gamma^2}\right|_{\gamma=i}=0,
  \qquad
  \left.-\frac1\gamma\right|_{\gamma=i}=i.
  $$
- Mathematica reproduced the arithmetic counts (1) and (2) from the numbers inserted by the source; this checks only the arithmetic, not the constraint classification.
- A finite exact (10\times10) representative of the displayed second-class block had determinant zero and rank two. The block-form argument above proves the rank bound structurally.
- Mathematica verified that (\gamma^2+1=0) at (\gamma=i), confirming that the appendix's inversion for (R) is singular in the self-dual limit.

## Failed

- The generic-(\gamma) set ((Q,\phi_k^a)) is not a second-class set as displayed because its bracket matrix is noninvertible.
- The generic-(\gamma) degree-of-freedom count is not supported by the constraint matrix.
- The claim that (\omega_a^i=0) is a legitimate gauge fixing is not derived from a first-class generator.
- The appendix cannot reach (\gamma=i) through the displayed inverted field redefinition.

## Blocked

- A corrected Dirac analysis is blocked by inconsistent printed formulas for (P^{ac}), (\Omega_5^{eb}), and several functional derivatives.
- The physical real phase-space count in the self-dual branch is blocked by the absence of explicit reality conditions.

## Not independently verified

- Closure of the full distribution-valued constraint algebra after correcting the source typos.
- Invertibility of the final (f^{(3)}) kernel as an operator with specified boundary conditions.
- The canonical structure of the combined Holst plus Pontryagin--Euler theory.

# Reusable takeaway

Do not cite this paper as establishing a real-(\gamma), two-degree-of-freedom Barbero analogue of Smolin's (G\to0) model. Its reliable local content is the self-dual coefficient reduction and the observation that the generic branch develops a large presymplectic kernel. Resolving that kernel requires a fresh constraint analysis from the action, with consistent indices and explicit boundary conditions.
