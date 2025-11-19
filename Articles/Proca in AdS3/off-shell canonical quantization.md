we consider a free scalar in $\displaystyle{\mathrm{AdS}_{3}}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the action of a free scalar is given by

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2})
\end{align}$$

the boundary condition for the action to be well-defined is that near the boundary $\displaystyle{r\to \infty}$ and be regular at 0the origin $\displaystyle{r\to 0}$, the scalar field behaves as

$$\begin{align}
\phi & =o(r^{-1}), r\to \infty \\
\phi & =\mathcal{O}(r^{0}), r\to 0
\end{align}$$

(here we abuse a little bit the notation...). in the off-shell formalism, we expand $\displaystyle{\phi}$ in terms of a complete set of modes $\displaystyle{\phi _{n}(r,\phi)}$ as

$$\begin{align}
\phi(x) & =\sum _{n}a_{n}(t)\phi _{n}(r,\phi)
\end{align}$$

here $\displaystyle{\phi _{n}(\rho,\phi)}$ are the spatial wavefunctions satisfying

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi _{n}+\frac{1+3r^{2}}{r}\partial _{r}\phi _{n}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi _{n}-\mu ^{2}\phi _{n}=-\frac{\omega _{n}^{2}\phi _{n}}{1+r^{2}}
\end{align}$$

here $\displaystyle{\omega _{n}^{2}}$ are the eigenvalues of the spatial Laplacian. we have known from usual canonical quantization that

$$\begin{align}
\phi _{nm}(r,\phi) & =C_{nm}r^{m}(1+r^{2})^{-(\Delta+m)/2}{}_{2}F_{1}\left(-n,\Delta+n+m;\Delta; \frac{1}{1+r^{2}}\right)e^{im\phi} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} } \\
m & \in \mathbb{Z},n\in \mathbb{N} \\
\omega _{nm}^{2} & =(\Delta+m+2n)^{2}
\end{align}$$

here $\displaystyle{C_{nm}}$ are normalization constants determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\phi _{n_{1}m_{1}}(r,\phi)\phi ^{*} _{n_{2}m_{2}}(r,\phi) & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

(this inner product can be derived from the KG inner product up to a factor) upon substituting the mode expansion into the action, we obtain

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}) \\
 & =\frac{1}{2}\sum ^{\infty}_{n=0}\sum _{m=-\infty}^{\infty} \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dot{a}^{2}_{nm}-\omega _{nm}^{2}a^{2}_{nm}\right)
\end{align}$$

which is a collection of decoupled harmonic oscillators.

---

may be in the mode expansion we should assume the mode $\displaystyle{\phi _{n}}$ satisfies

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi _{n}+\frac{1+3r^{2}}{r}\partial _{r}\phi _{n}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi _{n}-\mu ^{2}\phi _{n}=-\lambda _{n}\phi _{n}
\end{align}$$

here $\displaystyle{\lambda _{n}}$ are some eigenvalues of the spatial Laplacian. make the ansatz $\displaystyle{\phi=e^{im\phi}R(r)}$, then we have

$$\begin{align}
(1+r^{2})R''(r)+\frac{1+3r^{2}}{r}R'(r)+\left( -\frac{m^{2}}{r^{2}}+\tilde{\lambda} \right)R(r) & =0
\end{align}$$

here $\displaystyle{\tilde{\lambda}=\lambda-\mu ^{2}}$. change variable to

$$\begin{align}
r=\sinh \eta
\end{align}$$

the equation becomes

$$\begin{align}
\partial _{\eta}^{2}R+\coth \eta \partial _{\eta}R+\left( \tilde{\lambda}-\frac{m^{2}}{\sinh ^{2}\eta} \right)R & =0
\end{align}$$

this is the associated Legendre equation. the general solution is given by

$$\begin{align}
R(\eta) & =A P^{|m|}_{-\frac{1}{2}+ik}(\cosh \eta)+B Q^{|m|}_{-\frac{1}{2}+ik}(\cosh \eta)
\end{align}$$

here $\displaystyle{P^{\mu}_{\nu}(x),Q^{\mu}_{\nu}(x)}$ are the associated Legendre functions of the first and second kind respectively, and $\displaystyle{k\geqslant 0}$ with $\displaystyle{\tilde{\lambda}=k^{2}+\frac{1}{4}}$. to make $\displaystyle{R(\eta)}$ regular at $\eta =0$, we need to set $\displaystyle{B=0}$. then the whole solution becomes

$$\begin{align}
\phi _{mk} & =C_{mk}e^{im\phi}P^{|m|}_{-\frac{1}{2}+ik}(\sqrt{ 1+r^{2} }), k\in \mathbb{R}^{+}
\end{align}$$

here $\displaystyle{C_{mk}}$ are normalization constants determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\phi _{m_{1}k_{1}}(r,\phi)\phi ^{*} _{m_{2}k_{2}}(r,\phi) & =\delta (k_{1}-k_{2})\delta _{m_{1}m_{2}}
\end{align}$$

notice that

$$\begin{align}
\int ^{\infty}_{1} \mathrm{d}x P^{|m|}_{-\frac{1}{2}+ik}(x)\left[ P^{|m|}_{-\frac{1}{2}+ik'}(x) \right]^{*}\mathrm{d}x & = \frac{\delta(k-k')}{N(k,m)} \\
N(k,m) & =\frac{\pi}{2k\tanh(\pi k)}\left|\Gamma\left( \frac{1}{2}+|m|+ik \right)\right|^{2} \\
 & = \frac{\pi ^{2}}{2k\sinh(\pi k)}\prod ^{|m|-1}_{j=0} \left[ k^{2}+\left( j+\frac{1}{2} \right)^{2} \right]
\end{align}$$

we can choose

$$\begin{align}
C_{mk} & = N(k,m)^{-1/2}
\end{align}$$

these eigenfunction satisfies the completeness relation

$$\begin{align}
\sum ^{\infty}_{m=-\infty} \int _{0}^{\infty} \mathrm{d}k \phi _{km}(\eta,\phi)\phi ^{*}_{km}(\eta',\phi') & =\frac{\delta(\eta-\eta')}{\sinh \eta}\delta(\phi-\phi')
\end{align}$$

then we can expand the field $\displaystyle{\phi(t,r,\phi)}$ as

$$\begin{align}
\phi(t,r,\phi) & =\sum _{m=-\infty}^{\infty} \int _{0}^{\infty} \mathrm{d}ka_{mk}(t)\phi _{mk}(r,\phi)
\end{align}$$

upon substituting the mode expansion into the action, we obtain

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}) \\
 & =\frac{1}{2}\sum _{m=-\infty}^{\infty} \int _{0}^{\infty} \mathrm{d}k \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dot{a}^{2}_{mk}-\lambda (k)a^{2}_{mk}\right) \\
\lambda(k) & =\frac{1}{4}+\mu ^{2}+k^{2}, k\in \mathbb{R}
\end{align}$$

notice that if we drop the normalization constant $\displaystyle{C_{mk}}$, we will get the usual spectral density...

**actually here we adopt a different boundary condition at infinity comparing to the usual canonical quantization, so the eigenvalues $\displaystyle{\lambda(k)}$ form a continuous spectrum rather than a discrete one.**

now let us come back to the original eigenvalue problem of the spatial Laplacian,

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi+\frac{1+3r^{2}}{r}\partial _{r}\phi+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi-\mu ^{2}\phi&=-\lambda\phi
\end{align}$$

we expand the eigenfunctions in angular modes

$$\begin{align}
\phi(r,\phi) & = e^{im\phi}R(r), \qquad m\in\mathbb Z, 
\end{align}$$

then the eigenvalue equation reduces to the radial equation

$$\begin{align}
(1+r^{2})R''(r)+\frac{1+3r^{2}}{r}R'(r)+\left(\tilde{\lambda}-\frac{m^{2}}{r^{2}}\right)R(r) & =0
\end{align}$$

here we introduce $\displaystyle{\tilde{\lambda}=\lambda-\mu ^{2}}$.

$$\begin{align}
r & =\tan \rho \\
z & =\cos ^{2}\rho \\
z & =\frac{1}{1+r^{2}} \\
1-z & =\frac{r^{2}}{1+r^{2}}
\end{align}$$

$$\begin{align}
\partial _{\rho}^{2}R+\frac{1}{\sin \rho \cos \rho}\partial _{\rho}R+\left( \frac{\tilde{\lambda}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin^{2}\rho} \right)R & =0 \\
4z(1-z)\partial _{z}^{2}R-4z\partial _{z}R+\left( \frac{\tilde{\lambda}}{z}-\frac{m^{2}}{1-z} \right)R & =0
\end{align}$$

$$\begin{align}
R & =Az^{(1-\sqrt{ 1-\lambda })/2}(1-z)^{m/2}{}_{2}F_{1}\left(\frac{1}{2}(1+m-\sqrt{ 1-\lambda }),\frac{1}{2}(1+m-\sqrt{ 1-\lambda }),1-\sqrt{ 1-\lambda },z\right) \\
 & +Bz^{(1+\sqrt{ 1-\lambda })/2}(1-z)^{m/2}{}_{2}F_{1}\left(\frac{1}{2}(1+m+\sqrt{ 1-\lambda }),\frac{1}{2}(1+m+\sqrt{ 1-\lambda }),1+\sqrt{ 1-\lambda },z\right)
\end{align}$$

to satisfy the boundary condition at infinity and regularity at the origin, however it is impossible to choose $\displaystyle{\lambda}$ to make the solution well-behaved at both boundaries, the eigenvalue problem and the boundary condition are incompatible.


