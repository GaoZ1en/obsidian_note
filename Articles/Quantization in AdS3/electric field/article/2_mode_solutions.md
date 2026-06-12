---
title: "2_mode_solutions"
date: 2026-06-10
summary: "Solves the normalizable Maxwell modes in temporal gauge and directly in the dual scalar field-strength basis."
---

# 2. Mode solutions

This section records two equivalent constructions of the normalizable propagating sector. The first solves for gauge-potential representatives in temporal gauge. The second solves directly for the gauge-invariant field strength by dualizing to a massless scalar.

## 2.1 Temporal gauge

We impose

$$\begin{align}
A_{t}&=0.
\end{align}$$

The remaining residual gauge freedom is fixed by the time-slice condition

$$\begin{align}
\mathcal{C}[A]&=\partial_{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r}+\partial_{\phi}A^{\phi}=0.
\end{align}$$

This condition is solved by introducing a stream function $\Psi$:

$$\begin{align}
A^{t}&=0, &
A^{r}&=\frac{1+r^{2}}{r}\partial_{\phi}\Psi, &
A^{\phi}&=-\frac{1+r^{2}}{r}\partial_{r}\Psi.
\end{align}$$

The Maxwell equations reduce to the scalar equation

$$\begin{align}
\mathcal{D}_{0}\Psi&=0, \\
\mathcal{D}_{0}\Psi&=(1+r^{2})\partial_{r}^{2}\Psi+\frac{1+3r^{2}}{r}\partial_{r}\Psi-\frac{1}{1+r^{2}}\partial_{t}^{2}\Psi+\frac{1}{r^{2}}\partial_{\phi}^{2}\Psi.
\end{align}$$

With the separated ansatz $\Psi=e^{-i\omega t+im\phi}R_{\omega m}(r)$, the radial equation is

$$\begin{align}
(1+r^{2})R_{\omega m}''+\frac{1+3r^{2}}{r}R_{\omega m}'+\left(\frac{\omega^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)R_{\omega m}&=0.
\end{align}$$

Regularity at $r=0$ and normalizability at the AdS boundary select the discrete positive-frequency modes

$$\begin{align}
\omega_{nm}&=2n+2+|m|, &
n&\in\mathbb{N}, &
m&\in\mathbb{Z},
\end{align}$$

where $\mathbb{N}=\{0,1,2,\ldots\}$. The normalized stream functions are

$$\begin{align}
\Psi_{nm}&=\sqrt{\frac{n+|m|+1}{2\pi\omega_{nm}^{2}(n+1)}}e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right).
\end{align}$$

The corresponding gauge-potential modes are

$$\begin{align}
A_{nm}^{\mu}&=D^{\mu}\Psi_{nm}, &
D^{t}&=0, &
D^{r}&=\frac{1+r^{2}}{r}\partial_{\phi}, &
D^{\phi}&=-\frac{1+r^{2}}{r}\partial_{r}.
\end{align}$$

They obey

$$\begin{align}
A^{t}_{nm}&=0, &
A^{r}_{nm}&=O(r^{-1}), &
A^{\phi}_{nm}&=O(r^{-2}).
\end{align}$$

## 2.2 Dual scalar solution for the field strength

The same propagating sector can be described directly in terms of the field strength. Define the dual one-form

$$\begin{align}
V_{\mu}&=\frac{1}{2}\varepsilon_{\mu\nu\rho}F^{\nu\rho}.
\end{align}$$

The Maxwell equation implies that $V$ is locally exact, so we write

$$\begin{align}
V_{\mu}&=\nabla_{\mu}\phi.
\end{align}$$

Equivalently,

$$\begin{align}
F^{\mu\nu}&=\varepsilon^{\mu\nu\rho}\nabla_{\rho}\phi.
\end{align}$$

The Bianchi identity $\nabla_{[\mu}F_{\nu\rho]}=0$ becomes the massless scalar equation

$$\begin{align}
\nabla^{2}\phi&=0.
\end{align}$$

The scalar action obtained by this dualization is

$$\begin{align}
S[\phi]&=-\frac{1}{2}\int\mathrm{d}^{3}x\sqrt{-g}\,\nabla_{\mu}\phi\nabla^{\mu}\phi.
\end{align}$$

For a scalar primary with weights $(h,\bar{h})$, the massless equation gives

$$\begin{align}
h(h-1)&=0, &
\bar{h}(\bar{h}-1)&=0.
\end{align}$$

The normalizable spinless branch is the $(h,\bar{h})=(1,1)$ branch. Its modes may be written as

$$\begin{align}
\phi_{nm}&=\sqrt{\frac{1}{2\pi}\frac{n+|m|+1}{n+1}}e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}&=2n+2+|m|.
\end{align}$$

The field-strength basis is therefore

$$\begin{align}
F_{nm}^{\mu\nu}&=\varepsilon^{\mu\nu\rho}\nabla_{\rho}\phi_{nm}.
\end{align}$$

This construction produces the same frequency spectrum and radial profiles as the temporal-gauge stream-function basis. The scalar mode is related to the stream function by the normalization convention $\phi_{nm}=\omega_{nm}\Psi_{nm}$, while the gauge-invariant object in this subsection is the field strength $F_{nm}$ itself.
