in this note we will consider the BRST quantization of the Maxwell theory in global $\displaystyle{\mathrm{AdS}_{3}}$. the original action is given by

$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
\end{align}$$

we choose the covariant gauge $\displaystyle{\nabla _{\mu}A^{\mu}=0}$. adding the gauge fixing term and the ghost action, we have

$$\begin{align}
S_{\text{total}} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g}\left[-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}\left(\nabla _{\mu}A^{\mu}\right)^{2}-\bar{c}\nabla ^{2}c\right].
\end{align}$$

the BRST transformation of the field contents are given by

$$\begin{align}
sA_{\mu} & =\nabla _{\mu}c \\
sc & =0 \\
s\bar{c} & =-\frac{1}{\xi}\nabla _{\mu}A^{\mu}
\end{align}$$

we will discuss it later. take a variation of the action, we have

$$\begin{align}
\delta S_{\text{total}} & =\int _{M}\mathrm{d}^{3}x\sqrt{-g}\left(E_{\mu}\delta A^{\mu}+\delta \bar{c}E_{c}+E_{\bar{c}}\delta c\right)+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E_{\mu} & =\nabla ^{\nu}F_{\nu \mu}+\frac{1}{\xi}\nabla _{\mu}(\nabla _{\nu}A^{\nu}) \\
E_{c} & =-\nabla ^{2}c \\
E_{\bar{c}} & =-\nabla ^{2}\bar{c} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{1}{\xi}\nabla _{\nu}A^{\nu}\delta A^{\mu}-\nabla ^{\mu}\bar{c}\delta c+\bar{c}\nabla ^{\mu}\delta c\right) \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\mu \nu}\wedge \delta A_{\nu}+\frac{1}{\xi}\nabla _{\nu}\delta A^{\nu}\wedge \delta A^{\mu}-\nabla ^{\mu}\delta\bar{c}\wedge \delta c+\delta\bar{c}\wedge \nabla ^{\mu}\delta c\right)
\end{align}$$

## modes

we will choose $\displaystyle{\xi=1}$ in this section. the equations are

$$\begin{align}
E_{\mu} & =(\nabla ^{2}+2)A_{\mu}=0, \\
E_{c} & =-\nabla ^{2}c=0, \\
E_{\bar{c}} & =-\nabla ^{2}\bar{c}=0.
\end{align}$$

the equations commute with the global $\displaystyle{\mathrm{SL}(2,\mathbb{R})_{L}\times \mathrm{SL}(2,\mathbb{R})_{R}}$ isometries. therefore it is enough to solve the primary modes and generate descendants by the lowering generators $\displaystyle{\mathcal{L}_{\xi _{-1}}}$ and $\displaystyle{\mathcal{L}_{\bar{\xi}_{-1}}}$.

### ghost modes

the ghost and anti-ghost obey the massless scalar equation. the regular normalizable scalar primary is the $\displaystyle{(1,1)}$ primary

$$\begin{align}
\phi _{(1,1)} & =\frac{1}{\sqrt{ 2\pi }}\frac{e^{-2it}}{1+r^{2}}.
\end{align}$$

the descendants are

$$\begin{align}
\phi _{n,\bar{n}} & =\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{(1,1)}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }}, & n,\bar{n}\geq 0.
\end{align}$$

since ghosts are fermionic fields, the normalization condition is chosen to be

$$\begin{align}
(\phi,\phi)_{\text{gh}} & =iX_{\phi}\cdot X_{\bar{\phi}}\cdot \omega=1
\end{align}$$

### vector modes

we ignore the large gauge transformations for simplicity. the solutions can be summarized as the $\displaystyle{(1,1)}$ rep of the isometry group

$$\begin{align}
\psi _{(1,1)}^{\mu} & =\frac{1}{\sqrt{ 2\pi }} \frac{e^{-2it}}{1+r^{2}}\delta ^{\mu}_{\phi} \\
\psi _{n,\bar{n}}^{\mu} & =\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{(1,1)}^{\mu}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }}
\end{align}$$

## symplectic form


take the expansions

$$\begin{align}
A^{\mu} & =\sum _{n,\bar{n}=0}^{\infty} (a_{n,\bar{n}}\psi _{n,\bar{n}}^{\mu}+a^{\dagger}_{n,\bar{n}}\psi ^{*\mu}_{n,\bar{n}}),\\
c & =\sum _{n,\bar{n}=0}^{\infty}(c_{n,\bar{n}}\phi _{n,\bar{n}}+c_{n,\bar{n}}^{\dagger}\phi _{n,\bar{n}}^{*}), \\
\bar{c} & =\sum _{n,\bar{n}=0}^{\infty}(\bar{c}_{n,\bar{n}}\phi _{n,\bar{n}}+\bar{c}_{n,\bar{n}}^{\dagger}\phi _{n,\bar{n}}^{*}).
\end{align}$$

the symplectic form is

$$\begin{align}
\omega & =i\sum ^{\infty}_{n,\bar{n}=0} \left(\delta a^{\dagger}_{n,\bar{n}}\wedge \delta a_{n,\bar{n}}-\delta \bar{c}_{n,\bar{n}}^{\dagger}\wedge \delta c_{n,\bar{n}}-\delta c^{\dagger}_{n,\bar{n}}\wedge \delta \bar{c}_{n,\bar{n}}\right)
\end{align}$$

## BRST reduction

here we summarize the BRST transformation as a vector of the configuration space

$$\begin{align}
X_{\text{BRST}} & =\int \mathrm{d}^{3}x\sum _{I} s\phi ^{I} \frac{\delta}{\delta \phi ^{I}}
\end{align}$$

and act on the action (again, we choose $\displaystyle{\xi=1}$), we have

$$\begin{align}
X_{\text{BRST}}\cdot \delta S & =0
\end{align}$$

then the corresponding BRST charge is given by

$$\begin{align}
H_{\text{BRST}} & =X_{\text{BRST}}\cdot \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(F^{\mu \nu}+g^{\mu \nu}\nabla _{\rho}A^{\rho})\nabla _{\nu}c
\end{align}$$

expand this charge in terms of modes defined in the previous subsection,

$$\begin{align}
H_{\text{BRST}} & =0
\end{align}$$

*Maxwell theory is not a good example*...

