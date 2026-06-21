in this file we will solve for Green function and compare the result with [[Articles/Quantization in AdS/Proca-Chern-Simons/correlation function|correlation function]]. we first solve for the Green function of free scalar, then review the bitensor formalism, and then the Green function of Proca theory, finally the Proca-Chern-Simons theory.

in the following discussion we will use the global coordinate of $\displaystyle{\mathrm{AdS}_{3}}$

$$\begin{align}
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

in the Euclidean signature, where $\displaystyle{\tau =it}$.

---

# scalar

consider the scalar field in AdS3 with action

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\frac{1}{2}\mu ^{2}\phi ^{2}\right)
\end{align}$$

the eom is given by

$$\begin{align}
\nabla ^{2}\phi-\mu ^{2}\phi & =0
\end{align}$$

and then the Green function satisfies

$$\begin{align}
(\nabla ^{2}-\mu ^{2})G(x,x') & =-\delta ^{3}(x-x')
\end{align}$$

since the $\displaystyle{\mathrm{AdS}_{3}}$ is maximally symmetric, the Green function only depends on geodesic distance $\displaystyle{\sigma(x,x')}$ between $\displaystyle{x}$ and $\displaystyle{x'}$

$$\begin{align}
\cosh \sigma(x,x') & =\sqrt{ 1+r^{2} }\sqrt{ 1+r'^{2} }\cosh(\tau-\tau')-rr'\cos(\phi-\phi')
\end{align}$$

the Laplacian acting on a function depending only on geodesic distance $\sigma$ is given by

$$\begin{align}
\nabla ^{2}G(\sigma) & =\frac{1}{\sinh ^{2}\sigma}\partial _{\sigma}(\sinh ^{2}\sigma \partial _{\sigma}G)
\end{align}$$

the eom for $\displaystyle{x\neq x'}$ becomes

$$\begin{align}
G''(\sigma)+2\coth \sigma G'(\sigma)-\mu ^{2}G(\sigma)=0
\end{align}$$

the solution is given by

$$\begin{align}
G(\sigma) & =C_{1}e^{-\sqrt{ 1+\mu ^{2} }\sigma}\mathrm{csch}\sigma+C_{2}e^{\sqrt{ 1+\mu ^{2} }\sigma}\mathrm{csch}\sigma
\end{align}$$

we pick the solution that decays at infinity due to the boundary condition, so $\displaystyle{C_{2}=0}$. when $\displaystyle{\sigma\to 0}$, we have

$$\begin{align}
G(\sigma) & =\frac{C}{\sigma}
\end{align}$$

using $\displaystyle{\nabla ^{2} \frac{1}{r}=-4\pi \delta ^{3}(x)}$, we integrate the equation $\displaystyle{(\nabla ^{2}-\mu ^{2})G=-\delta}$ over a small ball to find $\displaystyle{-4\pi C=-1}$, so $\displaystyle{C=\frac{1}{4\pi}}$. the final result is

$$\begin{align}
G(\sigma) & =\frac{1}{4\pi}\frac{e^{-(\Delta -1)\sigma}}{\sinh \sigma}
\end{align}$$

# Proca

consider the Proca action in $\displaystyle{\mathrm{AdS}_{3}}$

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

the eom is given by

$$\begin{align}
\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu} & =0
\end{align}$$

take a divergence we have

$$\begin{align}
-\mu ^{2}\nabla _{\nu}A^{\nu}=0\implies \nabla _{\nu}A^{\nu}=0
\end{align}$$

thus the Green function satisfies

$$\begin{align}
\Delta _{\mu}^{~\nu}G_{\nu \nu'}(x,x') & =-\left( g_{\mu \nu'}-\frac{\nabla _{\mu}\nabla _{\nu'}}{\nabla ^{2}} \right)\delta ^{3}(x-x') \\
\nabla ^{\mu}G_{\mu \nu'}(x,x') & =\nabla ^{\nu'}G_{\mu \nu'}=0
\end{align}$$

where

$$\begin{align}
\Delta _{\mu}^{~\nu} & =-(\nabla ^{2}+2-\mu ^{2})\delta _{\mu}^{~\nu}
\end{align}$$

since the $\displaystyle{\mathrm{AdS}_{3}}$ is maximally symmetric, the Green function can be expressed as

$$\begin{align}
G_{\mu \nu'}(x,x') & =\mathcal{F}(u)\nabla _{\mu}\nabla _{\nu'}u+\nabla _{\mu}\nabla _{\nu'}\mathcal{S}(u)
\end{align}$$

here $\displaystyle{u=\cosh \sigma-1}$.
