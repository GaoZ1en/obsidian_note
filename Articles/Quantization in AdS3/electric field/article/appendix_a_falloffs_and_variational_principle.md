---
title: "appendix_a_falloffs_and_variational_principle"
date: 2026-06-10
summary: "Analyzes the near-boundary contributions relevant to the Maxwell variational principle and covariant phase-space construction."
---

# Appendix A: An analysis of the near-boundary contributions to relevant quantities

In this appendix, we examine more carefully the near-boundary contributions to several quantities that enter the covariant phase-space analysis of the Maxwell theory. In particular, we want to justify the statements used in Sections 1 and 2: the boundary contribution at spatial infinity does not obstruct the variational principle, the Noether analysis is well defined, and the symplectic form remains finite.

We begin by imposing the asymptotic boundary conditions on the field $A_\mu$ and the field strength $F_{\mu \nu}$ as $r \to \infty$:

$$\begin{align}
A_{t} & =O(r^{0}), & A_{r} & =o(r^{-1}), & A_{\phi} & =O(r^{0}) \\
A^{t} & =O(r^{-2}), & A^{r} & =o(r^{1}), & A^{\phi} & =O(r^{-2}) \\
F_{tr} & =o(r^{-1}), & F_{t\phi} & =O(r^{0}), & F_{r\phi} & =o(r^{-1}) \\
F^{tr} & =o(r^{-1}), & F^{t\phi} & =O(r^{-4}), & F^{r\phi} & =o(r^{-1})
\end{align}$$

The variations are assumed to obey the same asymptotic conditions:

$$\begin{align}
\delta A_{t} & =O(r^{0}), & \delta A_{r} & =o(r^{-1}), & \delta A_{\phi} & =O(r^{0}) \\
\delta A^{t} & =O(r^{-2}), & \delta A^{r} & =o(r^{1}), & \delta A^{\phi} & =O(r^{-2})
\end{align}$$

For the class of configurations considered in this manuscript, we also use the radial derivative behavior satisfied by the mode basis:

$$\begin{align}
\partial_{r}A_{t} & =o(r^{-1}), & \partial_{r}A_{\phi} & =o(r^{-1}) \\
\partial_{r}\delta A_{t} & =o(r^{-1}), & \partial_{r}\delta A_{\phi} & =o(r^{-1})
\end{align}$$

The Maxwell bulk term then behaves as

$$\begin{align}
\sqrt{-g}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
&=-\frac{r}{2}\left(F_{tr}F^{tr}+F_{t\phi}F^{t\phi}+F_{r\phi}F^{r\phi}\right)=o(r^{-1})
\end{align}$$

Hence the contribution from the near-boundary region to the bulk action integral over $M$ is finite.

We now turn to the variation of the action. To make the boundary analysis explicit, we write the Maxwell action as

$$\begin{align}
S & =-\frac{1}{4}\lim_{ r_{\infty} \to \infty }\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

Here $r_{\infty}$ is a radial cutoff, and $M_{r_{\infty}}$ denotes the subregion of $M$ bounded by the surface $r=r_{\infty}$. In terms of this regulated region, the variation of the action takes the form

$$\begin{align}
\delta S & =\lim_{ r_{\infty} \to \infty }\int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\nu}F^{\nu \mu}\delta A_{\mu} \\
 & +\int _{\Sigma _{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}-\int _{\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & -\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

Here $\Sigma _{i,r_{\infty}}$ and $\Sigma _{f,r_{\infty}}$ are the portions of $\Sigma _{i}$ and $\Sigma _{f}$ inside the cutoff surface, while $\Gamma _{r_{\infty}}$ is the timelike cutoff surface between them. The induced metric on the constant-$r$ surface is

$$\begin{align}
\gamma _{AB}\mathrm{d}x^{A}\mathrm{d}x^{B} & =-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the outward-pointing unit normal vector to the constant-$r$ surface is

$$\begin{align}
n^{\mu} & =\left(0,(1+r^{2})^{1/2},0\right)
\end{align}$$

To analyze the boundary terms in $\delta S$, we first record the asymptotic behavior of the Maxwell equations. Since $\sqrt{-g}=r$, one has

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\frac{1}{r}\partial _{\mu}(rF^{\mu \nu}).
\end{align}$$

With the same non-borderline radial regularity used above, the leading asymptotic estimates are

$$\begin{align}
\nabla _{\mu}F^{\mu t} & =o(r^{-2}), & \nabla _{\mu}F^{\mu r} & =o(r^{-1}), & \nabla _{\mu}F^{\mu \phi} & =o(r^{-2})
\end{align}$$

With these estimates, the integrands appearing in the bulk and boundary terms of $\delta S$ behave as

$$\begin{align}
\sqrt{ -g }\nabla _{\nu}F^{\nu \mu}\delta A_{\mu} & =o(r^{-1}) \\
\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
&=-r\left(F^{tr}\delta A_{r}+F^{t\phi}\delta A_{\phi}\right)=o(r^{-1}) \\
(-1)\sqrt{ -\gamma }n_{\mu}F^{\mu \nu}\delta A_{\nu}
&=r\left(F^{rt}\delta A_{t}+F^{r\phi}\delta A_{\phi}\right)=o(r^{0})
\end{align}$$

Consequently, the regulated boundary contribution at $r=r_{\infty}$ vanishes in the limit, and we recover

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\nu}F^{\nu \mu}\delta A_{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

which is precisely the expression quoted in the main text.

We next analyze the asymptotic behavior of $X_{\xi}\cdot \delta S$. We find

$$\begin{align}
X_{\xi}\cdot \delta S & =\lim_{ r_{\infty} \to \infty } \int _{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\sigma}\left(\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right) \\
 & =\lim_{ r_{\infty} \to \infty } \int _{\Sigma _{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \\
 & -\int _{\Sigma _{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \\
 & +\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu}
\end{align}$$

The global AdS$_3$ Killing fields satisfy

$$\begin{align}
\xi ^{t} & =O(r^{0}), & \xi ^{r} & =O(r), & \xi ^{\phi} & =O(r^{0})
\end{align}$$

The integrands of the corresponding boundary terms therefore behave as

$$\begin{align}
\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =o(r^{-1}) \\
\sqrt{ -\gamma }n_{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =o(r^{0})
\end{align}$$

Therefore,

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\sigma}\xi ^{\sigma}\frac{1}{4}F_{\mu \nu}F^{\mu \nu}
\end{align}$$

which again reproduces the expression used in the main text.

We now turn to the total-derivative term in the Noether charge $H_{\xi}|_{\widetilde{\mathcal{P}}}$. Its regulated expression is

$$\begin{align}
\lim_{ r_{\infty} \to \infty }\int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left(\sigma ^{\alpha}_{~\nu}\tau _{\mu}F^{\mu \nu}A_{\rho}\xi ^{\rho}\right)
&=\lim_{ r_{\infty} \to \infty }\int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h }\hat{n}_{\alpha}\sigma ^{\alpha}_{~\nu}\tau _{\mu}F^{\mu \nu}A_{\rho}\xi ^{\rho}
\end{align}$$

Here $\Sigma _{r_{\infty}}$ denotes the portion of $\Sigma$ inside the cutoff surface, and $H_{r_{\infty}}$ is the intersection of $\Sigma$ with $r=r_{\infty}$. The induced metric on $H_{r_{\infty}}$ is

$$\begin{align}
h_{mn}\mathrm{d}x^{m}\mathrm{d}x^{n} & =r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

while the outward-pointing unit normal vector tangent to $\Sigma$ and orthogonal to $H_{r_{\infty}}$ is, in the $(r,\phi)$ coordinates,

$$\begin{align}
\hat{n}^{a} & =((1+r^{2})^{1/2},0)
\end{align}$$

Now $A_{\rho}\xi ^{\rho}=O(r^{0})$, so the integrands of the boundary contributions to $H_{\xi}|_{\widetilde{\mathcal{P}}}$ scale as

$$\begin{align}
\sqrt{ h }\hat{n}_{\alpha}\sigma ^{\alpha}_{~\nu}\tau _{\mu}F^{\mu \nu}A_{\rho}\xi ^{\rho}
&=rF^{rt}A_{\rho}\xi ^{\rho}=o(r^{0})
\end{align}$$

Hence no extra contribution survives from spatial infinity, and the Noether charge reduces to the expression quoted in the main text.

Finally, we analyze the asymptotic behavior of $X_{\xi}\cdot \omega |_{\widetilde{\mathcal{P}}}$. We obtain

$$\begin{align}
X_{\xi}\cdot \omega |_{\widetilde{\mathcal{P}}}
&=\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left((\mathcal{L}_{\xi}F^{\mu \nu})\delta A_{\nu}-(\mathcal{L}_{\xi}A_{\nu})\delta F^{\mu \nu}\right)\Big|_{\widetilde{\mathcal{P}}}
\end{align}$$

The Lie derivative preserves the asymptotic class, so $\mathcal{L}_{\xi}A$ has the same falloffs as $A$, and $\mathcal{L}_{\xi}F$ has the same falloffs as $F$. The integrands of the corresponding large-$r$ terms therefore behave as

$$\begin{align}
\sqrt{ \sigma }\tau _{\mu}(\mathcal{L}_{\xi}F^{\mu \nu})\delta A_{\nu}
&=-r\left((\mathcal{L}_{\xi}F^{tr})\delta A_{r}+(\mathcal{L}_{\xi}F^{t\phi})\delta A_{\phi}\right)=o(r^{-1}) \\
-\sqrt{ \sigma }\tau _{\mu}(\mathcal{L}_{\xi}A_{\nu})\delta F^{\mu \nu}
&=r\left((\mathcal{L}_{\xi}A_{r})\delta F^{tr}+(\mathcal{L}_{\xi}A_{\phi})\delta F^{t\phi}\right)=o(r^{-1})
\end{align}$$

Hence $X_{\xi}\cdot \omega |_{\widetilde{\mathcal{P}}}$ is finite and receives no additional obstruction from spatial infinity. The same falloff counting also shows that the symplectic form $\omega |_{\widetilde{\mathcal{P}}}$ itself is finite. We therefore conclude that the theory admits a well-defined variational principle, that the Noether analysis used in Section 2 is valid, and that the relevant boundary contributions at spatial infinity vanish.
