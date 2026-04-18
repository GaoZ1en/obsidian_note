---
title: "appendix_a"
date: 2026-04-13
summary: ""
---

# Appendix A: An analysis of the near-boundary contributions to relevant quantities

In this appendix, we examine more carefully the near-boundary contributions to several quantities that enter the covariant phase space analysis of the Proca-Chern-Simons theory, especially quantities related to the Chern-Simons term, since we have shown in the previous paper that quantities related to the Maxwell and Proca terms are well-behaved near the boundary.

We begin by imposing the asymptotic boundary conditions on the field $A_\mu$ and the field strength $F_{\mu \nu}$ as $r \to \infty$:

$$\begin{align}
A_{t} & =o(r^{0}), & A_{r} & =o(r^{-3}), &A_{\phi} & =o(r^{0}) \\
A^{t} & =o(r^{-2}), & A^{r} & =o(r^{-1}), & A^{\phi} & =o(r^{-2}) \\
F_{tr} & =o(r^{-1}), & F_{t\phi} & =o(r^{0}), & F_{r\phi} & =o(r^{-1}) \\
F^{tr} & =o(r^{-1}), & F^{t\phi} & =o(r^{-4}), & F^{r\phi} & =o(r^{-1})
\end{align}$$

The Chern-Simons term behaves as

$$\begin{align}
\frac{k}{4\pi}\sqrt{ -g }\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho} & =o(r^{-1})
\end{align}$$

Hence the contribution from the near-boundary region to the bulk action integral over $M$ is finite.

We now turn to the variation of the action. To make the boundary analysis explicit, we write the Chern-Simons part of the action as

$$\begin{align}
S_{\text{CS}} & =\lim_{ r_{\infty} \to \infty }\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g } \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}
\end{align}$$

Here $r_{\infty}$ is a radial cutoff, and $M_{r_{\infty}}$ denotes the subregion of $M$ bounded by the surface $r=r_{\infty}$. In terms of this regulated region, the variation of the action takes the form

$$\begin{align}
\delta S_{\mathrm{CS}} & =\lim_{ r_{\infty} \to \infty }\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g } \frac{k}{2\pi}\varepsilon _{\mu}^{~~~\nu \rho}\nabla _{\nu}A_{\rho}\delta A^{\mu} \\
 & +\int _{\Sigma _{f,\infty}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu} \frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}-\int _{\Sigma _{i,\infty}} \mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu} \frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \\
 & -\int _{\Gamma _{r_{\infty}}} \mathrm{d}^{2}x\sqrt{ -\gamma }n^{\mu} \frac{k}{4\pi} \varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}
\end{align}$$

Here $\Sigma _{i,r_{\infty}}$ and $\Sigma _{f,r_{\infty}}$ are the portions of $\Sigma _{i}$ and $\Sigma _{f}$ inside the cutoff surface, while $\Gamma _{r_{\infty}}$ is the timelike cutoff surface between them. The induced metric on the constant-$r$ surface is

$$\begin{align}
\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} & =-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the outward-pointing unit normal vector to the constant-$r$ surface is

$$\begin{align}
n^{\mu} & =\left(0,(1+r^{2})^{1/2},0\right)
\end{align}$$

To analyze the boundary terms in $\delta S$, we first record the asymptotic behavior of the non-vanishing components of $\nabla _{\mu}F_{\nu \rho}$:

$$\begin{align}
\nabla _{t}F_{tr} & =o(r^{-1}), & \nabla _{t}F_{t\phi} & =o(r^{-2}), & \nabla _{t}F_{r\phi} & =o(r^{-1}) \\
\nabla _{r}F_{tr} & =o(r^{-2}), & \nabla _{r}F_{t\phi} & =o(r^{-1}), & \nabla _{r}F_{r\phi} & =o(r^{-2}) \\
\nabla _{\phi}F_{tr} & =o(r^{-1}), & \nabla _{\phi}F_{t\phi} & =o(r^{2}), & \nabla _{\phi}F_{r\phi} & =o(r^{-1})
\end{align}$$

The variations $\delta A^{\mu}$ are assumed to obey the same asymptotic conditions as $A^{\mu}$:

$$\begin{align}
\delta A^{t} & =o(r^{-2}), & \delta A^{r} & =o(r^{-1}), & \delta A^{\phi} & =o(r^{-2})
\end{align}$$

With these estimates, the integrands appearing in the bulk and boundary terms of $\delta S_{\mathrm{CS}}$ behave as

$$\begin{align}
\sqrt{ -g }\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\delta A^{\mu} & =o(r^{-1}) \\
\sqrt{ \sigma }\tau ^{\mu}\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} & =o(r^{-3}) \\
(-1)\sqrt{ -\gamma }n^{\mu}\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} & =o(r^{0})
\end{align}$$

Consequently, the regulated boundary contribution at $r=r_{\infty}$ vanishes in the limit, and we recover

$$\begin{align}
\delta S_{\mathrm{CS}} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\delta A^{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho} \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\frac{k}{4\pi}\varepsilon _{\mu \nu \rho}A^{\nu}\delta A^{\rho}
\end{align}$$

which is precisely the expression quoted in the main text.

We next analyze the asymptotic behavior of $X_{\xi}\cdot \delta S$. We find

$$\begin{align}
X_{\xi}\cdot \delta S_{\mathrm{CS}} & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\sigma}\left(\xi ^{\sigma}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & +\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

The integrands of the corresponding boundary terms behave as

$$\begin{align}
\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{-1}) \\
\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\left(\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) & =o(r^{0})
\end{align}$$

Therefore,

$$\begin{align}
X_{\xi}\cdot \delta S_{\text{CS}} & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right)
\end{align}$$

which again reproduces the expression used in the main text.

We now turn to the Noether charge $H_{\xi,\mathrm{CS}}|_{\widetilde{P}}$. Its regulated expression is

$$\begin{align}
H_{\xi,\mathrm{CS}}|_{\widetilde{P}} & =\lim_{ r_{\infty} \to \infty }\int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} A_{\sigma}\xi ^{\sigma} \right) \\
 & =\lim_{ r_{\infty} \to \infty }\int _{H_{r_{\infty}}} \mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}
\end{align}$$

Here $\Sigma _{r_{\infty}}$ denotes the portion of $\Sigma$ inside the cutoff surface, and $H_{r_{\infty}}$ is the intersection of $\Sigma$ with $r=r_{\infty}$. The induced metric on $H_{r_{\infty}}$ is

$$\begin{align}
h_{mn}\mathrm{d}x^{m}\mathrm{d}x^{n} & =r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

while the outward-pointing unit normal vector tangent to $\Sigma$ and orthogonal to $H_{r_{\infty}}$ is, in the $(r,\phi)$ coordinates,

$$\begin{align}
\hat{n}^{a} & =((1+r^{2})^{1/2},0)
\end{align}$$

The integrands of the boundary contributions to $H_{\xi}|_{\widetilde{P}}$ then scale as

$$\begin{align}
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} & =o(r^{0})
\end{align}$$

It follows that

$$\begin{align}
H_{\xi,\mathrm{CS}}|_{\widetilde{P}} & =0
\end{align}$$

which means the Chern-Simons term does not contribute to the Noether charge, and the expression for $H_{\xi}|_{\widetilde{\mathcal{P}}}$ is the same as the one used in the main text.

Finally, we analyze the asymptotic behavior of $X_{\xi}\cdot \Omega _{\mathrm{CS}}|_{\widetilde{\mathcal{P}}}$. We obtain

$$\begin{align}
X_{\xi}\cdot \Omega _{\mathrm{CS}}|_{\widetilde{\mathcal{P}}} & =\lim_{ r_{\infty} \to \infty }\left.\int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left(\sigma ^{\alpha}_{~\mu}\tau _{\nu}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right)\right|_{\widetilde{\mathcal{P}}} \\
 & =\lim_{ r_{\infty} \to \infty }\left.\int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{\mu}\tau _{\nu}\left(-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right)\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

The integrands of the corresponding boundary terms behave as

$$\begin{align}
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}\left( -\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma} \right) & =o(r^{0})
\end{align}$$

Hence,

$$\begin{align}
X_{\xi}\cdot \Omega _{\mathrm{CS}}|_{\widetilde{\mathcal{P}}} & =0
\end{align}$$

which again agrees with the expression appearing in the main text. We therefore conclude that the theory admits a well-defined variational principle and that Noether's theorem applies to the asymptotic symmetries.