---
title: "partition function"
date: 2026-04-27
summary: "Computes the thermal partition function of the normalizable Maxwell modes in temporal gauge as a product over bosonic oscillators."
---

# Thermal partition function

The normalizable Maxwell modes in temporal gauge are labelled by

$$\begin{align}
n & \in \mathbb{N}, & m & \in \mathbb{Z},
\end{align}$$

with frequency

$$\begin{align}
\omega _{nm} & =2n+2+|m|.
\end{align}$$

The corresponding mode has angular dependence $e^{im\phi}$, so the angular momentum eigenvalue is

$$\begin{align}
j_{nm} & =m.
\end{align}$$

In a fixed winding sector, the propagating part of the quantized field is therefore a collection of independent bosonic oscillators. With normal ordering, the Hamiltonian and angular momentum are

$$\begin{align}
H & =\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\omega _{nm}a^{\dagger}_{nm}a_{nm}, \\
J & =\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}m\,a^{\dagger}_{nm}a_{nm}.
\end{align}$$

The large-gauge zero mode discussed in the temporal-gauge analysis is not part of this oscillator Hilbert space. For the $\mathrm{U}(1)$ theory it labels discrete winding sectors; the formula below gives the oscillator contribution within one such sector.

## Coherent-state path integral

Introduce coherent states mode by mode,

$$\begin{align}
a_{nm}\ket{z_{nm}} & =z_{nm}\ket{z_{nm}}.
\end{align}$$

The coherent state for the full oscillator Hilbert space is

$$\begin{align}
\ket{\boldsymbol{z}} & =\bigotimes _{n=0}^{\infty}\bigotimes _{m\in \mathbb{Z}}\ket{z_{nm}},
\end{align}$$

with resolution of identity

$$\begin{align}
\mathbf{1} & =\int \prod _{n=0}^{\infty}\prod _{m\in \mathbb{Z}}\frac{\mathrm{d}^{2}z_{nm}}{\pi}\ket{\boldsymbol{z}}\bra{\boldsymbol{z}}.
\end{align}$$

The real-time coherent-state action is

$$\begin{align}
S[\boldsymbol{z},\boldsymbol{z}^{*}]& =\int \mathrm{d}t\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\left[\frac{i}{2}\left(z_{nm}^{*}\dot{z}_{nm}-\dot{z}_{nm}^{*}z_{nm}\right)-\omega _{nm}|z_{nm}|^{2}\right].
\end{align}$$

After the Wick rotation $t=-i\tau$, the Euclidean action becomes

$$\begin{align}
S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}]& =\int _{0}^{\beta}\mathrm{d}\tau\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\left[\frac{1}{2}\left(z_{nm}^{*}\dot{z}_{nm}-\dot{z}_{nm}^{*}z_{nm}\right)+\omega _{nm}|z_{nm}|^{2}\right].
\end{align}$$

The thermal partition function with angular potential is

$$\begin{align}
Z[\beta,\alpha]& =\mathrm{Tr}\left(e^{-\beta H+i\alpha J}\right).
\end{align}$$

The insertion of $e^{i\alpha J}$ twists the Euclidean boundary condition of each coherent-state variable:

$$\begin{align}
z_{nm}(\beta)& =e^{i\alpha m}z_{nm}(0).
\end{align}$$

Since the Euclidean action is diagonal in the oscillator basis, the path integral factorizes mode by mode. Each oscillator gives

$$\begin{align}
Z_{nm}[\beta,\alpha]& =\frac{1}{1-e^{-\beta \omega _{nm}+i\alpha m}}.
\end{align}$$

Therefore

$$\begin{align}
Z[\beta,\alpha]& =\prod _{n=0}^{\infty}\prod _{m\in \mathbb{Z}}\frac{1}{1-e^{-\beta(2n+2+|m|)+i\alpha m}}.
\end{align}$$

This expression is also obtained directly from the operator trace,

$$\begin{align}
Z[\beta,\alpha]& =\prod _{n=0}^{\infty}\prod _{m\in \mathbb{Z}}\sum _{N_{nm}=0}^{\infty}e^{-N_{nm}(\beta \omega _{nm}-i\alpha m)} \\
& =\prod _{n=0}^{\infty}\prod _{m\in \mathbb{Z}}\frac{1}{1-e^{-\beta \omega _{nm}+i\alpha m}}.
\end{align}$$

## Product form

Introduce

$$\begin{align}
q & =e^{-\beta-i\alpha}, & \bar{q} & =e^{-\beta+i\alpha}.
\end{align}$$

For $m\geqslant 0$,

$$\begin{align}
e^{-\beta(2n+2+m)+i\alpha m}& =q^{n+1}\bar{q}^{n+1+m},
\end{align}$$

while for $m\leqslant 0$,

$$\begin{align}
e^{-\beta(2n+2+|m|)+i\alpha m}& =q^{n+1+|m|}\bar{q}^{n+1}.
\end{align}$$

Thus the product can be written as

$$\begin{align}
Z[\beta,\alpha]& =\prod _{n=0}^{\infty}\frac{1}{1-q^{n+1}\bar{q}^{n+1}} \\
& \quad \times\prod _{n=0}^{\infty}\prod _{m=1}^{\infty}\frac{1}{\left(1-q^{n+1}\bar{q}^{n+1+m}\right)\left(1-q^{n+1+m}\bar{q}^{n+1}\right)}.
\end{align}$$

Equivalently, every pair of positive integers $(h,\bar{h})$ occurs exactly once, with

$$\begin{align}
h & =n+1+\max(-m,0), &\bar{h} & =n+1+\max(m,0).
\end{align}$$

Hence the oscillator partition function takes the compact form

$$\begin{align}
Z[\beta,\alpha]& =\prod _{h=1}^{\infty}\prod _{\bar{h}=1}^{\infty}\frac{1}{1-q^{h}\bar{q}^{\bar{h}}}.
\end{align}$$

$$\begin{align}
\prod ^{\infty}_{h=1}\prod ^{\infty}_{\bar{h}=1} \frac{1-q^{h+1}\bar{q}^{\bar{h}+1}}{(1-q^{h}\bar{q}^{\bar{h}+1})(1-q^{h+1}\bar{q}^{\bar{h}})} & =Z[\beta,\alpha]\prod ^{\infty}_{h=1} \frac{1}{1-q^{h}}
\end{align}$$
