![[Attachments/Pasted image 20250823200744.png]]

note that the Poincare horizons (null boundary) are also boundary of Poincare patch. note that the timelike boundary of the Poincare patch is conformal Minkowski

$$\tag{1.1}\begin{align}
\mathrm{d}s^{2} & =\frac{L^{2}}{z^{2}}(\mathrm{d}z^{2}-\mathrm{d}t^{2}+\mathrm{d}\vec{x}^{2}_{d-2})
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
\Omega[\phi,\psi] & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}(\bar{\psi}\nabla ^{\mu}\phi-\bar{\phi}\nabla ^{\mu}\psi)
\end{align}$$