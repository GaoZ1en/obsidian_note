in this file we will consider the bulk-to-bulk propagator of Proca field in Euclidean $\displaystyle{\mathrm{AdS}_{d+1}}$ under Poincare coordinate

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{z^{2}}\left( \mathrm{d}z^{2}+\eta _{ij}\mathrm{d}x^{i}\mathrm{d}x^{j}\right)
\end{align}
$$

where $\displaystyle{\eta _{ij}=\mathrm{diag}(-,+,\dots,+)}$. the non-zero Christoffel symbols are

$$\tag{1.3}
\begin{align}
\Gamma ^{z}_{~zz} & =-\frac{1}{z},\Gamma ^{z}_{~ij}=\frac{1}{z}\eta _{ij} \\
\Gamma ^{i}_{~zj} & =-\frac{1}{z}\delta ^{i}_{~j}
\end{align}
$$

## scalar

the eom for a scalar is

$$\tag{1.4}
\begin{align}
z^{d+1}\partial _{z}(z^{-d+1}\partial _{z}\phi)+z^{2}\tilde{\nabla} ^{2}\phi-\mu^{2}\phi=0
\end{align}
$$

where $\displaystyle{\tilde{\nabla}^{2}=-\partial _{t}^{2}\phi+\partial _{\rho}^{2}\phi+ \frac{d-2}{\rho} \partial _{\rho}\phi+\frac{1}{\rho ^{2}}\Delta _{S^{d-2}}\phi}$. make the ansatz

$$\tag{1.5}
\begin{align}
\phi(z,x) & =e^{-i \omega t}\mathbf{Y}_{\ell}(\Omega _{d-2})\tilde{\phi}(z,\rho)
\end{align}
$$

$$\tag{1.5}
\begin{align}
z^{d-1}\partial _{z}(z^{-d+1}\partial _{z}(\tilde{\phi}(z,\rho)))+\left( \omega ^{2}+\partial _{\rho}^{2}+\frac{d-2}{\rho}\partial _{\rho}-\frac{\ell(\ell+d-3)}{\rho ^{2}} \right)\tilde{\phi}(z,\rho)-\frac{\mu ^{2}}{z^{2}}\tilde{\phi}(z,\rho)=0 \\
\partial _{z}^{2}\tilde{\phi}-\frac{d-1}{z}\partial _{z}\tilde{\phi}+\left( \omega ^{2}+\partial _{\rho}^{2}+\frac{d-2}{\rho}\partial _{\rho}-\frac{\ell(\ell+d-3)}{\rho ^{2}}-\frac{\mu ^{2}}{z^{2}} \right)\tilde{\phi}(z,\rho) & =0
\end{align}
$$

further make the following ansatz

$$\tag{1.6}
\begin{align}
\tilde{\phi}(z,\rho) & =R(\rho)Z(z)
\end{align}
$$

where the radial function satisfies

$$\tag{1.7}
\begin{align}
R(\rho) & =\rho^{(3-d)/2}J_{\frac{d+2\ell-3}{2}}(\lambda \rho) \\
\partial _{\rho}^{2}R+\frac{d-2}{\rho}\partial _{\rho}R-\frac{\ell(\ell+d-3)}{\rho ^{2}}R & =-\lambda ^{2}R
\end{align}
$$

with $\displaystyle{\lambda>0}$. the $\displaystyle{Z}$ function satisfies

$$\tag{1.8}
\begin{align}
\partial _{z}^{2}Z+\frac{1-d}{z}\partial _{z}Z+\left( \omega ^{2}-\lambda ^{2}-\frac{\mu ^{2}}{z^{2}} \right)Z & =0
\end{align}
$$

the solution is

$$\tag{1.9}
\begin{align}
Z =z^{d/2}Y_{\sqrt{ \mu ^{2}+\frac{d^{2}}{4} }}(\sqrt{ |\omega ^{2}-\lambda ^{2}| }z)
\end{align}
$$

where $\displaystyle{Y}$ may be $\displaystyle{J}$ or $\displaystyle{N}$ for $\displaystyle{\omega ^{2}-\lambda ^{2}>0}$ and $\displaystyle{I}$ or $\displaystyle{K}$ for $\displaystyle{\omega ^{2}-\lambda ^{2}<0}$. 

$$\tag{1.10}
\begin{align}
\phi(z,t,\rho,\Omega _{n-2}) & =e^{-i \omega t}\mathbf{Y}_{\ell}(\Omega _{d-2})\rho ^{(3-d)/2}X_{\frac{d+2\ell-3}{2}}(|\lambda| \rho)z^{d/2}Y_{\sqrt{ \mu ^{2}+\frac{d^{2}}{4} }}(\sqrt{ |\omega ^{2}-\lambda ^{2}| }z)
\end{align}
$$

finally we will impose boundary condition

$$\tag{1.11}
\begin{align}
\phi \text{ finite when }z\to \infty \\
\phi\to0 \text{ when }z\to 0^{+}
\end{align}
$$

we have

$$\tag{.}
\begin{align}
\phi(z,t,\rho,\Omega _{n-2}) & =e^{-i \omega t}\mathbf{Y}_{\ell}(\Omega _{d-2})\rho ^{(3-d)/2}J_{\frac{d+2\ell-3}{2}}(|\lambda| \rho)z^{d/2}K_{\sqrt{ \mu ^{2}+\frac{d^{2}}{4} }}(\sqrt{ \lambda ^{2}-\omega ^{2} }z)
\end{align}
$$

this solution correspond the QFT with $\displaystyle{\Delta=\Delta-}$...?






---
$$\tag{1.4}
\begin{align}
\nabla ^{2}A_{\mu}-(\mu^{2}-d)A_{\mu} & =0 \\
\nabla _{\mu}A^{\mu} & =0
\end{align}
$$

or

$$\tag{1.5}
\begin{align}

\end{align}
$$

$$\tag{.}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}
\end{align}
$$

take a variation

$$\tag{.}
\begin{align}
(\nabla ^{2}A^{\mu}-m^{2}A^{\mu})\delta A_{\mu}
\end{align}
$$

$$\tag{.}
\begin{align}
\rho ^{(3-d)/2}X_{\frac{d+2\ell-3}{2}}(|\lambda|\rho)
\end{align}
$$