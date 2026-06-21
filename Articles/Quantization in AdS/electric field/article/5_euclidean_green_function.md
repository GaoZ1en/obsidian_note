---
title: "5_euclidean_green_function"
date: 2026-06-10
summary: "Constructs the Euclidean Maxwell two-point function from temporal-gauge mode sums and reduces it to an integrated scalar kernel."
---

# 5. Euclidean correlation function

In this section, we analytically continue the temporal-gauge mode expansion to Euclidean signature and write the corresponding two-point function.

## 5.1 Euclidean background and modes

We perform the Wick rotation $t=-i\tau$. The AdS$_3$ metric becomes

$$\begin{align}
\mathrm{d}s_{E}^{2}&=(1+r^{2})\mathrm{d}\tau^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi^{2}.
\end{align}$$

We then continue the Lorentzian temporal-gauge modes to Euclidean signature. The field components transform as

$$\begin{align}
A^{\tau}(\tau,r,\phi)&=iA^{t}(-i\tau,r,\phi)=0, \\
A^{r}(\tau,r,\phi)&=A^{r}(-i\tau,r,\phi), \\
A^{\phi}(\tau,r,\phi)&=A^{\phi}(-i\tau,r,\phi).
\end{align}$$

The Euclidean modes that decay for increasing $\tau$ are built from the stream functions

$$\begin{align}
\Psi_{nm}^{E}&=\sqrt{\frac{n+|m|+1}{2\pi\omega_{nm}^{2}(n+1)}}e^{-\omega_{nm}\tau}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}&=2n+2+|m|.
\end{align}$$

Acting with the same first-order differential operator as in Lorentzian signature gives

$$\begin{align}
A_{nm,E}^{\mu}&=D^{\mu}\Psi_{nm}^{E}, & D^{\tau}&=0, & D^{r}&=\frac{1+r^{2}}{r}\partial_{\phi}, & D^{\phi}&=-\frac{1+r^{2}}{r}\partial_{r}.
\end{align}$$

Because $D^{\tau}=0$, the continued basis remains in temporal gauge. Therefore only the spatial components contribute to the correlator.

## 5.2 Time-ordered mode sum

Let $x_{i}=(\tau_{i},r_{i},\phi_{i})$, define $T=\tau_{1}-\tau_{2}$ and $\varphi=\phi_{1}-\phi_{2}$, and time-order with respect to the Euclidean time $\tau$. The temporal-gauge two-point function is

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=\theta(T)\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}A_{nm,E}^{\mu}(x_{1})A_{nm,E}^{*\nu}(x_{2}) \\
&\quad+\theta(-T)\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}A_{nm,E}^{*\mu}(x_{1})A_{nm,E}^{\nu}(x_{2}).
\end{align}$$

Since every mode is obtained by acting with $D^{\mu}$ on a scalar stream function, it is convenient to factor out the differential operators and define

$$\begin{align}
\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}A_{nm,E}^{\mu}(x_{1})A_{nm,E}^{*\nu}(x_{2})&=D_{1}^{\mu}D_{2}^{\nu}H(T,r_{1},r_{2},\varphi),
\end{align}$$

where the scalar kernel is

$$\begin{align}
H(T,r_{1},r_{2},\varphi)&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\Psi_{nm}^{E}(T,r_{1},\phi_{1})\Psi_{nm}^{E*}(0,r_{2},\phi_{2}), & T&\geq0.
\end{align}$$

The full time-ordered correlator is therefore

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=D_{1}^{\mu}D_{2}^{\nu}H(|T|,r_{1},r_{2},\varphi).
\end{align}$$

The dependence on $|T|$ comes from Euclidean time ordering, and the temporal components vanish because the operator $D^{\mu}$ has no $\tau$ component.

## 5.3 Reduction to a scalar kernel

To express the kernel $H$ more compactly, we compare it with the Euclidean Green function of a scalar field of conformal dimension $\Delta=2$:

$$\begin{align}
g_{2}(x_{1},x_{2})&=\frac{1}{4\pi}\frac{e^{-\rho_{E}}}{\sinh\rho_{E}},
\end{align}$$

Here the Euclidean geodesic distance $\rho_{E}$ is defined by

$$\begin{align}
\cosh\rho_{E}&=\sqrt{1+r_{1}^{2}}\sqrt{1+r_{2}^{2}}\cosh T-r_{1}r_{2}\cos\varphi.
\end{align}$$

The temporal-gauge stream functions are related to the corresponding $\Delta=2$ scalar modes by

$$\begin{align}
\Psi_{nm}^{E}&=\frac{\phi_{nm}^{E}}{\omega_{nm}}.
\end{align}$$

Therefore

$$\begin{align}
H(T,r_{1},r_{2},\varphi)&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\Psi_{nm}^{E}(T,r_{1},\phi_{1})\Psi_{nm}^{E*}(0,r_{2},\phi_{2}) \\
&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\frac{1}{\omega_{nm}^{2}}\phi_{nm}^{E}(T,r_{1},\phi_{1})\phi_{nm}^{E*}(0,r_{2},\phi_{2}).
\end{align}$$

Summing over the scalar basis gives

$$\begin{align}
H(T,r_{1},r_{2},\varphi)&=\int_{0}^{\infty}\mathrm{d}s\,s\,g_{2}(T+s,r_{1},r_{2},\varphi), & T&\geq0.
\end{align}$$

The Euclidean Maxwell two-point function is then

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=D_{1}^{\mu}D_{2}^{\nu}\int_{0}^{\infty}\mathrm{d}s\,s\,g_{2}(|T|+s,r_{1},r_{2},\varphi).
\end{align}$$

This is the final representation kept in this paper. It shows that the Maxwell correlator is obtained by acting with the temporal-gauge differential operators on an integrated scalar kernel.
