---
paper id: 2606.26224v1
title: Conserved charges and $L_\infty$ algebras
authors:
  - Vinícius Bernardes
  - Theodore Erler
  - Atakan Hilmi Fırat
publication date: 2026-06-24T18:00
abstract: |-
  The paper gives a formula for conserved charges in arbitrary Lagrangian field theories written as cyclic $L_\infty$ algebras. The charge is expressed directly in terms of $L_\infty$ data rather than derivative-local Lagrangian structure, so it also applies to nonlocal theories such as string field theory. The examples recover scalar stress-tensor charges, nonlocal $p$-adic string Hamiltonians, Yang--Mills surface charges, and the Brown--York surface charge of general relativity.
comments: "32+12 pages, 1 figure"
url: https://arxiv.org/abs/2606.26224v1
summary: "A cyclic $L_infty$ charge formula turns a field-space symmetry into a Hamiltonian charge through the failure of a cut regulator to commute with the action coderivation."
tags: []
---

Back to [[2026_06_27_overview]].

# Paper structure and conventions

The paper starts from the cyclic $L_\infty$ packaging of a Lagrangian field theory and uses a sigmoid operator $\sigma$ as the algebraic representative of a Cauchy cut. Its main point is that an action symmetry $\xi_\Phi$ becomes a Hamiltonian vector field on covariant phase space because the cut operator fails to commute with the deformed BRST/kinetic operator $Q_\Phi$ and with the symmetry operator $\Xi_\Phi$.

The source structure is:

- Section 1 introduces the target formula and the covariant phase-space form

$$\begin{align}
\Omega=\frac12\omega(\delta\Phi,[Q_\Phi,\sigma]\delta\Phi),
\end{align}$$

  where the commutator localizes the symplectic pairing near the cut.
- Section 2.1 defines the cyclic $L_\infty$ action, the Euler-Lagrange state $q_\Phi$, the linearized kinetic operator $Q_\Phi$, and the gauge form

$$\begin{align}
\mathcal L_\Lambda\Phi=Q_\Phi\lambda_\Phi+\Lambda_\Phi q_\Phi.
\end{align}$$

- Section 2.2 constructs the covariant phase space as the quotient of $q_\Phi=0$ by gauge orbits and defines $\Omega$ with $\sigma$.
- Section 2.3 defines action symmetries and observables. The key off-shell symmetry identity is

$$\begin{align}
Q_\Phi\xi_\Phi-\Xi_\Phi q_\Phi=0.
\end{align}$$

- Section 2.4 proves that the restricted action symmetry is Hamiltonian and gives localized and total-derivative charge formulae.
- Section 2.5 proves gauge invariance, linearity, localization, and the Noether-second-theorem statement that trivial gauge transformations have zero charge.
- Section 3 rewrites the construction in tensor coalgebra language.
- Section 4 tests the formula on scalar fields, $p$-adic string theory, Yang--Mills surface charges, general relativity, and Yang--Mills Killing charges with spatial boundaries.
- Appendices A--C fix tensor-algebra normalization, explain why the charge is an on-shell observable rather than a known off-shell deformation, and translate the formulas into DeWitt notation.

The notation dictionary is:

- $\Phi$: grade-zero field.
- $\omega$: grade $-1$ graded-antisymmetric cyclic pairing.
- $L_n$: odd graded-symmetric $L_\infty$ products, with $Q=L_1$.
- $q_\Phi$: Euler-Lagrange state.
- $Q_\Phi$: field-dependent linearized kinetic operator.
- $\sigma$: self-adjoint sigmoid/cut operator with $\sigma(-\infty)=0$ and $\sigma(+\infty)=1$.
- $\tau$: temporal regulator replacing $\Phi$ by $\tau\Phi$ when integrations by parts require decay at temporal infinity.
- $\xi_\Phi,\Xi_\Phi$: symmetry characteristic and its linearization.
- $\lambda_\Phi,\Lambda_\Phi$: gauge parameter and trivial gauge operator.
- $f_\Phi,F_\Phi$: observable characteristic and its linearization.
- $M,\xi,f$: tensor-coalgebra coderivations; $\pi_1$ projects to the one-field component.

# Cyclic $L_\infty$ action and equations

The action is written as

$$\begin{align}
S=-\frac12\omega(\Phi,Q\Phi)-\sum_{n=2}^{\infty}\frac{1}{(n+1)!} \omega\bigl(\Phi,L_n(\Phi,\ldots,\Phi)\bigr).
\end{align}$$

Its variation has the compact form

$$\begin{align}
\widehat\delta S=\omega(\widehat\delta\Phi,q_\Phi),
\end{align}$$

where

$$\begin{align}
q_\Phi=Q\Phi+\sum_{n=2}^{\infty}\frac{1}{n!}L_n(\Phi,\ldots,\Phi).
\end{align}$$

The linearized operator is

$$\begin{align}
Q_\Phi A=QA+\sum_{n=1}^{\infty}\frac{1}{n!}L_{n+1}(\Phi,\ldots,\Phi,A).
\end{align}$$

The $L_\infty$ identities imply the Noether identity

$$\begin{align}
Q_\Phi q_\Phi=0.
\end{align}$$

The presymplectic phase space is the solution locus $q_\Phi=0$ modulo the gauge vectors $Q_\Phi\lambda_\Phi$.

# Sigmoid-cut covariant phase space

The phase-space two-form is

$$\begin{align}
\Omega=\frac12\omega(\delta\Phi,[Q_\Phi,\sigma]\delta\Phi).
\end{align}$$

The operator $\sigma$ is the replacement for choosing a Cauchy surface. In local field theory, $[Q_\Phi,\sigma]$ differentiates the cutoff and produces the usual symplectic-current flux through the chosen cut. In nonlocal theories, the same expression is still meaningful because it only requires $L_\infty$ data and the cyclic pairing.

The formula is close to local CPS language but not identical to a Wald current. The current has been algebraically integrated into $\omega$ and the cut dependence is placed in $[Q_\Phi,\sigma]$. For the vault's finite-boundary and null-boundary notes, the transferable lesson is to keep the cut regulator explicit before deciding which corner terms vanish.

# Conserved charge from a symmetry

An action symmetry is not only a vector field whose action variation vanishes on shell. The source uses the stronger algebraic condition

$$\begin{align}
Q_\Phi\xi_\Phi-\Xi_\Phi q_\Phi=0.
\end{align}$$

The Hamiltonian relation is

$$\begin{align}
\iota_\xi\Omega+\delta F_\xi=0.
\end{align}$$

One charge expression is the localized formula

$$\begin{align}
F_\xi=-\int_0^1ds\, \omega\left( \frac{d\Phi(s)}{ds}, [Q_{\Phi(s)},\sigma]\xi_{\Phi(s)}
-[\Xi_{\Phi(s)},\sigma]q_{\Phi(s)} \right).
\end{align}$$

The total-derivative form is

$$\begin{align}
F_\xi=-\omega(\sigma\xi_\Phi,q_\Phi)\big|_\tau.
\end{align}$$

The two forms are useful in different computations. The total-derivative form is often easier for stress tensors and boundary charges after integrations by parts. The localized form is better for proving finite-cut support because every $\sigma$ appears inside a commutator.

The characteristic state of the charge is

$$\begin{align}
f_\Phi=[Q_\Phi,\sigma]\xi_\Phi-[\Xi_\Phi,\sigma]q_\Phi.
\end{align}$$

On shell it obeys

$$\begin{align}
Q_\Phi f_\Phi=0,
\end{align}$$

so the charge is an on-shell observable. Appendix B emphasizes that this does not make it a known off-shell deformation, because the corresponding coderivation does not generally commute with $M$ off shell.

# Coalgebra form

In the tensor-coalgebra language, the action coderivation is $M$ and the symmetry coderivation is $\xi$. The charge is controlled by the obstruction

$$\begin{align}
M\sigma\xi-\xi\sigma M.
\end{align}$$

The compact expression is

$$\begin{align}
F_\xi=-\int_0^1 ds\, \omega\left( \frac{d\Phi(s)}{ds}, \pi_1\Bigl(M\sigma\xi-\xi\sigma M\Bigr)\frac{1}{1-\Phi(s)} \right).
\end{align}$$

Expanding this expression gives the $L_n,\Xi_n$ product ledger. The normalization convention is $M_n=L_n/n!$ and $\xi_n=\Xi_n/n!$ in the symmetrized tensor algebra.

This is the algebraic heart of the paper: the symmetry and dynamics commute before a cut is inserted, but the cut turns their commutator into a finite charge.

# Scalar stress tensor check

For the scalar field

$$\begin{align}
S=\int d^Dx\left(-\frac12\partial_\mu\phi\,\partial^\mu\phi-V(\phi)\right),
\end{align}$$

the Euler-Lagrange state is

$$\begin{align}
q=-\Box\phi+V'(\phi).
\end{align}$$

For a constant translation vector $v^\mu$, the symmetry is

$$\begin{align}
\xi=v^\mu\partial_\mu\phi.
\end{align}$$

The total-derivative charge gives

$$\begin{align}
F_v=-\int d^Dx\,\sigma\,v^\mu\partial_\mu\phi\,(-\Box\phi+V'(\phi))\big|_\tau.
\end{align}$$

After integrating by parts, this becomes

$$\begin{align}
F_v=-\int d^Dx\,(\partial_\mu\sigma)v_\nu \left[ \partial^\mu\phi\partial^\nu\phi -\eta^{\mu\nu}\left(\frac12\partial^\lambda\phi\partial_\lambda\phi+V(\phi)\right) \right].
\end{align}$$

Thus the standard stress tensor appears as

$$\begin{align}
T^{\mu\nu}=\partial^\mu\phi\partial^\nu\phi -\eta^{\mu\nu}\left(\frac12\partial^\lambda\phi\partial_\lambda\phi+V(\phi)\right).
\end{align}$$

# Boundary charge examples

For Yang--Mills theory with spatial boundary $\Gamma$, the gauge surface charge takes the form

$$\begin{align}
F_\lambda=-\frac{1}{g^2}\int_\Gamma \mathrm{vol}\, (D_\mu\sigma)n_\nu\,\mathrm{Tr}(\lambda F^{\mu\nu}).
\end{align}$$

The response is the normal electric field $n_\nu F^{\mu\nu}$ and the source is the residual boundary gauge parameter $\lambda|_\Gamma$.

For general relativity, the same prescription reduces the diffeomorphism charge to a Brown--York expression after Gauss--Codazzi manipulations and reference subtraction. The boundary response is $T^{\rm BY}_{\alpha\beta}$ and the source is a boundary-tangent vector $v^\beta$.

For Yang--Mills Killing charges, the charge is not just the bulk stress-tensor integral. A spatial-boundary term remains,

$$\begin{align}
\int_\Gamma(D_\mu\sigma)n_\nu v_\rho\,\mathrm{Tr}(F^{\mu\nu}A^\rho),
\end{align}$$

which is a useful warning for null-boundary work: a spacetime symmetry can carry a gauge-potential boundary correction even when the bulk expression resembles a stress-tensor charge.

# Local CPS translation

In the vault's CPS vocabulary:

- $[Q_\Phi,\sigma]$ is the algebraic replacement for integrating the symplectic current through a cut.
- $q_\Phi$ is the equation-of-motion/source slot.
- $Q_\Phi$ is the linearized equation-of-motion operator.
- $f_\Phi$ is the characteristic of the Hamiltonian observable.
- Gauge directions have zero charge unless the gauge parameter survives as a residual boundary parameter.
- For Maxwell/Yang--Mills, $n_\nu F^{\mu\nu}$ is the boundary response.
- For GR, the Brown--York tensor is the finite-boundary response after the needed boundary/corner regularization.
- The temporal regulator $\tau$ is part of the charge definition when integrations by parts would otherwise leave temporal-infinity transition terms.
- In the Yang--Mills boundary examples, the condition $n_\mu F^{\mu\nu}=0$ is a transition prescription during the $\tau$ cutoff, not a finite-time boundary condition that erases the physical surface charge.
- In the GR example, the analogous transition prescription sets the Brown--York response to zero only in the temporal transition region; the finite-time boundary response remains the quantity paired with the boundary-tangent vector field.

The formula is promising for nonlocal or string-field-theory examples where a standard derivative-local variational current is unavailable. For the vault's null-boundary notes, it should first be translated with an explicit cut regulator and only then compared to Wald/Iyer-Wald or Barnich-Brandt currents.

One source-local convention should be checked before reusing the Yang--Mills Killing charge with a boundary: the paper says the Killing vector is tangent to $\Gamma$ but writes the projected condition as $\gamma_\mu{}^\alpha v_\alpha=0$. With the usual projector convention $\gamma_\mu{}^\alpha=\delta_\mu{}^\alpha-n^\alpha n_\mu$, tangency would normally be written as $\gamma v=v$ or $n\cdot v=0$. This note keeps the boundary term formula source-derived rather than corrected.

# Verification log

## Checked

Mathematica was used to check the scalar stress-tensor identity in two-dimensional Minkowski signature as a representative local component check:

$$\begin{align}
\partial_\mu T^{\mu\nu}=(\Box\phi-V'(\phi))\partial^\nu\phi.
\end{align}$$

Equivalently, the stress tensor is conserved when the source equation $-\Box\phi+V'(\phi)=0$ holds. The check used symbolic derivatives with an arbitrary potential $V(\phi)$ and returned zero for both components of

$$\begin{align}
\partial_\mu T^{\mu\nu}-(\Box\phi-V'(\phi))\partial^\nu\phi.
\end{align}$$

## Blocked

The full cyclic $L_\infty$ derivation, the coalgebra expansion, the $p$-adic generating-function identity, and the GR Brown--York reduction were not independently reproduced in this run. They require either careful sign bookkeeping in the graded tensor algebra or a dedicated tensor/xAct check of the Gauss--Codazzi manipulations.

The boundary-projection convention in the Yang--Mills Killing-charge example was also not independently resolved.

## Failed

No failed independent check was found. The only completed machine check was the scalar stress-tensor conservation identity, so all other formulas above are source-derived rather than verified.
