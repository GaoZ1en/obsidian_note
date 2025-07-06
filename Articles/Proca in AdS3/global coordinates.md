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
\cos ^{2}r\partial ^{2} _{r}R(r)+\frac{d-2}{\tan r}\partial _{r}R(r)+\left(\omega ^{2}\cos ^{2}r-\frac{\ell(\ell+d-3)}{\tan ^{2}r}-m^{2}\right)R(r) & =0
\end{align}
$$

further define $\displaystyle{z=\cos^{2}r}$ and $\displaystyle{R(r)=\sin ^{\ell}r\cos ^{\Delta}rF(r)}$ with $\displaystyle{\Delta=\frac{d-1}{2}+\sqrt{ \frac{(d-1)^{2}}{4}+m^{2} }}$, we have

$$\tag{2.7}
\begin{align}
z(1-z) \frac{\mathrm{d}^{2}F}{\mathrm{d}z^{2}}+\left[ \left( \Delta+\frac{3-n}{2} \right)-(\ell+\Delta+1)z \right] \frac{\mathrm{d}F}{\mathrm{d}z}-\frac{1}{4}((\ell+\Delta)^{2}-\omega ^{2})F=0
\end{align}
$$

this is a hypergeometric equation, the general solution is given by

$$\tag{2.8}
\begin{align}
F(z) & =C_{1}{}_{2}F_{1}\left( \frac{1}{2}(\ell+\Delta-\omega), \frac{1}{2}(\ell+\Delta+\omega);\Delta+\frac{3-d}{2};z \right) \\
 & +C_{2}(1-z)^{-\Delta-1/2+n/2}{}_{2}F_{1}\left( \frac{1}{2}(\ell-\Delta-\omega-1+d), \frac{1}{2}(\ell-\Delta+\omega-1+d);-\Delta+\frac{1+d}{2};z \right)
\end{align}
$$

we require that the solution converges at $\displaystyle{z=0}$ and regular at $\displaystyle{z=1}$. this implies $\displaystyle{C_{2}=0}$ and $\displaystyle{\omega _{k\ell}=\Delta+\ell+2k}$, where $\displaystyle{k\in \mathbb{N}}$. then the complete solution is given by

$$\tag{2.9}
\begin{align}
\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N_{k\ell}e^{-i \omega t} (\sin \rho)^{\ell}(\cos \rho)^{\Delta}{}_{2}F_{1}\left( -k,\ell+\Delta+k;\Delta-\frac{n-3}{2};\cos ^{2}\rho \right)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

---

then we consider Proca field with eom

$$\tag{2.10}
\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu^{2}A^{\nu}
\end{align}
$$

we separate $\displaystyle{A^{\mu}}$ as $\displaystyle{A^{\mu}=(A^{a},A^{i})}$ and make the following ansatz

$$\tag{2.11}
\begin{align}
A_{a} & =\psi _{a}(t,\rho)\mathrm{Y}_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A_{i} & =\phi(t,\rho) \mathbf{Y}^{(\mathrm{e})}_{\ell \mathbf{m},i}(\Omega _{n-2})+\chi(t,\rho) \mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}(\Omega _{n-2})
\end{align}
$$

where $\displaystyle{\mathbf{Y}^{(\mathrm{e})}_{\ell \mathbf{m},i}(\Omega _{n-2})}$ and $\displaystyle{\mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}}$ are the vector spherical harmonics defined on $\displaystyle{S^{d-2}}$, with eigenvalues $\displaystyle{\ell(\ell+d-3)-(d-3)}$ and $\displaystyle{\ell(\ell+d-3)-1}$ respectively. 

$$\tag{2.12}
\begin{align}
\nabla ^{2}A_{\mu}& =(\mu^{2}-d+1)A_{\mu}
\end{align}
$$

it is convenient to use $\displaystyle{A=A_{\mu}\mathrm{d}x^{\mu}}$ instead of $\displaystyle{A_{\mu}}$

$$\tag{2.13}
\begin{align}
\nabla ^{2}A & =(\mu ^{2}-d+1)A
\end{align}
$$


$$\tag{1.2}
\begin{align}
\Delta\phi =-\cos ^{2}\rho \partial _{t}^{2}\phi+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\Delta _{S^{n-2}\phi}+\cos ^{2}\rho \partial _{\rho}^{2}\phi+\frac{n-2}{\tan \rho}\partial _{\rho}\phi
\end{align}
$$


$$\tag{.}
\begin{align}
\nabla _{\mu}\nabla ^{\mu}\phi & =\partial _{\mu}\nabla ^{\mu}\phi+\Gamma ^{\mu}_{~\mu \nu}\nabla ^{\nu}\phi \\
 & =\partial _{\mu}\partial ^{\mu}\phi+\Gamma ^{\mu}_{~\mu \nu}\partial ^{\nu}\phi
\end{align}
$$

$$\tag{.}
\begin{align}
g^{\rho \sigma}\nabla _{\rho}\nabla _{\sigma}A_{\mu} & =g^{\rho \sigma}\partial _{\rho}\nabla _{\sigma}A_{\mu}+g^{\rho \sigma}
\end{align}
$$

$$\tag{.}
\begin{align}
 R^{\rho}_{~\sigma \mu \nu}& =\partial _{\mu}\Gamma ^{\rho}_{~\nu \sigma}-\partial _{\nu}\Gamma ^{\rho}_{~\mu \sigma}+\Gamma ^{\rho}_{~\mu \lambda}\Gamma ^{\lambda}_{~\nu \sigma}-\Gamma ^{\rho}_{~\nu \lambda}\Gamma ^{\lambda}_{~\mu \sigma}
\end{align}
$$