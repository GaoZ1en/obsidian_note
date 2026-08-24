---
paper id: 2608.19795v1
title: A Stationary Composition Law for Schwinger-Keldysh Effective Actions
authors:
  - Denis Comelli
publication date: 2026-08-20T08:46
abstract: |-
  If an open-system connected generator is decomposed as the closed-system generator plus an environment-induced contribution, their Legendre transforms combine by stationary convolution rather than ordinary addition. The construction applies to local and nonlocal Schwinger--Keldysh effective actions and has quadratic and nonlinear realizations.
comments: "22 pages"
url: https://arxiv.org/abs/2608.19795v1
summary: "An exact Legendre-dual composition identity for additive connected generators, with the necessary local-invertibility and branch-selection conditions kept explicit."
tags: []
---

## Result and placement

Correct under the following precise conditions: the connected generators obey

\[
W_{\cal O}[J]=W_{\cal C}[J]+W_{\rm IF}[J],
\]

the relevant Legendre maps are locally invertible, and one follows the stationary branch induced by the open-system Legendre transform. Then

\[
\Gamma_{\cal O}[\Phi]
=\operatorname*{Stat}_{\Psi}
\left\{
\Gamma_{\cal C}[\Psi]
+\Gamma_{\rm IF}[\Phi-\Psi]
\right\}.
\]

This is a useful `T1-symplectic` and `T2-model` paper because it isolates a gluing-like variational composition rule at the level of Schwinger--Keldysh effective actions. It is not a canonical boundary-gluing theorem: it begins from connected generating functionals and Legendre transforms, introduces no boundary symplectic reduction, and proves no reduced CCR or continuum/Fock statement.

## Source map

- Section 2 distinguishes closed, open, and environment-induced connected generators and reconstructs the influence contribution from the microscopic SK insertion.
- Section 3 defines the Legendre transforms, derives the stationary composition law, proves its algebraic properties, and formulates decomposition covariance.
- Section 4 gives quadratic operator kernels, their microscopic interpretation, computational regimes, and a nonlinear effective-potential example.
- Section 5 summarizes the formal scope and the branch assumptions.

## Stationary composition

Using the convention

\[
\Gamma[\Phi]=W[J]-J\cdot\Phi,
\qquad
\frac{\delta\Gamma}{\delta\Phi}=-J,
\]

define

\[
F[\Phi,\Psi]
=\Gamma_{\cal C}[\Psi]
+\Gamma_{\rm IF}[\Phi-\Psi].
\]

Stationarity in the splitting field gives

\[
\left.\frac{\delta\Gamma_{\cal C}}{\delta\Psi}\right|_{\Psi_\star}
=
\left.\frac{\delta\Gamma_{\rm IF}}{\delta\chi}\right|_{\chi=\Phi-\Psi_\star},
\]

or equivalently the common-source condition

\[
J_{\cal C}[\Psi_\star]
=J_{\rm IF}[\Phi-\Psi_\star].
\]

The branch selected by the open-system Legendre map is

\[
\Psi_\star[\Phi]
=\Phi_{\cal C}[J_{\cal O}[\Phi]],
\qquad
\Phi-\Psi_\star
=\Phi_{\rm IF}[J_{\cal O}[\Phi]].
\]

The symbol $\operatorname{Stat}$ means evaluation at a stationary point, not minimization. If the auxiliary Hessian

\[
\mathcal H_\star
=\Gamma_{\cal C}^{(2)}[\Psi_\star]
+\Gamma_{\rm IF}^{(2)}[\Phi-\Psi_\star]
\]

is invertible, the implicit-function theorem gives a locally unique branch. If additional branches exist, stationarity alone does not select the physical one.

## Algebra and decomposition covariance

The binary operation

\[
(\Gamma_1\circledast\Gamma_2)[\Phi]
=\operatorname*{Stat}_{\Psi}
\{\Gamma_1[\Psi]+\Gamma_2[\Phi-\Psi]\}
\]

is commutative by $\Xi=\Phi-\Psi$. It is associative after rewriting either nesting as the simultaneous stationary problem

\[
\operatorname*{Stat}_{\Psi,\Xi}
\{\Gamma_1[\Psi]+\Gamma_2[\Xi]+\Gamma_3[\Phi-\Psi-\Xi]\},
\]

provided the corresponding stationary branches exist and are compatible. Thus associativity is a branchwise statement, not a global uniqueness theorem.

For any source functional $X[J]$ that preserves the required Legendre maps and branches,

\[
W_{\cal C}\mapsto W_{\cal C}+X,
\qquad
W_{\rm IF}\mapsto W_{\rm IF}-X
\]

changes the individual dual actions but leaves their stationary composition equal to $\Gamma_{\cal O}$. This is covariance of the reduced decomposition, not a symmetry of a specified microscopic model.

## Quadratic realization

For

\[
\Gamma_{\cal C}[\Psi]=\frac12\Psi\cdot\mathbb A\cdot\Psi,
\qquad
\Gamma_{\rm IF}[\Psi]=\frac12\Psi\cdot\mathbb B\cdot\Psi,
\]

the stationary equation and solution are

\[
(\mathbb A+\mathbb B)\Psi_\star=\mathbb B\Phi,
\qquad
\Psi_\star=(\mathbb A+\mathbb B)^{-1}\mathbb B\Phi.
\]

When the required inverses exist,

\[
\Gamma_{\cal O}[\Phi]
=\frac12\Phi\cdot
(\mathbb A^{-1}+\mathbb B^{-1})^{-1}
\cdot\Phi.
\]

The response kernel $\mathbb B$ is generally not the microscopic influence kernel. In a fully quadratic microscopic model,

\[
\mathbb B^{-1}
=(\mathbb K_{\cal C}+\mathbb K_{\rm IF})^{-1}
-\mathbb K_{\cal C}^{-1}.
\]

For static nonlinear potentials the same construction becomes

\[
U_{\cal O}(\phi)
=\operatorname*{Stat}_{\psi}
\{U_{\cal C}(\psi)+U_{\rm IF}(\phi-\psi)\},
\]

with a force-balance equation and local uniqueness whenever the auxiliary Hessian has nonzero determinant.

## Verification log

- `Source-derived`: The connected-generator decomposition, inverse Legendre relations, branch identification, commutativity, associativity, decomposition covariance, quadratic kernels, and effective-potential realization were reconstructed from the official v1 TeX source and checked against the rendered 22-page PDF.
- `Checked`: Mathematica evaluated a non-diagonal symmetric $2\times2$ example and found zero residual between direct stationary substitution and $(\mathbb A^{-1}+\mathbb B^{-1})^{-1}$.
- `Checked`: In the scalar toy model $W_{\cal C}=aJ^2/2$, $W_{\rm IF}=bJ^2/2$, the paper's Legendre convention gives $\Gamma_{\cal C}=-\psi^2/(2a)$ and $\Gamma_{\rm IF}=-\chi^2/(2b)$; stationary composition returned $-\phi^2/[2(a+b)]$ exactly, equal to the Legendre transform of $W_{\cal O}$.
- `Checked`: Mathematica returned zero for scalar associativity of the parallel sum $P(a,b)=ab/(a+b)$ under nonvanishing-denominator assumptions.
- `Blocked`: The global functional-analytic existence of Legendre inverses and stationary branches is assumed rather than proved. The paper explicitly restricts its exact identity to locally invertible maps and compatible branches.
- `Not independently verified`: Nonperturbative SK contour regularity, renormalization of the separate functionals, and any application to canonical boundary gluing or continuum/Fock equivalence.
