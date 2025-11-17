we consider a free scalar in $\displaystyle{\mathrm{AdS}_{3}}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the action of a free scalar is given by

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2})
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

here $\displaystyle{P^{|m|}_{\nu}(x),Q^{|m|}_{\nu}(x)}$ are the associated Legendre functions of the first and second kind respectively, and $\displaystyle{k\geqslant 0}$ with $\displaystyle{\tilde{\lambda}=k^{2}+\frac{1}{4}}$. to make $\displaystyle{R(\eta)}$ regular at $\eta =0$, we need to set $\displaystyle{B=0}$. then the whole solution becomes

$$\begin{align}
\phi _{mk} & =C_{mk}e^{im\phi}P^{|m|}_{-\frac{1}{2}+ik}(\sqrt{ 1+r^{2} })
\end{align}$$

here $\displaystyle{C_{mk}}$ are normalization constants determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\phi _{m_{1}k_{1}}(r,\phi)\phi ^{*} _{m_{2}k_{2}}(r,\phi) & =\delta (k_{1}-k_{2})\delta _{m_{1}m_{2}}
\end{align}$$

$$\begin{align}
 & \int _{0}^{2\pi} \mathrm{d}\phi \int ^{\infty}_{0}\mathrm{d}\eta \sinh \eta C_{m_{1}k_{1}}C_{m_{2}k_{2}}^{*}e^{i(m_{1}-m_{2})\phi}P^{|m_{1}|}_{-\frac{1}{2}+ik_{1}}(\cosh \eta)P^{|m_{2}|}_{-\frac{1}{2}+ik_{2}}(\cosh \eta) \\
= & 2\pi C_{mk_{1}}C_{mk_{2}}^{*}\delta _{m_{1}m_{2}}\int ^{\infty}_{0} \mathrm{d}\eta \sinh \eta P^{|m_{1}|}_{-\frac{1}{2}+ik_{1}}(\cosh \eta)P^{|m_{1}|}_{-\frac{1}{2}+ik_{2}}(\cosh \eta) \\
= & 2\pi C_{mk_{1}}C_{mk_{2}}^{*}\delta _{m_{1}m_{2}}\int ^{\infty}_{1} \mathrm{d}x P^{|m_{1}|}_{-\frac{1}{2}+ik_{1}}(x)P^{|m_{1}|}_{-\frac{1}{2}+ik_{2}}(x) \\
\end{align}$$


notice that

$$\begin{align}
\int ^{\infty}_{1} \mathrm{d}x P^{m}_{-\frac{1}{2}+ik}(x)P^{m}_{-\frac{1}{2}+ik'}(x)\mathrm{d}x & = \frac{\delta(k-k')}{N(k,m)} \\
N(k,m) & =
\end{align}$$

we can choose

$$\begin{align}
C_{mk} & =\dots
\end{align}$$

these eigenfunction satisfies the completeness relation

$$\begin{align}
\sum ^{\infty}_{m=-\infty} \int _{0}^{\infty} \mathrm{d}\mu(k) \phi _{km}(\eta,\phi)\phi ^{*}_{km}(\eta',\phi') & =\delta(\eta-\eta')\delta(\phi-\phi')
\end{align}$$

here $\displaystyle{\mathrm{d}\mu(k)}$ is the Plancherel measure (or spectral density?) which is given by

$$\begin{align}
\mathrm{d}\mu(k) & =
\end{align}$$



then we can expand the field $\displaystyle{\phi(t,r,\phi)}$ as

$$\begin{align}
\phi(t,r,\phi) & =\sum _{m=-\infty}^{\infty} \int _{0}^{\infty} \mathrm{d}\mu(k) a_{mk}(t)\phi _{mk}(r,\phi)
\end{align}$$

upon substituting the mode expansion into the action, we obtain

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}) \\
 & =\frac{1}{2}\sum _{m=-\infty}^{\infty} \int _{0}^{\infty} \mathrm{d}\mu(k) \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dot{a}^{2}_{mk}-\lambda (k)a^{2}_{mk}\right) \\
\lambda(k) & =\frac{1}{4}+\mu ^{2}+k^{2}, k\geqslant 0
\end{align}$$
$$\begin{align}

\end{align}$$

