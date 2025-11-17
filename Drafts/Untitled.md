# heat kernel for thermal AdS3 Proca field

the action

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }A_{\mu}\left(-g^{\mu \nu}\nabla ^{2}+R^{\mu \nu}+\mu ^{2}g^{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\right)A_{\nu}
\end{align}$$

since we have the the eom

$$\begin{align}
(\nabla ^{2}+2)A_{\mu} & =\mu ^{2}A_{\mu} \\
\nabla _{\mu}A^{\mu} & =0
\end{align}$$

the heat kernel should satisfies

$$\begin{align}
\Delta _{\mu}^{~\nu}K_{\nu \nu'}(t,x,x') & =-\partial _{t}K_{\mu \nu'}(t,x,x') \\
\Delta _{\mu}^{~\nu} & =-(\nabla ^{2}+2-\mu ^{2})\delta _{\mu}^{~\nu}+\nabla _{\mu}\nabla ^{\nu} \\
\nabla ^{\mu}K_{\mu \nu'} & =\nabla ^{\nu'}K_{\mu \nu'}=0
\end{align}$$

and the initial condition should be modified to

$$\begin{align}
K_{\mu \nu'}(0,x,x') & =g_{\mu \nu'}\delta ^{3}(x,x')+\frac{\nabla _{\mu}\nabla _{\nu'}}{\nabla ^{2}}\delta ^{3}(x,x')
\end{align}$$

we still make the ansatz

$$\begin{align}
K_{\mu \nu'}(t,x,x') & =F(t,u)\nabla _{\mu}\nabla _{\nu'}u+\nabla _{\mu}\nabla _{\nu'}S(t,u)
\end{align}$$

thus the heat kernel equation reduces to

$$\begin{align}
\nabla ^{2}F+F-\mu ^{2}F & =\partial _{t}F \\
\nabla ^{2}S-\mu ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v & =\partial _{t}S
\end{align}$$

with boundary conditions

$$\begin{align}
F(0,u) & =-\delta ^{3}(x,x') \\
S(0,u) & =\frac{1}{\nabla ^{2}}\delta ^{3}(x,x') \\
 & =-\frac{1}{4\pi}\coth r
\end{align}$$

the solution to these equations with the given boundary conditions is

$$\begin{align}
F & = -\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}} \frac{r}{\sinh r} \\
S & =-\frac{2}{(4\pi)^{3/2}\sqrt{ t }} \frac{\cosh r}{\sinh r} \int ^{r}_{0} e^{-\frac{x^{2}}{4t}}
\end{align}$$

the trace of the heat kernel is given by
$$\begin{align}
K(t) &= \mathrm{Tr}(K_{\mu \nu}(t,x,x)) \\
 & =-3\mathrm{Vol}(\mathbb{H}_{3})(F+\partial _{u}S)|_{u=0} \\
 & =3\mathrm{Vol}(\mathbb{H}_{3})\left(\frac{2}{3}\frac{e^{-\mu ^{2}t}}{(4\pi t)^{3/2}}+\frac{4}{3}\frac{e^{-\mu ^{2}t}}{(4\pi)^{3/2}\sqrt{ t }}\right)
\end{align}$$

the partition function becomes

$$\begin{align}
\ln Z & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}K(t) \\
 & =\frac{3}{2}\mathrm{Vol}(\mathbb{H}_{3})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\left(\frac{2}{3}\frac{e^{-\mu ^{2}t}}{(4\pi t)^{3/2}}+\frac{4}{3}\frac{e^{-\mu ^{2}t}}{(4\pi)^{3/2}\sqrt{ t }}\right) \\
 & =\mathrm{Vol}(\mathbb{H}_{3}) \frac{1}{6\pi}(\mu ^{3}-3\mu)
\end{align}$$

and then the 1-loop partition function in thermal AdS3 is

$$\begin{align}
\ln Z & =-\frac{1}{2}\ln \det \Delta _{\mu}^{~\nu} \\
 & =-\frac{3}{2}\mathrm{Vol}(\mathbb{H}_{3}/\mathbb{Z})\int ^{\infty}_{0}\frac{\mathrm{d}t}{t}(F+\partial _{u}S)|_{u=0} \\
 & +\sum ^{\infty}_{n=1} \frac{(2\pi \tau _{2})(2\pi)}{4|\sin \pi n\tau|^{2}}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\int ^{\infty}_{2\pi \tau _{2}}\mathrm{d}r\sinh r((F+\partial _{u}S)A_{\gamma ^{n}}+\partial _{u}^{2}SB_{\gamma ^{n}}) \\
 & =\sum ^{\infty}_{n=1} \frac{q^{n}+\bar{q}^{n}}{n|1-q^{n}|}|q|^{n\mu} \\
\implies Z & =\prod ^{\infty}_{\ell,\ell'=0} \frac{1}{(1-q^{\ell+\mu+1}\bar{q}^{\ell'+\mu})(1-q^{\ell+\mu}\bar{q}^{\ell'+\mu+1})}
\end{align}$$

here we are not necessary to substract the non-physical longitudinal mode contribution since we already imposed the transversality condition in the heat kernel equation.

