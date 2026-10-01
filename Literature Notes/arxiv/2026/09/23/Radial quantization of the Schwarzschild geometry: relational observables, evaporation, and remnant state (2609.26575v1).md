---
paper id: 2609.26575v1
title: "Radial quantization of the Schwarzschild geometry: relational observables, evaporation, and remnant state"
authors:
  - David Brizuela
  - Leonardo Chataignier
  - Mikel López-Escondrillas
publication date: 2026-09-22T15:24:55
abstract: |-
  The authors quantize a radial Schwarzschild minisuperspace across the Killing horizon, construct a physical Hilbert space and relational geometric operators, and study intelligent states with controlled mass and asymptotic Killing-norm fluctuations. Their expectation values give a shifted effective horizon and enhanced acceleration and surface gravity. A temperature prescription produces a logarithmic entropy correction, and a proposed minimal-energy state is discussed as a possible remnant.
comments: "26 pages"
url: https://arxiv.org/abs/2609.26575v1
summary: "An explicit radial constraint and relational-operator testbed, with checked state moments and identified normalization, uncertainty and remnant-inference limitations."
tags: []
---

# Result and precise use

The paper supplies a tractable **radial minisuperspace** quantization of Schwarzschild geometry that is regular at the Killing horizon. Its physical wave functions depend on a continuous momentum label $k$, and the mass acts by a first-order differential operator. A radius rod produces explicit relational metric, curvature and acceleration operators. This is a useful concrete example for comparing constraint reduction, clock normalization and quantum geometric observables.

The construction supports the intelligent-state expectation values after several local printed formulas are corrected. It does **not** establish evaporation dynamics, a stable remnant, singularity resolution, or a quantization of unrestricted spherical/general gravitational perturbations. The entropy calculation additionally postulates a surface-gravity temperature and a first-law variation through a specified family of states. The proposed remnant minimum changes when the paper's asymptotic clock normalization is imposed during the minimization.

# Full source map and reading route

The official [abstract](https://arxiv.org/abs/2609.26575v1) and [26-page PDF](https://arxiv.org/pdf/2609.26575v1) were read. This is a dense, monograph-mode reconstruction: the radial reduction, physical inner product, relational operators and thermodynamic interpretation are distinct dependency clusters. Both appendices were inspected. Rendered physical PDF pages 12, 14, 15 and 21 confirm the printed normalization, sign, uncertainty and remnant formulas discussed below.

| Source | Technical role |
|---|---|
| 1, pp.1–2 | Radial evolution and motivation for crossing the horizon. |
| 2.1–2.2, pp.2–4 | Stationary spherical ansatz, reduced action and radial Hamiltonian constraint. |
| 2.3–2.4, pp.4–5 | Integration constants, weak Dirac observables and Schwarzschild coordinate identification. |
| 2.5, pp.5–6 | Logarithmic radius rod and relational evaluation. |
| 2.6–2.7, pp.7–9 | Trapped regions, Killing norm, curvature, acceleration and surface gravity. |
| 3.1, pp.9–10 | Half-line radius, dilation representation and ordered constraint. |
| 3.2–3.3, pp.11–14 | Constraint eigenbasis, physical product and gauge-fixed operator construction. |
| 4.1, pp.14–15 | Mass basis and noncanonical mass–momentum uncertainty relation. |
| 4.2, pp.15–18 | Intelligent-state family, normalization, moments and semiclassical conditions. |
| 5.1, pp.18–19 | Effective horizon, remaining curvature singularity and horizon fluctuations. |
| 5.2, pp.19–21 | Temperature prescriptions, entropy integral and proposed remnant. |
| 6, pp.21–22 | Interpretation and qualifications. |
| A, pp.22–23 | Null normals, orientation and expansion signs. |
| B, p.24 | Unitary dilation group for the positive radius. |
| References, pp.24–26 | Inputs and related reduced quantizations. |

Essential for reuse: 2.1–2.5, 3 and 4.2. Read 2.7 with 5 before using any temperature. Appendix A fixes the sign interpretation of the radial charts; Appendix B fixes the measure. Neither appendix supplies a full covariant phase-space or boundary-state construction.

# Radial action, constraints and the clock constant

Use signature $(-,+,+,+)$, $r>0$, $N>0$, Newton constant $G$ and explicit $\hbar$. A prime denotes $d/dx$ in the radial parameter; $t$ is the stationary coordinate. The ansatz is

$$ds^2=-\frac ur\,dt^2+2s\,dt\,dx+q\,dx^2+r^2d\Omega^2,
\qquad N^2=\frac{uq}{r}+s^2.$$

The Killing norm is $\xi=-u/r$, hence **$\xi<0$ in the static exterior**. The opposite inequality in the discussion on p.8 is a local sign slip. The prefactor

$$M_0=\frac{t_1-t_0}{2G}>0$$

comes from a finite stationary-coordinate time interval. It is not the black-hole mass. Starting with Einstein–Hilbert plus the appropriate GHY subtraction, the source obtains

$$S_{\rm red}=M_0\int dx\left(\frac{u'r'}N+N\right),\qquad
p_u=M_0\frac{r'}N,\quad p_r=M_0\frac{u'}N.$$

The radial lapse momentum vanishes and

$$C=\frac{p_up_r}{M_0^2}-1=0,\qquad H=N M_0 C.$$

Thus $u'=Np_r/M_0$, $r'=Np_u/M_0$ and both momenta are constant. The observable

$$M=\frac1{2G}\left(r-\frac{u p_u^2}{M_0^2}\right),\qquad
\{M,C\}=-\frac{p_u}{2GM_0^2}C$$

is weakly invariant; its off-shell bracket should not be replaced by a strong zero. Write

$$p_u=M_0k,\quad p_r=M_0/k,\quad
u\equiv u=\frac{r-2GM}{k^2},\quad r'=Nk,\qquad k\ne0.$$

The magnitude of $k$ controls the asymptotic normalization $\xi_\infty=-1/k^2$; its sign fixes radial orientation. The transformation

$$dT=\frac{dt}{k}-\frac{sk}{1-2GM/r}\,dx$$

recovers Schwarzschild time locally. Horizon-penetrating choices of $s,q$ keep the original radial chart regular at $r=2GM$, but the resulting chart covers a half of the maximally extended geometry. This is not a proof of smooth gluing across all Kruskal regions or through $r=0$.

**Checked reduction boundary.** In the horizon-penetrating gauge $s=N,q=0$, xAct gave

$$\frac12Nr^2R-\left(\frac{u'r'}N+N\right)
=\frac d{dx}\left[-\frac{ru'+3ur'}{2N}\right].$$

This independently checks the bulk integration by parts with arbitrary $u(x),r(x),N(x)$ in that gauge. It does not independently derive GHY signs on every cap, corner or general radial-boundary signature.

**Gauge-parameter normalization.** Source Eq. (2.12) uses $\delta N=\zeta'$ together with $\delta f=\{f,\zeta C\}$. With the displayed Hamiltonian these are inconsistent by $M_0$. One consistent convention is $\delta f=\{f,M_0\zeta C\}$ and $\delta N=\zeta'$. Equivalently keep the former generator and use $\delta N=\zeta'/M_0$. Direct substitution in the $u$ equation detects the mismatch. Eq. (2.26) also moves a variable lapse outside an orbit integral without the required qualification; the relational values below follow directly by solving for the radius, so they need not rely on that printed integral identity.

# Radius rod and geometric observables

Take $\chi=\ln(r/\ell)$ with fixed reference length $\ell>0$ and evaluate at rod value $\sigma$: $r_\sigma=\ell e^\sigma$. On shell,

$$O_u=\frac{r_\sigma-2GM}{k^2},\qquad O_{p_u}=M_0k,
\qquad O_{p_r}=M_0/k.$$

Appendix A fixes null orientations. In a regular chart with the stated nonzero $s,k$ conventions, the expansion signs obey

$$\operatorname{sgn}\theta_1=-\operatorname{sgn}(sk),\qquad
\operatorname{sgn}\theta_2=\operatorname{sgn}\bigl(sk(r-2GM)\bigr),$$

so their product detects $r-2GM$ independently of that orientation. These formulas describe the chosen chart and its null normalization, not additional propagating degrees of freedom.

The classical scalar curvature vanishes, while the Weyl scalar is $\Psi_2=-GM/r^3$. For a static observer define the positive rescaled acceleration

$$\alpha^2=-\xi a^2=\left(\frac{\xi'}{2N}\right)^2
=\frac{(up_u-rp_r)^2}{4r^4M_0^2},\qquad
O_{\alpha^2}=\frac{G^2M^2}{k^2r_\sigma^4}.$$

Surface gravity uses the asymptotic clock:

$$\kappa^2=\lim_{r\to r_h}\frac{\alpha^2}{-\xi_\infty}.$$

The minus sign is essential because $\xi_\infty<0$. This is already a useful caution for comparing boundary charges: the integration constant that rescales the Killing clock cannot silently be removed from the state space and retained in uncertainty estimates at the same time.

# Half-line quantization and the physical inner product

The kinematical space and dilation generator are

$$\mathcal H_{\rm kin}=L^2(\mathbb R,du)\otimes
L^2(\mathbb R_+,r^{2\gamma+1}dr),\qquad
\widehat{rp_r}=-i\hbar(r\partial_r+\gamma+1).$$

Appendix B's group action is $U(a)\psi(r)=a^{\gamma+1}\psi(ar)$ for $a>0$. A change of variable establishes unitarity with the displayed measure. A naive translation momentum for the positive half-line does not have the same self-adjoint representation. The ordered, rescaled constraint is

$$\widehat{\mathcal C}=\widehat{rC}
=-\left(\frac{\hbar}{M_0}\right)^2
\partial_u(r\partial_r+\gamma+1)-r.$$

Its joint eigenstates with $\hat p_u$ are

$$\psi_{\lambda k}(u,r)=\frac{M_0}{2\pi\hbar\sqrt{|k|}}
 r^{-\gamma-1+i\lambda M_0/(\hbar k)}
 \exp\!\left[\frac{iM_0}{\hbar}\left(ku+\frac r k\right)\right].$$

Direct differentiation yields $\widehat{\mathcal C}\psi_{\lambda k}=\lambda\psi_{\lambda k}$ and $\hat p_u\psi_{\lambda k}=M_0k\psi_{\lambda k}$. Fourier integration in $u$ and $\ln r$ gives the $\delta(\lambda-\lambda')\delta(k-k')$ normalization. Extracting the constraint delta at $\lambda=0$ produces

$$\mathcal H_{\rm phys}=L^2(\mathbb R,dk).$$

The excluded point $k=0$ has zero measure but singular differential/multiplication operators still require domains. A delta-normalized constraint solution is not a normalizable vector of $\mathcal H_{\rm kin}$. The physical product is an additional constraint-reduction prescription, not the direct restriction of its ordinary norm.

# Gauge fixing and the factor-of-two check

The radius projector has the measure

$$P_{\chi,\sigma}=\int du\,r_\sigma^{2\gamma+2}
 |u,r_\sigma\rangle\langle u,r_\sigma|.$$

At equal constraint eigenvalue its matrix element is

$$\langle\lambda,k'|P_{\chi,\sigma}|\lambda,k\rangle
=\frac{M_0}{2\pi\hbar|k|}\delta(k-k').$$

The positive Faddeev–Popov operator is $\Delta_\chi=(2\pi\hbar/M_0)|k|$. The source's symmetrized insertion uses

$$\frac12\sqrt{\Delta_\chi}\,(fP_{\chi,\sigma}+P_{\chi,\sigma}f)
\sqrt{\Delta_\chi}.$$

The expanded coefficient in Eq. (3.23) must therefore be $\pi\hbar/M_0$, not $\pi\hbar/(2M_0)$. With $f=1$, the printed expression gives **$I/2$**, whereas the corrected expression gives $I$. The subsequent explicit relational operators agree with the corrected normalization. The negative measure power in Eq. (3.17) likewise conflicts with the displayed coordinate normalization/projector; use the positive power above.

On the physical $k$ representation, the consistent operators are

$$\begin{aligned}
O_u&=\frac{i\hbar}{M_0}\partial_k+\frac{r_\sigma}{k^2},&
O_r&=r_\sigma,\\
O_{p_u}&=M_0k,&O_{rp_r}&=\frac{M_0r_\sigma}{k},\\
O_M&=-\frac{i\hbar}{2GM_0}(k^2\partial_k+k),&
O_R&=0,\quad O_{\Psi_2}=-\frac{G O_M}{r_\sigma^3},\\
O_\xi&=-O_u/r_\sigma,&
O_{\alpha^2}&=\frac{\hbar^2}{4M_0^2r_\sigma^4}
(-k^2\partial_k^2-2k\partial_k+2).
\end{aligned}$$

These are symmetric on suitable compactly supported smooth functions away from $k=0$. Symmetry alone does not fix every self-adjoint domain. In particular, the norm-preserving change $y=1/k$, $f(y)=\Psi(1/y)/|y|$, maps $O_M$ to $+i\hbar\partial_y/(2GM_0)$ on two half-lines. A self-adjoint realization needs boundary matching at $y=0$; the displayed Fourier mass basis selects a matching convention rather than proving uniqueness. This is an analytic domain diagnostic, not a general no-go statement about the quantization.

The mass basis

$$\Phi_M(k)=\sqrt{\frac{GM_0}{\pi\hbar}}\frac1{|k|}
\exp\!\left[-\frac{2iGM_0M}{\hbar k}\right]$$

has eigenvalue $M$ by direct differentiation and delta normalization by Fourier transformation in $1/k$. It allows real $M$ of either sign. A positive-mass projection or lower-bounded Hamiltonian has not been supplied by that formula.

# Intelligent states and the correct uncertainty relation

Write $w=w_r+iw_i$, $w_r>1/2$, $\bar k\ne0$ and $\mu=2GM_0\bar M/\hbar$. The normalized states are

$$\Psi(k)=\Theta(k\bar k)
\frac{(2w_r)^{w_r}|\bar k|^{w_r+1/2}}{\sqrt{\Gamma(2w_r)}}
|k|^{-(1+w)}
\exp\!\left[-\frac{\bar k w+i\mu}{k}\right].$$

They solve

$$k^2\Psi'+[k(1+w)-\bar k w-i\mu]\Psi=0.$$

On the positive branch the probability distribution is inverse-gamma, with

$$\langle k^n\rangle=(2w_r\bar k)^n
\frac{\Gamma(2w_r+1-n)}{\Gamma(2w_r+1)},\qquad n<2w_r+1.$$

This gives $\langle k\rangle=\bar k$ and $\operatorname{Var}k=\bar k^2/(2w_r-1)$. The negative branch follows by reflection with the appropriate sign for odd moments. Direct action of the mass operator gives

$$O_M\Psi=\left[\bar M+\frac{i\hbar w}{2GM_0}(k-\bar k)\right]\Psi.$$

Consequently,

$$\Delta p_u=\frac{M_0|\bar k|}{\sqrt{2w_r-1}},\quad
\Delta M=\frac{\hbar|\bar k||w|}{2GM_0\sqrt{2w_r-1}},\quad
\operatorname{Cov}(p_u,M)=-\frac{\hbar w_i\bar k^2}{2G(2w_r-1)}.$$

The correlation coefficient is $-w_i/|w|$. The Robertson–Schrödinger inequality is

$$(\Delta A)^2(\Delta B)^2\ge
\frac14|\langle[A,B]\rangle|^2+
\frac14\bigl(\langle\{A,B\}\rangle-2\langle A\rangle\langle B\rangle\bigr)^2.$$

Source Eqs. (4.7)/(4.9) print $1/2$ for the second coefficient. The intelligent states saturate the **corrected** expression. Subtracting the printed right-hand side from the variance product gives

$$-\frac{\hbar^2\bar k^4w_i^2}{4G^2(2w_r-1)^2},$$

which is negative for correlated states. This is a concrete counterexample to the printed inequality, not a failure of the state normalization or of the corrected intelligent-state construction.

The semiclassical restrictions are $w_r\gg1$ and $|\bar k w|\ll\sqrt{w_r}|\mu|$. Merely imposing $w_r>1/2$ ensures finite variance, not a narrow semiclassical black hole.

# Effective horizon and acceleration after clock normalization

The expectation of the Killing norm is

$$\langle O_\xi\rangle=
\frac{(1+w_r)(1+2w_r)}{2w_r^2\bar k^2}
\left(-1+\frac{r_h}{r_\sigma}\right),\qquad
r_h=\frac{\hbar}{M_0}\left(\mu+\frac{\bar k w_i}{1+w_r}\right).$$

Thus correlations shift the root relative to $2G\bar M$. A root at positive radius is assumed when interpreting it as an effective horizon. Unit asymptotic clock normalization requires

$$\bar k^2=\frac{(1+w_r)(1+2w_r)}{2w_r^2}.$$

It correlates the mean momentum with the state width. Set

$$b=\frac{\hbar^2[w_i^2+(1+w_r)(5+w_r)]}{2M_0^2(1+w_r)}>0.$$

After this normalization, direct differentiation and inverse-gamma moments give

$$\langle O_{\alpha^2}\rangle=\frac{r_h^2+b}{4r_\sigma^4},\qquad
 a_{\rm eff}=\frac{r_h}{2r_\sigma^2\sqrt{1-r_h/r_\sigma}}
 \sqrt{1+\frac b{r_h^2}},\qquad
\kappa_{\rm eff}=\frac1{2r_h}\sqrt{1+\frac b{r_h^2}}.$$

The acceleration applies in the effective static exterior $r_\sigma>r_h>0$. Define $a_{\rm eff}^2=\langle O_{\alpha^2}\rangle/[-\langle O_\xi\rangle]$ and normalize $\kappa_{\rm eff}$ by $-\langle O_\xi\rangle_\infty$. These are ratios of expectations, not expectation values of inverse-operator products. Eqs. (3.32)/(3.33) omit these minus signs; the printed expressions would give negative squared acceleration/surface gravity in the static region.

For $w_i=0$, the exact enhancement is $\sqrt{1+(w_r+5)/(2\mu^2)}$. Its leading expansion is $1+(w_r+5)/(4\mu^2)$, whereas Eq. (5.7) retains only $5/(4\mu^2)$. Dropping $w_r$ is not justified by $w_r\gg1$.

The Weyl expectation remains $-G\bar M/r_\sigma^3$: generic nonzero mass states retain a curvature divergence. The paper's linear error propagation at a **positive** effective horizon yields

$$(\Delta r_h)^2=
\frac{\hbar^2(2+w_r)[(1+w_r)^2+w_i^2]}{2M_0^2(1+w_r)^2}.$$

This follows from the variance of $O_\xi$ and the slope of its expectation at the root. It does not establish a horizon when that root disappears, and its extrapolation to $r_h=0$ is not controlled by the same inverse-function argument.

# Thermodynamics requires a temperature and a variation path

The prescription $T_\kappa=\hbar\kappa_{\rm eff}/(2\pi)$ differs from either $\hbar/(4\pi r_h)$ or $\hbar/(8\pi G\bar M)$. No quantum matter detector or Hawking flux was computed to choose among these temperatures. With energy $E=\bar M$ and **fixed** $w_r,w_i,\bar k,M_0$, one has $dr_h=2G\,d\bar M$ and obtains

$$S=\frac\pi{G\hbar}\left[
 r_h\sqrt{r_h^2+b}-b\log\!\left(
 \frac{r_h+\sqrt{r_h^2+b}}{r_{\rm ref}}\right)\right]+S_0.$$

Differentiating verifies $dS/dr_h=1/(2GT_\kappa)$. The reference scale renders the logarithm dimensionless; changing it shifts $S_0$. At large area $A=4\pi r_h^2$,

$$S=\frac A{4G\hbar}-\frac{\pi b}{2G\hbar}\log(A/A_{\rm ref})+O(A^{-1})+\text{constant}.$$

This is a conditional first-law integral on the chosen state family. Allowing the widths/correlations to vary changes $b$ and $dr_h/d\bar M$, so this expression is not a state-independent microscopic entropy or a derived Wald charge.

# Why the proposed remnant is not established

In the deep quantum discussion the source changes the energy assignment to $E=\bar M+\Delta M$ and postulates that evaporation approaches its minimum. This is neither the expectation of the displayed mass operator nor an evolution law. Even with $\bar M\ge0$ imposed, minimization needs the clock condition specified.

At fixed $\bar k$ and $w_i=0$, minimizing $w_r^2/(2w_r-1)$ gives $w_r=1$, as in the source. With the asymptotic normalization maintained instead,

$$\frac{(\Delta M)^2}{[\hbar/(2GM_0)]^2}
=\frac{(1+w_r)(1+2w_r)}{2(2w_r-1)},\qquad
\partial_{w_r}=\frac{4w_r^2-4w_r-5}{2(2w_r-1)^2}.$$

The minimum occurs at $w_r=(1+\sqrt6)/2\simeq1.724745$, not $1$. The dimensionless squared fluctuation is $2.474744871\ldots$ there, versus $3$ at $w_r=1$. This checks that the two optimization problems are different; it does not select a physically preferred energy functional.

Furthermore, at the proposed $\bar M=w_i=0$ state, $r_h=0$ and $\langle O_\xi\rangle=-1$ has **no positive-radius zero**. Extrapolating the width formula to get $\Delta r_h=\sqrt{3/2}\hbar/M_0$ at $w_r=1$ does not establish a finite event or trapping horizon. The full mass spectrum also contains negative values unless an additional sector restriction is chosen. The appropriate claim is: this family exhibits nonzero mass fluctuations and suggests an energy-scale heuristic; a stable remnant and complete-evaporation obstruction remain open.

# Verification log and dependency boundaries

**Verified:** Mathematica independently reproduced the weak mass–constraint bracket; constraint and mass eigenfunction equations; intelligent-state ODE, normalization and moments; corrected uncertainty saturation; normalized Killing-norm and acceleration expectations; horizon-variance expression for $r_h>0$; entropy derivative; large-radius expansion; and the two distinct minimizations. All corrected identities reduced to zero residual. xAct independently checked the gauge-scoped bulk Einstein–Hilbert reduction above. PDF rendering confirmed the disputed printed coefficients/signs.

**Assumptions:** Stationary spherical minisuperspace; $r,N,M_0,G,\hbar>0$, $k\ne0$; stated ordering/physical product; test-function domains before extension; $w_r>1/2$ for finite variances; unit asymptotic clock only when explicitly imposed; $r_h>0$ and exterior radius for effective horizon/acceleration; fixed state-shape parameters for the first-law integral. General half-line and distributional normalization arguments are analytic checks with their stated domains, not finite-matrix evidence for a unique quantum theory.

**Not verified:** General cap/corner GHY reduction; a unique self-adjoint extension of every geometric operator; every off-shell curvature ordering; full unreduced gravity; detector thermality or Hawking flux; backreaction/evaporation dynamics; a lower-bounded physical energy prescription; remnant stability or a nonzero horizon in the zero-mean-mass state.

| Label | Location / check | Evidence and consequence |
|---|---|---|
| Checked | 2.2–2.5 | Poisson bracket and direct radius inversion; gauge-scoped EH residual zero. |
| Checked | 3.1–3.3 | Constraint eigenfunction, physical normalization factors and $f=1$ identity diagnostic. |
| Checked | 4 | Gamma-function state moments; corrected RS residual zero; mass mode eigenfunction residual zero. |
| Checked | 5.1–5.2 | Expectation polynomials, variance and entropy derivative; normalized minimization. |
| Source-derived | A/B and global interpretation | Null-orientation construction and dilation representation reconstructed; no independent global quantum completion. |
| Failed | (2.12), (2.26) | Lapse/gauge-parameter normalization and variable-lapse orbit-integral step as printed; direct relational inversion avoids relying on them. |
| Failed | (3.17), (3.23) | Measure power and factor two; printed identity insertion is $I/2$. Use corrected normalization before subsequent operators. |
| Failed | (3.32), (3.33) | Missing negative Killing-norm denominators; static squared accelerations would have wrong sign. |
| Failed | (4.7), (4.9) | Printed covariance coefficient fails for $w_i\ne0$; corrected $1/4$ saturates. |
| Failed | (5.7) | Displayed uncorrelated expansion drops the $w_r$ contribution. |
| Failed | 5.2 minimum under simultaneous clock normalization | $w_r=1$ is not the minimum with $\bar k^2=(1+w_r)(1+2w_r)/(2w_r^2)$. |
| Blocked | Source archive | First official source request failed with SSL EOF; retry returned HTTP 406. Full official PDF was available, so the deep reconstruction is complete. |

The failed local expressions have been isolated from the usable downstream construction. The remnant claim is not promoted after repairing them: it requires additional physical inputs that no algebraic correction supplies.

# Research transfer and next decisive calculation

Reason codes: `[T1-charge; T1-boundary; T2-model; T2-dS-BH-holography]`. The useful transfer is a small explicit model in which one can distinguish a constraint solution, a physical inner product, a relational insertion, a boundary clock and a temperature. It is especially helpful for testing whether a proposed charge-to-thermodynamics argument keeps its normalization fixed across a family of states.

A concrete follow-up would first fix the mass-operator extension and allowed mass sector, then specify a detector or matter field and compare its response with $T_\kappa$. That would test the missing thermality mechanism. The radial model by itself provides no BFV boundary pairing, source/cap gluing map or quantum pushforward theorem.

Daily selection and source audit: [[2026_09_23_overview]].
