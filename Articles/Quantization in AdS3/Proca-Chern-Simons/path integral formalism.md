---
title: "Path integral formalism"
date: 2026-04-06
summary: "Derives the Euclidean path-integral formulation for Proca and Proca-Chern-Simons theories in AdS3; shows how the path integral yields the covariant Green's function and explains contact-term differences with canonical correlators."
---

the metric of Euclidean $\mathrm{AdS}_{3}$ is

$$\begin{align}
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}.
\end{align}$$

Let us first consider the pure Proca theory in Euclidean signature. The Euclidean action is

$$\begin{align}
S_{E}[A] & =\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right),
\end{align}$$

where $\mathcal{M}$ is bounded by two constant-$\tau$ Cauchy surfaces $\Sigma _{i}$ and $\Sigma _{f}$. The Euclidean path-integral two-point function is defined by

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & :=\frac{\int \mathcal{D}A\,e^{-S_{E}[A]}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})}{\int \mathcal{D}A\,e^{-S_{E}[A]}}.
\end{align}$$

To compute it, introduce the generating functional

$$\begin{align}
Z[J] & :=\int \mathcal{D}A\exp\left(-S_{E}[A]+\int \mathrm{d}^{3}x\sqrt{ g }A^{\mu}J_{\mu}\right).
\end{align}$$

Then

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\left.\frac{1}{Z[0]}\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta J_{\mu_{1}}(x_{1})}\frac{1}{\sqrt{ g(x_{2}) }}\frac{\delta}{\delta J_{\mu_{2}}(x_{2})}Z[J]\right|_{J=0}.
\end{align}$$

Now integrate the Maxwell term by parts. Up to boundary terms, the Euclidean action can be written as

$$\begin{align}
S_{E}[A] & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\,A_{\mu}\mathcal{K}^{\mu}{}_{\nu}A^{\nu},
\end{align}$$

where the quadratic kernel is defined by

$$\begin{align}
\mathcal{K}^{\mu}{}_{\nu}A^{\nu} & :=-\nabla _{\rho}F^{\rho \mu}+\mu ^{2}A^{\mu}.
\end{align}$$

Equivalently, the source-coupled functional takes the Gaussian form

$$\begin{align}
Z[J] & =\int \mathcal{D}A\exp\left[-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }\,A_{\mu}\mathcal{K}^{\mu}{}_{\nu}A^{\nu}+\int \mathrm{d}^{3}x\sqrt{ g }\,A^{\mu}J_{\mu}\right].
\end{align}$$

Assuming the boundary conditions are such that $\mathcal{K}$ is invertible on the normalizable sector, we define its inverse by

$$\begin{align}
\mathcal{K}^{\mu_{1}}{}_{\rho_{1}}G_{\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}),
\end{align}$$

where the differential operator acts on the first argument. Completing the square,

$$\begin{align}
A^{\mu} & =\widetilde{A}^{\mu}+\int \mathrm{d}^{3}x_{2}\sqrt{ g(x_{2}) }\,G_{\text{path}}^{\mu,\mu_{2}}(x,x_{2})J_{\mu_{2}}(x_{2}),
\end{align}$$

we obtain

$$\begin{align}
Z[J] & =Z[0]\exp\left[\frac{1}{2}\int \mathrm{d}^{3}x_{1}\sqrt{ g(x_{1}) }\int \mathrm{d}^{3}x_{2}\sqrt{ g(x_{2}) }\,J_{\mu_{1}}(x_{1})G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})J_{\mu_{2}}(x_{2})\right].
\end{align}$$

Therefore the path integral indeed produces the inverse of the quadratic kernel:

$$\begin{align}
G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\left.\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta J_{\mu_{1}}(x_{1})}\frac{1}{\sqrt{ g(x_{2}) }}\frac{\delta}{\delta J_{\mu_{2}}(x_{2})}\log Z[J]\right|_{J=0}.
\end{align}$$

The same result can be obtained directly from the Schwinger-Dyson equation. Since

$$\begin{align}
0 & =\int \mathcal{D}A\,\frac{1}{\sqrt{ g(x_{1}) }}\frac{\delta}{\delta A_{\mu_{1}}(x_{1})}\left(e^{-S_{E}[A]}A^{\mu_{2}}(x_{2})\right),
\end{align}$$

we find

$$\begin{align}
\left\langle \left(-\nabla _{\rho_{1}}F^{\rho_{1}\mu_{1}}(x_{1})+\mu ^{2}A^{\mu_{1}}(x_{1})\right)A^{\mu_{2}}(x_{2})\right\rangle _{\text{path}} & =\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

This is the covariant Green's function equation obeyed by the path-integral two-point function. In the notation of the manuscript, it is precisely the covariant equation verified in Section 5.4.

The important point is that the path integral computes the covariant $\mathcal{T}^{*}$-ordered two-point function rather than the canonical $\mathcal{T}$-ordered correlator obtained from the mode sum. For the pure Proca theory, the canonical correlator differs from the path-integral propagator by a non-covariant contact term:

$$\begin{align}
G_{\text{can}}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G_{\text{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})-\frac{1}{\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau}\frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{2}(x_{1}-x_{2}).
\end{align}$$

This extra term does not arise from the Gaussian inversion itself. Rather, it appears only when one rewrites the canonical $\tau$-ordered correlator in terms of derivatives acting on step functions, or equivalently when one eliminates the non-dynamical component $A_{\tau}$ in the Hamiltonian formalism.

For the Proca-Chern-Simons theory the same logic applies branch by branch. The path integral yields the covariant propagators $G_{+,\text{path}}$ and $G_{-,\text{path}}$ satisfying

$$\begin{align}
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu _{+}g_{\mu_{1}\rho_{1}})G_{+,\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{2\bar{\mu}}\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}), \\
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}+\mu _{-}g_{\mu_{1}\rho_{1}})G_{-,\text{path}}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}}\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Their sum is the covariant Green's function of the full theory. The Euclidean correlator obtained in Section 5.3 differs from this covariant object by the non-covariant contact term discussed there. Therefore the path-integral formalism explains the distinction between the Green's function equation and the canonical correlator: the former is the inverse of the quadratic kernel, while the latter contains additional equal-time contact terms coming from canonical time ordering.

