---
paper id: 2608.24511v1
title: Hair or a Boundary Source? Covariant Phase Space of a Static Type-I Black Hole
authors:
  - Yi-kun Li
publication date: 2026-07-25T03:59
abstract: |-
  The paper studies a two-parameter static Ricci-flat type-I black-hole family whose deformation parameter changes the horizon shape and the limiting boundary geometry. It computes the Iyer--Wald/Barnich--Brandt surface-charge one-form, identifies its non-integrability with Lee--Wald flux through a limiting Weyl boundary, finds a field-dependent time normalization that makes the energy integrable, and rewrites the mechanics using a global dimensionless source coordinate.
comments: "14 pages"
url: https://arxiv.org/abs/2608.24511v1
summary: "A direct CPS case study in which a nonclosed fixed-time charge is matched to boundary symplectic response and converted into a source-work first law."
tags: []
---

See the daily placement and audit in [[2026_08_26_overview]].

# Verdict

**Correct for the algebraic charge, coordinate, horizon, and thermodynamic chains checked below.** The central pointwise claims that the full metric surface-charge density equals the stated coefficients and that the Brown--York response equals the Lee--Wald current remain Source-derived: the source contains formulas and analytic explanations but no executable tensor notebook from which to reproduce those long metric contractions independently.

The paper's most reusable result is the distinction

$$\begin{align}
\text{fixed boundary time }\partial_t \Longrightarrow \boldsymbol\alpha\text{ nonclosed}, \qquad \bar\xi=N\partial_t,\quad N=(1+B^2m^2)^{-1/2}
\Longrightarrow N\boldsymbol\alpha=\mathrm dH.
\end{align}$$

The deformation $y=Bm$ remains geometrically physical even though it is thermodynamically null for the normalized generator.

# How to Read This Paper

1. Read Secs. II--III first for the regular solution space, horizon data, adjusted Iyer--Wald charge, and nonzero curl.
2. Read Sec. IV with Appendix C.1--C.3 for the scale--shape coordinates $(H,y)$, integrating factors, and the exact-symmetry test that prevents treating the scaling direction as gauge.
3. Read Sec. V with Appendix B for the moving Weyl boundary and Brown--York/Lee--Wald response match. This is the most consequential but least independently reproduced chain.
4. Read Sec. VI for the global source-work first law and the singularity of the local $(S,B)$ chart.
5. Use Appendix A for conventions and limiting charge densities; Appendix C.4--C.8 supplies monotonicity and limiting-chart proofs.

# Complete Source Map

## I. Introduction

- Poses the distinction between geometric hair and external boundary data as a Hamiltonian integrability question.
- States the three tasks: compute the charge one-form, distinguish homothety from gauge degeneracy, and match the obstruction to a finite-mass Weyl boundary response.

## II. Static Type-I Solution and Thermodynamic Data

- **Metric and physical domain:** defines $P,w,f,u,\Delta_\phi$, the positive exterior branch, and

$$\begin{align}
m>0,\qquad 0<y=Bm<1,\qquad r>r_h.
\end{align}$$

- **Axis regularity and algebraic character:** explains why the parameter-dependent

$$\begin{align}
\Delta_\phi=(1+B^2m^2)^{-1}
\end{align}$$

  must vary with the metric in tangent vectors to the regular phase space.
- **Horizon geometry:** derives $r_h$, surface gravity, area, entropy, Komar mass, and the dimensionless horizon-shape ratio.

## III. Covariant Phase-Space Charges and Integrability

- **Surface charge:** fixes the Einstein--Hilbert Lee--Wald potential, Noether two-form, and adjusted charge

$$\begin{align}
\boldsymbol k_\xi[g;\delta g] =\delta\boldsymbol Q_\xi-\boldsymbol Q_{\delta\xi} -i_\xi\boldsymbol\Theta[g;\delta g].
\end{align}$$

- **Nonintegrability and symplectic flux:** evaluates the charge one-form for $\partial_t$, computes its solution-space curl, and identifies that curl with the contraction of the Lee--Wald current.
- **Field-dependent time normalization:** finds the integrating factor $N$, integrable energy $H$, and normalized thermodynamic relations.
- **Angular ensemble:** compares the regular phase space to an artificial fixed-$\Delta_\phi$ variation carrying an axis defect.
- **Hamiltonian meaning:** interprets integrability as a property of the chosen generator plus allowed phase space.

## IV. Scaling, Solution-Space Coordinates, and Exact Symmetries

- Introduces $(H,y)$, classifies all local integrating factors $\mu=N F(H)$, and fixes $F=1$ by Schwarzschild normalization along the full $B=0$ line.
- Proves the finite homothety and shows that its tangent carries nonzero exact-symmetry charges at fixed $G$; it is not a presymplectic degeneracy.

## V. Weyl Boundary Source and Symplectic Flux

- **Canonical Weyl map:** constructs $(\rho,z)$, takes the large-$r$ image before the zero-mass limit, and obtains a closed finite-mass surface of revolution.
- **Static source and canonical response:** compares the massless annular source to the finite-mass induced metric $h_{ab}$ and Brown--York momentum $\Pi^{ab}$. The antisymmetrized response

$$\begin{align}
\mathcal W_{Hy} =\delta_H\Pi^{ab}\,\delta_y h_{ab} -\delta_y\Pi^{ab}\,\delta_H h_{ab}
\end{align}$$

  is asserted to reproduce the pulled-back Lee--Wald current pointwise.

## VI. External Work and Black-Hole Mechanics

- Rewrites the Komar variables as $M=H\sqrt{1+y^2}$, $S=4\pi H^2$, and $T=\sqrt{1+y^2}/(8\pi H)$.
- Derives the global work term $\Psi_y\mathrm dy$.
- Shows that $B$ is only a local source coordinate at fixed entropy because $BH=y(1+y^2)^{-3/2}$ has a turning point.

## VII. Physical Interpretation and Conclusions

- Separates geometric modulus, Hamiltonian source, and time-normalization polarization.
- Interprets the one-sided Weyl canonical data as fixed by the vacuum exterior, while the reflected Israel source is one optional global completion.

## Appendix A. Covariant Phase-Space Conventions

- Defines exact tangent fields in the algebraic extension $w^2=P$.
- Gives the Barnich--Brandt component density and its asserted equality to the adjusted Iyer--Wald two-form.
- Supplies limiting angular charge densities and the spacetime closure argument.
- Makes the generator-variation cancellation explicit for $\xi=\mu(m,B)\partial_t$.

## Appendix B. Boundary Canonical Data and Moving Support

- Derives the Weyl Cauchy--Riemann system.
- States the radial symplectic identity and the role of the intrinsic corner term.
- Lists the limiting induced metric, seam extrinsic curvature, reflected Israel stress, and the Eulerian derivative-of-delta contribution from displacement of the support.

## Appendix C. Analytic Proofs and Limiting Charts

- Gives the tangent-basis transformation, homothety weights, integrating-factor proof, and monotonicity of the horizon shape.
- Separates the Schwarzschild, strong-deformation, axis-boundary, and fixed-$B$ massless limits.
- Describes the two branches of the local $B$-source chart.

# Theory, Notation, and Allowed Variations

The theory is four-dimensional vacuum Einstein gravity with

$$\begin{align}
G=1,\qquad \operatorname{sig}(g)=(-+++),\qquad \epsilon_{tr x\phi}>0.
\end{align}$$

The coordinates are $x^\mu=(t,r,x,\phi)$, $x=\cos\theta$, and the regular azimuthal coordinate has period $2\pi$. The metric functions are

$$\begin{aligned}
P&=1+B^2r\left[r+\left(2m+(B^2m^2-1)r\right)x^2\right],\\
w&=\sqrt P,\\
f&=\left(1-\frac{2m}{r}-B^2m^2\right)(1+B^2r^2),\\
u&=1+B^2mrx^2+w,\\
\Delta_\phi&=(1+B^2m^2)^{-1}.
\end{aligned}$$

The regular solution phase space varies $m$, $B$, and therefore $\Delta_\phi$ together:

$$\begin{align}
h_m=\partial_m g,\qquad h_B=\partial_B g.
\end{align}$$

Holding the numerical value of $\Delta_\phi$ fixed is a different ensemble with a conical axis source. It must not be substituted silently for the regular tangent vectors.

| generator | charge variation | status |
|---|---|---|
| $\partial_t$ | $\boldsymbol\alpha$ | nonintegrable on the two-parameter regular family |
| $N\partial_t$ | $N\boldsymbol\alpha=\mathrm dH$ | integrable |
| $T^{-1}\partial_t$ | $T^{-1}\boldsymbol\alpha=\mathrm dS$ | integrable |

For field-dependent generators the subtraction $-\boldsymbol Q_{\delta\xi}$ is essential; without it, variation of the normalization would be misidentified as physical metric charge.

# Horizon Data and the First Obstruction

The horizon and positive square-root branch give

$$\begin{align}
r_h=\frac{2m}{1-B^2m^2}, \qquad w_h=\frac{1+B^2m^2}{1-B^2m^2}.
\end{align}$$

The area density is independent of $x$:

$$\begin{align}
\sqrt{g_{xx}g_{\phi\phi}}\big|_{r_h} =\frac{4m^2}{(1+B^2m^2)^3}.
\end{align}$$

Thus

$$\begin{align}
\kappa=\frac{(1+B^2m^2)^2}{4m}, \quad T=\frac{(1+B^2m^2)^2}{8\pi m}, \quad A_h=\frac{16\pi m^2}{(1+B^2m^2)^3}, \quad S=\frac{4\pi m^2}{(1+B^2m^2)^3}.
\end{align}$$

The Komar mass of the same fixed vector $\partial_t$ is

$$\begin{align}
M=\frac{m}{1+B^2m^2}=2TS.
\end{align}$$

This Smarr relation is a statement on each solution. Its exterior derivative is not the covariant Hamiltonian variation:

$$\begin{align}
\mathrm dM-T\mathrm dS =\frac{B^2m^2}{(1+B^2m^2)^2}\,\mathrm dm +\frac{Bm^3}{(1+B^2m^2)^2}\,\mathrm dB.
\end{align}$$

The distinction comes from the $-i_{\partial_t}\boldsymbol\Theta$ term, which compares neighboring solutions and detects boundary flux.

The dimensionless horizon observable

$$\begin{align}
\frac{C_p}{C_e} =\frac{2\mathbb E(-y^2)}{\pi(1+y^2)}
\end{align}$$

is strictly decreasing for $0<y<1$. Hence $y$ cannot be removed by an overall scale change.

# Charge One-Form, Curl, and Integrating Factor

The integrated adjusted surface charge is

$$\begin{align}
\boldsymbol\alpha=C_m\,\mathrm dm+C_B\,\mathrm dB, \qquad C_m=\frac{1-2B^2m^2}{(1+B^2m^2)^2}, \qquad C_B=-\frac{3Bm^3}{(1+B^2m^2)^2}.
\end{align}$$

At the horizon these coefficients equal $T\partial_mS$ and $T\partial_BS$. Their exterior derivative is

$$\begin{align}
\mathrm d\boldsymbol\alpha =-\frac{Bm^2}{(1+B^2m^2)^2}\, \mathrm dm\wedge\mathrm dB.
\end{align}$$

This is nonzero for $B>0$, so no Hamiltonian $H_{\partial_t}(m,B)$ exists on the full regular family with fixed coordinate time. The paper identifies the same two-form as

$$\begin{align}
\mathrm d\boldsymbol\alpha =-\int_{S_r}i_{\partial_t}\boldsymbol\omega[g;h_m,h_B]
\,\mathrm dm\wedge\mathrm dB.
\end{align}$$

Now introduce

$$\begin{align}
N=(1+B^2m^2)^{-1/2}, \qquad H=\frac{m}{(1+B^2m^2)^{3/2}}.
\end{align}$$

For $\bar\xi=N\partial_t$, the adjusted field-dependent charge obeys

$$\begin{align}
\boldsymbol k_{\bar\xi}=N\boldsymbol k_{\partial_t}, \qquad N\boldsymbol\alpha=\mathrm dH.
\end{align}$$

With $y=Bm$, the inverse map and Jacobian are

$$\begin{align}
m=H(1+y^2)^{3/2}, \qquad B=\frac{y}{H(1+y^2)^{3/2}}, \qquad \det\frac{\partial(H,y)}{\partial(m,B)}=H>0.
\end{align}$$

The fixed-time one-form becomes

$$\begin{align}
\boldsymbol\alpha=\sqrt{1+y^2}\,\mathrm dH, \qquad \mathrm d\boldsymbol\alpha =-\frac{y}{\sqrt{1+y^2}}\,\mathrm dH\wedge\mathrm dy.
\end{align}$$

A rescaling $\xi_\mu=\mu(H,y)\partial_t$ is locally integrable precisely when

$$\begin{align}
\mu(H,y)=\frac{F(H)}{\sqrt{1+y^2}}=N F(H).
\end{align}$$

Requiring $\mu(m,0)=1$ for every Schwarzschild mass fixes $F(H)=1$, not just a constant at one reference solution.

# Scaling Direction Is Not Gauge

For $B>0$, the coordinate dilation $T=Bt$, $R=Br$ gives

$$\begin{align}
g(m,B)=B^{-2}\Phi_B^*g(y,1).
\end{align}$$

The tangent at fixed $y$ is

$$\begin{align}
V=B\partial_B-m\partial_m=-H\partial_H, \qquad Bh_B-mh_m=\mathcal L_Dg-2g, \quad D=t\partial_t+r\partial_r.
\end{align}$$

At fixed $G$, the constant Weyl term is physical. The exact-symmetry charges give

$$\begin{align}
\boldsymbol\alpha(V)=-M, \qquad \mathrm dS(V)=-2S,
\end{align}$$

so this direction is not in the presymplectic kernel. Quotienting by coordinate dilation and a separate choice of units leaves a one-dimensional shape family, but the fixed-$G$ solution phase space remains two-dimensional.

# Weyl Boundary and Moving-Source Response

With

$$\begin{align}
F=r^2f,\qquad X=(1-x^2)(1+B^2m^2x^2),
\end{align}$$

the Weyl coordinates are

$$\begin{align}
\rho^2=\frac{\Delta_\phi^2FX}{P^2}, \qquad z=\frac{\Delta_\phi x(r-m)(1+B^2mr)}{P}.
\end{align}$$

At fixed material label $x$, spatial infinity maps to

$$\begin{aligned}
\rho_\infty(x) &=\frac{H\sqrt{1+y^2}}{y} \frac{\sqrt{(1-y^2)(1-x^2)(1+y^2x^2)}}{A_y},\\
z_\infty(x) &=\frac{H\sqrt{1+y^2}\,x}{A_y},\\
A_y&=1-(1-y^2)x^2.
\end{aligned}$$

For $0<y<1$, $z_\infty'(x)>0$, the interior has $\rho_\infty>0$, and both endpoints meet the axis. The meridian generates a closed surface of revolution. Along $m\to0$ at fixed $B$,

$$\begin{align}
z_\infty\to0, \qquad \rho_\infty\to\frac{1}{B\sqrt{1-x^2}}\geq\frac1B.
\end{align}$$

The finite closed surface opens nonuniformly into a semi-infinite annulus. Taking $x\to\pm1$ and $m\to0$ in the opposite order gives a different limit.

For the timelike surfaces $r=R$, the one-sided canonical momentum is

$$\begin{align}
\Pi^{ab}=\frac{\sqrt{-h}}{16\pi} \left(K_{\rm out}^{ab}-K_{\rm out}h^{ab}\right).
\end{align}$$

The Source-derived radial Hamiltonian identity is

$$\begin{align}
\lim_{R\to\infty}\mathcal W_{Hy}\, \mathrm dt\wedge\mathrm dx\wedge\mathrm d\phi =i_{\partial_t}\boldsymbol\omega[g;h_H,h_y],
\end{align}$$

and its section integral is

$$\begin{align}
\int_{\partial\Sigma}i_{\partial_t}\boldsymbol\omega[g;h_H,h_y] =\frac{y}{\sqrt{1+y^2}}.
\end{align}$$

In fixed Weyl coordinates, variation of the embedded support adds derivative-of-delta terms. The fixed-$x$ calculation is the Lagrangian description of the same moving source. Omitting the displacement term would compare inequivalent response objects.

# Source-Work Mechanics

In global coordinates $(H,y)$,

$$\begin{align}
M=H\sqrt{1+y^2}, \qquad S=4\pi H^2, \qquad T=\frac{\sqrt{1+y^2}}{8\pi H}.
\end{align}$$

Therefore

$$\begin{align}
\boxed{ \mathrm dM=T\mathrm dS+\Psi_y\mathrm dy, \qquad \Psi_y=\frac{Hy}{\sqrt{1+y^2}}
}
\end{align}$$

while $M=2TS$ has no explicit $y$-term because $y$ has zero scaling weight.

At fixed entropy, $H$ is fixed and

$$\begin{align}
BH=\frac{y}{(1+y^2)^{3/2}}, \qquad \left(\frac{\partial B}{\partial y}\right)_H =\frac{1-2y^2}{H(1+y^2)^{5/2}}.
\end{align}$$

The $(S,B)$ chart turns at

$$\begin{align}
y_*=\frac1{\sqrt2}, \qquad B_{\max}=\frac{2}{3\sqrt3\,H}.
\end{align}$$

The local conjugate

$$\begin{align}
\Phi_B=\frac{H^2y(1+y^2)^2}{1-2y^2}
\end{align}$$

diverges there, but the invariant one-form $\Phi_B\mathrm dB=\Psi_y\mathrm dy$ remains regular. This is a coordinate singularity, not a divergent physical response.

# Equation Ledger and Derivation Map

| source equation(s) | input | output | later use |
|---|---|---|---|
| (1)--(3) | regular metric, $w^2=P$, $0<Bm<1$ | two-parameter tangent family | all CPS and boundary computations |
| (7)--(12) | horizon root and regular axis | $T,S,M$, shape ratio | charge normalization and physical modulus |
| (13) | $M,T,S$ | $\mathrm dM-T\mathrm dS\neq0$ | motivates CPS calculation |
| (14)--(18) | EH potential, adjusted field-dependent charge | $C_m,C_B$ | fixed-time charge one-form |
| (21), (24) | solution-space derivative and Lee--Wald identity | nonzero curl = minus flux | Hamiltonian obstruction |
| (25)--(28) | integrating factor $N$ and $-Q_{\delta\xi}$ subtraction | $H$, normalized first law | scale coordinate |
| (32)--(35) | $(m,B)\leftrightarrow(H,y)$ | $\boldsymbol\alpha=\sqrt{1+y^2}\mathrm dH$ and all integrating factors | scale/source separation |
| (36)--(38) | finite homothety | nonzero charge along scaling orbit | phase-space dimension |
| (39)--(52) | Weyl map and radial canonical data | closed source surface and response/flux match | boundary interpretation |
| (53)--(61) | $M,S,T$ in $(H,y)$ | global first law and local $B$-chart branches | mechanics |
| (A1)--(A11) | tangent fields and BB/IW conventions | limiting densities and radial closure | support for (18) |
| (B1)--(B12) | radial ADM split and moving embedding | canonical response and displacement term | support for (51) |
| (C1)--(C12) | algebraic coordinate manipulations | monotonicity and limiting charts | global interpretation |

The central logical chain is

$$\begin{aligned}
&\text{regular variations }(h_m,h_B)\\
&\Longrightarrow \boldsymbol\alpha=C_m\mathrm dm+C_B\mathrm dB\\
&\Longrightarrow \mathrm d\boldsymbol\alpha\neq0\\
&\Longleftrightarrow
\text{Lee--Wald flux through the limiting boundary}\\
&\Longleftrightarrow
\text{antisymmetrized Brown--York response}\\
&\Longrightarrow \mathrm dM=T\mathrm dS+\Psi_y\mathrm dy.
\end{aligned}$$

# Translation into the Vault's boundary/CPS Language

- The allowed variations are part of the definition of the phase space. Varying $m,B$ while freezing $\Delta_\phi$ changes the axis boundary condition and is not the regular family.
- The surface source is not introduced as an extra oscillator. It is encoded by the induced metric, its canonical momentum, and motion of the embedded support.
- The nonclosed one-form $\boldsymbol\alpha$ is a finite-dimensional diagnostic of flux. It does not establish continuum factorization, a boundary Hilbert space, or an entropy decomposition.
- The normalized generator changes the Hamiltonian polarization. It does not remove the geometric $y$-direction from the solution space.
- The one-sided canonical data are fixed by the exterior; the reflected Israel layer is an additional global completion.
- The global source coordinate is $y=Bm$. The conventional field parameter $B$ is only a two-branch local coordinate at fixed entropy.

# Verification Log

## Checked

- **Mathematica, exact algebra under $m>0$, $B\geq0$, $Bm<1$:** reproduced $w_h$, the angle-independent area density, and surface gravity directly from the displayed metric functions.
- **Mathematica, exact differentiation:** reproduced $T\partial_mS=C_m$, $T\partial_BS=C_B$, the Komar/CPS tension coefficients, and

$$\begin{align}
\partial_mC_B-\partial_BC_m=-\frac{Bm^2}{(1+B^2m^2)^2}.
\end{align}$$

- **Mathematica, exact integration under $0<y<1$:** independently integrated both limiting angular densities (A4)--(A5) and obtained $C_m$ and $C_B$ with zero residual.
- **Mathematica, field-dependent normalization:** checked both components of $N\boldsymbol\alpha=\mathrm dH$.
- **Mathematica, coordinate change:** checked the Jacobian, cancellation of the $\mathrm dy$ component of $\boldsymbol\alpha$, and coefficient $\sqrt{1+y^2}$ of $\mathrm dH$.
- **Mathematica, mechanics:** checked both components of the global first law, the fixed-$\Delta_\phi$ curl, the $B$-chart derivative and turning value, and the small-$y$ expansion of the shape ratio.
- **Mathematica, Weyl coordinates:** substituted the displayed $(\rho,z)$ into both Cauchy--Riemann equations and obtained zero residuals on the positive exterior branch.
- **Rendered PDF:** visually confirmed the charge/flux formulas, field-dependent-generator table, source-chart figure, and appendix coordinate formulas against the TeX source.

## Source-Derived

- Ricci flatness, generic Petrov type I, and the global classification of the original solution.
- The full Iyer--Wald/Barnich--Brandt metric contraction leading to the finite-radius charge density.
- Pointwise equality of the charge curl, Lee--Wald current, and Brown--York canonical response.
- The explicit finite-mass seam curvature/Israel components and the distributional massless source.

## Blocked

- A full xAct reproduction of the Ricci tensor, Petrov discriminant, surface-charge density, and Brown--York/Lee--Wald pointwise identity was not completed. The official source archive contains TeX and figures but no tensor notebook or intermediate computer-algebra expressions; reconstructing the radical metric chain would be a separate calculation.
- Claims imported from the original type-I solution paper and massless annular-source paper were not independently replayed.

## Failed

- None in the executed checks.

## Not Independently Verified

- Global statements about the reflected completion and uniqueness of its matter interpretation beyond the one-sided canonical data.
- The proposed extension to the rotating family.

# Bottom Line for Current Projects

This is a strong CPS reference because it keeps four layers separate: the regular family of allowed variations, the fixed-generator charge one-form, the field-dependent integrable generator, and the boundary source response. Its finite-dimensional formulas are independently consistent. The reusable continuum claim should remain narrow: it demonstrates a classical CPS flux/source relation for one exact metric family; it does not construct boundary quantum degrees of freedom or prove a factorization statement.
