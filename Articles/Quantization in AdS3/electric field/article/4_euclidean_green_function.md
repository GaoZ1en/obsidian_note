---
title: "4_euclidean_green_function"
date: 2026-06-10
summary: "Constructs the Euclidean Maxwell two-point function from temporal-gauge normal-mode sums."
---

# 4. Euclidean correlation function

This section keeps only the temporal-gauge mode-sum representation of the Euclidean two-point function.

## 4.1 Euclidean temporal-gauge modes

After the Wick rotation $t=-i\tau$,

$$\begin{align}
A^{\tau}(\tau,r,\phi)&=iA^{t}(-i\tau,r,\phi)=0, \\
A^{r}(\tau,r,\phi)&=A^{r}(-i\tau,r,\phi), \\
A^{\phi}(\tau,r,\phi)&=A^{\phi}(-i\tau,r,\phi).
\end{align}$$

The Euclidean stream functions are

$$\begin{align}
\Psi_{nm}^{E}&=\sqrt{\frac{n+|m|+1}{2\pi\omega_{nm}^{2}(n+1)}}e^{-\omega_{nm}\tau}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}&=2n+2+|m|.
\end{align}$$

The Euclidean temporal-gauge modes are

$$\begin{align}
A_{nm,E}^{\mu}&=D^{\mu}\Psi_{nm}^{E}, &
D^{\tau}&=0, &
D^{r}&=\frac{1+r^{2}}{r}\partial_{\phi}, &
D^{\phi}&=-\frac{1+r^{2}}{r}\partial_{r}.
\end{align}$$

## 4.2 Mode sum

Let $x_{i}=(\tau_{i},r_{i},\phi_{i})$, $T=\tau_{1}-\tau_{2}$, and $\varphi=\phi_{1}-\phi_{2}$. The Euclidean time-ordered two-point function in temporal gauge is

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=\theta(T)\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}A_{nm,E}^{\mu}(x_{1})A_{nm,E}^{*\nu}(x_{2}) \\
&\quad+\theta(-T)\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}A_{nm,E}^{*\mu}(x_{1})A_{nm,E}^{\nu}(x_{2}).
\end{align}$$

Equivalently,

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=D_{1}^{\mu}D_{2}^{\nu}H(|T|,r_{1},r_{2},\varphi),
\end{align}$$

where

$$\begin{align}
H(T,r_{1},r_{2},\varphi)&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\Psi_{nm}^{E}(T,r_{1},\phi_{1})\Psi_{nm}^{E*}(0,r_{2},\phi_{2}), &
T&\geq0.
\end{align}$$

The temporal components vanish in this gauge because $D^{\tau}=0$.

## 4.3 Relation to the scalar mode sum

Let $g_{2}$ be the Euclidean Green function for a scalar with $\Delta=2$:

$$\begin{align}
g_{2}(x_{1},x_{2})&=\frac{1}{4\pi}\frac{e^{-\rho_{E}}}{\sinh\rho_{E}},
\end{align}$$

with geodesic distance

$$\begin{align}
\cosh\rho_{E}&=\sqrt{1+r_{1}^{2}}\sqrt{1+r_{2}^{2}}\cosh T-r_{1}r_{2}\cos\varphi.
\end{align}$$

Since $\Psi_{nm}^{E}=\phi_{nm}^{E}/\omega_{nm}$ for the corresponding $\Delta=2$ scalar modes,

$$\begin{align}
H(T,r_{1},r_{2},\varphi)&=\int_{0}^{\infty}\mathrm{d}s\,s\,g_{2}(T+s,r_{1},r_{2},\varphi), &
T&\geq0.
\end{align}$$

Thus the Euclidean Maxwell two-point function kept in this draft is

$$\begin{align}
G_{E}^{\mu\nu}(x_{1},x_{2})&=D_{1}^{\mu}D_{2}^{\nu}\int_{0}^{\infty}\mathrm{d}s\,s\,g_{2}(|T|+s,r_{1},r_{2},\varphi).
\end{align}$$
