in this note we will focus only on the bulk modes. we write

$$\begin{align}
\frac{1}{2}\varepsilon _{\mu \nu \rho}F^{\nu \rho} & =\nabla _{\mu}\phi
\end{align}$$

and the action can be rewritten as

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\nabla _{\mu}\phi \nabla ^{\mu}\phi
\end{align}$$

which is the action for a massless scalar. the Casimir

$$\begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi _{1}}+\mathcal{L}_{\xi _{1}}\mathcal{L}_{\xi _{-1}}\right) \\
\mathcal{\bar{C}} & =\mathcal{L}_{\bar{\xi}_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}+\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\xi _{1}}\right)
\end{align}$$

then

$$\begin{align}
\mathcal{C}\phi=\mathcal{\bar{C}}\phi & \propto\nabla ^{2}\phi \approx 0
\end{align}$$

suppose we have the primary state $\displaystyle{\ket{\psi}}$ with conformal weight $\displaystyle{(h,\bar{h})}$, thus we have

$$\begin{align}
C\ket{\psi}  & =h(h-1)\ket{\psi} =0 \\
\bar{C}\ket{\psi}  & =\bar{h}(\bar{h}-1)\ket{\psi} =0
\end{align}$$

which gives $\displaystyle{(h,\bar{h})=(0,0),(0,1),(1,0),(1,1)}$. scalar modes should be spinless, so we neglect the $\displaystyle{(0,1)}$ and $\displaystyle{(1,0)}$ branches.

1. $\displaystyle{(h,\bar{h})=(0,0)}$, $\displaystyle{C_{1}+C_{2}\log \dfrac{r}{\sqrt{ 1+r^{2} }}}$.
1. $\displaystyle{(h,\bar{h})=(1,1)}$, $\displaystyle{\phi _{0,0}= \frac{1}{\sqrt{ 2\pi }} \frac{e^{-2it}}{1+r^{2}}}$ and its descendants $\displaystyle{\phi _{n,\bar{n}}=\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{0,0}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }}}$.

the duality relation $\displaystyle{\frac{1}{2}\varepsilon _{\mu \nu \rho}F^{\nu \rho} =\nabla _{\mu}\phi}$ maps these scalar modes to the Maxwell modes discussed in [[Articles/Quantization in AdS/electric field/solving modes/highest weight|highest weight]]. since the relation is covariant under the $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ isometries, it is enough to identify the primary and then generate the descendants by the same lowering operations, modulo gauge transformations. for the primary, one convenient gauge representative is

$$\begin{align}
A^{t}_{0,0} & =0, &  A^{r}_{0,0} & =0, & A^{\phi}_{0,0} & =-\frac{i}{\sqrt{ 2\pi }} \frac{e^{-2it}}{1+r^{2}}
\end{align}$$

this is the same $\displaystyle{(1,1)}$ primary as in [[Articles/Quantization in AdS/electric field/solving modes/highest weight|highest weight]], up to the overall phase fixed by the duality convention. the descendant potentials can therefore be written as

$$\begin{align}
A_{n,\bar{n}}^{\mu} & =\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}A_{0,0}^{\mu}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }}
\end{align}$$

with the usual freedom to add pure-gauge terms.
