![[Attachments/Pasted image 20250823200744.png]]

here we consider $\displaystyle{\mathrm{AdS}_{d+1}}$note that the Poincare horizons (null boundary) are also boundary of Poincare patch. note that the timelike boundary of the Poincare patch is conformal Minkowski

$$\tag{1.1}\begin{align}
\mathrm{d}s^{2} & =\frac{L^{2}}{z^{2}}(\mathrm{d}z^{2}-\mathrm{d}t^{2}+\mathrm{d}\vec{x}^{2}_{d-1})
\end{align}$$

$\displaystyle{z\to0}$ corresponds the conformal boundary, and $\displaystyle{z\to \infty}$ corresponds the Poincare horizons. for simplicity we only discuss a real scalar, with Lagrangian

$$\tag{1.2}\begin{align}
S & =\int _{M} \mathrm{d}^{d}x\sqrt{ -g }\left( -\frac{1}{2}g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}m^{2}\phi ^{2}-V[\phi] \right)
\end{align}$$

take a variation

$$\tag{1.3}\begin{align}
\delta S & =\int _{M} \mathrm{d}^{d}x\sqrt{ -g }\left(\nabla ^{2}-m^{2}-V'[\phi]\right)\phi\delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\phi \delta \phi \\
 & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }E_{\phi}\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}$$

gives the eom and symplectic potential

$$\tag{1.4}\begin{align}
E_{\phi} & =(\nabla ^{\mu}-m^{2}-V'[\phi])  \\
\theta|_{\Sigma} & =\int _{\Sigma} \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\phi \delta \phi
\end{align}$$

then we get the symplectic form by taking a variation of the symplectic potential

$$\tag{1.5}\begin{align}
\omega|_{\Sigma} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

which defines a inner product to the positive frequence part of the covariant phase space

$$\tag{1.6}\begin{align}
\Omega[\phi,\psi] & =i\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}(\bar{\psi}\nabla ^{\mu}\phi-\phi\nabla ^{\mu}\bar{\psi})
\end{align}$$

the value of (1.6) is independent from the choice of Cauchy surface $\displaystyle{\Sigma}$. we first consider the solution of free field in Poincare patch. make the following Fourier expansion

$$\tag{1.7}\begin{align}
\phi & =e^{iK_{\mu}x^{\mu}}Z_{K}(z), & K_{\mu}=(-\omega,\vec{k})
\end{align}$$

then the eom becomes

$$\tag{1.8}\begin{align}
z^{2}\partial _{z}^{2}\phi+(1-d)z\partial _{z}\phi+z^{2}\partial _{x}^{2}\phi-m^{2}L^{2}\phi & =0
\end{align}$$

when $\displaystyle{z\to 0}$, we assume that the asymptotic behavior of $\displaystyle{\phi}$ is

$$\tag{1.9}\begin{align}
\phi & =z^{\Delta}(\phi _{0}(x)+z\phi _{1}(x)+\dots)
\end{align}$$

then the leading term gives

$$\tag{1.10}\begin{align}
\Delta(\Delta-d) & =m^{2}L^{2} \\
\implies \Delta ^{\pm} & =\frac{d\pm \sqrt{ d^{2}+4m^{2}L^{2} }}{2}
\end{align}$$

we have two possible asymptotic behavior. we have to impose the Breitlohner-Freedman bound

$$\tag{1.11}\begin{align}
m^{2}\geqslant -\frac{d^{2}}{4L^{2}}
\end{align}$$

which preserve the stability of AdS quantum theory. when the BF bound is satisfied, then we have two possible quantum theory. in standard AdS/CFT, we see $\displaystyle{\psi _{-}}$ corresponding to $\displaystyle{\Delta ^{-}}$ as the boundary source, and $\displaystyle{\psi _{+}}$ corresponding to $\displaystyle{\Delta ^{+}}$ as vacuum expectation value.

we require $\displaystyle{\psi _{-}}$ at $\displaystyle{z=0}$, and (regular or in-going) boundary condition at $\displaystyle{z=\infty}$ or black hole horizon. then $\displaystyle{\psi _{+}[\psi _{-}]}$ is a functional of $\displaystyle{\psi _{-}}$. 

$$\tag{1.12}\begin{align}
z^{2}\partial _{z}^{2}Z_{K}+(1-d)z\partial _{z}Z_{K}-(z^{2}K^{2}+m^{2}L^{2})Z_{K} & =0
\end{align}$$

when $\displaystyle{z\to \infty}$, the asymptotic behavior of $\displaystyle{Z_{K}}$ is then $\displaystyle{Z_{K}\to e^{\lambda z}}$ $\displaystyle{\implies \lambda ^{2}=K^{2}=-\omega ^{2}+\vec{k}^{2}}$.
1. $\displaystyle{K^{2}> 0}$, $\displaystyle{K}$ is spacelike. then we require $\displaystyle{\lambda=-\sqrt{ K^{2} }}$, regular boundary condition.
2. $\displaystyle{K^{2}< 0}$, $\displaystyle{K}$ is timelike. then we require $\displaystyle{\lambda=i\sqrt{ -K^{2} }}$ for positive frequency solution and $\displaystyle{\lambda=-i\sqrt{ -K^{2} }}$ for negative frequency solution, ingoing boundary condition.

we then go to the Euclidean signature by a Wick rotation

$$\tag{1.13}\begin{align}
\tau & =it \\
\omega _{\mathrm{E}} & =-i(\omega+i\varepsilon)
\end{align}$$

as above discussion, we pick $\displaystyle{\psi _{-}}$ as source in the standard quantization. and we say alternative quantization if we pick $\displaystyle{\psi _{+}}$ as source. there are several subtlety in the alternative quantization...

