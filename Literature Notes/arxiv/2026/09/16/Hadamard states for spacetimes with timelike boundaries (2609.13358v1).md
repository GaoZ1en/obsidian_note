---
paper id: 2609.13358v1
title: Hadamard states for spacetimes with timelike boundaries
authors:
  - Alessandro Pietro Contini
  - Alexander Strohmaier
publication date: 2026-09-11T17:47:06
abstract: |-
  The paper constructs pure quasifree Hadamard states for the Klein--Gordon field with Dirichlet boundary condition on globally hyperbolic spacetimes with timelike boundary. It formulates the microlocal spectrum condition on a Hilbert-space-valued one-particle distribution and proves existence by ultrastatic spectral analysis, positive-energy propagation, and deformation.
comments: ""
url: https://arxiv.org/abs/2609.13358v1
summary: "A rigorous Dirichlet boundary quantization framework that avoids direct microlocal analysis on the cornered product spacetime."
tags: []
---

Daily overview: [[2026_09_16_overview]]

# Result and Claim Boundary

The paper proves existence of a pure quasifree Hadamard state for a scalar Klein--Gordon operator

$$\begin{align}
P=\Box_g+V
\end{align}$$

with homogeneous Dirichlet boundary condition on a globally hyperbolic spacetime $\bar M$ with timelike boundary. The Hadamard condition is not imposed directly on the scalar two-point distribution on the cornered manifold $\bar M\times\bar M$. Instead it is imposed on the one-particle Hilbert-space-valued distribution

$$\begin{align}
\Phi=p\circ G_D,
\end{align}$$

where $G_D$ is the Dirichlet Pauli--Jordan propagator and $p$ is the positive-energy projection from a one-particle structure. The condition is

$$\begin{align}
\operatorname{WF}_b(\Phi)\subset\widetilde V^+\bar M,
\end{align}$$

the compressed future causal cone in the $b$-cotangent bundle.

The result is for a scalar, formally self-adjoint, normally hyperbolic operator with Dirichlet boundary conditions. It does not establish the corresponding statement for Robin, dynamical, gauge, gravitational, or nonlocal boundary conditions.

# Why This Is High Priority

This is directly relevant to the vault's scalar boundary-response and quantization work. It answers three concrete questions that recur in boundary sewing:

1. Which test functions survive time evolution when supports can hit a timelike boundary?
2. Which fractional Cauchy-data spaces implement the Dirichlet condition at the one-particle level?
3. How should the Hadamard positive-frequency condition be stated when the two-point kernel lives on a manifold with corners?

The answers are, respectively,

$$\begin{align}
C_c^\infty(\bar M), \qquad \mathcal D_{1/2}\oplus\mathcal D_{-1/2}, \qquad \operatorname{WF}_b(pG_D)\subset\widetilde V^+\bar M.
\end{align}$$

The paper therefore supplies a rigorous quantization layer for a scalar field with a timelike wall. It is complementary to action-first sewing: it starts after the boundary condition has been fixed and develops the propagator, symplectic quotient, one-particle structure, and microlocal state condition.

# Function Spaces and the Dirichlet Domain

On a Riemannian Cauchy surface $\bar\Sigma$ with boundary, let

$$\begin{align}
A=\Delta_D+V, \qquad \mathcal D_s=\operatorname{dom}(A^{s/2}).
\end{align}$$

The natural energy-scale Cauchy data are

$$\begin{align}
\mathcal D_{1/2}\oplus\mathcal D_{-1/2}.
\end{align}$$

In the compact case,

$$\begin{align}
\mathcal D_{1/2}=\dot H^{1/2}(\bar\Sigma) =H^{1/2}_{00}(\Sigma), \qquad \mathcal D_{-1/2}=H^{-1/2}(\bar\Sigma).
\end{align}$$

The dot is essential. At the critical exponent $1/2$, this is the Lions--Magenes fractional Dirichlet space, not a naive pointwise zero-trace subspace.

Test functions must be allowed to meet the boundary. The correct spacetime test space is

$$\begin{align}
C_c^\infty(\bar M),
\end{align}$$

because $C_c^\infty(M)$ is not invariant under propagation: a compactly supported interior wave can reach the timelike boundary.

# Propagators and the Symplectic Quotient

The paper proves existence, uniqueness, and finite propagation speed for the retarded and advanced initial-boundary-value problems. The Dirichlet inverses give

$$\begin{align}
G_D^\pm:C_c^\infty(\bar M)\longrightarrow C_{D,\mathrm{spc/sfc}}^\infty(\bar M), \qquad G_D=G_D^+-G_D^-.
\end{align}$$

The homogeneous exact sequence is

$$\begin{align}
0\longrightarrow C_{D,c}^\infty(\bar M) \xrightarrow{P}C_c^\infty(\bar M) \xrightarrow{G_D}C_{D,\mathrm{sc}}^\infty(\bar M) \xrightarrow{P}C_{\mathrm{sc}}^\infty(\bar M).
\end{align}$$

Thus the solution space is

$$\begin{align}
\ker_D P
\cong \frac{C_c^\infty(\bar M)}{P C_{D,c}^\infty(\bar M)}.
\end{align}$$

Formal self-adjointness and the vanishing Dirichlet trace make

$$\begin{align}
\omega([f],[h]) =\int_{\bar M}f,G_Dh,\mathrm d\operatorname{vol}_g
\end{align}$$

a nondegenerate symplectic form on the quotient.

This is an especially useful point for the vault: the boundary condition is encoded both in the domain of $P$ and in the quotient defining the classical phase space. No additional boundary observable sector is introduced for strict Dirichlet data.

# Boundary Microlocal Geometry

Near a boundary hypersurface $x=0$, the $b$-tangent algebra is generated by

$$\begin{align}
x\partial_x, \qquad \partial_{y^i},
\end{align}$$

and the dual $b$-cotangent frame is

$$\begin{align}
\frac{\mathrm dx}{x}, \qquad \mathrm dy^i.
\end{align}$$

The transpose of the anchor map sends an ordinary covector

$$\begin{align}
(x,y;\zeta,\eta)
\end{align}$$

to

$$\begin{align}
(x,y;\xi=x\zeta,\eta).
\end{align}$$

At the boundary, normal covector information is compressed. For adapted coordinates $(t,x,y)$, the image of the ordinary light cone is

$$\begin{align}
\widetilde V_{\partial M} =\{(\tau,0,\eta):\tau^2\geq|\eta|^2\}.
\end{align}$$

The paper works with normally regular distributions. For them, the $b$-wave-front set decomposes into the ordinary interior wave-front set and a boundary wave-front set measuring failure of strong tangential regularity.

Dirichlet boundary conditions satisfy the relevant Lopatinskij--Shapiro ellipticity condition in spacelike tangential directions. Therefore a homogeneous Dirichlet solution obeys

$$\begin{align}
\operatorname{WF}_b(u)\subset\widetilde V\bar M.
\end{align}$$

This localizes singularities to the compressed causal cone without yet choosing future or past orientation.

# One-Particle Hadamard Condition

For a one-particle structure, the positive-energy projection produces

$$\begin{align}
\Phi(f)=pG_Df\in H_+.
\end{align}$$

The two-point function is recovered by

$$\begin{align}
\omega_2(f,h) =\bigl(\Phi(\bar f),\Phi(h)\bigr)_{H_+}.
\end{align}$$

The paper defines a centred quasifree state to be Dirichlet--Hadamard when

$$\begin{align}
\Phi\in\mathscr N(\bar M;H_+), \qquad \operatorname{WF}_b(\Phi)\subset\widetilde V^+\bar M.
\end{align}$$

The Hilbert-space-valued formulation avoids doing the primary microlocal analysis on $\bar M^2$, whose boundary has corners. A general theorem relating the $b$-wave-front set of $\Phi$ to that of the sesquilinear kernel then transfers the information to $\omega_2$.

The condition is universal within the quasifree class: if $\omega_2$ and $\omega_2'$ are two Dirichlet--Hadamard two-point functions, then

$$\begin{align}
\omega_2-\omega_2'\in C^\infty(\bar M\times\bar M),
\end{align}$$

and the difference solves the Dirichlet problem in both variables.

# Positive-Energy Propagation

Suppose a normally regular solution satisfies

$$\begin{align}
Pu=0, \qquad u|_{\partial M}=0,
\end{align}$$

and has only future-directed $b$-singularities near one Cauchy surface. The paper proves

$$\begin{align}
\operatorname{WF}_b(u)\subset\widetilde V^+\bar M
\end{align}$$

globally.

The proof deliberately avoids tracing every reflected or gliding bicharacteristic. It uses a $b$-pseudodifferential partition

$$\begin{align}
u=u_++u_-+u_s \quad\bmod C^\infty,
\end{align}$$

microlocalized respectively near the future, past, and spacelike regions.

- Boundary elliptic regularity makes $u_s$ smooth.
- Disjoint future/past microsupports make the splitting unique modulo smooth terms.
- The equation implies $Pu_\pm$ and the Dirichlet traces of $u_\pm$ are smooth.
- Ordinary smooth well-posedness then propagates the local smoothness of $u_-$ globally.

Hence the past component is smooth and only the future component contributes to the wave-front set.

# Ultrastatic Construction

For

$$\begin{align}
\bar M=\mathbb R\times\bar\Sigma, \qquad g=\mathrm dt^2-g_{\bar\Sigma}, \qquad P=\partial_t^2+A,
\end{align}$$

the causal propagator is

$$\begin{align}
G_D(t)=\frac{\sin(t\sqrt A)}{\sqrt A}.
\end{align}$$

The complex structure on Cauchy data is

$$\begin{align}
J(f,h)=\left(-A^{-1/2}h,A^{1/2}f\right),
\end{align}$$

and the associated norm is

$$\begin{align}
\|(f,h)\|^2 =\|A^{1/4}f\|_{L^2}^2 +\|A^{-1/4}h\|_{L^2}^2.
\end{align}$$

The positive-energy space is the graph of $-i\sqrt A$. Under its identification with $\mathcal D_{1/2}$,

$$\begin{align}
\Phi(\varphi) =\frac{i}{\sqrt2}A^{-1/2} \int_{\mathbb R}e^{it\sqrt A}\varphi(t,\cdot)\,\mathrm dt.
\end{align}$$

After a time cutoff $\rho$, Fourier transformation gives the operator-valued factor

$$\begin{align}
\widehat\rho(\tau-\sqrt A).
\end{align}$$

Because $\operatorname{spec}(\sqrt A)\subset[0,\infty)$, this decays rapidly for $\tau<0$. A Mellin transform in the boundary-normal variable and Fourier transform tangentially then show the absence of past-directed compressed singularities:

$$\begin{align}
\operatorname{WF}_b(\Phi)\subset\widetilde V^+\bar M.
\end{align}$$

# Deformation to a General Spacetime

The existence proof follows a Fulling--Narcowich--Wald deformation strategy.

1. Choose a complete ultrastatic metric on the same Cauchy surface and construct its pure Dirichlet--Hadamard state by spectral calculus.
2. Interpolate to the target metric and potential in a finite time slab while preserving global hyperbolicity and the timelike boundary.
3. Use the time-slice axiom to transport the one-particle structure from an ultrastatic past neighbourhood to the interpolating spacetime.
4. Apply positive-energy propagation across the interpolation region.
5. Use the time-slice axiom again in a future neighbourhood where the interpolation equals the target spacetime, and propagate once more.

This proves existence on the target spacetime without constructing a global positive-frequency decomposition there directly.

# Relation to the Vault's Scalar Sewing Programme

The paper is best read as the quantization of a particular closed boundary problem, not as a derivation of that boundary problem from an action with open ports.

Useful imports are:

- the precise quotient and symplectic form for strict Dirichlet data;
- the critical fractional Cauchy-data space $\mathcal D_{1/2}\oplus\mathcal D_{-1/2}$;
- a one-particle formulation of the Hadamard condition compatible with a timelike wall;
- a proof that local positive frequency near one Cauchy slice propagates globally without a full reflected-ray analysis;
- smooth universality of differences between quasifree Hadamard two-point functions.

What remains outside its scope is equally important. Dirichlet conditions remove boundary variations rather than keeping them as sewing ports. To connect this framework to response-based gluing, one would need to replace the fixed boundary domain by a family of self-adjoint extensions or a boundary phase space, then determine how the response operator changes the symplectic quotient and microlocal spectrum condition.

# Verification Log

## Checked

- The TeX source was read through the distribution theory, Hilbert-space-valued $b$-wave-front set, well-posedness and exact sequence, positive-energy propagation, field algebra, ultrastatic estimate, deformation proof, and small-$b$-calculus appendix.
- Mathematica checked, for a single spectral mode of frequency $\omega>0$, that

$$
J=\begin{pmatrix}0&-\omega^{-1}\\ \omega&0\end{pmatrix}
$$

  satisfies $J^2=-1$, preserves the symplectic matrix, and gives

$$\begin{align}
-\Omega(x,Jx)=\omega f^2+\frac{h^2}{\omega}>0.
\end{align}$$

- Mathematica also checked that

$$\begin{align}
S_\omega(t)=\frac{\sin(\omega t)}{\omega}
\end{align}$$

  obeys $(\partial_t^2+\omega^2)S_\omega=0$, $S_\omega(0)=0$, and $\partial_tS_\omega(0)=1$. These are exact mode-level checks of the ultrastatic formulas, not a verification of the microlocal estimates.

## Assumptions

- $\bar M$ is globally hyperbolic with smooth timelike boundary.
- $P$ is scalar, formally self-adjoint, and normally hyperbolic.
- Homogeneous Dirichlet boundary conditions and the compatibility conditions required for smooth solutions.
- Positivity of the ultrastatic spatial operator so that its square roots and inverse fractional powers are defined as used.
- The normality, support, and regularity hypotheses entering the $b$-calculus and Hilbert-space-valued distribution results.

## Not Independently Verified

- The complete Mellin Paley--Wiener and small-$b$-calculus arguments.
- The Lopatinskij--Shapiro and boundary elliptic-regularity theorems cited from the microlocal PDE literature.
- The noncompact global well-posedness proof beyond inspection of its energy and exhaustion arguments.
- The Fulling--Narcowich--Wald deformation step as a theorem beyond the paper's construction.
- Extensions to other boundary conditions, interacting fields, or gauge theories.

# Bottom Line

The paper gives a technically clean existence theorem for pure quasifree Hadamard states with a timelike Dirichlet wall. Its most valuable conceptual move is to place the spectrum condition on $pG_D$ rather than directly on the cornered two-point kernel. For the vault, it provides a rigorous scalar boundary quantization benchmark and clarifies exactly which ingredients must change when fixed Dirichlet data are promoted to dynamical sewing data.
