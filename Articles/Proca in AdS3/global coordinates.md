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

$$\tag{.}
\begin{align}
\Gamma ^{a}_{~bc} & =\tilde{\Gamma}^{a}_{~bc} \\
\Gamma ^{a}_{~ij} & =-f(\rho)\rho\partial ^{a}\rho \tilde{g}_{ij} \\
\Gamma ^{i}_{~aj} & =\frac{\partial _{a}\rho}{\rho}\delta ^{i}_{j} \\
\Gamma ^{i}_{~jk} & =\tilde{\Gamma}^{i}_{~jk}
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

then we consider Proca field in $\displaystyle{\mathrm{AdS}_{d},d>3}$ with eom

$$\tag{3.1}
\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu^{2}A^{\nu} \\
\nabla _{\mu}A^{\mu} & =0
\end{align}
$$

we separate $\displaystyle{A^{\mu}}$ as $\displaystyle{A^{\mu}=(A^{a},A^{i})}$ and make the following ansatz

$$\tag{3.2}
\begin{align}
A_{a} & =\psi _{a}(t,\rho)\mathrm{Y}_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A_{i} & =\phi(t,\rho) \mathbf{Y}^{(\mathrm{e})}_{\ell \mathbf{m},i}(\Omega _{n-2})+\chi(t,\rho) \mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}(\Omega _{n-2})
\end{align}
$$

where $\displaystyle{\mathbf{Y}^{(\mathrm{e})}_{\ell \mathbf{m},i}(\Omega _{n-2})=\tilde{\nabla}_{i}\mathrm{Y}_{\ell \mathbf{m}}(\Omega _{n-2})}$ and $\displaystyle{\mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}}$ are the vector spherical harmonics defined on $\displaystyle{S^{d-2}}$, with eigenvalues $\displaystyle{\ell(\ell+d-3)-(d-3)}$ and $\displaystyle{\ell(\ell+d-3)-1}$ respectively. then the stress tensor is given by

$$\tag{3.3}
\begin{align}
F^{ab} & =(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla} ^{b}\psi ^{a})\mathrm{Y}_{\ell \mathbf{m}} \\
F^{ai} & =\frac{1}{\rho ^{2}}(\tilde{\nabla} ^{a}\phi-\psi ^{a})\mathbf{Y}_{\ell \mathbf{m}}^{(\mathrm{e}),i}+\frac{1}{\rho ^{2}}\tilde{\nabla} ^{a}\chi \mathbf{Y}_{\ell \mathbf{m}}^{(\mathrm{m}),i} \\
F^{ij} & =\frac{1}{\rho ^{4}}\chi(\tilde{\nabla}^{i}\mathbf{Y}_{\ell \mathbf{m}}^{(\mathrm{m}),j}-\tilde{\nabla}^{j}\mathbf{Y}_{\ell \mathbf{m}}^{(\mathrm{m}),i})
\end{align}
$$

and the eom can be written as

$$\tag{3.4}
\begin{align}
\tilde{\nabla}_{b}F^{ab}+\tilde{\nabla} _{i}F^{ai}+(d-2)\frac{\partial _{b}\rho}{\rho}F^{ab}+\mu ^{2}A^{a} & =0 \\
\tilde{\nabla}_{b}F^{ib}+\tilde{\nabla}_{j}F^{ij}+(d-2) \frac{\partial _{b}\rho}{\rho}F^{ib}+\mu ^{2}A^{i} & =0 \\
\tilde{\nabla}_{a}A^{a}+\tilde{\nabla}_{i}A^{i}+(d-2) \frac{\partial _{a}\rho}{\rho}A^{a} & =0
\end{align}
$$

insert (3.2) and (3.3) into (3.4) and (3.1), we have

$$\tag{3.5}
\begin{align}
\tilde{\nabla}_{b}(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla}^{b}\psi ^{a})-\frac{\ell(\ell+d-3)}{\rho ^{2}}(\tilde{\nabla}^{a}\phi-\psi ^{a})+(d-2)\frac{\partial _{b}\rho}{\rho}(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla}^{b}\psi ^{a})+\mu ^{2}\psi ^{a} & =0 \\
\tilde{\nabla}_{b}\tilde{\nabla}^{b}\phi+(d-4) \frac{\partial _{b}\rho}{\rho}\partial ^{b}\phi-\mu ^{2}\phi-\tilde{\nabla}_{b}\psi ^{b}-(d-4) \frac{\partial _{b}\rho}{\rho}\psi ^{b} & =0 \\
\tilde{\nabla}_{b}\tilde{\nabla}^{b}\chi+(d-4) \frac{\partial ^{b}\rho}{\rho} \partial _{b}\chi-\left( \frac{\ell(\ell+d-3)+d-4}{\rho ^{2}}+\mu ^{2} \right)\chi & =0 \\
\tilde{\nabla}_{b}\psi ^{b}+(d-2) \frac{\partial _{b}\rho}{\rho}\psi ^{b}-\frac{\ell(\ell+d-3)}{\rho ^{2}}\phi & =0
\end{align}
$$

we can rewrite these equations as

$$\tag{3.6}
\begin{align}
\mathcal{D}_{\ell}q_{0}+2\rho(\partial _{t}q_{1}+\partial _{t}q_{2}-\partial _{r}q_{0}) & =0 \\
\mathcal{D}_{j_{k}}q_{k} & =0 \\
\partial _{t}q_{0}-\partial _{r}(q_{1}+q_{2}) & =\frac{1}{\rho}\left( \frac{d-2}{2}-(\ell+d-3) \right)q_{2}+\frac{1}{\rho}\left( \ell+\frac{d-2}{2} \right)q_{1}
\end{align}
$$

where

$$\tag{3.7}
\begin{align}
\mathcal{D}_{\ell} & =-\partial _{t}^{2}+\partial _{r}^{2}-\left(\frac{\ell(\ell+d-3)}{\rho ^{2}}+\mu ^{2}+\frac{(d-2)(d-4)}{4}\left( 1+\frac{1}{\rho ^{2}} \right)\right) \\
r & =\arctan \rho \\
q_{0} & =\psi _{t}\rho^{\frac{d}{2}-1} \\
q_{1} & =\frac{(\ell-d-3)\psi _{r}f(\rho)-\ell(\ell+d-3)\phi \rho ^{-1}}{2\ell+d-3}\rho ^{\frac{d}{2}-1} \\
q_{2} & =\frac{\ell \psi _{r}f(\rho)+\ell(\ell+d-3)\phi \rho ^{-1}}{2\ell+d-3}\rho ^{\frac{d}{2}-1} \\
q_{3} & =\chi \rho ^{\frac{d}{2}-2}
\end{align}
$$

and

$$\tag{3.8}
\begin{align}
j_{k}=\begin{cases}
\ell+1 & \ell \in \mathbb{N}\ \text{if } k=0 \\
\ell-1 & \ell \in \mathbb{N}\ \text{if } k=1 \\
\ell & \ell \in \mathbb{N}\ \text{if } k=2
\end{cases}
\end{align}
$$

we take $\displaystyle{q_{1},q_{2},q_{3}}$ as independent variables, and $\displaystyle{q_{0}}$ is determined completely by $\displaystyle{q_{1}}$ and $\displaystyle{q_{2}}$. we first consider the asymptotic behavior of the solution. near $\displaystyle{\rho=0}$, we have

$$\tag{3.9}
\begin{align}
q_{k} & =\alpha _{k}\rho ^{j_{k}+(d-2)/2}+\beta _{k}\rho ^{-j_{k}-(d-4)/2}
\end{align}
$$

we require the solution to be regular at $\displaystyle{\rho=0}$, this implies $\displaystyle{\beta _{k}=0}$ execpt the case that $\displaystyle{k=2,d=4,\ell=0}$. this corresponds to a solution $\displaystyle{A_{\mu}\sim \frac{1}{\rho}}$, which is a Dirac delta source term at $\displaystyle{\rho=0}$. for this reason, we have to set $\displaystyle{\beta _{k}=0}$. near $\displaystyle{\rho=\infty}$, we have

$$\tag{3.10}
\begin{align}
q_{k} & =\gamma _{k}\rho ^{-\frac{1}{2}(1+\sqrt{ (d-3)^{2}+4\mu ^{2} })}+\delta _{k}\rho ^{-\frac{1}{2}(1-\sqrt{ (d-3)^{2}+4\mu ^{2} })}
\end{align}
$$

we require that the solution gives finite energy, this implies $\displaystyle{\delta _{k}=0}$. solutions satisfies these asymptotic behavior is

$$\tag{3.11}
\begin{align}
q_{k} & =\mathcal{N}_{k}\rho ^{j_{k}+(d-2)/2}(1+\rho ^{2})^{n-\omega _{k}/2}{}_{2}F_{1}\left( -n,-n+\omega _{k};j_{k}+\frac{d-1}{2};\frac{\rho ^{2}}{1+\rho ^{2}} \right)
\end{align}
$$

with energy

$$\tag{3.12}
\begin{align}
\omega _{k} & =2n+j_{k}+\frac{d-1}{2}+\frac{1}{2}\sqrt{ (d-3)^{2}+4\mu ^{2} }
\end{align}
$$

where $\displaystyle{n\in \mathbb{N}}$. the Breitenlohner-Freedman bound for Proca field is given by

$$\tag{3.13}
\begin{align}
\mu ^{2} & \geq -\frac{1}{4}(d-3)^{2}
\end{align}
$$

for comparison, the Breitenlohner-Freedman bound for scalar field is given by $\displaystyle{\mu ^{2}\geq -\frac{1}{4}(d-1)^{2}}$. and we conjecture that for spin-$\displaystyle{s}$ field, the Breitenlohner-Freedman bound is given by $\displaystyle{\mu ^{2}\geq -\frac{1}{4}(d-1-2s)^{2}}$.

---

in $\displaystyle{d=3}$ there is no such thing as $\displaystyle{\mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}}$, and $\displaystyle{\mathbf{Y}^{(\mathrm{e})}_{\ell \mathbf{m},i}}$ is the only vector spherical harmonics, proportional to $\displaystyle{e^{im\phi}}$. the good news is that in generic $\displaystyle{d}$, the component $\displaystyle{\chi}$ corresponding to $\displaystyle{\mathbf{Y}^{(\mathrm{m})}_{\ell \mathbf{m},i}}$ decouples from other components, so our discussion above just needs a little modification. the problem is that 

