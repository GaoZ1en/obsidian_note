---
title: Cosmology Supplements from ZZS Notes
date: 2026-06-15
summary: "Compact supplements to the main modern cosmology review, focusing on redshift derivations, conformal-time scaling, inflationary mode functions, spectral tilt examples, tensor tilt, the Lyth bound, and the inflationary energy scale."
---

# Cosmology Supplements from ZZS Notes

This note keeps only the material that usefully supplements `review.md`. The duplicated FRW and Friedmann-equation derivations from the extracted text have been removed. Conventions are $c=\hbar=1$ and $M_{\rm Pl}^{-2}=8\pi G$ unless stated otherwise.

## 1. Redshift from the Radial Null Geodesic

For the FRW metric

$$\begin{align}
ds^2=-dt^2+a^2(t)\left[\frac{dr^2}{1-kr^2}+r^2d\Omega_2^2\right],
\end{align}$$

take a radial null ray with $d\theta=d\phi=0$. The null condition gives

$$\begin{align}
-\left(\frac{dt}{d\lambda}\right)^2+\frac{a^2}{1-kr^2}\left(\frac{dr}{d\lambda}\right)^2=0.
\end{align}$$

The $t$ component of the geodesic equation is

$$\begin{align}
\frac{d^2t}{d\lambda^2}+\Gamma^t{}_{rr}\left(\frac{dr}{d\lambda}\right)^2=0,\qquad \Gamma^t{}_{rr}=\frac{a\dot a}{1-kr^2}.
\end{align}$$

Using the null condition, this becomes

$$\begin{align}
\frac{d^2t}{d\lambda^2}+\frac{\dot a}{a}\left(\frac{dt}{d\lambda}\right)^2=0.
\end{align}$$

For a comoving observer, the photon frequency is proportional to

$$\begin{align}
\omega=\frac{dt}{d\lambda}.
\end{align}$$

Hence

$$\begin{align}
\frac{d\omega}{d\lambda}+\frac{\omega}{a}\frac{da}{d\lambda}=0,\qquad \omega\propto \frac{1}{a}.
\end{align}$$

Therefore

$$\begin{align}
1+z=\frac{\omega_{\rm em}}{\omega_{\rm obs}}=\frac{a_{\rm obs}}{a_{\rm em}}.
\end{align}$$

With $a_0=1$, this is the usual $1+z=1/a_{\rm em}$.

Common exam phrasing: cosmological redshift is not a Doppler shift in a fixed background; it follows from the dilution of photon frequency along null geodesics in an expanding FRW geometry.

## 2. Constant-$w$ Background in Conformal Time

For a perfect fluid with fixed equation of state $P=w\rho$,

$$\begin{align}
\dot\rho+3H(\rho+P)=0,\qquad \rho\propto a^{-3(1+w)}.
\end{align}$$

For a flat universe dominated by this component and $w\neq -1$,

$$\begin{align}
a(t)\propto t^{\frac{2}{3(1+w)}}.
\end{align}$$

The conformal time is defined by

$$\begin{align}
d\tau=\frac{dt}{a(t)},\qquad ds^2=a^2(\tau)\left[-d\tau^2+d\mathbf{x}^2\right]
\end{align}$$

for $k=0$. If $w\neq -1/3$,

$$\begin{align}
a(\tau)\propto \tau^{\frac{2}{1+3w}}.
\end{align}$$

Useful special cases:

- Radiation domination: $w=1/3$, $a(t)\propto t^{1/2}$, $a(\tau)\propto \tau$.
- Matter domination: $w=0$, $a(t)\propto t^{2/3}$, $a(\tau)\propto \tau^2$.
- de Sitter: $w=-1$, $a(t)\propto e^{Ht}$ and $a(\tau)=-1/(H\tau)$ with $\tau<0$.

This conformal-time scaling is useful because perturbation mode equations usually take the oscillator form

$$\begin{align}
v_k''+\left(k^2-\frac{a''}{a}\right)v_k=0.
\end{align}$$

## 3. Scalar Field Fluctuation in de Sitter

For a light scalar fluctuation in an approximately de Sitter stage, ignore the mass term and use

$$\begin{align}
S=\frac12\int dt\,d^3x\,a^3\left[\dot\phi^2-\frac{1}{a^2}(\nabla\phi)^2\right].
\end{align}$$

The Fourier mode obeys

$$\begin{align}
\ddot\phi_k+3H\dot\phi_k+\frac{k^2}{a^2}\phi_k=0.
\end{align}$$

In conformal time, with $a(\tau)=-1/(H\tau)$, introduce the canonical variable

$$\begin{align}
v_k=a\phi_k.
\end{align}$$

Then

$$\begin{align}
v_k''+\left(k^2-\frac{2}{\tau^2}\right)v_k=0.
\end{align}$$

The Bunch-Davies initial condition requires the subhorizon mode to approach the Minkowski positive-frequency mode:

$$\begin{align}
v_k\to \frac{e^{-ik\tau}}{\sqrt{2k}}\qquad (-k\tau\to \infty).
\end{align}$$

The normalized solution is

$$\begin{align}
v_k(\tau)=\frac{1}{\sqrt{2k}}\left(1-\frac{i}{k\tau}\right)e^{-ik\tau}.
\end{align}$$

Since $\phi_k=v_k/a$, the late-time superhorizon limit $|k\tau|\ll1$ gives

$$\begin{align}
|\phi_k|^2\simeq \frac{H^2}{2k^3}.
\end{align}$$

With

$$\begin{align}
\langle\phi_{\mathbf{k}}\phi_{\mathbf{p}}\rangle=(2\pi)^3\delta^{(3)}(\mathbf{k}+\mathbf{p})P_\phi(k),
\end{align}$$

one obtains

$$\begin{align}
P_\phi(k)\simeq \frac{H^2}{2k^3},\qquad \Delta_\phi^2(k)\equiv \frac{k^3}{2\pi^2}P_\phi(k)\simeq \frac{H^2}{4\pi^2}.
\end{align}$$

This is the basic origin of the nearly scale-invariant scalar fluctuation spectrum. For curvature perturbations in single-field slow-roll inflation, the standard result is

$$\begin{align}
\Delta_{\mathcal R}^2(k)\simeq \frac{H^2}{8\pi^2\epsilon M_{\rm Pl}^2}\bigg|_{k=aH}.
\end{align}$$

The distinction is important: $\Delta_\phi^2$ is the field fluctuation spectrum, while $\Delta_{\mathcal R}^2$ is the curvature perturbation spectrum used for CMB and large-scale-structure initial conditions.

## 4. Spectral Tilt and the Monomial Example

The scalar spectral index is defined by

$$\begin{align}
\Delta_{\mathcal R}^2(k)=A_s\left(\frac{k}{k_*}\right)^{n_s-1},\qquad n_s-1=\left.\frac{d\ln \Delta_{\mathcal R}^2}{d\ln k}\right|_{k=k_*}.
\end{align}$$

In Hubble slow-roll notation,

$$\begin{align}
\epsilon_H=-\frac{\dot H}{H^2},\qquad \eta_H=\frac{\dot\epsilon_H}{H\epsilon_H},
\end{align}$$

the leading single-field result is

$$\begin{align}
n_s-1\simeq -2\epsilon_H-\eta_H.
\end{align}$$

In potential slow-roll notation,

$$\begin{align}
\epsilon_V=\frac{M_{\rm Pl}^2}{2}\left(\frac{V'}{V}\right)^2,\qquad \eta_V=M_{\rm Pl}^2\frac{V''}{V},
\end{align}$$

and, under slow-roll,

$$\begin{align}
n_s-1\simeq -6\epsilon_V+2\eta_V.
\end{align}$$

For a monomial potential $V(\phi)=\lambda\phi^p$,

$$\begin{align}
\epsilon_V=\frac{M_{\rm Pl}^2}{2}\frac{p^2}{\phi^2},\qquad \eta_V=M_{\rm Pl}^2\frac{p(p-1)}{\phi^2}.
\end{align}$$

Therefore

$$\begin{align}
n_s-1\simeq -\frac{M_{\rm Pl}^2p(p+2)}{\phi^2}.
\end{align}$$

The e-fold number before the end of inflation is

$$\begin{align}
N(\phi)=\int_{\phi_e}^{\phi}\frac{V}{M_{\rm Pl}^2V'}\,d\phi\simeq \frac{\phi^2}{2pM_{\rm Pl}^2},
\end{align}$$

where the endpoint contribution is neglected for large $N$. Thus

$$\begin{align}
n_s-1\simeq -\frac{p+2}{2N}.
\end{align}$$

This example is useful because it turns the abstract slow-roll formula into a directly testable prediction. For $N\simeq 60$, larger $p$ gives a redder spectrum.

## 5. Tensor Tilt and the Single-Field Consistency Relation

The tensor spectrum in single-field slow-roll inflation is

$$\begin{align}
\Delta_t^2(k)\simeq \frac{2H^2}{\pi^2M_{\rm Pl}^2}\bigg|_{k=aH}.
\end{align}$$

The tensor spectral index is

$$\begin{align}
n_T\equiv \left.\frac{d\ln\Delta_t^2}{d\ln k}\right|_{k=k_*}\simeq -2\epsilon_H.
\end{align}$$

Since the scalar spectrum is

$$\begin{align}
\Delta_{\mathcal R}^2(k)\simeq \frac{H^2}{8\pi^2\epsilon_HM_{\rm Pl}^2},
\end{align}$$

the tensor-to-scalar ratio is

$$\begin{align}
r\equiv \frac{\Delta_t^2}{\Delta_{\mathcal R}^2}\simeq 16\epsilon_H.
\end{align}$$

Therefore, for canonical single-field slow-roll inflation,

$$\begin{align}
n_T\simeq -\frac{r}{8}.
\end{align}$$

This is the standard single-field consistency relation. It is not a generic prediction of all inflationary models; it assumes a canonical kinetic term, one clock, slow-roll, and the standard Bunch-Davies vacuum.

## 6. Lyth Bound

For homogeneous single-field inflation,

$$\begin{align}
3M_{\rm Pl}^2H^2\simeq \frac12\dot\phi^2+V(\phi),\qquad \dot H=-\frac{\dot\phi^2}{2M_{\rm Pl}^2}.
\end{align}$$

Thus

$$\begin{align}
\epsilon_H=-\frac{\dot H}{H^2}=\frac{\dot\phi^2}{2M_{\rm Pl}^2H^2}.
\end{align}$$

Using $r=16\epsilon_H$,

$$\begin{align}
r=\frac{8\dot\phi^2}{M_{\rm Pl}^2H^2}.
\end{align}$$

The number of e-folds is defined by

$$\begin{align}
dN=Hdt,
\end{align}$$

so

$$\begin{align}
\frac{d\phi}{dN}=\frac{\dot\phi}{H}.
\end{align}$$

Therefore

$$\begin{align}
\frac{r}{8}=\left(\frac{1}{M_{\rm Pl}}\frac{d\phi}{dN}\right)^2.
\end{align}$$

Integrating gives the Lyth bound:

$$\begin{align}
\frac{\Delta\phi}{M_{\rm Pl}}=\int dN\,\sqrt{\frac{r(N)}{8}}.
\end{align}$$

If $r$ is roughly constant during the relevant interval,

$$\begin{align}
\frac{\Delta\phi}{M_{\rm Pl}}\simeq \sqrt{\frac{r}{8}}\,\Delta N=\frac{\Delta N}{60}\sqrt{\frac{r}{0.002}}.
\end{align}$$

Physical meaning: a detectable primordial tensor signal usually implies a large inflaton field excursion. In particular, if $\Delta N\sim 60$ and $r\gtrsim 10^{-3}$, then $\Delta\phi$ is of order $M_{\rm Pl}$ or larger.

This is why measurements of CMB $B$-mode polarization constrain not only the energy scale of inflation but also the field range of inflationary model building.

## 7. Inflationary Energy Scale from $r$

The tensor amplitude is

$$\begin{align}
A_t\simeq \frac{2H^2}{\pi^2M_{\rm Pl}^2}.
\end{align}$$

Using $3M_{\rm Pl}^2H^2\simeq V$ during slow-roll,

$$\begin{align}
A_t\simeq \frac{2V}{3\pi^2M_{\rm Pl}^4}.
\end{align}$$

Since $A_t=rA_s$,

$$\begin{align}
V^{1/4}\simeq \left(\frac{3\pi^2}{2}rA_s\right)^{1/4}M_{\rm Pl}.
\end{align}$$

Using $A_s\simeq 2.5\times 10^{-9}$ and $M_{\rm Pl}\simeq 2.4\times10^{18}\,{\rm GeV}$,

$$\begin{align}
V^{1/4}\simeq 3.3\,r^{1/4}\times 10^{16}\,{\rm GeV}.
\end{align}$$

For example,

$$\begin{align}
r\sim 0.01\quad \Rightarrow\quad V^{1/4}\sim 10^{16}\,{\rm GeV}.
\end{align}$$

Exam phrasing: measuring $r$ would directly determine the inflationary energy scale, up to slow-roll assumptions and the standard normalization of the primordial scalar amplitude.

## 8. Quick Answer Templates

- Redshift derivation: photon frequency measured by a comoving observer scales as $\omega\propto 1/a$, hence $1+z=a_{\rm obs}/a_{\rm em}$.
- Constant-$w$ conformal scaling: for $w\neq -1/3$, $a(\tau)\propto \tau^{2/(1+3w)}$.
- Scale invariance: in de Sitter, the canonical mode equation gives $P_\phi(k)\propto k^{-3}$, so $\Delta_\phi^2$ is $k$ independent.
- Scalar tilt: exact scale invariance is broken because $H$ and $\epsilon$ vary slowly while different $k$ modes leave the horizon.
- Tensor tilt: in canonical single-field slow-roll, $n_T\simeq -2\epsilon_H$ and $r\simeq 16\epsilon_H$, so $n_T\simeq -r/8$.
- Lyth bound: large observable $r$ implies a large field excursion $\Delta\phi/M_{\rm Pl}\sim \int dN\sqrt{r/8}$.
- Inflationary energy scale: $V^{1/4}\simeq 3.3\,r^{1/4}\times10^{16}\,{\rm GeV}$.

## Verification Status

- Verified: the de Sitter mode function $v_k=(2k)^{-1/2}(1-i/(k\tau))e^{-ik\tau}$ satisfies $v_k''+(k^2-2/\tau^2)v_k=0$.
- Verified: the constant-$w$ relation $a(t)\propto t^{2/[3(1+w)]}$ implies $a(\tau)\propto \tau^{2/(1+3w)}$ for $w\neq -1/3$.
- Verified: for $V=\lambda\phi^p$, the potential slow-roll formula gives $n_s-1\simeq -M_{\rm Pl}^2p(p+2)/\phi^2$ and, using $N\simeq \phi^2/(2pM_{\rm Pl}^2)$, gives $n_s-1\simeq -(p+2)/(2N)$.
- Verified: the Lyth relation $r/8=(M_{\rm Pl}^{-1}d\phi/dN)^2$ follows algebraically from $r=8\dot\phi^2/(M_{\rm Pl}^2H^2)$ and $dN=Hdt$.
- Verified: the numerical coefficient in $V^{1/4}\simeq 3.3\,r^{1/4}\times10^{16}\,{\rm GeV}$ follows from $A_s\simeq2.5\times10^{-9}$ and $M_{\rm Pl}\simeq2.4\times10^{18}\,{\rm GeV}$.
- Assumptions: flat FRW background for the simple conformal-time formula; canonical single-field slow-roll for $n_s$, $r$, $n_T$, Lyth bound, and the energy-scale estimate; Bunch-Davies initial condition for the mode functions.
- Not verified: conceptual explanations and exam phrasing are lecture-note organization rather than Mathematica-checkable statements.
