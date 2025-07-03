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

this solution correspond the QFT with $\displaystyle{\Delta=\Delta-}$...? this is not work seemingly...

the problem is that the Poincare coordinate is not global, which means that the spectrum is not discrete. we need to consider global coordinate

$$\tag{1.13}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\Omega ^{2}_{d-2}\right)
\end{align}
$$