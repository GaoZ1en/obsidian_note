consider global coordinate for $\displaystyle{\mathrm{AdS}_{d}}$.

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+\rho^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}\rho ^{2}}{1+\rho ^{2}}+\rho ^{2}\mathrm{d}\Omega _{d-2}^{2}
\end{align}
$$

here we set $\displaystyle{L=1}$. we first write down the non-zero components of Christoffel symbol and Ricci tensor

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} & =\frac{\rho}{1+\rho ^{2}} \\
\Gamma ^{\rho}_{~tt} & =\rho(1+\rho ^{2}) \\
\Gamma ^{\rho}_{~\rho \rho} & =-\frac{\rho}{1+\rho ^{2}} \\
\Gamma ^{\rho}_{ij} & =-\rho (1+\rho ^{2})\tilde{g}_{ij} \\
\Gamma ^{k}_{~ij} & =\tilde{\Gamma}^{k}_{~ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\rho}\delta ^{i}_{~j}
\end{align}
$$

where $\displaystyle{\tilde{\Gamma}^{\Omega}_{~\Omega \Omega}}$ is the christoffel symbol of the unit sphere $\displaystyle{S^{d-2}}$. here $\displaystyle{a}$ stands for $\displaystyle{t,\rho}$, and $\displaystyle{i}$ stands for coordinates on $\displaystyle{S^{d-2}}$. and

$$\tag{1.3}
\begin{align}
R_{\mu \nu} & = -(d-1)g_{\mu \nu}
\end{align}
$$

---

we will first consider the scalar field in $\mathrm{AdS}_{d}$, the eom is given by

$$\tag{2.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\mathrm{d}^{d}x(\sqrt{ -g }g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi+m^{2}\phi) \\
\implies (\nabla ^{2}-m^{2})\phi & =0
\end{align}
$$

expand the Laplacian

$$\tag{2.2}
\begin{align}
\tilde{\Delta}^{2}_{\mathcal{N}}\phi+\frac{1}{\rho ^{2}}\tilde{\Delta}_{S^{d-2}}\phi-m^{2}\phi & =0 \\
\tilde{\Delta}_{\mathcal{N}}\phi & =-\frac{1}{1+\rho ^{2}}\partial _{t}^{2}\phi+(1+\rho ^{2})\partial _{\rho}^{2}\phi+\frac{d-2}{\rho}(1+\rho ^{2})\partial _{\rho}\phi+2\rho \partial _{\rho}\phi
\end{align}
$$

the subspace $\displaystyle{\mathcal{N}}$ is spanned by $\displaystyle{(t,\rho)}$. we make the ansatz

$$\tag{2.3}
\begin{align}
\phi & =e^{-i\omega t}R(\rho)\mathrm{Y}_{\ell \mathbf{m}}(\Omega _{d-2})
\end{align}
$$

where the spherical harmonics $\displaystyle{\mathrm{Y}_{\ell \mathbf{m}}}$ satisfies

$$\tag{2.4}
\begin{align}
\tilde{\Delta}_{S^{d-2}}\mathrm{Y}_{\ell \mathbf{m}} & =-\ell(\ell+d-3)\mathrm{Y}_{\ell \mathbf{m}}
\end{align}
$$

then we have

$$\tag{2.5}
\begin{align}
\frac{\omega ^{2}}{1+\rho ^{2}}R(\rho)+(1+\rho ^{2})\partial _{\rho}^{2}R(\rho)+\frac{d-2}{\rho}(1+\rho ^{2})\partial _{\rho}R(\rho)+2\rho \partial _{\rho}R(\rho)-\frac{\ell(\ell+d-3)}{\rho ^{2}}R(\rho)-m^{2}R(\rho) & =0
\end{align}
$$

define $\displaystyle{\rho=\tan r}$, (2.5) becomes

$$\tag{2.6}
\begin{align}
\cos ^{2}r\partial _{r}R(r)+\frac{d-2}{\tan r}\partial _{r}R(r)+\left(\omega ^{2}\cos ^{2}r-\frac{\ell(\ell+d-3)}{\tan ^{2}r}-m^{2}\right)R(r) & =0
\end{align}
$$

notice that $\displaystyle{{}_{2}F_{1}(\alpha,\beta;\gamma;z)}$ satisfies the hypergeometric equation

$$\tag{2.7}
\begin{align}
z(1-z)\frac{\mathrm{d}^{2}F}{\mathrm{d}z^{2}}+\left(\gamma-(\alpha+\beta+1)z\right)\frac{\mathrm{d}F}{\mathrm{d}z}-\alpha \beta F & =0
\end{align}
$$

then $\displaystyle{G(z)=z^{a}(1-z)^{b}{}_{2}F_{1}(\alpha,\beta;\gamma;z)}$ satisfies

$$\tag{2.8}
\begin{align}

\end{align}
$$