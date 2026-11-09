---
paper id: 2607.21704v1
title: AdS Black Holes Are Short-Lived inside the Spectral Form Factor
authors:
  - José L. F. Barbón
  - Eduardo Velasco-Aja
publication date: 2026-07-23T18:00
abstract: |-
  The paper studies the contribution of AdS black-hole saddles to the spectral form factor of a holographic CFT on a spatial sphere. A naive analytic continuation of the large-black-hole saddle can grow unphysically at late time. An off-shell horizon-size integral and its Picard--Lefschetz decomposition instead show that the large black hole first loses dominance and then leaves the relevant integration cycle; the low-energy spectral endpoint subsequently controls the slope.
comments: "20 pages, 6 figures"
url: https://arxiv.org/abs/2607.21704v1
summary: "A useful contour-level correction to naive complex-temperature black-hole saddles, with a distinctive AdS3 separation between dominance and Stokes times."
tags: []
---

Back to [[2026_07_27_overview]].

The reusable lesson is methodological: analytic continuation of the action at a single on-shell saddle does not determine the continuation of the path integral. One must retain an off-shell modulus and ask whether the saddle's Lefschetz thimble still belongs to the defining contour. This is directly useful for AdS spectral and partition-function calculations, although it is not a CPS or boundary-charge construction.

## Complex Temperature Exposes a Forbidden Saddle

The CFT lives on $S^{d-1}$ of radius $\ell$, and the bulk saddle is Euclidean AdS$_{d+1}$-Schwarzschild. For a smooth black hole of horizon radius $r_s$, the on-shell action has the thermodynamic form

$$\begin{align}
I(\beta,r_s)=\beta M(r_s)-S(r_s).
\end{align}$$

The spectral form factor contains

$$\begin{align}
\zeta(\beta,t)=|Z(\beta+it)|^2.
\end{align}$$

Solving the smoothness condition after $\beta\to\beta+it$, the two black-hole branches approach

$$\begin{align}
r_s^{(\pm)}\longrightarrow \mp i\bar r \qquad (t\to+\infty).
\end{align}$$

The mass term then makes the continued action linear in $t$. For the large-black-hole branch in $d\equiv5\pmod4$, $\operatorname{Re}I$ becomes negative, so $e^{-I}$ grows exponentially. This cannot represent the full partition function because

$$\begin{align}
|Z(\beta+it)|\le Z(\beta).
\end{align}$$

The contradiction diagnoses the continued saddle approximation, not the exact spectral form factor.

## Conical Black Holes Supply the Missing Integration Direction

The paper relaxes the smoothness relation between $\beta$ and $r_s$. The resulting geometries have a conical defect at the horizon but retain

$$\begin{align}
I(\beta,r_s)=\beta M(r_s)-S(r_s). \tag{20}
\end{align}$$

With $x=r_s/\ell$, the proposed minisuperspace integral is

$$\begin{align}
Z(\beta)\approx\int_{x_0}^{\infty}d\mu(x)\,e^{-I(\beta,x)}, \qquad d\mu(x)\simeq\frac{dS}{dx}\,dx. \tag{21--22}
\end{align}$$

The measure is motivated by the CFT density-of-states integral rather than derived from the full gravitational measure. At leading large $N_*$, the measure Jacobian and low-energy structure are initially suppressed, $x_0$ is set to zero, and

$$\begin{align}
I(\beta+it,x) =N_*\left[ (\beta+it)x^{d-2}(1+x^2) -\frac{4\pi}{d-1}x^{d-1} \right]. \tag{24}
\end{align}$$

Its two stationary points are

$$\begin{align}
x_s= \frac{2\pi\pm\sqrt{4\pi^2-d(d-2)(\beta+it)^2}} {d(\beta+it)}. \tag{25}
\end{align}$$

At high temperature,

$$\begin{align}
x_B\simeq\frac{4\pi}{d(\beta+it)} -\frac{d-2}{4\pi}(\beta+it), \qquad x_b\simeq\frac{d-2}{4\pi}(\beta+it), \tag{26}
\end{align}$$

where $x_B$ and $x_b$ denote the large and small black holes. The exact saddle action can be reduced using the stationarity equation:

$$\begin{align}
I_s =-\frac{N_*}{d-1}(\beta+it) \left(x_s^d-x_s^{d-2}\right). \tag{27}
\end{align}$$

## Dominance and Relative Homology Are Different Questions

For small positive $t$, the original contour $\mathcal C_0=[0,\infty)$ decomposes as

$$\begin{align}
\mathcal C_0\simeq\mathcal J_0+\mathcal J_B.
\end{align}$$

The small-black-hole thimble $\mathcal J_b$ is absent because its ascent cycle does not intersect $\mathcal C_0$. Two distinct transitions then occur.

First, the real parts of the actions exchange dominance at

$$\begin{align}
\phi_D=\frac{\pi}{2(d-1)}, \qquad t_D^{(B)} =\beta\tan\frac{\pi}{2(d-1)} +O\!\left(\frac{\beta^3}{\ell^2}\right).
\end{align}$$

After $t_D^{(B)}$, the spectral endpoint dominates even though $\mathcal J_B$ is still present.

Second, equality of imaginary parts produces the Stokes angle

$$\begin{align}
\phi_S=\frac{\pi}{d-1}, \qquad t_S^{(B)} =\beta\tan\frac{\pi}{d-1} +O\!\left(\frac{\beta^3}{\ell^2}\right), \qquad d>3.
\end{align}$$

Across this Stokes line,

$$\begin{align}
\mathcal J_0\longrightarrow \mathcal J_0'=\mathcal J_0+\mathcal J_B, \qquad \mathcal C_0\simeq\mathcal J_0',
\end{align}$$

so the large-black-hole saddle no longer contributes as a separate thimble. The next-to-leading saddle expansion shifts the two candidate Stokes angles differently and makes the large-black-hole thimble the first black-hole thimble to disconnect.

## The $d=3$ Hierarchy

In $d=3$, the high-temperature approximation places the Stokes angle near $\pi/2$, outside the $t=O(\beta)$ regime. Retaining arbitrary $t/\ell$ while expanding in $\beta/\ell$ gives

$$\begin{align}
t_S^{(B)} =2\pi\ell \left[ 1-\frac{5}{32\pi^2}\frac{\beta^2}{\ell^2} +O\!\left(\frac{\beta^4}{\ell^4}\right) \right], \tag{36}
\end{align}$$

while

$$\begin{align}
t_D^{(B)}=\beta+O(\beta^3/\ell^2).
\end{align}$$

Thus the large AdS$_4$ black hole becomes subdominant at thermal time $O(\beta)$ but remains in the relative homology class until curvature time $O(\ell)$. This separation is the most directly reusable result for an AdS$_3$/CFT$_2$-adjacent spectral workflow: dominance and contour membership should never be conflated.

## The Low-Energy Boundary Layer

The endpoint $x=0$ is resolved by adding the entropy of a graviton gas,

$$\begin{align}
S(x) =\frac{4\pi}{d-1}N_*x^{d-1} +s_gN_*^{d/(d+1)} x^{d(d-2)/(d+1)}. \tag{40}
\end{align}$$

Using the energy variable $y=E\ell$, the boundary-layer integral becomes

$$\begin{align}
Z_{\mathrm{BL}}(\beta+it) =\int_1^\infty dy\,\frac{dS_g}{dy} \exp\!\left[-(\beta+it)y+S_g(y)\right],
\end{align}$$

with

$$\begin{align}
S_g(y)=s_gy^{d/(d+1)}. \tag{43}
\end{align}$$

The gas saddle

$$\begin{align}
y_g= \left( \frac{\frac{d}{d+1}s_g}{\beta+it} \right)^{d+1} \tag{46}
\end{align}$$

loses dominance and leaves the contour before the large black hole. After the endpoint dominates, a standard endpoint expansion gives

$$\begin{align}
Z_{\mathrm{endpoint}}(\beta+it) \simeq \frac{\gamma s_g\,e^{s_g-\beta-it}}{\beta+it} +O\!\left((\beta+it)^{-2}\right), \qquad \gamma=\frac{d}{d+1}. \tag{49}
\end{align}$$

The physical late-time behavior is therefore a power-law tail rather than the forbidden exponential growth of the continued large-black-hole action.

## What Transfers and What Does Not

The transferable construction is

$$\begin{align}
\text{on-shell complex saddle}
\;\longrightarrow\;
\text{off-shell real contour}
\;\longrightarrow\;
\text{relative homology and Stokes jumps}.
\end{align}$$

It can be reused for complex temperature or chemical potential, inverse Laplace transforms, and saddle competition in AdS partition functions. The paper's “endpoint” is the lower end of the energy spectrum; it is not a spacetime boundary, temporal wavefunctional, CPS corner, or edge mode.

## Verification Boundary

Checked with Mathematica:

- Differentiating Eq. (24) reproduces the two roots in Eq. (25).
- Substituting the stationary-point relation into the action reproduces Eq. (27); the symbolic residual is zero.

Visually checked in the rendered PDF:

- The saddle-action asymptotics and the $t_D<t_S$ hierarchy in Eqs. (28)--(32).
- The $d=3$ scale separation and the endpoint formula in Eqs. (36) and (49).

Not independently verified:

- The global Lefschetz-thimble topology and intersection numbers.
- The gravitational derivation of the conical-defect measure and the completeness of the one-dimensional family.
- The graviton-gas/string boundary-layer interpolation.
- The foundation of the proposed gravitational path integral; the authors also leave this as an open problem.
