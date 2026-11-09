---
paper id: 2607.29668v1
title: A-type Sigma Models from Differential Poisson Geometry
authors:
  - Cesar Arias
  - Per Sundell
publication date: 2026-07-31T17:52
abstract: |-
  In the symplectic phase of the differential Poisson sigma model, the graded target T[1]M and its compatible Poisson tensor select a classical A-type model on a not necessarily Kähler target. The parent Jacobi identities force one connection to be flat while the curvature of its torsionful transpose supplies the quartic coupling; the construction also induces a differential Poisson bracket and a claimed strict L-infinity structure on target forms.
comments: "v1: 24 pages"
url: https://arxiv.org/abs/2607.29668v1
summary: "A first-order Poisson origin for a restricted non-Kähler A-type model, with a fully explicit torsionful compact example."
tags: []
---

Back to [[2026_08_03_overview]].

# Why This Is a Useful Medium-Priority Model

This is a direct symplectic/Poisson construction of a field theory, with an explicit distinction between parent and reduced cohomological closure. It is useful as a controlled model for the vault's Poisson, BRST, and first-order-formalism work. It remains medium priority because the paper does not connect its symplectic structure to gravity, boundaries, edge modes, or charges, and the claimed shifted $L_\infty$ grading still needs a dedicated sign audit.

# The Graded Target and Its Two Connections

The target of the differential Poisson sigma model (DPSM) is

$$\begin{align}
T[1]M:\qquad Z^A=(x^a,\theta^a),\qquad \deg x^a=0,\qquad\deg\theta^a=1,
\end{align}$$

with

$$\begin{align}
C(T[1]M)\cong\Omega^\bullet(M),\qquad Q=\theta^a\frac{\partial}{\partial x^a},\qquad Q^2=0.
\end{align}$$

Thus $Q$ represents the de Rham differential. A graded Poisson tensor $\Pi$ obeys

$$\begin{align}
[\Pi,\Pi]=0,
\end{align}$$

and is compatible with $Q$ as a derivation of the bracket.

Two target connections must be kept distinct. In a coordinate frame,

$$\begin{align}
\widetilde\Gamma^a{}_{bc}=\Gamma^a{}_{cb} =\Gamma^a{}_{bc}-T^a{}_{bc}.
\end{align}$$

$\Gamma$ defines the covariant derivative in the fermionic kinetic term, while $\widetilde\Gamma$ preserves the Poisson tensor and its curvature supplies the quartic interaction. The shifted momentum

$$\begin{align}
\lambda_a=p_a-\Gamma^c{}_{ab}\theta^b\chi_c
\end{align}$$

makes the covariant structure of the first-order action transparent.

# Graded Poisson Tensor and the Parent Action

In the nondegenerate phase the symmetric ambiguity in the mixed bracket can be absorbed into a Poisson-compatible connection. With that choice,

$$
\Pi^{AB}=
\begin{pmatrix}
\pi^{ab}&-\pi^{ad}\Gamma^b{}_{cd}\theta^c\\
\pi^{bd}\Gamma^a{}_{cd}\theta^c&
\left(-\frac12\widetilde R_{cd}{}^{ab}
+\pi^{ef}\Gamma^a{}_{ec}\Gamma^b{}_{fd}\right)\theta^c\theta^d
\end{pmatrix}.
$$

Substitution into the universal graded Poisson-sigma action cancels the connection-square terms and gives

$$\begin{align}
S_{\rm DPSM}=\int_\Sigma\left[ p_a\wedge dx^a +\chi_a\wedge\nabla\theta^a +\frac12\pi^{ab}p_a\wedge p_b +\frac14\widetilde R_{ab}{}^{cd} \theta^a\theta^b\chi_c\wedge\chi_d \right].
\end{align}$$

The parent Jacobi identities include

$$\begin{align}
\pi^{d[a}T^b{}_{de}\pi^{c]e}=0,\qquad \pi^{ae}\pi^{bf}R_{ab}{}^c{}_d=0,\qquad \pi^{ab}\nabla_b\widetilde R_{cd}{}^{ef}=0,
\end{align}$$

and

$$\begin{align}
\widetilde R_{a[b}{}^{(cd}\widetilde R_{mn]}{}^{p)q}=0.
\end{align}$$

If $\pi$ is invertible, the second identity implies

$$\begin{align}
R(\Gamma)=0.
\end{align}$$

This does not imply $\widetilde R=0$: for a flat torsionful parent connection,

$$\begin{align}
\widetilde R_{ab}{}^c{}_d =-2\nabla_{[a}T^c{}_{b]d} +2T^c{}_{[a|e|}T^e{}_{b]d}.
\end{align}$$

The quartic coupling is therefore curvature induced by torsion and transposition, not Levi--Civita curvature.

# Eliminating Momenta Gives the A-Type Action

Let $\omega=\pi^{-1}$. The $p_a$ equation is algebraic,

$$\begin{align}
dx^a+\pi^{ab}p_b=0 \quad\Longrightarrow\quad p_a=-\omega_{ab}dx^b.
\end{align}$$

Substitution yields

$$\begin{align}
S_{\rm red}=\int_\Sigma\left[ \frac12\omega_{ab}dx^a\wedge dx^b +\chi_a\wedge\nabla\theta^a +\frac14\widetilde R_{ab}{}^{cd} \theta^a\theta^b\chi_c\wedge\chi_d \right].
\end{align}$$

This has the topological symplectic term, fermion kinetic term, and quartic curvature interaction of an A-type model, but assumes neither a complex structure nor a Kähler metric. If the parent torsion vanishes, then $\widetilde\Gamma=\Gamma$ and both curvatures vanish; a nonzero quartic term requires torsion in this strict construction.

# Off-Shell Parent Symmetry Versus On-Shell Reduced Symmetry

In the shifted first-order variables,

$$\begin{align}
Qx^a=\theta^a,\qquad Q\theta^a=0,\qquad Q\lambda_a=0,\qquad Q\chi_a=-\lambda_a.
\end{align}$$

These are two nilpotent doublets, so $Q^2=0$ off shell, and

$$\begin{align}
S_{\rm DPSM}=Q\Psi,\qquad \Psi=-\int_\Sigma\chi_a\wedge \left(dx^a+\frac12\pi^{ab}\lambda_b\right).
\end{align}$$

After eliminating $p_a$, $\lambda_a$ is composite and

$$\begin{align}
Q\chi_a=\omega_{ab}dx^b+\Gamma^c{}_{ab}\theta^b\chi_c.
\end{align}$$

Now

$$\begin{align}
Q^2\chi_a=-\omega_{ab}E^b,\qquad E^a=\nabla\theta^a+ \frac12\widetilde R_{cd}{}^{ab}\theta^c\theta^d\chi_b.
\end{align}$$

The reduced transformation is therefore nilpotent only modulo the $\chi$ equation $E^a=0$. This is the key formalism distinction: integrating out an algebraic momentum preserves the classical action but trades off-shell cohomological closure for on-shell closure.

# Differential Poisson Observables

A target form $\eta$ defines a local zero-form observable $\mathcal O_\eta$, with

$$\begin{align}
\mathcal Q\mathcal O_\eta=\mathcal O_{d\eta}.
\end{align}$$

The graded target bracket induces

$$\begin{align}
\{\eta,\rho\} =\pi^{ab}(\nabla_a\eta)\wedge(\nabla_b\rho) +(-1)^{|\eta|}\widetilde R^{ab}\wedge \iota_a\eta\wedge\iota_b\rho,
\end{align}$$

where

$$\begin{align}
\widetilde R^{ab}=\frac12\widetilde R_{cd}{}^{ab} dx^c\wedge dx^d.
\end{align}$$

The source states graded antisymmetry, Jacobi, and

$$\begin{align}
d\{\eta,\rho\}=\{d\eta,\rho\} +(-1)^{|\eta|+1}\{\eta,d\rho\}.
\end{align}$$

It then sets $\ell_1=d$, $\ell_2=\{\cdot,\cdot\}$, and $\ell_{n\ge3}=0$ on $\Omega^\bullet(M)[1]$. The existence of a two-operation chain-level structure is source-derived; the exact degree-$-1$ convention and shifted $L_\infty$ signs were not independently audited in this run.

# Global Obstruction and the Kodaira--Thurston Example

For invertible $\pi$, $R(\Gamma)=0$. On a simply connected target, flat parallel transport gives a global frame, so $TM$ must be trivial. This excludes compact simply connected examples such as $\mathbb{CP}^n$ and K3, whose nonzero Euler characteristics obstruct parallelizability.

The compact non-Kähler Kodaira--Thurston example uses

$$\begin{align}
de^1=de^2=de^3=0,\qquad de^4=e^1\wedge e^2,
\end{align}$$

$$\begin{align}
[E_1,E_2]=-E_4,\qquad \omega=e^1\wedge e^4+e^2\wedge e^3,\qquad \pi=-E_1\wedge E_4-E_2\wedge E_3.
\end{align}$$

The parent connection matrices are

$$
\Gamma_1=
\begin{pmatrix}
0&0&0&0\\0&0&0&0\\-1&0&0&0\\0&0&0&0
\end{pmatrix},\qquad
\Gamma_2=
\begin{pmatrix}
0&0&0&0\\0&0&0&0\\0&0&0&1\\0&0&0&0
\end{pmatrix},\qquad
\Gamma_3=\Gamma_4=0.
$$

In this non-coordinate frame,

$$\begin{align}
R(E_a,E_b)=[\Gamma_a,\Gamma_b]-C^c{}_{ab}\Gamma_c,
\end{align}$$

and the parent curvature vanishes. Transposition must include the frame bracket,

$$\begin{align}
(\widetilde\Gamma_a)^c{}_b=\Gamma^c{}_{ba}+C^c{}_{ab}.
\end{align}$$

The nonzero torsion components are

$$\begin{align}
T^3{}_{24}=1=-T^3{}_{42},\qquad T^4{}_{12}=1=-T^4{}_{21},
\end{align}$$

while the transposed curvature is

$$\begin{align}
\widetilde R_{12}{}^3{}_2=1,\qquad \widetilde R_{12}{}^{33}=1=-\widetilde R_{21}{}^{33}.
\end{align}$$

This is the paper's decisive example: a compact symplectic non-Kähler target with flat $\Gamma$, torsionful $\widetilde\Gamma$, and a nonzero quartic coupling.

# Verification Note

## Independently Checked

- Mathematica inverted the displayed $\omega$ matrix, found $\det\omega=1$, and reproduced the stated $\pi$.
- The displayed $\Gamma_a$ matrices and frame structure constants give zero parent curvature and exactly the four stated torsion components.
- The non-coordinate transposition formula reproduces all four displayed $\widetilde\Gamma_a$ matrices, and $\widetilde\Gamma_a^T\omega+\omega\widetilde\Gamma_a=0$ for every $a$.
- The only nonzero transposed-curvature components are $\widetilde R_{12}{}^3{}_2=1$ and its antisymmetric partner; raising with $\pi$ gives $\widetilde R_{12}{}^{33}=1$ and its partner.
- Exhaustive component evaluation gave zero residuals for the torsion Jacobi identity, $\pi^{ab}\nabla_b\widetilde R_{cd}{}^{ef}=0$, and the curvature-square identity.

## Source-Derived Boundary

The connection-square cancellation in the full graded action, equivalence between field-equation integrability and all parent identities, off-shell/on-shell $Q$-variation signs, and the degree conventions of the differential Poisson and strict $L_\infty$ structures were not independently reproduced. No quantum A-model, localization, or Gromov--Witten claim is made by the paper or by this note.
