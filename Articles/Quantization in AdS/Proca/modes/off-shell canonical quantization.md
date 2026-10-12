We consider a free scalar in $\displaystyle{\mathrm{AdS}_{3}}$ with metric

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

(here we abuse a little bit the notation...). In the off-shell formalism, we expand $\displaystyle{\phi}$ in terms of a complete set of modes $\displaystyle{\phi _{n}(r,\phi)}$ as

$$\begin{align}
\phi(x) & =\sum _{n}a_{n}(t)\phi _{n}(r,\phi)
\end{align}$$

here $\displaystyle{\phi _{n}(\rho,\phi)}$ are the spatial wavefunctions satisfying

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\phi _{n}+\frac{1+3r^{2}}{r}\partial _{r}\phi _{n}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi _{n}-\mu ^{2}\phi _{n}=-\frac{\omega _{n}^{2}\phi _{n}}{1+r^{2}}
\end{align}$$

here $\displaystyle{\omega _{n}^{2}}$ are the eigenvalues of the spatial Laplacian. We have known from usual canonical quantization that

$$\begin{align}
\phi _{nm}(r,\phi) & =C_{nm}e^{im\phi}r^{m}(1+r^{2})^{-(\Delta+m)/2}P_{n}^{(\Delta-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\Delta & =1+\sqrt{ 1+\mu ^{2} } \\
m & \in \mathbb{Z},n\in \mathbb{N} \\
\omega _{nm}^{2} & =(\Delta+m+2n)^{2}
\end{align}$$

here $\displaystyle{C_{nm}}$ are normalization constants determined by

$$\begin{align}
\int _{\Sigma} \mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\phi _{n_{1}m_{1}}(r,\phi)\phi ^{*} _{n_{2}m_{2}}(r,\phi) & =\frac{1}{2\omega _{n_{1}m_{1}}}\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}} \\
\implies C_{nm} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

upon substituting the mode expansion into the action, we obtain

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}) \\
 & =\frac{1}{2}\sum ^{\infty}_{n=0}\sum _{m=-\infty}^{\infty} \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dot{a}^{2}_{nm}-\omega _{nm}^{2}a^{2}_{nm}\right)
\end{align}$$

which is a collection of decoupled harmonic oscillators.

---

For Proca field, the action is

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{-g}\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}-\frac{1}{2}\mu^{2}A_{\mu}A^{\mu}\right)
\end{align}$$
