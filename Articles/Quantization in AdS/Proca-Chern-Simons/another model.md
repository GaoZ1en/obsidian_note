in this note we will consider a "deformed" action

$$\begin{align}
S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{1}{2}\alpha(\nabla _{\mu}A^{\mu})^{2}\right)
\end{align}$$

with nonvanishing $\displaystyle{\alpha}$. in the spacetime background

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

## CPS formalism

take a variation of the action

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-F_{\mu \nu}\nabla ^{\mu}\delta A^{\nu}-\mu ^{2}A_{\mu}\delta A^{\mu}-\alpha(\nabla _{\rho}A^{\rho})\nabla _{\mu}\delta A^{\mu}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }E_{\mu}\delta A^{\mu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E_{\mu} & =\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu}+\alpha\nabla _{\mu}(\nabla _{\nu}A^{\nu}) \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\alpha(\nabla _{\nu}A^{\nu})\delta A^{\mu}\right) \\
\implies \omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\mu \nu}\wedge \delta A_{\nu}+\alpha \nabla _{\nu}\delta A^{\nu}\wedge \delta A^{\mu}\right)
\end{align}$$

the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ is defined as the space of solutions to the equations of motion $E_{\mu}=0$ that satisfies asymptotic boundary conditions

$$\begin{align}
A^{t} & =\mathcal{o}(r^{-2}) \\
A^{r} & =\mathcal{o}(r^{-1}) \\
A^{\phi} & =\mathcal{o}(r^{-2})
\end{align}$$

## solving eom

take a divergence of the equation of motion

$$\begin{align}
\left( \nabla ^{2}-\frac{\mu ^{2}}{\alpha} \right)(\nabla _{\mu}A^{\mu}) & =0
\end{align}$$

we therefore decompose the vector field into a transverse part and a longitudinal part

$$\begin{align}
A_{\mu} & =A_{\mu}^{\perp}+\nabla _{\mu}\phi \\
\end{align}$$

the eom therefore decomposes into two decoupled sectors, a transverse Proca sector and a longitudinal scalar sector. Correspondingly,

$$\begin{align}
\nabla _{\mu}F^{\perp \mu \nu}-\mu ^{2}A^{\perp \nu} & =0 \\
(\alpha \nabla ^{2}-\mu ^{2})\chi & =0 \\
\implies (\mathcal{D}+\mu)(\mathcal{D}-\mu)A^{\perp} & =0 \\
\left( \nabla ^{2}-\frac{\mu ^{2}}{\alpha} \right)\chi & =0
\end{align}$$

where we have defined $\displaystyle{F^{\perp}_{\mu \nu}=\nabla _{\mu}A_{\nu}^{\perp}-\nabla _{\nu}A_{\mu}^{\perp}}$ and $\displaystyle{\chi=\nabla ^{2}\phi}$. therefore we have three sectors of solutions:

1. the transverse Proca sector with mass $\displaystyle{\mu}$;

$$\begin{align}
A_{+,n,\bar{n}}^{\perp} & \propto \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1} \\
A_{-,n,\bar{n}}^{\perp} & \propto \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}
\end{align}$$

1. the longitudinal scalar sector with mass $\displaystyle{\mu ^{2}/\alpha}$;

$$\begin{align}
\chi_{n,\bar{n}} & \propto \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \frac{e^{-i\Delta t}}{(1+r^{2})^{\Delta /2}} \\
\Delta & =1+\sqrt{1+\frac{\mu ^{2}}{\alpha}}
\end{align}$$

the BF bound therefore requires $\displaystyle{\alpha >0}$ or $\displaystyle{\alpha \leq -\mu ^{2}}$ for the longitudinal sector to be stable. the transverse Proca sector is unaffected by the deformation and is always stable.

## ghost

for the longitudinal sector, the eom gives

$$\begin{align}
-\mu ^{2}\nabla _{\mu}\phi+\alpha \nabla _{\mu}\chi & =0 \\
\implies \nabla _{\mu}(\alpha \chi-\mu ^{2}\phi) & =0 \\
\implies \phi & =\frac{\alpha}{\mu ^{2}}\chi
\end{align}$$

when onshell, the symplectic form reduces to

$$\begin{align}
\omega & \approx\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\perp \mu \nu}\wedge \left( \delta A_{\nu}^{\perp}+\frac{\alpha}{\mu ^{2}}\nabla _{\nu}\delta \chi \right)+\alpha \delta \chi \wedge\left( \delta A^{\perp \mu}+\frac{\alpha}{\mu ^{2}}\nabla ^{\mu}\chi \right)\right) \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\perp \mu \nu}\wedge \delta A_{\nu}^{\perp}+\frac{\alpha ^{2}}{\mu ^{2}}\delta \chi \wedge \nabla ^{\mu}\chi\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}\left( \frac{\alpha}{\mu ^{2}}\delta F^{\perp \mu \nu}\wedge \delta \chi\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\perp \mu \nu}\wedge \delta A_{\nu}^{\perp}+ \frac{\alpha ^{2}}{\mu ^{2}}\delta \chi \wedge \nabla ^{\mu}\chi\right)
\end{align}$$

which decomposes into a transverse Proca sector and a longitudinal scalar sector. the longitudinal scalar sector has a wrong sign kinetic term and is therefore a ghost (notice that the "correct" symplectic form of a scalar field $\chi$ should be $\displaystyle{\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu} \nabla ^{\mu}\delta \chi \wedge\delta \chi}$, the extra factor of $\displaystyle{-\alpha ^{2}/\mu ^{2}}$ changes the sign of the kinetic term). the transverse Proca sector is unaffected by the deformation and is ghost-free.
