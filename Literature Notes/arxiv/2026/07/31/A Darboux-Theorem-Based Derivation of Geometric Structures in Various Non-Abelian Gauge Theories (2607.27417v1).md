---
paper id: 2607.27417v1
title: A Darboux-Theorem-Based Derivation of Geometric Structures in Various Non-Abelian Gauge Theories
authors:
  - Eugen-Mihaita Cioroianu
  - Stefan-Sabin Manolescu
publication date: 2026-07-29T19:35
abstract: |-
  The paper applies a Faddeev--Jackiw/Darboux reduction to first-order non-Abelian field theories. It identifies canonical pairs, algebraic and multiplier null variables, coisotropic constraints, gauge transformations, reducibility towers, and open algebras in Freedman--Townsend, Yang--Mills, BF, and a nonlinear Poisson-target BF-type model.
comments: "16 pages, no figures"
url: https://arxiv.org/abs/2607.27417v1
summary: "A compact component-level reference for canonical reduction, BF reducibility, and open gauge algebras, useful as a cross-check but not a substitute for a boundary-aware CPS derivation."
tags: []
---

Back to [[2026_07_31_overview]].

The paper's transferable object is the hypersurface kinetic one-form. It repeatedly turns a first-order Lagrangian into

$$\begin{align}
\alpha_\Sigma \longrightarrow \Omega_\Sigma=\delta\alpha_\Sigma \longrightarrow \ker\Omega_\Sigma \longrightarrow \mathcal C_{\rm coisotropic} \longrightarrow \mathcal C_{\rm coisotropic}/\text{gauge}.
\end{align}$$

This is useful for BF/BFV/AKSZ work, but every spatial integration by parts assumes away boundary terms. The paper does not construct a covariant presymplectic potential, surface charge, or edge-mode sector.

## Darboux Reduction of a First-Order Gauge System

The finite-dimensional starting point is

$$\begin{align}
S[z] =\int dt\, \left( \alpha_A(z)\dot z^A-V(z) \right), \tag{2.1}
\end{align}$$

with

$$\begin{align}
\alpha=\alpha_A\,dz^A, \qquad \Omega=d\alpha, \tag{2.2}
\end{align}$$

and constant rank

$$\begin{align}
\operatorname{rank}\Omega=2k. \tag{2.3}
\end{align}$$

Presymplectic Darboux coordinates split as

$$\begin{align}
z^A\leftrightarrow(q^i,p_i,Q^\Delta),
\end{align}$$

so locally

$$\begin{align}
S =\int dt\, \left( p_i\dot q^i-\mathcal V(q,p,Q) \right). \tag{2.4}
\end{align}$$

The null variables $Q^\Delta$ divide into algebraic auxiliaries $Q^\mu$ and undetermined multipliers $u^a$:

$$\begin{align}
\frac{\partial\mathcal V}{\partial Q^\mu}=0 \Longleftrightarrow
Q^\mu=\Psi^\mu(q,p,u). \tag{2.5}
\end{align}$$

After eliminating them,

$$\begin{align}
S =\int dt\, \left( p_i\dot q^i -h(q,p) -u^aG_a(q,p) \right). \tag{2.6}
\end{align}$$

The constraint surface is coisotropic when

$$\begin{align}
G_a\approx0,\qquad [G_a,G_b]\approx0,\qquad [h,G_a]\approx0.
\tag{2.7}
\end{align}$$

The weak equalities mean combinations of constraints. The paper then invokes the Dirac conjecture to reconstruct the gauge transformations; Faddeev--Jackiw reduction alone does not determine all multiplier transformations.

For a field-theory kinetic term

$$\begin{align}
\alpha_\Sigma=\int_\Sigma B\,\delta A,
\end{align}$$

the local canonical block, in ordering $(A,B)$, is

$$
\Omega_\Sigma
=
\begin{pmatrix}
0&-\mathbf 1\\
\mathbf 1&0
\end{pmatrix},
\qquad
\Omega_\Sigma^{-1}
=
\begin{pmatrix}
0&\mathbf 1\\
-\mathbf 1&0
\end{pmatrix}.
$$

Spatial delta functions are suppressed in the source's DeWitt notation. The paper identifies the canonical and null variables by inspection rather than printing the functional symplectic matrix or its zero modes.

## Freedman--Townsend: Flatness and Reducibility

The model is

$$\begin{align}
L^{\rm FT} =\frac12\int d^{D-1}x\, \left( B_a^{\mu\nu}F^a_{\mu\nu} +A_\mu^aA^\mu_a \right), \tag{3.1}
\end{align}$$

with

$$\begin{align}
F^a_{\mu\nu} =\partial_{[\mu}A^a_{\nu]} +f^a{}_{bc}A_\mu^bA_\nu^c. \tag{3.2}
\end{align}$$

The time split gives

$$
\begin{aligned}
L^{\rm FT}
=\int\bigg[
&B_a^{0j}\dot A_j^a
+A_0^a(D_j)_a{}^bB_b^{0j}
+\frac12A_0^aA^0_a\\
&+\frac12B_a^{jk}F^a_{jk}
+\frac12A_j^aA^j_a
\bigg].
\end{aligned}
\tag{3.3}
$$

$A_0^a$ is algebraic:

$$\begin{align}
A^0_a =-(D_j)_a{}^bB_b^{0j}. \tag{3.5}
\end{align}$$

The canonical pair is

$$\begin{align}
(A_k^a,B_a^{0k}), \qquad [B_a^{0k},A_l^b] =-\delta_a^b\delta_l^k. \tag{3.7}
\end{align}$$

The remaining null field $B_a^{jk}$ imposes

$$\begin{align}
G^a_{jk} =\frac12F^a_{jk}\approx0. \tag{3.8}
\end{align}$$

These flatness constraints commute strongly, but have covariant-derivative reducibility operators:

$$\begin{align}
(Z^a_{jkl})_b{}^{mn}G^b_{mn}=0,
\end{align}$$

$$\begin{align}
(Z^a_{jkl})_b{}^{mn} =\frac1{3!}(D_{[j})^a{}_b \delta_k^m\delta_{l]}^n. \tag{3.9}
\end{align}$$

Higher compositions close only modulo the flatness equations, producing an on-shell $(D-3)$-stage reducibility tower. The covariant gauge symmetry is

$$\begin{align}
\delta A_\mu^a=0, \qquad \delta B_a^{\mu\nu} =(D_\lambda)_a{}^b \epsilon_b^{\lambda\mu\nu}. \tag{3.18}
\end{align}$$

Its transformation algebra is Abelian even though the reducibility operator is non-Abelian and on-shell.

## Yang--Mills: Electric Auxiliary Field and Gauss Law

Starting from

$$\begin{align}
L^{\rm YM} =-\frac14\int F^a_{\mu\nu}F_a^{\mu\nu}, \tag{3.23}
\end{align}$$

the paper introduces $B_a^k$:

$$\begin{align}
\bar L^{\rm YM} =\int \left[ B_a^kF^a_{0k} +\frac12B_k^aB_a^k -\frac14F^a_{jk}F_a^{jk} \right]. \tag{3.25}
\end{align}$$

Its algebraic equation is

$$\begin{align}
B_k^a=-F^a_{0k}. \tag{3.26}
\end{align}$$

After integration by parts,

$$\begin{align}
\bar L^{\rm YM} =\int \left[ B_a^k\dot A_k^a +\frac12B_k^aB_a^k -\frac14F^a_{jk}F_a^{jk} +A_0^a(D_k)_a{}^bB_b^k \right]. \tag{3.27}
\end{align}$$

Thus $(A_k^a,B_a^k)$ is canonical, while $A_0^a$ imposes Gauss law:

$$\begin{align}
G_a=(D_k)_a{}^bB_b^k\approx0. \tag{3.29}
\end{align}$$

The constraints reproduce the Lie algebra,

$$\begin{align}
[G_a,G_b]=f^c{}_{ab}G_c, \tag{3.30}
\end{align}$$

and generate

$$\begin{align}
\delta A_k^a=(D_k)^a{}_b\epsilon^b, \qquad \delta B_a^k=-f^c{}_{ab}B_c^k\epsilon^b. \tag{3.34}
\end{align}$$

After eliminating $B$, this becomes the usual

$$\begin{align}
\delta A_\mu^a=(D_\mu)^a{}_b\epsilon^b. \tag{3.35}
\end{align}$$

This sector is irreducible and closes off-shell.

## Non-Abelian BF: Gauss Plus Flatness

The action

$$\begin{align}
L^{\rm BF} =\frac12\int B_a^{\mu\nu}F^a_{\mu\nu} \tag{3.38}
\end{align}$$

is already first order:

$$\begin{align}
L^{\rm BF} =\int \left[ B_a^{0k}\dot A_k^a +A_0^a(D_k)_a{}^bB_b^{0k} +\frac12B_a^{jk}F^a_{jk} \right]. \tag{3.39}
\end{align}$$

The kernel variables $A_0^a,B_a^{jk}$ impose

$$\begin{align}
G_a=(D_k)_a{}^bB_b^{0k}\approx0, \qquad G^a_{jk}=\frac12F^a_{jk}\approx0. \tag{3.40}
\end{align}$$

The bulk Hamiltonian vanishes:

$$\begin{align}
H^{\rm BF}=0. \tag{3.41}
\end{align}$$

The coisotropic algebra is

$$\begin{align}
[G_a,G_b] =f^c{}_{ab}G_c,
\end{align}$$

$$\begin{align}
[G_a,G^b_{jk}] =-f^b{}_{ac}G^c_{jk}, \qquad [G^a_{jk},G^b_{lm}]=0. \tag{3.42}
\end{align}$$

Thus BF combines the irreducible Yang--Mills Gauss sector with the reducible Freedman--Townsend flatness sector. The covariant transformations are

$$\begin{align}
\delta A_\mu^a =(D_\mu)^a{}_b\bar\epsilon^b,
\end{align}$$

$$\begin{align}
\delta B_a^{\mu\nu} =-f^c{}_{ab}B_c^{\mu\nu}\bar\epsilon^b +(D_\lambda)_a{}^b \bar\epsilon_b^{\lambda\mu\nu}. \tag{3.48}
\end{align}$$

The algebra closes off-shell, while the flatness-gauge parameter has the on-shell $(D-3)$-stage reducibility tower. The theory has no local degrees of freedom.

## Poisson-Target BF and an Open Algebra

The nonlinear model is

$$\begin{align}
L^{\rm NL} =\int \left( H_\mu^a\bar D^\mu\varphi_a +\frac12B_a^{\mu\nu}\bar F^a_{\mu\nu} \right), \tag{4.1}
\end{align}$$

where $W_{ab}(\varphi)$ obeys the target-space Poisson condition

$$\begin{align}
W_{m[a}\partial^mW_{bc]}=0. \tag{4.3}
\end{align}$$

The first-order split is

$$\begin{align}
L^{\rm NL} =\int \left[ B_a^{0j}\dot A_j^a +H_0^a\dot\varphi_a +A_0^aG_a +B_a^{jk}G^a_{jk} +H_j^a\gamma_a^j \right]. \tag{4.4}
\end{align}$$

The canonical pairs are

$$\begin{align}
(A_j^a,B_a^{0j}), \qquad (\varphi_a,H_0^a),
\end{align}$$

and the multipliers impose

$$\begin{align}
G_a\approx0,\qquad G^a_{jk}\approx0,\qquad \gamma_a^j\approx0.
\tag{4.8}
\end{align}$$

Here the coisotropic structure functions depend on $\varphi$, the gauge algebra closes only modulo Euler--Lagrange equations, and the reducibility tower extends to $(D-2)$ stages on-shell. This is the strongest link to BV/AKSZ: the open algebra and reducibility data determine the required ghosts, ghosts-for-ghosts, and antifield terms.

## Boundary and CPS Translation

For a bulk first-order theory, the canonical block from $B\dot A$ is a useful component check on the pullback of the covariant chain

$$\begin{align}
S \longrightarrow \delta S =E\cdot\delta\Phi+d\theta \longrightarrow \theta \longrightarrow
\omega=\delta\theta.
\end{align}$$

The paper starts after a time/space split and discards spatial total derivatives. On a region with boundary, those terms can instead produce:

- additions to the hypersurface potential $\alpha_\Sigma$;
- corner terms in $\Omega_\Sigma$;
- differentiability improvements of the Gauss and flatness generators;
- surface charges or edge-mode canonical pairs.

In particular, $H^{\rm BF}=0$ is only the bulk Hamiltonian statement under the paper's boundary assumptions. A differentiable Hamiltonian can be a nonzero boundary generator.

The note should therefore be used as a component-level cross-check of canonical pairs, kernel directions, constraint algebra, and reducibility. It does not replace the covariant derivation with explicit hypersurface and corner terms.

## Assumptions, Defects, and Verification

The Darboux theorem is local and assumes constant rank. The paper does not establish constant rank or global regularity for its infinite-dimensional field spaces. It also invokes the Dirac conjecture without discussing its hypotheses, works in flat mostly-minus Minkowski spacetime, and supplies no boundary conditions, falloffs, charges, fluxes, or edge modes.

The BF discussion once calls the flatness sector “off-shell reducible,” but the displayed reducibility compositions are proportional to equations of motion, while the introduction, later discussion, and conclusion call it on-shell reducible. The consistent reading is on-shell $(D-3)$-stage reducibility. Some nonlinear higher-stage expressions also switch $D$ and $\bar D$; their bars and indices require reconstruction before reuse.

Mathematica independently inverted the reconstructed canonical block:

$$
\begin{pmatrix}
0&-\mathbf1\\
\mathbf1&0
\end{pmatrix}^{-1}
=
\begin{pmatrix}
0&\mathbf1\\
-\mathbf1&0
\end{pmatrix},
$$

with zero matrix residual. This confirms the sign of the fundamental bracket inferred from $B\dot A$. The full constraint algebras, reducibility compositions, degree counts, multiplier transformations, and nonlinear open-algebra identities were read from the source but were not independently reproduced.
