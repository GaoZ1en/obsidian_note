---
paper id: 2606.30630v1
title: Poisson bracket and L-infinity algebras
authors:
  - Vinicius Bernardes
  - Theodore Erler
  - Atakan Hilmi Firat
  - Igor Khavkine
publication date: 2026-06-29T17:56:40Z
abstract: |-
  The paper formulates the Peierls Poisson bracket of Lagrangian field theory in an L-infinity/BV language. A sigmoid-supported symplectic operator [Q_Phi, sigma] and the retarded-minus-advanced propagator are shown to be inverse to each other on the relevant cohomology, giving a homological explanation of Hamiltonian vector fields, conserved charges, and charge-algebra central terms.
comments: "27 pages, 3 figures"
url: https://arxiv.org/abs/2606.30630v1
summary: "A directly reusable Peierls/CPS dictionary: observables, Hamiltonian vector fields, charges, central extensions, and the causal propagator are organized by Q_Phi, [Q_Phi,sigma], and Delta_causal."
tags: []
---

Back to [[2026_06_30_overview]].

# Source Structure Map

- Introduction: states the goal as an $L_\infty$ reconstruction of the Peierls bracket and of the inverse relation between the causal propagator and the CPS symplectic form.
- Conventions: all $L_\infty$ products are odd, graded commutative, and of degree $+1$; commutators are graded by parity.
- Review: defines the BV vector space, equation-of-motion state, linearized kinetic operator, gauge transformations, action symmetries, observables, the sigmoid-smeared symplectic form, and conserved charges.
- Formalism: proves the two maps $f_\Phi\mapsto \xi_F$ and $\xi_\Phi\mapsto f_\Phi$, then derives the Peierls bracket and symmetry charge algebra.
- Examples: checks the construction on a nonrelativistic particle and contrasts it with the obstruction in $p$-adic string theory.
- Inverse of the causal propagator: packages the inverse relation into cohomology and then into a Peierls mapping-cone complex.

# Notation and Conventions

- $\mathcal H$ is the graded BV vector space; $\omega$ is the odd nondegenerate graded antisymmetric BV inner product of grade $-1$.
- $\hat{\mathcal P}$ is the field space, $\mathcal P_{\mathrm{pre}}$ the solution/pre-phase space, and $\mathcal P$ the gauge-reduced phase space.
- $\Phi$ is the full field; $q_\Phi$ is the Euler-Lagrange state, so the equation of motion is $q_\Phi=0$.
- $Q_\Phi$ is the linearized kinetic operator. It is cyclic up to temporal boundary terms and becomes nilpotent on shell.
- $\sigma$ is a sigmoid: zero at past infinity and one at future infinity. It is the smoothed replacement for a Cauchy-surface step function.
- $\tau$ is a compact temporal regulator used to kill temporal-infinity terms.
- $F$ is an observable, $f_\Phi$ its characteristic state, and $F_\Phi$ the corresponding characteristic operator.
- $\xi_\Phi$ is a field-space vector field; $\Xi_\Phi$ is its linearization operator.
- $\Delta_\Phi^R$, $\Delta_\Phi^A$, and $\Delta_\Phi^{\mathrm{causal}}=\Delta_\Phi^R-\Delta_\Phi^A$ are the retarded, advanced, and causal propagators.
- $\mathcal H_R$, $\mathcal H_A$, and $\mathcal H_{\mathrm{loc}}$ are retarded, advanced, and time-localized subspaces; $\mathcal H_{\mathrm{Peierls}}=\mathcal H_{\mathrm{loc}}\oplus\mathcal H$ is the mapping-cone space used at the end.

# The Field Equation and the Linearized Operator

The paper starts from an $L_\infty$ field equation

$$\begin{align}
q_\Phi=0.
\end{align}$$

Its linearization is $Q_\Phi$. The key algebraic identities are the on-shell Noether identity

$$\begin{align}
Q_\Phi q_\Phi=0,
\end{align}$$

and cyclicity of $Q_\Phi$ with respect to $\omega$, modulo terms localized at temporal infinity. An infinitesimal gauge transformation has the schematic form

$$\begin{align}
\mathcal L_\Lambda\Phi=Q_\Phi\lambda_\Phi+\Lambda_\Phi q_\Phi,
\end{align}$$

so gauge directions are $Q_\Phi$-exact after imposing the equation of motion.

An action symmetry is a vector field $\xi_\Phi$ satisfying

$$\begin{align}
Q_\Phi\xi_\Phi-\Xi_\Phi q_\Phi=0.
\end{align}$$

This is the $L_\infty$ version of preserving the equation-of-motion ideal. In the vault's CPS language, this is the pre-Hamiltonian symmetry condition before quotienting by gauge.

# The Sigmoid Symplectic Operator

The central CPS object is

$$\begin{align}
\Omega =\frac12\omega\!\left(\delta\Phi,[Q_\Phi,\sigma]\delta\Phi\right).
\end{align}$$

The commutator $[Q_\Phi,\sigma]$ localizes the bilinear pairing near the transition region of the sigmoid. A sharp Cauchy slice is replaced by a smooth time cutoff, avoiding distributional boundary manipulations while keeping the same homological role.

For a symmetry $\xi_\Phi$, the paper's charge can be written in terms of $[Q_\Phi,\sigma]\xi_\Phi$ and a correction involving $\Xi_\Phi q_\Phi$. The source also gives a $\tau$-regularized total derivative form, making clear that the construction is temporal-boundary regulated rather than a spatial-edge-mode analysis.

Local translation:

- $[Q_\Phi,\sigma]$ is the symplectic-current-to-Cauchy-form map.
- $\Omega$ is the CPS symplectic form on the pre-phase space.
- Since the paper suppresses spatial boundary contributions, finite-boundary and corner charges in the vault require adding the missing spatial boundary terms before direct reuse.

# Observables Produce Hamiltonian Vector Fields

An observable $F$ has variation

$$\begin{align}
\delta F=\omega(\delta\Phi,f_\Phi),
\end{align}$$

where $f_\Phi$ is localized and gauge invariant on shell:

$$\begin{align}
Q_\Phi f_\Phi=0.
\end{align}$$

The forced linearized equation is

$$\begin{align}
Q_\Phi\varphi=f_\Phi.
\end{align}$$

Choosing retarded and advanced inverses gives

$$\begin{align}
Q_\Phi\Delta_\Phi^{R/A}=1, \qquad \Delta_\Phi^{\mathrm{causal}}=\Delta_\Phi^R-\Delta_\Phi^A, \qquad Q_\Phi\Delta_\Phi^{\mathrm{causal}}=0.
\end{align}$$

The Hamiltonian vector field of $F$ is

$$\begin{align}
\mathcal L_{\xi_F}\Phi =\Delta_\Phi^{\mathrm{causal}}f_\Phi.
\end{align}$$

The paper proves

$$\begin{align}
\iota_{\xi_F}\Omega+\delta F=0
\end{align}$$

using the sigmoid support, cyclicity of $Q_\Phi$, and advanced/retarded adjointness. This is the local version of inverting the CPS symplectic form by the causal propagator.

# Symmetries Produce Observable Characteristics

Conversely, a symplectic action symmetry $\xi_\Phi$ gives the characteristic

$$\begin{align}
f_\Phi=[Q_\Phi,\sigma]\xi_\Phi.
\end{align}$$

This is the algebraic heart of the paper: the same operator that defines the symplectic form turns a symmetry into the observable derivative of its conserved charge.

The map is local near the transition region of $\sigma$. If $\xi_\Phi$ is a pure gauge direction, $f_\Phi$ is trivial in the corresponding local cohomology. Thus the source identifies the physical symmetry class with a cohomology class rather than with a raw field-space vector field.

# Peierls Bracket and Central Extension

For two observables $F$ and $G$ with characteristics $f_\Phi$ and $g_\Phi$, the bracket is

$$\begin{align}
[F,G]=\mathcal L_{\xi_G}F =\omega\!\left(f_\Phi,\Delta_\Phi^{\mathrm{causal}}g_\Phi\right).
\end{align}$$

This is the Peierls bracket in $L_\infty$ notation. Its antisymmetry comes from the adjointness relation for retarded and advanced propagators together with cyclicity of $\omega$.

For action symmetries $\xi$ and $\gamma$, the corresponding charges satisfy

$$\begin{align}
[F_\xi,F_\gamma]+F_{[\xi,\gamma]}=C_{\xi,\gamma},
\end{align}$$

with central term

$$\begin{align}
C_{\xi,\gamma} =\omega\!\left(\xi_\Phi,[Q_\Phi,\sigma]\gamma_\Phi\right)\big|_{\Phi=0}.
\end{align}$$

This is directly useful for the vault: a central extension is the symplectic pairing of one symmetry with the localized characteristic of the other, evaluated at the background.

# Particle Example and the Bargmann Central Term

For a nonrelativistic particle,

$$\begin{align}
S=\frac{m}{2}\int dt\,\dot X^2,\qquad q^i=m\ddot X^i,\qquad Q^{ij}=m\delta^{ij}\frac{d^2}{dt^2}\delta(t-t').
\end{align}$$

The paper recovers the Galilean generators $H$, $P_i$, $L_{ij}$, and $B_i$. With the sigmoid identities

$$\begin{align}
\int dt\,\sigma'(t)=1,\qquad \int dt\,t\sigma''(t)=-1,
\end{align}$$

the bracket gives

$$\begin{align}
[X^i(0),P^j]=\delta^{ij}, \qquad [P^i,B^j]=m\delta^{ij}.
\end{align}$$

The second equation is the Bargmann mass central extension. In the note workflow, this is the cleanest low-dimensional test for signs in the central term formula.

# The P-Adic String Obstruction

For the $p$-adic string example, the linear operator is nonlocal and has infinitely many higher-derivative modes. The paper writes the kinetic function schematically as

$$\begin{align}
K(E)=\frac1{g^2}\left(p^{-E^2/2}-p\right).
\end{align}$$

The pole structure prevents a consistent choice of advanced/retarded contour compatible with all modes and the required growth conditions. The source conclusion is that a full Poisson bracket does not exist unless one discards unstable higher-derivative modes. This is not a failure of the Peierls formalism; it is a failure of the analytic input required to define $\Delta^R$ and $\Delta^A$.

# The Peierls Complex

The final section packages the inverse relation as a cohomological statement. The two key maps are

$$\begin{align}
H^1_{\mathrm{loc}}(Q_\Phi)\longrightarrow H^0(Q_\Phi), \qquad [f]\mapsto[\Delta_\Phi^{\mathrm{causal}}f],
\end{align}$$

and

$$\begin{align}
H^0(Q_\Phi)\longrightarrow H^1_{\mathrm{loc}}(Q_\Phi), \qquad [\xi]\mapsto\left[\, [Q_\Phi,\sigma]\xi \,\right].
\end{align}$$

The paper then forms a Peierls mapping cone. Its contracting homotopy explains why the causal propagator and $[Q_\Phi,\sigma]$ are inverse on cohomology even though neither is a literal inverse on the full complex.

This is the part most likely to transfer to BV/BRST versions of the vault's CPS notes: observable characteristics and symmetries should be treated as cohomology classes, while $[Q,\sigma]$ is the connecting map.

# Local CPS and Charge Dictionary

- Observable derivative: $f_\Phi$ corresponds to the source/functional-derivative side of a Hamiltonian observable.
- Hamiltonian vector field: $\xi_F=\Delta^{\mathrm{causal}}f_\Phi$ corresponds to the induced motion on phase space.
- CPS symplectic form: $\Omega=\frac12\omega(\delta\Phi,[Q,\sigma]\delta\Phi)$ is the smoothed Cauchy-slice integral.
- Conserved charge: $F_\xi$ is built from the localized characteristic $[Q,\sigma]\xi$.
- Central term: $C_{\xi,\gamma}$ is the charge-algebra cocycle.
- Gauge quotient: $Q$-exact directions are pure gauge; the physical maps live in cohomology.
- Boundary caveat: spatial boundary, edge-mode, and corner terms are not part of the source setup and must be restored before applying the formula to finite-boundary notes.

# Verification Log

## Checked

- Mathematica checked the Galilean integration-by-parts identities used in the source's particle example. Under $\int\sigma'=1$ and $\int t\sigma''=-1$, the source expressions give $[X^i(0),P^j]=\delta^{ij}$ and $[P^i,B^j]=m\delta^{ij}$.
- Mathematica also checked the elementary algebra used by the central-term normalization in that example: $-(-1)=1$ and $m(1)(-1+2)=m$.

## Blocked

- The full contraction proof $\iota_{\xi_F}\Omega+\delta F=0$ was not independently reproduced because it depends on the paper's graded cyclicity conventions, temporal-boundary regulator, and formal integration-by-parts setup.
- The Peierls-complex contracting homotopy was not machine-checked because the source gives it as an abstract homological-algebra construction over graded spaces, not as a finite symbolic identity.
- The $p$-adic contour obstruction was not independently checked because it depends on analytic pole-growth and contour assumptions rather than finite algebra.

## Failed

- No independent check failed during this run.
