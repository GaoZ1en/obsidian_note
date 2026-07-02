---
title: "Euclidean correlation function of boundary stress tensor"
date: 2026-07-03
summary: "Derives the Euclidean boundary stress-tensor two-point function from the Brown-York images of the normalized Brown-Henneaux modes."
---

# Euclidean correlation function of boundary stress tensor

Start with the Lorentzian Brown-Henneaux oscillator expansion, map each metric mode to the boundary Brown-York stress tensor, analytically continue to Euclidean signature, and form the Euclidean time-ordered vacuum correlator.

The boundary observable is the linear Brown-York tensor

$$\begin{align}
h_{\mu\nu}\longmapsto T_{ab}^{\mathrm{BY},\mathrm{lin}}[h],
\end{align}$$

evaluated on the normalized modes $h_{-,n}$ and $h_{+,\bar n}$ from [[Articles/Quantization in AdS/linearized gravity/article/2_quantization|2_quantization]].

## Lorentzian Brown-York image

The normalized Brown-Henneaux modes are

$$\begin{align}
h_{\mu\nu} &=\sum_{n\ge 0}\left(a_{-,n}h_{-,n,\mu\nu}+a_{-,n}^{\dagger}h^*_{-,n,\mu\nu}\right) \\
 &  +\sum_{\bar n\ge 0}\left(a_{+,\bar n}h_{+,\bar n,\mu\nu}+a_{+,\bar n}^{\dagger}h^*_{+,\bar n,\mu\nu}\right),\\
[a_{-,n},a_{-,m}^{\dagger}]&=\delta_{nm}, \\
[a_{+,\bar n},a_{+,\bar m}^{\dagger}]&=\delta_{\bar n\bar m}.
\end{align}$$

The Brown-York response of the left branch has the boundary form

$$\begin{align}
\mathcal{B}^{(1)}[h_{-,n}] &=C_n e^{-i(n+2)u}\mathrm{d}u^2,\\
C_n &=-2\sqrt{3G}(-i)^n \sqrt{\frac{(n+1)(n+2)(n+3)}{6}}, \qquad u=t-\phi.
\end{align}$$

The right branch is the same expression with $u\to v=t+\phi$ and $n\to\bar n$:

$$\begin{align}
\mathcal{B}^{(1)}[h_{+,\bar n}] &=C_{\bar n} e^{-i(\bar n+2)v}\mathrm{d}v^2.
\end{align}$$

In the article normalization,

$$\begin{align}
T_{ab}^{\mathrm{BY},\mathrm{lin}}[h] &=\frac{1}{4G}\mathcal{B}^{(1)}_{ab}[h].
\end{align}$$

Thus the Lorentzian chiral components obey

$$\begin{align}
T_{uu}^{L,\mathrm{lin}}[h_{-,n}]&=\alpha_n e^{-i(n+2)u},& T_{uu}^{L,\mathrm{lin}}[h_{-,n}^*]&=\alpha_n^* e^{i(n+2)u},\\
T_{vv}^{L,\mathrm{lin}}[h_{+,\bar n}]&=\alpha_{\bar n}e^{-i(\bar n+2)v},& T_{vv}^{L,\mathrm{lin}}[h_{+,\bar n}^*]&=\alpha_{\bar n}^*e^{i(\bar n+2)v},
\end{align}$$

where

$$\begin{align}
\alpha_n &=\frac{C_n}{4G},& |\alpha_n|^2 &=\frac{(n+1)(n+2)(n+3)}{8G}.
\end{align}$$

With $m=n+2$, this is

$$\begin{align}
|\alpha_{m-2}|^2=\frac{m(m^2-1)}{8G}.
\end{align}$$

The complex-conjugate entries follow because the linear Brown-York operator has real coefficients before Wick rotation.

Because the Brown-York map is linear, substituting the metric operator expansion gives the Lorentzian boundary operators

$$\begin{align}
T_{uu}^{L}(u) &=\sum_{n\ge0}\left(\alpha_n e^{-i(n+2)u}a_{-,n} +\alpha_n^*e^{i(n+2)u}a_{-,n}^{\dagger}\right),\\
T_{vv}^{L}(v) &=\sum_{\bar n\ge0}\left(\alpha_{\bar n}e^{-i(\bar n+2)v}a_{+,\bar n} +\alpha_{\bar n}^*e^{i(\bar n+2)v}a_{+,\bar n}^{\dagger}\right).
\end{align}$$

## Euclidean continuation

Define the Euclidean chiral stress-tensor components by tensorial analytic continuation of the linear Brown-York tensor:

$$\begin{align}
T(w)&:=\delta T_{ww}^{E,\mathrm{BY}},& \bar T(\bar w)&:=\delta T_{\bar w\bar w}^{E,\mathrm{BY}}.
\end{align}$$

Set

$$\begin{align}
t=-i\tau,\qquad w=\phi+i\tau,\qquad \bar w=\phi-i\tau.
\end{align}$$

Then

$$\begin{align}
u=t-\phi=-w,\qquad v=t+\phi=\bar w.
\end{align}$$

For the covariant components,

$$\begin{align}
T_{ww}^{E}(w,\bar w)&=T_{uu}^{L}(u=-w)\left(\frac{\partial u}{\partial w}\right)^2=T_{uu}^{L}(u=-w),\\
T_{\bar w\bar w}^{E}(w,\bar w)&=T_{vv}^{L}(v=\bar w)\left(\frac{\partial v}{\partial\bar w}\right)^2=T_{vv}^{L}(v=\bar w).
\end{align}$$

Here $(\partial u/\partial w)^2=(-1)^2=1$ and $(\partial v/\partial\bar w)^2=1$. With this convention, the mode profiles become

$$\begin{align}
e^{-imu}&\longrightarrow e^{imw},& e^{-imv}&\longrightarrow e^{-im\bar w}.
\end{align}$$

Therefore

$$\begin{align}
T(w) &=\sum_{n\ge 0}\left(\alpha_n e^{i(n+2)w}a_{-,n} +\alpha_n^* e^{-i(n+2)w}a_{-,n}^{\dagger}\right),\\
\bar T(\bar w) &=\sum_{\bar n\ge 0}\left(\alpha_{\bar n} e^{-i(\bar n+2)\bar w}a_{+,\bar n} +\alpha_{\bar n}^* e^{i(\bar n+2)\bar w}a_{+,\bar n}^{\dagger}\right).
\end{align}$$

For $\tau_1>\tau_2$,

$$\begin{align}
e^{im(w_1-w_2)}&=e^{im(\phi_1-\phi_2)}e^{-m(\tau_1-\tau_2)},\\
e^{-im(\bar w_1-\bar w_2)}&=e^{-im(\phi_1-\phi_2)}e^{-m(\tau_1-\tau_2)}.
\end{align}$$

Thus the annihilation-creation contractions selected by Euclidean time ordering are the decaying branches.

## Euclidean time-ordered correlator

Define the Euclidean two-point function by analytic continuation of the Lorentzian vacuum correlator:

$$\begin{align}
G_{TT}^{E}(w_1,w_2) &=\langle 0|\mathcal{T}_{\tau}T(w_1)T(w_2)|0\rangle.
\end{align}$$

For $\tau_1>\tau_2$,

$$\begin{align}
G_{TT}^{E}(w_1,w_2) &=\sum_{n\ge0}|\alpha_n|^2e^{i(n+2)(w_1-w_2)}\\
&=\sum_{m\ge2}\frac{m(m^2-1)}{8G}e^{im(w_1-w_2)}.
\end{align}$$

For $\tau_1<\tau_2$,

$$\begin{align}
G_{TT}^{E}(w_1,w_2) &=\sum_{m\ge2}\frac{m(m^2-1)}{8G}e^{-im(w_1-w_2)}.
\end{align}$$

Using

$$\begin{align}
\sum_{m=2}^{\infty}\frac{m(m^2-1)}{8G}q^m &=\frac{3q^2}{4G(1-q)^4},\qquad |q|<1,
\end{align}$$

the non-coincident correlator is

$$\begin{align}
G_{TT}^{E}(w_1,w_2) &=\frac{3}{64G}\frac{1}{\sin^4\left(\frac{w_1-w_2}{2}\right)}.
\end{align}$$

Similarly,

$$\begin{align}
G_{\bar T\bar T}^{E}(\bar w_1,\bar w_2) &=\frac{3}{64G}\frac{1}{\sin^4\left(\frac{\bar w_1-\bar w_2}{2}\right)},\\
G_{T\bar T}^{E}(w_1,\bar w_2)&=0.
\end{align}$$

Equivalently, with $c=3/(2G)$,

$$\begin{align}
G_{TT}^{E}(w_1,w_2) &=\frac{c}{32}\frac{1}{\sin^4\left(\frac{w_1-w_2}{2}\right)}.
\end{align}$$

The formula gives the non-coincident Euclidean two-point function in the tensorial Brown-York continuation convention used above. Local contact terms are fixed by the chosen renormalized Euclidean action and stress-tensor convention.
