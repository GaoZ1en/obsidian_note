---
paper id: 2607.09594v1
title: Massless fermionic current of Schwinger pairs in 3D de Sitter spacetime
authors:
  - Manizheh Botshekananfard
  - Clément Stahl
publication date: 2026-07-10T16:51
abstract: |-
  The paper studies massless charged fermions in a constant electric field on the expanding patch of dS3. Whittaker-function in-modes and adiabatic regularization produce a finite expression for the induced current. The reported current is linear in the weak-field regime, has Schwinger scaling in the strong-field regime, and shows no infrared hyperconductivity. The printed adiabatic-subtraction chain, however, contains an unresolved sign inconsistency.
comments: "25 pages, 2 figures"
url: https://arxiv.org/abs/2607.09594v1
summary: "A useful 2+1-dimensional Whittaker-mode and adiabatic-current benchmark whose asymptotics are reproducible, but whose printed UV subtraction signs are internally inconsistent."
tags: []
---

Back to [[2026_07_13_overview]].

## Expanding dS3 patch and constant electric field

The paper works on the expanding Poincaré patch,

$$
ds^2=dt^2-e^{2Ht}d\mathbf x^2
=\Omega^2(\tau)(d\tau^2-d\mathbf x^2),
\qquad
\Omega(\tau)=-\frac{1}{H\tau},
\qquad
\tau<0.
$$

The tetrad and flat gamma matrices are chosen as

$$
e^a{}_{\mu}=\Omega\delta^a_\mu,
\qquad
\gamma^0=\sigma_1,
\qquad
\gamma^1=i\sigma_2,
\qquad
\gamma^2=i\sigma_3.
$$

A constant physical electric field in the $x$ direction is represented by

$$
A_1=-\frac{E}{H^2\tau},
\qquad
F_{01}=E\Omega^2.
$$

The dimensionless field strength and momentum direction are

$$
\lambda=\frac{eE}{H^2},
\qquad
r=\frac{k_x}{k}.
$$

The coordinate current computed in the paper is $J=J^1$. The locally measured orthonormal-frame component is

$$
j^{\hat x}=\Omega J.
$$

This distinction is essential for interpreting the plots and strong-field limit.

## Dirac modes and the in-vacuum

After the rescaling $\widetilde\psi=\Omega\psi$, the massless Dirac equation is squared into Whittaker equations for the two spinor components. The Whittaker parameters are

$$
z_\pm=\pm2ik\tau,
\qquad
\kappa=i\lambda r,
\qquad
\gamma=i\lambda,
\qquad
\gamma_s=\gamma-\frac{(-1)^s}{2}.
$$

The early-time limit $\tau\to-\infty$ selects $W_{\kappa,\gamma_s}$ modes with positive or negative Minkowski-like frequency and defines the in-vacuum. The late-time limit $\tau\to0^-$ uses $M_{\kappa,\gamma_s}$ modes to define an out basis, although the current calculation itself uses the in-state.

The source calls this state Bunch-Davies and Hadamard. Because the external electric field breaks full de Sitter invariance, the operational definition is the early-time positive-frequency Hadamard in-state. Equation (2.42) prints only the particle annihilation condition; the antiparticle condition $b_{\mathrm{in},\mathbf k}|0\rangle=0$ is required as well.

## Bare mode-sum current

The field operator is expanded in normalized in-modes and substituted into

$$
J^\mu=e\bar\psi\gamma^\mu\psi.
\tag{3.1}
$$

After angular variables and a momentum cutoff $\Lambda$ are introduced, the mode integral becomes Eq. (3.3). Appendix B evaluates it by Mellin-Barnes representations and residue sums, producing the bare current in Eq. (3.5). The result contains a linear ultraviolet divergence and a finite combination of modified Bessel functions and digamma functions.

The complete Appendix B residue chain was inspected but not independently reproduced.

## Adiabatic current subtraction

The two spinor components obey

$$
\left[
\partial_\tau^2+\omega^2(\tau)
+i(-1)^s\sigma(\tau)
\right]U_s(\tau)=0,
\tag{4.1}
$$

with

$$
\omega^2=k^2+2\lambda H\Omega kr
+\lambda^2H^2\Omega^2,
\qquad
\sigma=\lambda\Omega^2H^2.
\tag{4.2}
$$

The WKB ansatz is

$$
U_s(\tau)=N_s\exp\left[
-i\int^\tau d\tau'
\bigl(X_s(\tau')+iY_s(\tau')\bigr)
\right].
\tag{4.3}
$$

Substitution gives

$$
X_s^2-Y_s^2-\dot Y_s-\omega^2=0,
$$

$$
\dot X_s+2X_sY_s-(-1)^s\sigma=0.
\tag{4.4-4.5}
$$

At the stated adiabatic order,

$$
Y_s=\frac{(-1)^s\sigma}{2X_s},
\qquad
X_s=\omega\bigl[1+O(\omega^{-2})\bigr].
$$

The source then derives a component ratio from the first-order Dirac equation, normalizes $|U_1|^2+|U_2|^2=1$, inserts these adiabatic modes into the current, extracts the linear counterterm, and subtracts it from Eq. (3.5).

The source does not fully specify the adiabatic-order assignment of the electromagnetic background. More importantly, the printed component ratio and current sign do not reproduce the printed counterterm; this failure is recorded below.

## Source expression for the renormalized current

Taking the real part of Eq. (4.15), the paper reports

$$
\begin{aligned}
J={eH^2\Omega^{-1}\over2\pi^2}\Bigg[
&-{\pi\over4}(1+\lambda^2)\coth(2\pi\lambda)
+{\pi\over4}(1-2\lambda^2)I_0(2\pi\lambda)\operatorname{csch}(2\pi\lambda)\\
&+{3\over4}\lambda I_1(2\pi\lambda)\operatorname{csch}(2\pi\lambda)\\
&+{3\lambda^2\over4\sinh(2\pi\lambda)}
\operatorname{Re}\int_{-1}^{1}dr\,r\sqrt{1-r^2}
\Big\{
(e^{-2\pi\lambda r}-e^{-2\pi\lambda})
\Psi(i\lambda-i\lambda r)\\
&\hspace{9em}
+(e^{2\pi\lambda}-e^{-2\pi\lambda r})
\Psi(-i\lambda-i\lambda r)
\Big\}
\Bigg].
\end{aligned}
\tag{4.16}
$$

Here $I_0$ and $I_1$ are modified Bessel functions and $\Psi$ is the digamma function. Equation (4.16) was transcribed from the rendered PDF. It is retained as the source's final formula, not as the endpoint of an independently verified subtraction derivation.

## Weak- and strong-field limits

In the weak-field limit, Eq. (5.5) gives

$$
J=-\frac{eH^2}{16}\Omega^{-1}\lambda
+O(\lambda^3),
$$

or, for the orthonormal-frame current,

$$
\frac{j^{\hat x}}{eH^2}
=-\frac{\lambda}{16}+O(\lambda^3).
$$

The printed strong-field equation omits the tetrad factor. Consistency with Eq. (4.16) and the plot normalization requires

$$
\frac{|j^{\hat x}|}{eH^2}
=\frac{|\Omega J|}{eH^2}
\simeq\frac{\lambda^{3/2}}{4\pi^2},
\qquad
\lambda\gg1.
$$

This is the $E^{3/2}$ Schwinger scaling of a $2+1$-dimensional theory. At fixed physical electric field, the result still contains a secular $1/H$ timescale. It should not be read as a finite stationary-current limit obtained merely by setting $H\to0$.

## Internal sign failure in the subtraction chain

The printed Eqs. (4.10) and (4.12) imply

$$
\frac{U_2}{U_1}
=\frac{i(\omega+kr+\lambda H\Omega)}
{k\sqrt{1-r^2}},
\qquad
J_A\propto|U_1|^2-|U_2|^2.
$$

Using the stated normalization gives

$$
\frac{|U_1|^2-|U_2|^2}
{|U_1|^2+|U_2|^2}
=-
\frac{\lambda+pr}
{\sqrt{p^2+2\lambda pr+\lambda^2}}.
$$

Its ultraviolet angular integral is $-\pi\lambda/2$. These printed inputs therefore produce the counterterm

$$
-\frac{eH^2\Omega^{-1}}{4\pi}\lambda\Lambda,
$$

whereas Eq. (4.14) prints the positive sign. The bare divergence in Eq. (3.5) is positive, so cancellation requires the positive Eq. (4.14). At least one of Eqs. (4.10), (4.12), and (4.14) has a sign error. Downstream claims that depend on the printed derivation cannot be treated as independently established until the convention chain is repaired.

Equation (5.3) also has an incompatible power of $H$: when rewritten from the corrected orthonormal-frame form of Eq. (5.4), it requires $H^{-3}$ rather than the printed $H^{-1}$. The abstract says the current is opposite to the external field, while Section 5.1.1 says it is along the field. A direction statement requires a single explicit convention for $e$, $E$, $J^1$, and $j^{\hat x}$.

## Transfer to three-dimensional quantization problems

The Whittaker parameterization supplies a compact benchmark for spinor modes in $2+1$-dimensional curved backgrounds. The distinction between coordinate and orthonormal-frame currents should be carried into any mode-sum calculation. The local adiabatic counterterm can be compared with heat-kernel, Hadamard point-splitting, or resolvent methods.

For AdS$_3$ applications, the spectral equation and special-function techniques may transfer after changing the background and boundary conditions. The expanding-patch in-vacuum and the final dS current do not follow by a direct substitution $H\to i/L$. Adding parity-even or Haldane masses would also expose Hall and Chern-Simons contributions relevant to topological matter in three dimensions.

## Verification log

### Checked

- Rendered PDF pages confirm the bare current, WKB equations, and the printed Eq. (4.16).
- Direct symbolic simplification of the printed Eqs. (4.10) and (4.12) gives the negative counterterm sign above, establishing the internal sign failure.
- Independent numerical evaluation of Eq. (4.16) gives

  $$
  \lambda=(0.01,0.03,0.1)
  \quad\Rightarrow\quad
  \frac{\Omega J}{eH^2}
  =(-0.0006250020,-0.0018750550,-0.006252034),
  $$

  which approaches slope $-1/16$.
- For $\lambda=(30,50,100)$,

  $$
  \frac{|\Omega J|}{eH^2\lambda^{3/2}}
  =(0.027507,0.026701,0.026059),
  $$

  approaching $1/(4\pi^2)=0.0253303$.

### Blocked

- The exact intended sign conventions behind Eqs. (4.10), (4.12), and (4.14) are not stated well enough to repair the subtraction chain uniquely.
- The Appendix B Mellin-Barnes contour and residue calculation was not independently reconstructed.
- The electromagnetic adiabatic-order assignment is not sufficiently explicit for a convention-independent rederivation.

### Failed

- The printed Eqs. (4.10), (4.12), and (4.14) cannot all be correct under the stated normalization.
- The printed strong-field formula omits the tetrad factor $\Omega$, and Eq. (5.3) has an inconsistent power of $H$.
- The paper's two statements about the direction of the current are mutually inconsistent until conventions are fixed.
