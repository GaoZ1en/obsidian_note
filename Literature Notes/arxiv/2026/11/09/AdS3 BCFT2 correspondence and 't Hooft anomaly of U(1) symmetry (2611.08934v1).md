---
paper id: 2611.08934v1
title: "AdS3/BCFT2 correspondence and 't Hooft anomaly of U(1) symmetry"
authors:
  - Hikaru Toya
  - Satoshi Yamaguchi
publication date: 2026-11-06T03:22:37Z
abstract: |-
  Studies the obstruction to symmetry-preserving BCFT boundary conditions from a bulk U(1) Maxwell–Chern–Simons system. An explicit AdS2-sliced solution has nonzero current normal to the BCFT boundary. The paper also constructs separated bulk solutions.
comments: "12 pages, no figure"
url: https://arxiv.org/abs/2611.08934v1
summary: "An explicit anomalous boundary-flux example and a useful first-order reconstruction of AdS3 Maxwell–Chern–Simons modes; the physical mode domain and CPS completion remain separate problems."
tags: []
---

# What This Gives the Boundary-Quantization Problem

**Within the paper's probe theory, specified boundary family and renormalized-current prescription, the normal BCFT current is generically nonzero.** The useful result is not a new universal no-go theorem: it is a concrete Maxwell–Chern–Simons realization of the known anomaly obstruction, together with explicit radial modes. It illustrates why vanishing tangential *total* gauge potential is not the same as vanishing source for the flat-connection sector.

Read [the official v1](https://arxiv.org/html/2611.08934v1), §§2–3. PDF and printed page numbers coincide; the action is on p.4, the current on p.7, and mode reconstruction on pp.8–10. These four formula-bearing pages p.4,7,8,9 were visually checked against the PDF. Remaining equations were read in official HTML. No PDF attachment is added.

# AdS2 Slicing and the Sign of the Brane Tension

The signature is $(-++)$, the AdS radius is one, and the gauge field is a probe: its stress tensor does not backreact. Use

$$\begin{align}
z=y\operatorname{sech}\rho,\qquad x=y\tanh\rho,\qquad ds^2=d\rho^2+a(\rho)^2\frac{dy^2-dt^2}{y^2},\quad a=\cosh\rho.
\end{align}$$

The retained region is $\rho_*\leq\rho\leq R$, with $R=\rho_\infty$ a regulator, and $y>0$. The EoW brane is at $\rho_*$; the conformal boundary is approached as $R\to\infty$. On the inner brane the outward normal is $-\partial_\rho$, so

$$\begin{align}
K_{ij}=-\frac{a'}a h_{ij},\qquad K=-2\tanh\rho_*.
\end{align}$$

Consequently $K_{ij}=(K-T)h_{ij}$ gives $T=-\tanh\rho_*$, not the opposite sign appropriate to retaining the other side. The coordinate pullback of the Poincaré metric was checked componentwise in the xAct/Wolfram session; the extrinsic-curvature argument here is analytic.

# Flat Connection Plus One Massive Helicity

The source action and orientation are

$$\begin{align}
I=-\frac1{4q^2}\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu} +\frac{\alpha}{4q^2}\int\varepsilon^{\mu\nu\sigma}A_\mu F_{\nu\sigma}, \quad \varepsilon^{\rho yt}=+1,\quad \alpha=\frac{kq^2}{2\pi}>0.
\end{align}$$

Thus the differential-form CS coefficient is $k/(4\pi)$. The Maxwell equation is

$$\begin{align}
\nabla_\nu F^{\nu\mu}+\frac\alpha{2\sqrt{-g}}\varepsilon^{\mu\nu\lambda}F_{\nu\lambda}=0. \tag{2.10}
\end{align}$$

Define the *covector* $B_\mu=g_{\mu\nu}B^\nu$, where

$$\begin{align}
B^\mu=-\frac1{2\alpha\sqrt{-g}}\varepsilon^{\mu\nu\lambda}F_{\nu\lambda}.
\end{align}$$

The equation is equivalent locally to $\varepsilon^{\mu\nu\lambda}\partial_\nu B_\lambda/\sqrt{-g}+\alpha B^\mu=0$. It also implies $dB=F$; hence $A=A^{(0)}+B$, with $dA^{(0)}=0$. The flat piece contains the anomalous current sector; the massive piece is gauge invariant. A Proca equation follows by another curl, but the first-order equation selects a helicity, so arbitrary Proca solutions cannot simply be substituted. Flat need not mean globally exact if the topology changes.

# The Explicit Family and the Corner Condition

For axial gauge and $F_{yt}=0$, the equations reduce to

$$\begin{align}
\partial_\rho^2 A_t-\alpha\partial_\rho A_y=0,\quad \partial_\rho^2 A_y-\alpha\partial_\rho A_t=0,\quad \partial_t\partial_\rho A_t-\partial_y\partial_\rho A_y=0.
\end{align}$$

The combinations $A_t\pm A_y$ therefore have exponential radial branches and opposite chiral dependence. Dirichlet data on the EoW brane give

$$\begin{align}
\bar A_t=f(t-y)(e^{-\alpha\rho}-e^{-\alpha\rho_*}) +g(t+y)(e^{\alpha\rho}-e^{\alpha\rho_*}),
\end{align}$$

$$\begin{align}
\bar A_y=-f(t-y)(e^{-\alpha\rho}-e^{-\alpha\rho_*}) +g(t+y)(e^{\alpha\rho}-e^{\alpha\rho_*}),\qquad \bar A_\rho=0. \tag{2.19}
\end{align}$$

Here $f,g$ are arbitrary smooth functions before the corner condition. Direct component substitution reproduces all three bulk equations, and independently gives

$$\begin{align}
B_t=f(t-y)e^{-\alpha\rho}+g(t+y)e^{\alpha\rho},\quad B_y=-f(t-y)e^{-\alpha\rho}+g(t+y)e^{\alpha\rho},\quad B_\rho=0.
\end{align}$$

The extra magnetic condition is an assumption, not a consequence of Dirichlet data:

$$\begin{align}
j_m^\mu=\tfrac12\varepsilon^{\mu\nu\lambda}F_{\nu\lambda},\qquad \lim_{y\to0^+}\int_{\rho_*}^{R}j_m^y\,d\rho=0.
\end{align}$$

Since $j_m^y=-\partial_\rho\bar A_t$, it sets $\bar A_t(R,t,0)=0$. Substituting the solution yields the exact finite-cutoff identity

$$\begin{align}
g(t)=e^{-\alpha(\rho_*+R)}f(t). \tag{2.24}
\end{align}$$

The appeal to magnetic symmetry in the paper motivates this choice; it does not establish that every holographic EoW model must impose it.

Now add $d\lambda$. Let $F'=f$, and choose a smooth $\chi(\rho)$ equal to zero near $\rho_*$, one near $R$. The paper chooses

$$\begin{align}
\lambda=-[F(t-y)-F(t+y)](e^{-\alpha\rho}-e^{-\alpha\rho_*})\chi(\rho). \tag{2.25}
\end{align}$$

Near the inner brane this changes nothing. Near the outer cutoff the derivatives cancel the tangential total field: $A_t=A_y=0$ there too. It does not set $A^{(0)}$ or $B$ separately to zero. Gauge transformations nonzero at a boundary cannot be presumed degeneracies of the physical symplectic form.

# Why the Normal Current Survives

The source uses a particular holographic renormalization/polarization inherited from its Refs.[13,26]:

$$\begin{align}
\delta I_{\rm ren}=-\frac\alpha{2q^2}\int dydt\, \big[(A_t^{(0)}+A_y^{(0)})(\delta A_t^{(0)}-\delta A_y^{(0)}) +(B_t-B_y)(\delta B_t+\delta B_y)\big]. \tag{2.29}
\end{align}$$

This formula is source-derived here, not a fresh derivation of its counterterms. In that prescription,

$$\begin{align}
J^y=\frac\alpha{2q^2}(A_t^{(0)}+A_y^{(0)}).
\end{align}$$

At $\rho=R$, the $f(t-y)$ flat terms cancel in the sum. Writing $f_+=f(t+y)$, the two remaining contributions give

$$\begin{align}
A_t^{(0)}+A_y^{(0)}=-2f_+e^{-\alpha R} +2f_+(e^{-\alpha R}-e^{-\alpha\rho_*}) =-2f_+e^{-\alpha\rho_*}.
\end{align}$$

Thus the paper's (2.32) follows exactly before removing the regulator. On the cutoff, $x=y\tanh R$, so its current transformation and subsequent limits give

$$\begin{align}
J^x=-\frac\alpha{q^2}e^{-\alpha\rho_*}f(t+x),\qquad J^x(t,0^+)=-\frac\alpha{q^2}e^{-\alpha\rho_*}f(t). \tag{2.33–34}
\end{align}$$

A nonzero allowed configuration is sufficient to disprove current preservation for this whole boundary family: preservation would require zero normal flux for *every* allowed configuration. It does not mean every solution has flux; $f=0$ is an immediate exception.

**The order of limits matters.** Although $g\to0$ at fixed interior $\rho$, $e^{\alpha R}g=e^{-\alpha\rho_*}f$ at the moving cutoff. Dropping the growing branch before computing the cutoff current loses a finite contribution. This is a cutoff-dependent sequence of solutions, not uniform convergence up to the boundary. The $\alpha\to0$ decomposition is singular because the definition of $B$ divides by $\alpha$; the vanishing of the displayed current as $\alpha\to0$ alone is not a derivation of the Maxwell limit.

# General Separated Modes: How the Vector Is Reconstructed

Section 3 relaxes $F_{yt}=0$. Put $B_\mu=e^{-i\omega t}b_\mu$. The first-order equations are

$$\begin{align}
\alpha b_y-i\omega b_\rho-\partial_\rho b_t=0,\quad \alpha b_t-\partial_\rho b_y+\partial_y b_\rho=0,\quad \alpha b_\rho+\frac{y^2}{a^2}(\partial_y b_t+i\omega b_y)=0. \tag{3.1–3}
\end{align}$$

Eliminating $b_y,b_t$, then setting $b_\rho=a^{-1}\mathcal RY$, gives

$$\begin{align}
(-\partial_\rho^2+\alpha^2)(a^2b_\rho)=y^2(\partial_y^2+\omega^2)b_\rho,
\end{align}$$

$$\begin{align}
\mathcal R''+2\tanh\rho\,\mathcal R'+(1-\alpha^2)\mathcal R =-\lambda a^{-2}\mathcal R,\qquad Y''+(\omega^2-\lambda/y^2)Y=0. \tag{3.5–6}
\end{align}$$

A simpler intermediate variable is $U=a\mathcal R$:

$$\begin{align}
U''=(\alpha^2-\lambda\operatorname{sech}^2\rho)U.
\end{align}$$

With $\zeta=\tanh\rho$, this is the associated Legendre equation of degree $\nu-1/2$, order $|\alpha|$, where $\nu^2=1/4+\lambda$. Hence

$$\begin{align}
\mathcal R=\sqrt{1-\zeta^2}[c_1P_{\nu-1/2}^{|\alpha|}(\zeta)+c_2Q_{\nu-1/2}^{|\alpha|}(\zeta)], \quad Y=\sqrt y[c_3J_\nu(|\omega|y)+c_4Y_\nu(|\omega|y)].
\end{align}$$

The Bessel formula is understood at nonzero real $\omega$. At $\omega=0$, solve the Euler equation directly: $Y=y^{1/2\pm\nu}$, with a logarithmic second solution when $\nu=0$. No assumption that $\lambda$ is positive or discrete has yet been justified.

For $\lambda\ne0$, the particular tangential components are

$$\begin{align}
b_y=\lambda^{-1}(i\omega\alpha UY-U'Y'),\qquad b_t=\lambda^{-1}(i\omega U'Y-\alpha UY'). \tag{3.16–17, particular}
\end{align}$$

For example,

$$\begin{align}
\partial_\rho\{\lambda^{-1}e^{\alpha\rho}(\alpha U-U')\} =e^{\alpha\rho}U/a^2,
\end{align}$$

because $\alpha^2U-U''=\lambda U/a^2$. This explains the integrating-factor formulas rather than merely listing them. The complementary vector modes have $b_\rho=0$: add $C_3e^{-\alpha\rho+i\omega y}+C_4e^{\alpha\rho-i\omega y}$ to $b_y$, and the same expression with the first sign reversed to $b_t$. Their inverse Fourier transforms are the two functions used in §2. The flat connection cancels their values at $\rho_*$, recovering (2.19).

The general reconstruction was checked by substituting these expressions into all three first-order equations, using only the two scalar ODEs: all residuals vanish. The integrating-factor identity and Bessel reduction were also checked with Mathematica. At $\lambda=0$, use the regular integral representations (3.12–13), not the displayed $1/\lambda$ formulas. The source's claim about recovering all such solutions by smooth families was not independently established as a completeness theorem.

# Translation to the Vault's CPS Conventions

The relevant convention is [the perturbative formalism](<../../../../../Articles/Quantization%20in%20AdS/perturbation/formalism.md#L5-L27>): integrated $\theta$ includes the boundary/corner correction, and $\omega=\delta\theta$. In the paper $\Sigma$ denotes the *conformal boundary*, not that formalism's Cauchy surface.

An action-first calculation gives the bulk potential density

$$\begin{align}
\Theta^\mu(\delta A)=-\frac{\sqrt{-g}}{q^2}F^{\mu\nu}\delta A_\nu -\frac\alpha{2q^2}\varepsilon^{\mu\nu\lambda}A_\nu\delta A_\lambda.
\end{align}$$

The CS term follows from $\delta(A\wedge dA)=2\delta A\wedge F-d(A\wedge\delta A)$. This is a local variation, not the fully renormalized integrated potential. To use these modes for quantization one must still add the chosen boundary action, derive its corner term, impose a common no-symplectic-flux domain, quotient only actual gauge degeneracies, and normalize modes with the vault's $iX_J^*\!\cdot X_I\!\cdot\omega$. Equation (2.29) is especially useful because it shows which flat and massive combinations form the chosen source/response polarization.

The current obstruction does **not** itself establish normalizability, a positive mode inner product, the spectrum of $\lambda$, or a sewing Hilbert space. Section 3 explicitly leaves boundary conditions on additional modes unselected. No null-boundary convention is being imported into the vault's non-null setup.

# What Is Solid, and the Next Useful Calculation

Reproduced analytically and/or in the stated kernels: metric pullback, the explicit family's three component equations, the definition of $B$ and $dB=F$, finite-cutoff flux relation and current cancellation, scalar-ODE reductions, and all first-order equations for the reconstructed $\lambda\ne0$ vector. The kernels emitted no calculation messages. The calculation in the xAct session used explicit coordinate matrices, not an additional independent tensor implementation.

The holographic counterterm derivation of (2.29), admissibility of the moving-cutoff family in a fixed renormalized phase space, and mode completeness/positivity remain unverified. No independent-agent review was used, as required by the serial daily workflow. A practical next step is to specify the EoW boundary action and test $\delta\Theta$'s flux for this family. That would decide whether the nonzero current is realized inside one fixed physical boundary domain or requires a cutoff-dependent boundary prescription. It is a sharper question than assuming the separated solution basis is already a quantized spectrum.
