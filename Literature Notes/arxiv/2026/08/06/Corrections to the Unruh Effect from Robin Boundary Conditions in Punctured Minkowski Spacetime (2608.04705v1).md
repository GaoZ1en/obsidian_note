---
paper id: 2608.04705v1
title: Corrections to the Unruh Effect from Robin Boundary Conditions in Punctured Minkowski Spacetime
authors:
  - Nickolas P. Botta
  - João Paulo M. Pitelli
  - Ricardo A. Mosna
publication date: 2026-08-05T11:14
abstract: |-
  A real massless scalar on Minkowski spacetime with the spatial origin removed is quantized with the stable Robin family \(G(0)-\beta G'(0)=0\). The induced \(s\)-wave correction to the static Wightman function is nonstationary on an accelerated trajectory, gives a finite \(O(1)\) long-interaction detector correction for each finite \(\beta\), and develops an infrared logarithm in the formal Neumann limit.
comments: "8 pages, 5 figures, accepted for publication in Phys. Rev. D"
url: https://arxiv.org/abs/2608.04705v1
summary: "A self-adjoint-extension model where Robin data becomes point-scattering data and breaks boost stationarity of the Unruh correction."
tags: []
---

[[2026_08_06_overview|Back to the 2026-08-06 overview]]

The reusable result is not a modified Unruh temperature. Removing a timelike line makes the \(s\)-wave radial operator non-unique; a Robin self-adjoint extension changes the static ground state and breaks the boost symmetry needed for a stationary accelerated response.

## The puncture as extension data

On \(\mathbb R^{1,3}\setminus\mathcal L\), where \(\mathcal L=\{(t,\mathbf x=0)\}\), separate

$$
\Phi=e^{-i\omega t}Y_\ell^m(\theta,\phi)R_{\ell m\omega}(r).
$$

The radial equation is

$$
R''+\frac2rR'+\left[\omega^2-\frac{\ell(\ell+1)}{r^2}\right]R=0.
$$

Only \(\ell=0\) admits an additional square-integrable irregular solution. With \(G=rR_0\),

$$
G''+\omega^2G=0,
\qquad
G(0)-\beta G'(0)=0,
\qquad
\beta\ge0.
$$

Writing \(G_\omega=A_\omega\sin(\omega r+\delta_0)\) gives

$$
\tan\delta_0=\beta\omega,
\qquad
\omega\cot\delta_0=\beta^{-1},
\qquad
a_s=-\beta,
$$

and

$$
f_0(\omega)=\frac{1}{-1/a_s-i\omega}.
$$

For \(G=e^{-\kappa r}\), the boundary condition requires \(1+\beta\kappa=0\). A decaying mode exists only for \(\beta<0\); the paper keeps the no-bound-state branch \(\beta\ge0\). The endpoints are Dirichlet/regular at \(\beta=0\) and formal Neumann at \(\beta\to\infty\).

The mechanism is

$$
\text{removed locus}
\longrightarrow
\text{operator-domain ambiguity}
\longrightarrow
\text{self-adjoint boundary condition}
\longrightarrow
\text{scattering and state data}.
$$

## Static state and boundary Wightman term

Positive frequency is defined with respect to inertial time. The two-point function splits as

$$
W(x,x')=W_{\rm M}(x,x')+W_\beta(x,x'),
$$

and only the \(s\)-wave changes. For

$$
R=r+r',
\quad
\Delta t=t-t',
\quad
w=R+\Delta t,
\quad
v=R-\Delta t,
$$

the source obtains

$$
W_\beta=
\frac{1}{4\pi^2rr'}\lim_{\epsilon\to0^+}
\int_0^\infty d\omega\,
e^{-i\omega(\Delta t-i\epsilon)}
\frac{\beta\sin(\omega R)+\beta^2\omega\cos(\omega R)}
{1+\beta^2\omega^2},
$$

or

$$
W_\beta=
\frac{
e^{w/\beta}E_1[(w-i0)/\beta]
+e^{v/\beta}E_1[(v+i0)/\beta]
}{8\pi^2rr'}.
$$

The extension chooses the spatial operator domain; the inertial positive-frequency prescription separately chooses a static quasifree state.

## Accelerated detector and broken boost stationarity

For

$$
x^\mu(\tau)=
\left(a^{-1}\sinh(a\tau),a^{-1}\cosh(a\tau),0,0\right),
$$

one has

$$
w=a^{-1}(e^{a\tau}+e^{-a\tau'})>0,
\qquad
v=a^{-1}(e^{-a\tau}+e^{a\tau'})>0.
$$

Therefore

$$
W_\beta(\tau,\tau')=
\frac{e^{w/\beta}E_1(w/\beta)+e^{v/\beta}E_1(v/\beta)}
{8\pi^2r(\tau)r(\tau')}
$$

is real and symmetric. The puncture preserves inertial time translations but not the boosts translating \(\tau\), so

$$
W_\beta(\tau+s,\tau'+s)\ne W_\beta(\tau,\tau')
$$

in general. The Minkowski piece still gives

$$
\dot F_{\rm M}(\Omega)=\frac1{2\pi}
\frac{\Omega}{e^{2\pi\Omega/a}-1},
$$

but the defect term has no time-independent rate or KMS temperature. For real switching, its symmetry implies

$$
F_\beta(-\Omega)=F_\beta(\Omega).
$$

This concerns the subtracted correction, which may be negative; it is not detailed balance for the full positive response.

## Long-time bound at finite Robin parameter

Define

$$
H(z)=e^zE_1(z)=\int_0^\infty\frac{e^{-p}}{z+p}\,dp,
\qquad
0<H(z)\le z^{-1}.
$$

At fixed \(0<\beta<\infty\),

$$
0\le W_\beta(\tau,\tau')
\le
\frac{\beta}{8\pi^2r(\tau)r(\tau')}
\left(\frac1w+\frac1v\right).
$$

With

$$
\xi=\frac a2(\tau+\tau'),
\qquad
\eta=\frac a2(\tau-\tau'),
$$

the crucial integral is

$$
\int_{-\infty}^{\infty}d\eta\,
\frac{\cosh\eta}
{\cosh\xi(\cosh^2\xi+\sinh^2\eta)}
=\frac{\pi}{\cosh^2\xi}.
$$

It yields

$$
\int_{\mathbb R^2}d\tau\,d\tau'\,W_\beta(\tau,\tau')
\le\frac{a\beta}{2\pi}.
$$

Dominated convergence makes the long-window correction finite and \(O(1)\), with no additional term proportional to interaction duration. This is pointwise in finite \(\beta\).

## Singular Neumann endpoint

Since

$$
e^zE_1(z)=-\gamma-\log z+O(z|\log z|)
$$

as \(z\to0^+\),

$$
W_\beta(\tau,\tau')
=\frac{\log[\beta^2/(wv)]-2\gamma}
{8\pi^2r(\tau)r(\tau')}+o(1)
$$

as \(\beta\to\infty\). The Neumann endpoint is infrared-singular in the \(s\)-wave sector, and the limit cannot be interchanged with the finite-\(\beta\) long-time estimate.

## Scope and local use

This is a clean example in which the domain and state are distinct, a background symmetry need not preserve the domain, a boundary correction can be finite but nonstationary, and an endpoint limit can fail uniformly because of an IR mode.

The model is a real massless scalar on punctured flat spacetime with a static zero-range defect. The clean \(L^1\) theorem is for the unshifted radial hyperbola. It does not construct an AdS source-response action, CPS flux, or dynamical point defect.

## Verification note

### Checked

- Mathematica reproduced the Robin phase relation, scattering-length formula, and the \(\beta<0\) bound-state condition.
- Mathematica verified the integral representation and upper bound for \(e^zE_1(z)\).
- The \((\xi,\eta)\) identities and integrals giving \(a\beta/(2\pi)\) were reproduced.
- A direct damped frequency integral at representative parameters agreed with the closed \(E_1\) form to about \(10^{-21}\).
- Small- and large-\(z\) expansions reproduced the Neumann logarithm and Dirichlet suppression.
- A representative common proper-time shift changed \(W_\beta\), explicitly confirming nonstationarity.

### Failed

- No targeted algebraic, integral, or asymptotic check failed.

### Blocked

- The global distributional \(i0\)/Heaviside identity across \(w=0\) or \(v=0\), deficiency-index proof, full mode completeness, state positivity, and numerical detector plots were not independently reproduced.
- No claim beyond the ideal static point scatterer was checked.

