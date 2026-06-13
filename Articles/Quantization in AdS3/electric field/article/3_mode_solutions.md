---
title: "3_mode_solutions"
date: 2026-06-10
summary: "Constructs the normalizable Maxwell modes in temporal gauge and in the dual scalar field-strength basis, and compares the two descriptions directly."
---

# 3. Mode solutions

This section gives two descriptions of the normalizable propagating sector. We first solve for gauge-potential representatives in temporal gauge. We then describe the same sector directly in terms of the dual scalar formalism. In the last subsection we compare the two constructions at the level of field strength.

## 3.1 Temporal gauge

We start from temporal gauge,

$$\begin{align}
A_{t}&=0.
\end{align}$$

After imposing $A_{t}=0$, there remains a time-independent residual gauge freedom on each time slice. We fix it by imposing the spatial condition

$$\begin{align}
\mathcal{C}[A]&=\partial_{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r}+\partial_{\phi}A^{\phi}=0.
\end{align}$$

It is convenient to solve this condition by introducing a scalar field $\Psi$ and writing

$$\begin{align}
A^{\mu}=D^{\mu}\Psi
\end{align}$$

Here

$$\begin{align}
D^{t} & =0, & D^{r} & =\dfrac{1+r^{2}}{r}\partial _{\phi}, & D^{\phi} & =-\dfrac{1+r^{2}}{r}\partial _{r}
\end{align}$$

Substituting this parameterization into the Maxwell equations reduces the problem to a single scalar equation for $\Psi$:

$$\begin{align}
(1+r^{2})\partial_{r}^{2}\Psi+\frac{1+3r^{2}}{r}\partial_{r}\Psi-\frac{1}{1+r^{2}}\partial_{t}^{2}\Psi+\frac{1}{r^{2}}\partial_{\phi}^{2}\Psi & =0
\end{align}$$

The reduced equation is still invariant under time translations and rotations, so we separate variables as $\Psi=e^{-i\omega t+im\phi}R(r)$. The radial profile then satisfies

$$\begin{align}
(1+r^{2})R''+\frac{1+3r^{2}}{r}R'+\left(\frac{\omega^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)R&=0.
\end{align}$$

Regularity at the origin together with normalizability at the AdS boundary selects the discrete positive-frequency modes

$$\begin{align}
\omega_{nm}&=2n+2+|m|, &
n&\in\mathbb{N}, &
m&\in\mathbb{Z},
\end{align}$$

where $\mathbb{N}=\{0,1,2,\ldots\}$. A convenient choice, anticipating the symplectic normalization established in Section 4.2, is

$$\begin{align}
\Psi_{nm}&=\sqrt{\frac{n+|m|+1}{2\pi\omega_{nm}^{2}(n+1)}}e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right).
\end{align}$$

The corresponding gauge-potential representatives are obtained by acting with the first-order differential operator

$$\begin{align}
A_{nm}^{\mu}&=D^{\mu}\Psi_{nm}
\end{align}$$

These modes automatically satisfy temporal gauge and obey the stronger large-$r$ behavior

$$\begin{align}
A^{t}_{nm}&=0, &
A^{r}_{nm}&=O(r^{-1}), &
A^{\phi}_{nm}&=O(r^{-2}).
\end{align}$$

## 3.2 Dual scalar formalism

The same propagating sector can also be described without choosing a gauge-potential representative. We start from the dual one-form

$$\begin{align}
V_{\mu}&=\frac{1}{2}\varepsilon_{\mu\nu\rho}F^{\nu\rho}.
\end{align}$$

The Maxwell equation $\nabla_{\mu}F^{\mu\nu}=0$ implies that $V$ is locally closed, and hence locally exact. We therefore introduce a scalar field $\phi$ such that

$$\begin{align}
V_{\mu}&=\nabla_{\mu}\phi.
\end{align}$$

In terms of the original field strength this is equivalent to

$$\begin{align}
F^{\mu\nu}&=\varepsilon^{\mu\nu\rho}\nabla_{\rho}\phi.
\end{align}$$

The Bianchi identity for $F$ then becomes the massless scalar equation

$$\begin{align}
\nabla^{2}\phi&=0.
\end{align}$$

At the level of local dynamics, this is described by the scalar action

$$\begin{align}
S[\phi]&=-\frac{1}{2}\int\mathrm{d}^{3}x\sqrt{-g}\,\nabla_{\mu}\phi\nabla^{\mu}\phi.
\end{align}$$

To organize the scalar solutions, it is convenient to use the Killing symmetries of global AdS$_3$. We define the left and right Casimir operators by

$$\begin{align}
\mathcal{C}&=\mathcal{L}_{\xi_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\xi_{-1}}\mathcal{L}_{\xi_{1}}+\mathcal{L}_{\xi_{1}}\mathcal{L}_{\xi_{-1}}\right), \\
\bar{\mathcal{C}}&=\mathcal{L}_{\bar{\xi}_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}+\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}\right).
\end{align}$$

For scalar fields these operators reduce to the scalar Laplacian,

$$\begin{align}
\mathcal{C}\phi&=-\frac{1}{4}\nabla^{2}\phi, &
\bar{\mathcal{C}}\phi&=-\frac{1}{4}\nabla^{2}\phi.
\end{align}$$

Therefore every solution of the massless equation satisfies

$$\begin{align}
\mathcal{C}\phi&=0, &
\bar{\mathcal{C}}\phi&=0.
\end{align}$$

We now consider a scalar primary. The highest-weight conditions are

$$\begin{align}
\mathcal{L}_{\xi_{1}}\phi&=0, &
\mathcal{L}_{\bar{\xi}_{1}}\phi&=0, \\
\mathcal{L}_{\xi_{0}}\phi&=-ih\phi, &
\mathcal{L}_{\bar{\xi}_{0}}\phi&=-i\bar{h}\phi.
\end{align}$$

Acting with the Casimir operators on such a primary gives

$$\begin{align}
h(h-1)&=0, &
\bar{h}(\bar{h}-1)&=0.
\end{align}$$

Hence there are four candidate branches,

$$\begin{align}
(h,\bar{h})&=(0,0), &
(h,\bar{h})&=(1,0), &
(h,\bar{h})&=(0,1), &
(h,\bar{h})&=(1,1).
\end{align}$$

The $(1,0)$ and $(0,1)$ branches have non-zero spin $h-\bar{h}=\pm1$, so they do not belong to the scalar sector. The $(0,0)$ branch contains the constant mode and the logarithmic radial solution $C_{1}+C_{2}\log\frac{r}{\sqrt{1+r^{2}}}$, and we do not include it in the normalizable propagating basis. We therefore keep only the $(1,1)$ branch.

A convenient primary, written in the normalization that will be justified in Section 4.2, is

$$\begin{align}
\phi_{0,0}&=\frac{1}{\sqrt{2\pi}}\frac{e^{-2it}}{1+r^{2}}.
\end{align}$$

Its descendants are generated by the lowering operators, with the same normalization convention:

$$\begin{align}
\phi_{k,\bar{k}}&=\frac{\mathcal{L}_{\xi_{-1}}^{k}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{k}}\phi_{0,0}}{\sqrt{k!(k+1)!\bar{k}!(\bar{k}+1)!}}, &
k,\bar{k}&=0,1,2,\ldots
\end{align}$$

with frequency $\displaystyle{\omega=2+k+\bar{k}}$ and angular momentum $\displaystyle{m=k-\bar{k}}$. The corresponding gauge-invariant field-strength basis is then

$$\begin{align}
F_{k\bar{k}}^{\mu\nu}&=\varepsilon^{\mu\nu\rho}\nabla_{\rho}\phi_{k\bar{k}}.
\end{align}$$

This construction reproduces the same discrete frequency and angular momentum spectrum and the same radial profiles as the temporal-gauge stream-function basis. At this stage we keep the scalar modes and the temporal-gauge representatives separate. In the next subsection we compare their field strengths directly and show that they describe the same propagating sector.

## 3.3 Equivalence of the two constructions

We now compare the two constructions at the level of the field strength. More precisely, we compare the temporal-gauge representatives of Section 3.1 with the scalar descendant basis constructed in Section 3.2. To match the notation used for the temporal-gauge modes, we first relabel the scalar descendants by

$$\begin{align}
\omega&=2+k+\bar{k}, &m&=k-\bar{k}, & n&=\min(k,\bar{k})
\end{align}$$

In this notation the same scalar tower takes the closed form

$$\begin{align}
\phi_{nm}&=\sqrt{\frac{1}{2\pi}\frac{n+|m|+1}{n+1}}e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}&=2n+2+|m|,
\end{align}$$

with field strength

$$\begin{align}
F_{nm}^{\mu\nu}&=\varepsilon^{\mu\nu\rho}\nabla_{\rho}\phi_{nm}.
\end{align}$$

Start from the temporal-gauge representative

$$\begin{align}
A_{nm}^{\mu}&=D^{\mu}\Psi_{nm}.
\end{align}$$

For this representative, the field strength can be written as

$$\begin{align}
F^{tr}[A_{nm}]&=-\frac{1}{r}\partial_{t}\partial_{\phi}\Psi_{nm}, &
F^{t\phi}[A_{nm}]&=\frac{1}{r}\partial_{t}\partial_{r}\Psi_{nm}, &
F^{r\phi}[A_{nm}]&=-\frac{1}{r}\partial_{t}^{2}\Psi_{nm}.
\end{align}$$

The first two expressions follow directly from the definition of $A_{nm}^{\mu}$. The last one uses the reduced equation $\mathcal{D}_{0}\Psi_{nm}=0$ to eliminate the radial derivatives. It is then convenient to form the dual one-form

$$\begin{align}
V_{\mu}[A_{nm}]&=\frac{1}{2}\varepsilon_{\mu\nu\rho}F^{\nu\rho}[A_{nm}].
\end{align}$$

Using the three field-strength components above, one finds

$$\begin{align}
V_{t}[A_{nm}]&=-\partial_{t}^{2}\Psi_{nm}, &
V_{r}[A_{nm}]&=-\partial_{t}\partial_{r}\Psi_{nm}, &
V_{\phi}[A_{nm}]&=-\partial_{t}\partial_{\phi}\Psi_{nm}.
\end{align}$$

Therefore the temporal-gauge representative satisfies

$$\begin{align}
V_{\mu}[A_{nm}]&=\nabla_{\mu}\left(-\partial_{t}\Psi_{nm}\right).
\end{align}$$

For a separated mode with time dependence $e^{-i\omega_{nm}t}$, this becomes

$$\begin{align}
V_{\mu}[A_{nm}]&=\nabla_{\mu}\left(i\omega_{nm}\Psi_{nm}\right).
\end{align}$$

This is exactly the dual-scalar construction of Section 3.2, up to a constant phase choice for the scalar mode. In other words, the temporal-gauge representative and the dual scalar give the same field strength after the identification

$$\begin{align}
\phi_{nm}&\propto\omega_{nm}\Psi_{nm}.
\end{align}$$

The proportionality factor is a pure phase and does not change the field-strength basis or the symplectic normalization fixed in Section 4.2. Therefore the two constructions describe the same propagating Maxwell sector. The temporal-gauge basis keeps an explicit potential representative, while the dual-scalar basis keeps the gauge-invariant field strength manifest.
