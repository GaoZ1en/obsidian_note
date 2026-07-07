---
paper id: 2607.04522v1
title: Symmetries and Conservation Laws in Lie-Poisson Electrodynamics
authors:
  - M. A. Kurkov
publication date: 2026-07-05T21:59:20Z
abstract: |-
  The paper studies pure Lie-Poisson electrodynamics as a nonlinear non-Abelian deformation of Maxwell theory whose gauge algebra is induced by a Lie-Poisson bracket on spacetime. In the geometric formulation, a field-dependent diffeomorphism and a field redefinition map the LPE action to the Maxwell action under local non-degeneracy assumptions. Pulling Maxwell symmetries and Noether currents back through this map gives LPE symmetry generators, conserved currents, deformed Poincare transformations, and a proposed quantization prescription based on the Maxwell field variable.
comments: "13 pages"
url: https://arxiv.org/abs/2607.04522v1
summary: "A useful charge/CPS-adjacent note because it constructs LPE conserved currents by pulling Maxwell Noether data through a field-dependent Seiberg-Witten-type map."
tags: []
---

Back to [[2026_07_07_overview]].

# Lie-Poisson gauge field

The paper works on $\mathcal M\simeq \mathbb R^d$ with coordinates $x^\mu$ and a gauge one-form

$$\begin{align}
A=A_\mu(x)\,dx^\mu .
\end{align}$$

The deformation is not a Yang-Mills internal algebra. The bracket is a Lie-Poisson bracket on spacetime functions,

$$\begin{align}
\{f,g\}=x^\xi \mathcal C^{\mu\nu}_{\xi} \partial_{\mu[x]}f\,\partial_{\nu[x]}g ,
\end{align}$$

where $\mathcal C^{\mu\nu}_{\xi}$ are structure constants of a $d$-dimensional Lie algebra $\mathfrak g$. The corresponding local Lie group $G$ is described by coordinates $p_\mu$ near the identity and by the matrices $\gamma^\mu{}_\nu(p)$ and $\rho^\mu{}_\nu(p)$ for left-invariant vector fields and right-invariant one-forms. Their inverses are denoted with bars. The commutative limit is

$$\begin{align}
\gamma^\mu{}_\nu,\rho^\mu{}_\nu \to \delta^\mu_\nu \qquad (\mathcal C\to0).
\end{align}$$

The LPE gauge transformations are required to close as

$$\begin{align}
[\delta_f,\delta_g]A_\mu=\delta_{\{f,g\}}A_\mu , \tag{2.10}
\end{align}$$

and the geometric realization used in the paper is

$$\begin{align}
\delta_f A_\mu =\gamma_\mu{}^\nu(A)\partial_{\nu[x]}f+\{A_\mu,f\} =M_\mu{}^\omega\partial_{\omega[x]}f, \tag{2.11, 2.13}
\end{align}$$

with

$$\begin{align}
M^\lambda{}_\varepsilon =\gamma^\lambda{}_\varepsilon(A) +x^\xi\mathcal C^{\omega\lambda}_{\xi} \partial_{\omega[x]}A_\varepsilon . \tag{2.14}
\end{align}$$

This is the first convention to keep straight locally: the non-Abelian character is carried by the spacetime Poisson bracket and the $A$-dependent matrix $M$, not by a Lie-algebra-valued Maxwell potential.

# Deformed field strength and geometric action

The covariant LPE field strength is

$$\begin{align}
F^s_{\mu\nu} =\bar\gamma^\xi{}_\nu \partial_{\mu[x]}A_\xi -\bar\gamma^\xi{}_\mu \partial_{\nu[x]}A_\xi -\bar\gamma^\xi{}_\alpha\bar\gamma^\omega{}_\beta x^\theta\mathcal C^{\alpha\beta}_\theta \partial_{\mu[x]}A_\xi\,\partial_{\nu[x]}A_\omega . \tag{2.15}
\end{align}$$

It transforms by a Lie derivative along the Hamiltonian vector field

$$\begin{align}
\chi_f=\{x^\xi,f\}\frac{\partial}{\partial x^\xi}. \tag{2.17}
\end{align}$$

The important structural fact is that $F^s$ is exact. Defining

$$\begin{align}
z^\mu=x^\xi\bar\gamma_\xi{}^\mu(A), \tag{2.19}
\end{align}$$

one has

$$\begin{align}
F^s_{\mu\nu} =\partial_{\nu[x]}(z^\alpha\partial_{\mu[x]}A_\alpha) -\partial_{\mu[x]}(z^\alpha\partial_{\nu[x]}A_\alpha). \tag{2.18}
\end{align}$$

The gauge-invariant action is built with a field-dependent diffeomorphism

$$\begin{align}
y^\mu(x)=\Delta^\mu{}_\xi(A(x))x^\xi, \qquad \Delta^\mu{}_\xi(p)=\bar\rho^\mu{}_\nu(p)\bar\gamma^\nu{}_\xi(p), \tag{2.20, 2.21}
\end{align}$$

and Jacobian

$$\begin{align}
J^\mu{}_\nu=\frac{\partial y^\mu}{\partial x^\nu}. \tag{2.22}
\end{align}$$

The pullback of $F^s$ to the $y$ coordinates is

$$\begin{align}
F^t_{\mu\nu}(y)= \bar J^\alpha{}_\mu \bar J^\beta{}_\nu F^s_{\alpha\beta}(x(y)), \tag{2.23}
\end{align}$$

and is gauge invariant at fixed $y$. The action can be written as Maxwell form in the $y$ variables,

$$\begin{align}
S[A]=\int_{\mathcal M}dy\, \eta^{\mu\alpha}\eta^{\nu\beta} \left(-\frac14F^t_{\mu\nu}F^t_{\alpha\beta}\right), \tag{2.24}
\end{align}$$

or, after changing variables back to $x$, as a local LPE action

$$\begin{align}
S[A]=\int_{\mathcal M}dx\sqrt{-g_A}\, g_A^{\mu\alpha}g_A^{\nu\beta} \left(-\frac14F^s_{\mu\nu}F^s_{\alpha\beta}\right), \tag{2.26}
\end{align}$$

with

$$\begin{align}
g^A_{\mu\nu}=J^\alpha{}_\mu J^\beta{}_\nu \eta_{\alpha\beta}. \tag{2.27}
\end{align}$$

The working domain of the construction is local: $A(x)$ must stay in the coordinate neighborhood on $G$, $J$ must be non-degenerate, and later $M$ must be invertible.

# Maxwell field variable and dynamical equivalence

The central redefinition is a one-form $B$ in the $y$ coordinates such that

$$\begin{align}
F^t_{\mu\nu}(y)=F_{\mu\nu}(y), \qquad F_{\mu\nu}=\partial_{\mu[y]}B_\nu-\partial_{\nu[y]}B_\mu. \tag{3.1}
\end{align}$$

It is defined through

$$\begin{align}
B_\mu(y(x))=K_\mu{}^\varepsilon(x;A)A_\varepsilon(x), \tag{3.2}
\end{align}$$

where

$$\begin{align}
K_\mu{}^\varepsilon=\bar J^\beta{}_\mu\partial_{\beta[x]}z^\varepsilon . \tag{3.3}
\end{align}$$

Perturbatively in $\mathcal C$, the inverse map can be constructed iteratively:

$$\begin{align}
A_\mu(x)=A^{[N]}_\mu(x;B)+O(\mathcal C^{N+1}), \tag{3.4}
\end{align}$$

starting from $A^0_\mu=B_\mu$ and using the map $T^B$. The paper does not prove global convergence; the result is a local perturbative equivalence.

Under this map,

$$\begin{align}
S[A]=S_{\mathrm M}[B], \tag{3.8}
\end{align}$$

where $S_{\mathrm M}$ is the Maxwell action. Varying at fixed $y$ gives a nontrivial relation between $\delta B$ and $\delta A$. The shifted variation is

$$\begin{align}
\tilde\delta A_\varepsilon =\delta A_\varepsilon-\chi^\sigma\partial_{\sigma[x]}A_\varepsilon, \qquad \tilde\delta z^\varepsilon =\delta z^\varepsilon-\chi^\sigma\partial_{\sigma[x]}z^\varepsilon, \tag{3.14}
\end{align}$$

with

$$\begin{align}
\chi^\sigma =x^\xi\mathcal C^{\sigma\lambda}_\xi \bar M^\varepsilon{}_\lambda\delta A_\varepsilon . \tag{3.12}
\end{align}$$

Appendix A gives

$$\begin{align}
\tilde\delta A_\varepsilon =\gamma^\lambda{}_\varepsilon(A)\bar M^\xi{}_\lambda\delta A_\xi , \tag{3.15}
\end{align}$$

and

$$\begin{align}
\tilde\delta z^\varepsilon =-z^\alpha \frac{\partial\gamma^\lambda{}_\alpha(A)}{\partial A_\varepsilon} \bar M^\xi{}_\lambda\delta A_\xi . \tag{3.16}
\end{align}$$

The final variation formula is

$$\begin{align}
\delta B_\mu(y(x)) =\bar J^\beta{}_\mu\bar M^\sigma{}_\beta\delta A_\sigma -\frac{\partial}{\partial y^\mu(x)} \left( z^\xi A_\varepsilon \frac{\partial\gamma^\lambda{}_\xi(A)}{\partial A_\varepsilon} \bar M^\sigma{}_\lambda\delta A_\sigma \right). \tag{3.17}
\end{align}$$

The derivative term is an Abelian gauge variation of $B$, so it drops out of the Maxwell action variation by the Maxwell identity

$$\begin{align}
\partial_{\mu[y]}\mathcal E_B^\mu =\partial_{\mu[y]}\partial_{\nu[y]}F^{\nu\mu}=0. \tag{3.20}
\end{align}$$

Thus the equations of motion are equivalent:

$$\begin{align}
\mathcal E_A^\sigma(x) =\det J\, \mathcal E_B^\mu(y(x)) \bar J^\beta{}_\mu\bar M^\sigma{}_\beta, \tag{3.22}
\end{align}$$

and

$$\begin{align}
\mathcal E_B^\mu(y(x)) =(\det J)^{-1}J^\mu{}_\beta M^\beta{}_\sigma \mathcal E_A^\sigma(x). \tag{3.23}
\end{align}$$

This is the paper's main technical bridge. It lets every Maxwell solution, symmetry, and current be transported to LPE as long as the local invertibility assumptions hold.

# Gauge orbits as a Seiberg-Witten map

For a gauge variation $\delta A=\delta_f A$, the induced $B$ variation is Abelian:

$$\begin{align}
\delta B_\mu(y)=\partial_{\mu[y]}\tilde f(y), \tag{4.2}
\end{align}$$

where

$$\begin{align}
\tilde f(y) =\left( f(x)-z^\xi A_\varepsilon \frac{\partial\gamma^\lambda{}_\xi(A)}{\partial A_\varepsilon} \partial_{\lambda[x]}f(x) \right)_{x=x(y)}. \tag{4.3}
\end{align}$$

The inverse relation is perturbative:

$$\begin{align}
f(x)=\tilde f(y(x)) +\sum_{k=1}^N\mathcal D^k\tilde f(y(x)) +O(\mathcal C^{N+1}), \tag{4.4}
\end{align}$$

with

$$\begin{align}
\mathcal D =z^\xi A_\varepsilon \frac{\partial\gamma^\lambda{}_\xi(A)}{\partial A_\varepsilon} \partial_{\lambda[x]} . \tag{4.5}
\end{align}$$

Locally, this is exactly the role of a Seiberg-Witten map: deformed LPE gauge orbits are identified with Abelian Maxwell gauge orbits in the $B$ variable.

# Pulling back Maxwell currents

Let $j_B^\mu(y)$ be a Maxwell Noether current for a symmetry

$$\begin{align}
\delta_uB_\mu=R^B_\mu u, \tag{4.7}
\end{align}$$

so that off shell

$$\begin{align}
\partial_\mu j_B^\mu=R^B_\mu\mathcal E_B^\mu. \tag{4.8}
\end{align}$$

The LPE current is the density pullback

$$\begin{align}
j_A^\mu(x)=(\det J)\bar J^\mu{}_\nu j_B^\nu(y(x)). \tag{4.9}
\end{align}$$

Using the Piola identity

$$\begin{align}
\partial_{\mu[x]}\left((\det J)\bar J^\mu{}_\nu\right)=0, \tag{4.10}
\end{align}$$

and the equation map (3.23), its divergence becomes

$$\begin{align}
\partial_{\mu[x]}j_A^\mu =R^A_\sigma\mathcal E_A^\sigma, \tag{4.12}
\end{align}$$

where

$$\begin{align}
R^A_\sigma(x)=R^B_\mu(y(x))J^\mu{}_\beta M^\beta{}_\sigma . \tag{4.13}
\end{align}$$

By Noether's converse theorem, the associated LPE symmetry is

$$\begin{align}
\delta_uA_\sigma(x)=R^A_\sigma u =M^\beta{}_\sigma J^\mu{}_\beta \delta_uB_\mu(y(x)). \tag{4.14}
\end{align}$$

This is the note's main charge/CPS-relevant object. The construction is not a covariant phase space derivation, but it has the same practical shape: a current conservation statement is pulled across a field redefinition and equation-of-motion map, and the generator is read from the off-shell divergence identity.

# Deformed Poincare transformations and currents

For Maxwell theory, an infinitesimal Poincare transformation is

$$\begin{align}
\delta_\xi^{\mathrm P}B_\mu=(\mathcal L_\xi B)_\mu, \tag{5.1}
\end{align}$$

with

$$\begin{align}
\xi^\mu(y)=a^\mu+\omega^{\mu\lambda}y_\lambda, \qquad \omega^{\mu\lambda}=-\omega^{\lambda\mu}. \tag{5.2}
\end{align}$$

The LPE transformation is

$$\begin{align}
\delta_\xi^{\mathrm P}A_\sigma =M^\mu{}_\sigma(\mathcal L_{\tilde\xi}\tilde B)_\mu, \tag{5.3}
\end{align}$$

where

$$\begin{align}
\tilde B_\mu(x)=J_\mu{}^\nu B_\nu(y(x)), \qquad \tilde\xi^\mu(x)=\bar J^\mu{}_\nu\xi^\nu(y(x)). \tag{5.4, 5.5}
\end{align}$$

Splitting the Maxwell transformation into a covariant part plus a gauge part,

$$\begin{align}
\delta^{\mathrm{cov}}_\xi B_\mu=\xi^\nu F_{\nu\mu}, \tag{5.7}
\end{align}$$

and

$$\begin{align}
\delta_\xi^{\mathrm{gauge}}B_\mu =\partial_{\mu[y]}(\xi^\nu B_\nu), \tag{5.8}
\end{align}$$

gives the deformed covariant Poincare transformation

$$\begin{align}
\delta^{\mathrm{cov}}_\xi A_\sigma =M^\beta{}_\sigma\tilde\xi^\alpha F^s_{\alpha\beta}. \tag{5.10}
\end{align}$$

The full transformation is therefore

$$\begin{align}
\delta_\xi^{\mathrm P}A_\sigma =M^\beta{}_\sigma\tilde\xi^\alpha F^s_{\alpha\beta} +\delta_{f(x;\xi)}A_\sigma, \qquad f(x;\xi)=\xi^\nu(y(x))B_\nu(y(x)). \tag{5.12}
\end{align}$$

For covariant translations, the Maxwell current is the negative stress tensor

$$\begin{align}
j_{B;(\nu)}^\mu =F^{\mu\alpha}F_{\nu\alpha} -\frac14\delta^\mu_\nu F_{\alpha\beta}F^{\alpha\beta} =-T^\mu{}_{B\nu}. \tag{5.13}
\end{align}$$

The LPE energy-momentum current is

$$\begin{align}
j_{A;(\nu)}^\mu =(\det J)\left[ \bar J^\zeta{}_\nu F_s^{\mu\alpha}F^s_{\zeta\alpha} -\frac14\bar J^\mu{}_\nu F_s^{\alpha\beta}F^s_{\alpha\beta} \right] =-T^\mu{}_{A\nu}, \tag{5.15}
\end{align}$$

where $F_s^{\mu\alpha}$ is raised with $g_A$. It satisfies

$$\begin{align}
\partial_{\mu[x]}j_{A;(\nu)}^\mu =\bar J^\alpha{}_\nu M^\beta{}_\sigma F^s_{\alpha\beta}\mathcal E_A^\sigma, \tag{5.17}
\end{align}$$

so it is conserved on shell. For Lorentz transformations, the pulled current is

$$\begin{align}
j^\mu_{A;(\alpha,\beta)} =y_\alpha(x)T^\mu{}_{A\beta} -y_\beta(x)T^\mu{}_{A\alpha} =M^\mu{}_{A\alpha\beta}. \tag{5.19}
\end{align}$$

The paper leaves the algebra of the deformed transformations open. For local use, that means the note gives explicit current and generator formulas but does not yet give a closed LPE Poincare algebra in the deformed variables.

# Quantization prescription

The quantization proposal is to use the $B$ variable as the path-integral measure:

$$\begin{align}
\langle T[A_{\mu_1}(x_1)\cdots A_{\mu_n}(x_n)]\rangle =Z^{-1}\int\mathcal D B(A)\, T[A_{\mu_1}(x_1)\cdots A_{\mu_n}(x_n)]e^{iS[A]}, \tag{6.1}
\end{align}$$

with

$$\begin{align}
Z=\int\mathcal D B(A)e^{iS[A]} =\int\mathcal D B\,e^{iS_{\mathrm M}[B]}. \tag{6.2}
\end{align}$$

Using the perturbative inverse,

$$\begin{align}
\langle T[A_{\mu_1}\cdots A_{\mu_n}]\rangle =Z^{-1}\int\mathcal D B\, T[A^{[N]}_{\mu_1}(x_1;B)\cdots A^{[N]}_{\mu_n}(x_n;B)] e^{iS_{\mathrm M}[B]}+O(\mathcal C^{N+1}). \tag{6.3}
\end{align}$$

At finite order, the $A^{[N]}_n(x;B)$ are local polynomials in $B$ and its derivatives:

$$\begin{align}
A^{[N]}(x;B) =\sum_{n=0}^N A^{[N]}_n(x;B)+O(\mathcal C^{N+1}), \qquad A^{[N]}_n=O(\mathcal C^n). \tag{6.4}
\end{align}$$

The paper's claim is deliberately modest: this is a starting prescription. Gauge fixing, regularization, and renormalization of the composite operators still have to be analyzed.

# Local translation to charge and CPS vocabulary

- Fields: the LPE field $A_\mu(x)$ is the original gauge variable; $B_\mu(y)$ is the Maxwell variable obtained through the field-dependent coordinate map $y(x)$ and linear-in-$A$ map $K(A)$.
- Gauge directions: $\delta_f A_\mu=M_\mu{}^\omega\partial_\omega f$ maps to $\delta_{\tilde f}B_\mu=\partial_\mu\tilde f$. The deformed gauge orbit is Abelianized by the field redefinition.
- Boundary data: the paper works on $\mathbb R^d$ and does not impose a boundary phase-space problem. Boundary or corner charges are not constructed.
- Currents: every Maxwell Noether current is pulled back as $j_A^\mu=(\det J)\bar J^\mu{}_\nu j_B^\nu$. This is the direct transferable formula.
- Generator identity: the relevant off-shell identity is $\partial_\mu j_A^\mu=R^A_\sigma\mathcal E_A^\sigma$. This plays the same role as an on-shell conservation law plus a generator extraction formula.
- CPS comparison: the construction is not Iyer-Wald or covariant phase space, but it is compatible with CPS thinking because it uses field-space variations, gauge orbit maps, equations of motion, and current pullbacks. The missing object is a presymplectic potential/current for LPE and the induced symplectic map between $A$ and $B$ variables.
- Quantization use: the proposal is to avoid a naive $\mathcal D A$ measure and quantize with $\mathcal D B$, treating $A(B)$ as a composite operator expansion. This is potentially useful as a toy model for nonlinearly field-redefined gauge theories.

# Source structure map

- Section 1 introduces LPE as a Poisson-bracket deformation of electrodynamics, explains why Poincare invariance appears broken, and states the aim: construct deformed symmetries and conserved currents by mapping LPE to Maxwell theory.
- Section 2 fixes notation for the Lie-Poisson bracket, the local Lie group matrices $\gamma,\rho$, the gauge transformation algebra, the deformed field strength $F^s$, the field-dependent diffeomorphism $y(x)$, the invariant $F^t$, and the local action written with $g_A$.
- Section 3 defines the $B$ field, constructs the perturbative inverse $A(B)$, proves the relation between LPE and Maxwell equations, and isolates the total-derivative Abelian gauge contribution in $\delta B$.
- Section 4 shows that gauge transformations map to Abelian gauge transformations and then pulls Maxwell Noether currents and symmetry generators back to LPE.
- Section 5 applies the construction to Poincare transformations, giving deformed covariant transformations, gauge parts, stress-tensor currents, angular-momentum currents, and their on-shell divergences.
- Section 6 summarizes the symmetry/current result and proposes the quantization prescription based on the $B$ measure and composite $A(B)$ insertions.
- Appendix A proves the identities for $\chi^\sigma$, $\tilde\delta A$, $\tilde\delta z$, and the determinant relation $\det M=\det J(\det\gamma)^2\det\rho$.

# Verification log

## Checked

- Mathematica checked the Piola identity in two dimensions for arbitrary functions $y^1(x^1,x^2)$ and $y^2(x^1,x^2)$:

$$\begin{align}
\partial_{\mu[x]}\left((\det J)\bar J^\mu{}_\nu\right)=0.
\end{align}$$

The output was `{{0, 0}, 0}` for the two Piola components and the pulled-current divergence residual.

- The same Mathematica check verified the current pullback divergence identity in two dimensions:

$$\begin{align}
\partial_{\mu[x]}\left((\det J)\bar J^\mu{}_\nu j_B^\nu(y(x))\right) = (\det J)(\partial_{\nu[y]}j_B^\nu)(y(x)).
\end{align}$$

This is the algebraic step used in Eq. (4.11) before substituting the equation map (3.23).

## Blocked

- The full identities in Appendix A, especially the variation formulas for $\tilde\delta A$, $\tilde\delta z$, and the determinant formula for $M$, depend on the Lie-group matrices $\gamma,\rho$ and their coordinate identities. I did not implement a generic Lie group symbolic model for these objects.
- The perturbative inverse $A(B)$ is defined recursively but the paper does not give convergence conditions; no independent convergence check was attempted.

## Failed

- No checked equation failed under the stated local non-degeneracy assumptions.

## Not independently verified

- The equivalence between the LPE action and the Maxwell action through $B$ is source-derived from the exactness of $F^s$ and the $y(x)$ map.
- The quantization proposal is source-derived. It requires later gauge-fixing, regularization, and composite-operator renormalization work before it can be used as a complete quantum definition.
