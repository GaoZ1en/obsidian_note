---
paper id: 2608.06047v1
title: Partition Functions of Hermitian and PT-Symmetric Oscillators from Integrable Models
authors:
  - Hongfei Shu
  - Jingjing Yang
publication date: 2026-08-06T13:57
abstract: |-
  The paper develops an ODE/IM formulation of thermal partition functions and spectral zeta functions for homogeneous Hermitian and PT-symmetric oscillators. Physical boundary conditions are converted into zeros of a counting function solved by a Destri--de Vega equation, and contour integrals of that function recover the spectral observables and their high-temperature expansions.
comments: "18 pages, 1 figure, 4 tables"
url: https://arxiv.org/abs/2608.06047v1
summary: "A compact, reusable route from ODE boundary conditions through an integrable-model counting function to partition and spectral-zeta data, including the analytic continuation required by PT-symmetric Stokes sectors."
tags: []
---

Back to [[2026_08_08_overview]].

This is useful as a spectral-method note rather than as an immediate boundary-charge result. Its transferable construction is

$$
\text{ODE boundary condition}
\longrightarrow Q/T\text{-function zero}
\longrightarrow 1+a(\pm E)=0
\longrightarrow \text{DdV equation}
\longrightarrow \{Z(\beta),\zeta_H(s)\}.
$$

The important distinction is between the two physical problems. A Hermitian full-line oscillator is assembled from the even and odd radial $Q$-function sectors. A PT-symmetric oscillator is a zero of a $T$-function in a different pair of Stokes sectors, so the same counting function must be continued to its second determination.

## Spectral functions and the radial ODE

The starting Hamiltonian and its two spectral functions are

$$
H=-\frac{d^2}{dx^2}+V(x),
\qquad
Z(\beta)=\sum_{n\geq0}e^{-\beta E_n},
\qquad
\zeta_H(s)=\sum_{n\geq0}E_n^{-s}.
\tag{1--4}
$$

They are related by

$$
\Gamma(s)\zeta_H(s)
=\int_0^\infty \beta^{s-1}Z(\beta)\,d\beta.
\tag{5}
$$

For $V=x^{2M}$, $E_n\sim n^{1/\mu}$ with

$$
\mu=\frac{M+1}{2M},
$$

so the defining zeta series initially converges for $\operatorname{Re}s>\mu$. The ODE/IM auxiliary problem is

$$
\left[-\frac{d^2}{dx^2}+x^{2M}+\frac{l(l+1)}{x^2}-E\right]\psi(x)=0,
\qquad M>1.
\tag{6}
$$

Let $y(x,E,l)$ be the solution subdominant at infinity and $\psi(x,E,l)$ the solution regular at the origin:

$$
y\sim \frac{1}{\sqrt{2i}}x^{-M/2}
\exp\!\left[-\frac{x^{M+1}}{M+1}\right],
\qquad
\psi\sim x^{l+1}.
\tag{7}
$$

For $l=-1$, the second behavior is constant rather than decaying; this is the Neumann sector. The paper's prose that $\psi$ decays at the origin is therefore too strong.

With

$$
\omega=e^{\pi i/(M+1)},
$$

define the Wronskians

$$
Q(E,l)=W[y(x,E,l),\psi(x,E,l)],
$$

$$
T(E,l)=W[y(\omega x,\omega^{-2}E,l),
y(\omega^{-1}x,\omega^2E,l)].
\tag{8}
$$

They satisfy the Baxter relation

$$
T(E)Q(E)
=\omega^{l+1/2}Q(\omega^2E)
+\omega^{-l-1/2}Q(\omega^{-2}E).
\tag{9}
$$

At a zero $Q(E_n,l)=0$, the ratio

$$
a(E,l)=\omega^{2l+1}
\frac{Q(\omega^2E,l)}{Q(\omega^{-2}E,l)}
=\omega^{2l+1}\prod_{n\geq0}
\frac{E_n-\omega^2E}{E_n-\omega^{-2}E}
\tag{11}
$$

obeys the exact quantization condition

$$
1+a(E_n,l)=0.
\tag{10}
$$

## The Destri--de Vega counting equation

Writing $E=e^{\theta/\mu}$, the paper uses

$$
\begin{aligned}
\log a(\theta)
={}&i\pi\left(l+\frac12\right)-imLe^\theta\\
&+\int_{\mathbb R-i\delta}d\theta'\,
\varphi(\theta-\theta')\log(1+a(\theta'))\\
&-\int_{\mathbb R+i\delta}d\theta'\,
\varphi(\theta-\theta')\log(1+a(\theta')^{-1}),
\end{aligned}
\tag{12}
$$

where

$$
mL=\frac{\sqrt\pi\,\Gamma(1/(2M))}
{2M\,\Gamma(3/2+1/(2M))},
$$

$$
\varphi(\theta)=\int_{\mathbb R}\frac{dk}{2\pi}
e^{ik\theta}
\frac{\sinh[\pi k(1-M)/(2M)]}
{2\sinh(\pi k/(2M))\cosh(\pi k/2)}.
\tag{13}
$$

The two shifted contours are part of the definition: they select lateral logarithms across the Bethe-root line. The source does not give an independent global specification of every logarithm sheet, so reuse of this equation must preserve the $\pm i\delta$ prescription.

## Hermitian parity sectors and the exact spectral contour

For the full-line Hermitian problem

$$
\left(-\frac{d^2}{dx^2}+x^{2M}-E\right)\psi=0,
\tag{14}
$$

parity gives

$$
l=-1:\quad \psi'(0)=0 \quad\text{(even)},
\qquad
l=0:\quad \psi(0)=0 \quad\text{(odd)}.
\tag{15--16}
$$

The full spectrum is the union of the zeros of $Q(E,-1)$ and $Q(E,0)$. The source packages the two sectors through

$$
\log(1+a(E))
=\log(1+a(E,0))+\log(1+a(E,-1)).
\tag{17}
$$

This defines the combined logarithm; it should not be read as an exact definition of a single combined $a$ before taking the logarithm.

Because $\partial_E\log(1+a)$ has unit-residue poles at the eigenvalues,

$$
Z(\beta)=\frac{1}{2\pi i}\oint_{\mathcal C}
e^{-\beta E}\partial_E\log(1+a(E))\,dE.
\tag{18}
$$

Deforming $\mathcal C$ to the two lateral rapidity contours and integrating by parts gives

$$
\begin{aligned}
Z(\beta)
=\frac{\beta}{2\pi i\mu}
\int_{-\infty}^{\infty}d\theta\,
e^{\theta/\mu-\beta e^{\theta/\mu}}
\big[&\log(1+a(\theta-i\delta))\\
&-\log(1+a(\theta+i\delta))\big].
\end{aligned}
\tag{20}
$$

The lateral discontinuity is the physical spectral density. Similarly,

$$
\begin{aligned}
\zeta_H(s)
=\frac{s}{2\pi i\mu}
\int_{-\infty}^{\infty}d\theta\,e^{-s\theta/\mu}
\big[&\log(1+a(\theta-i\delta))\\
&-\log(1+a(\theta+i\delta))\big].
\end{aligned}
\tag{23}
$$

The unnumbered determinant formula in the introduction omits the necessary factor $1/(2\pi i)$; Eq. (18) restores it. Equation (21), which rewrites the discontinuity using an imaginary part and correlated $\pm$ signs, also leaves its logarithm sheet implicit. Equations (18)--(20) are the safer transportable statement.

## Integrals of motion and the high-temperature series

For integer $M$, the large-$E$ expansion is

$$
i\log a(E,l)
\sim mLE^\mu-\pi\left(l+\frac12\right)
+I_{1,l}E^{-\mu}+I_{3,l}E^{-3\mu}+\cdots.
\tag{24}
$$

The poles of $1/\cosh(\pi k/2)$ generate only odd inverse powers. Noninteger $M$ also has a second pole family from $1/\sinh(\pi k/(2M))$, associated with nonlocal integrals of motion; the displayed high-temperature series excludes it.

After summing $l=0,-1$, the constant phases cancel. With

$$
I_{2n+1}=I_{2n+1,0}+I_{2n+1,-1},
\qquad
s_n=(2n+1)\mu,
$$

one obtains

$$
Z(\beta)\sim A_{-1}\beta^{-\mu}
+A_1\beta^\mu+A_3\beta^{3\mu}+\cdots,
\tag{28}
$$

$$
A_{2n+1}=\frac{I_{2n+1}\Gamma(1-s_n)}{2\pi},
\qquad I_{-1}=2mL.
\tag{30}
$$

The Mellin transform turns these coefficients into either zeta residues,

$$
\operatorname*{Res}_{s=-s_n}\zeta_H(s)
=\frac{A_{2n+1}}{\Gamma(-s_n)},
\qquad s_n\notin\mathbb Z_{\geq0},
\tag{32}
$$

or regular special values when the Gamma pole cancels the zero of the integral-of-motion coefficient,

$$
\zeta_H(-s_n)=(-1)^{s_n}s_n!\,A_{2n+1},
\qquad s_n\in\mathbb Z_{\geq0}.
\tag{33}
$$

For the sextic oscillator $M=3$, $\mu=2/3$, and $s_1=2$. Substituting $M=3$ into the paper's Wigner--Kirkwood coefficient gives

$$
A_3=\frac5{32},
\qquad
\zeta_H(-2)=2A_3=\frac5{16}.
\tag{34}
$$

This is a clean example of local integrals of motion determining an analytically continued spectral-zeta value without enumerating the spectrum.

## Quartic oscillator benchmark

For $M=2$,

$$
\mu=\frac34,
\qquad
\varphi(\theta)=-\frac{1}{2\pi\cosh\theta},
\tag{35}
$$

and the source gives

$$
\begin{aligned}
Z(\beta)\sim{}&
\frac{\Gamma(1/4)}{4\sqrt\pi}\beta^{-3/4}
-\frac{\Gamma(3/4)}{4\sqrt\pi}\beta^{3/4}\\
&+\frac{11\Gamma(1/4)}{480\sqrt\pi}\beta^{9/4}
-\frac{61\Gamma(3/4)}{1440\sqrt\pi}\beta^{15/4}
+O(\beta^{21/4}).
\end{aligned}
\tag{36}
$$

At $\beta=10$, the DdV partition function yields

$$
E_0^{Z}=1.060362090484065,
$$

versus $1.060362090484183$ from direct diagonalization. The numerical calculation uses a finite rapidity interval, solves the nonlinear equation by FFT, and supplies the UV tail with the large-$E$ expansion. These numerical comparisons are source-reported rather than independently rerun here.

## PT-symmetric Stokes sectors and the $T$-function zero

The PT problem is

$$
\left[-\frac{d^2}{dq^2}-(iq)^{2M}-E^{\mathrm{PT}}\right]\Psi(q)=0,
\tag{38}
$$

with the ends of the contour in the two decay sectors centered at

$$
\arg q=-\frac\pi2\pm\frac{\pi}{M+1}.
\tag{40}
$$

After $x=iq$, the ODE energy is $E=-E^{\mathrm{PT}}$. The two subdominant solutions are now those in adjacent ODE Stokes sectors, so their Wronskian is a $T$-function:

$$
T(-E_n^{\mathrm{PT}},0)=0.
\tag{46--47}
$$

The Baxter relation converts this to

$$
1+a(-E_n^{\mathrm{PT}})=0.
\tag{48}
$$

Unlike the Hermitian full-line problem, this is one $l=0$ sector rather than a parity sum.

## Second determination and PT spectral functions

Set $E^{\mathrm{PT}}=e^{\theta^{\mathrm{PT}}/\mu}$. Then

$$
-E^{\mathrm{PT}}
=e^{(\theta^{\mathrm{PT}}+\mu\pi i)/\mu},
$$

so the physical zero lies at

$$
1+a(\theta^{\mathrm{PT}}+\mu\pi i)=0.
\tag{50}
$$

This point is outside the primary DdV strip. Crossing the kernel pole produces the second-determination kernel

$$
\varphi_{\mathrm{II}}(\theta)
=\varphi(\theta)-\varphi\!\left(\theta-\frac{i\pi}{M}\right).
$$

The continued counting function is

$$
\begin{aligned}
\log a(\theta^{\mathrm{PT}}+\mu\pi i)
={}&2i\sin\!\left(\frac{\pi}{2M}\right)mLe^{\theta^{\mathrm{PT}}}\\
&+\int_{\mathbb R-i\delta}d\theta'\,
\varphi_{\mathrm{II}}(\theta^{\mathrm{PT}}+\mu\pi i-\theta')
\log(1+a(\theta'))\\
&-\int_{\mathbb R+i\delta}d\theta'\,
\varphi_{\mathrm{II}}(\theta^{\mathrm{PT}}+\mu\pi i-\theta')
\log(1+a(\theta')^{-1}).
\end{aligned}
\tag{51}
$$

Operationally, one first solves the primary equation and then inserts it into this continuation. The PT partition and zeta functions use the same lateral-discontinuity contours as before, evaluated at $\theta^{\mathrm{PT}}+\mu\pi i\pm i\delta$ (Eqs. (52)--(53)). The paper specifies the pole pickup but not a complete standalone analytic-continuation path and branch atlas; the shifted prescription must therefore remain attached to the formula.

For integer $M$, the continued asymptotics give

$$
Z^{\mathrm{PT}}(\beta)
\sim A_{-1}^{\mathrm{PT}}\beta^{-\mu}
+A_1^{\mathrm{PT}}\beta^\mu+\cdots,
$$

$$
A_{2n+1}^{\mathrm{PT}}
=\sin\!\left(\frac{\pi(2n+1)}2\right)
\sin\!\left(\frac{\pi(2n+1)}{2M}\right)A_{2n+1}.
\tag{61}
$$

The cubic example $M=3/2$ is numerically evaluated from the continued contour formulas but is not covered by this integer-$M$ high-temperature expansion.

## What transfers to spectral and boundary projects

The paper supplies a practical pattern for problems in which a boundary condition is naturally a zero of an entire spectral object:

1. identify the $Q$- or $T$-function implementing the physical boundary/Stokes data;
2. rewrite its zero as $1+a(E)=0$;
3. solve for $a$ by a nonlinear integral equation rather than by order-by-order WKB;
4. treat $\partial_E\log(1+a)$ as an exact spectral density;
5. obtain $Z$ and $\zeta$ from its lateral discontinuity;
6. map the large-$E$ integrals of motion to heat-kernel-like coefficients and zeta data;
7. when the physical contour changes Stokes sectors, continue the same counting function to the correct determination.

This could be useful for AdS radial operators or boundary-value problems only after identifying the analogous determinant and controlling zero modes, degeneracies, boundary counterterms, and logarithm sheets. The present paper is one-dimensional and does not itself supply those field-theoretic ingredients.

## Verification note

### Checked

- Mathematica substitution into the stated $A_3$ formula at $M=3$ reproduces $A_3=5/32$ and hence $\zeta_H(-2)=5/16$ from Eq. (33).
- The Mellin-transform residue/value split was checked algebraically from a monomial $A\beta^p$ and the pole structure of $\Gamma(s)$.
- The Hermitian parity phases $-\pi(l+1/2)$ cancel exactly between $l=-1$ and $l=0$.

### Source-derived boundary

- The Baxter-to-DdV derivation, entire-function product normalization, contour deformations, second-determination pole pickup, Wigner--Kirkwood series, and PT sine factors were reconstructed from the paper but not independently proved.
- The FFT solution, WKB UV completion, and tabulated spectral comparisons were inspected in the PDF but not rerun.

### Source issues

- The introduction's unnumbered spectral-determinant contour is missing $1/(2\pi i)$; Eq. (18) has the correct normalization.
- Equation (17) defines a combined logarithm, while later formulas use a combined $\log a$ as asymptotic shorthand; these should not be conflated.
- Equation (21) and the second determination do not completely specify their global logarithm sheets.
- The common domain of the displayed DdV framework and the PT family is $M>1$; the weaker printed condition $2M\in\mathbb Z_{>1}$ is not sufficient by itself.
