# $\displaystyle{\mathrm{AdS}_{d+1}}$

in this part we will consider a free scalar in the $\displaystyle{\mathrm{AdS}_{d+1}}$, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1+\frac{r^{2}}{L^{2}} \right)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+\frac{r^{2}}{L^{2}}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

where $\displaystyle{t\in(-\infty,+\infty)}$, $\displaystyle{r=[0,\infty)}$, $\displaystyle{\mathrm{d}\Omega _{d-1}^{2}}$ is the metric for unit sphere $\displaystyle{S^{d-1}}$. the eom for free scalar with mass $\displaystyle{\mu}$ is given by

$$\begin{align}
\Delta \phi-\mu ^{2}\phi & =\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi)-\mu ^{2}\phi \\
 & =-\frac{\partial _{t}^{2}\phi}{1+\frac{r^{2}}{L^{2}}}+\left( 1+\frac{r^{2}}{L^{2}} \right)\partial _{r}^{2}\phi+\frac{(d-1)+(d+1)\frac{r^{2}}{L^{2}}}{r}\partial _{r}\phi+\frac{1}{r^{2}}\Delta _{S^{d-1}}\phi-\mu ^{2}\phi=0 \\
\end{align}$$

make the ansatz $\displaystyle{\phi=e^{-i \omega t}Y_{\ell \mathbf{m}}(\Omega _{d-1})R(r)}$, where $\displaystyle{Y_{\ell \mathbf{m}}(\Omega _{d-1})}$ is the hyperspherical harmonics defined on $\displaystyle{S^{d-1}}$, which satisfy

$$\begin{align}
\Delta _{S^{d-1}}Y_{\ell \mathbf{m}}(\Omega _{d-1}) & =-\ell(\ell+d-2)Y_{\ell \mathbf{m}}(\Omega _{d-1})
\end{align}$$

where $\displaystyle{\ell}$ is the principal angular momentum quantum number and $\displaystyle{\mathbf{m}}$ represents the set of $\displaystyle{d-2}$ magnetic quantum numbers. for each eigenvalue $\displaystyle{-\ell(\ell+d-2)}$, the degeneracy is given by

$$\begin{align}
d_{\ell} & = \binom{\ell+d-1}{d-1} - \binom{\ell+d-3}{d-1} = \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}
\end{align}$$

then we have

$$\begin{align}
\left( 1+\frac{r^{2}}{L^{2}} \right)\partial _{r}^{2}R+\frac{(d-1)+(d+1)\frac{r^{2}}{L^{2}}}{r}\partial _{r}R+\left(\frac{\omega ^{2}}{1+\frac{r^{2}}{L^{2}}}-\frac{\ell(\ell+d-2)}{r^{2}}-\mu ^{2}\right)R & =0
\end{align}$$

when $\displaystyle{r\to \infty}$, the asymptotic behavior of $\displaystyle{R(r)}$ is given by

$$\begin{align}
R(r)\sim r^{-\Delta _{\pm}} \\
\Delta _{\pm} & =\frac{d}{2}\pm \sqrt{ \frac{d^{2}}{4}+\mu ^{2}L^{2} }
\end{align}$$

here we consider standard quantization, so we choose $\displaystyle{R(r)\sim r^{-\Delta _{+}}}$ when $\displaystyle{r\to \infty}$, and we denote $\displaystyle{\Delta=\Delta _{+}}$ for simplicity. when $\displaystyle{r\to 0}$, the asymptotic behavior of $\displaystyle{R(r)}$ is given by

$$\begin{align}
R(r)\sim r^{\ell}
\end{align}$$

here we drop the solution $\displaystyle{R(r)\sim r^{-(\ell+d-2)}}$ since it is not singular at $\displaystyle{r=0}$. now we substitute

$$\begin{align}
\rho & =\tan \frac{r}{L} \\
z & =\cos ^{2}\rho \\
R(r) & =(\sin \rho)^{\ell}(\cos \rho)^{\Delta}F(z)
\end{align}$$

then we have

$$\begin{align}
z(1-z)F''+\left[ \left( \Delta +\frac{2-d}{2} \right)-( \ell +\Delta +1)z \right]F'-\frac{1}{4}((\ell +\Delta )^{2}-\omega ^{2})F & =0
\end{align}$$

the general solution that satisfies the boundary condition is given by

$$\begin{align}
F(z) & ={}_{2}F_{1}\left( \frac{1}{2}(\ell +\Delta -\omega),\frac{1}{2}(\ell +\Delta +\omega);\Delta-\frac{d-2}{2};z \right)
\end{align}$$

where ${}_{2}F_{1}(a,b;c;z)$ is the hypergeometric function. to make $\displaystyle{R(r)}$ normalizable at $\displaystyle{r\to \infty}$, we need to impose the quantization condition

$$\begin{align}
\frac{1}{2}(\ell+\Delta-\omega) & =-n, n\in \mathbb{N} \\
\implies \omega & = \Delta +\ell +2n
\end{align}$$

then the complete solution is

$$\begin{align}
\phi _{n\ell \mathbf{m}}(r) & =C_{n\ell}e^{-i\omega _{n\ell}t}\left( \frac{r}{L} \right)^{\ell}\left( 1+\frac{r^{2}}{L^{2}} \right)^{-\frac{\Delta+\ell}{2}}{}_{2}F_{1}\left( -n,\ell +\Delta +n;\Delta -\frac{d-2}{2};\frac{1}{1+\frac{r^{2}}{L^{2}}} \right)Y_{\ell \mathbf{m}}(\Omega _{d-1}) \\
\end{align}$$

the normalization constant $\displaystyle{C_{n\ell}}$ can be determined by imposing the orthonormal condition

$$\begin{align}
\omega[\phi _{n_{1}\ell_{1}\mathbf{m}_{1}},\phi ^{*}_{n_{2}\ell_{2}\mathbf{m}_{2}}] & =\int _{\Sigma} \mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\phi _{n_{1}\ell_{1}\mathbf{m}_{1}}\phi ^{*}_{n_{2}\ell_{2}\mathbf{m}_{2}}-\nabla _{\mu}\phi ^{*}_{n_{2}\ell_{2}\mathbf{m}_{2}}\phi _{n_{1}\ell_{1}\mathbf{m}_{1}}) \\
 & =-i\delta _{n_{1}n_{2}}\delta _{\ell_{1}\ell_{2}}\delta _{\mathbf{m}_{1}\mathbf{m}_{2}}
\end{align}$$

the thermal partition function is given by

$$\begin{align}
Z[\beta] & =\mathrm{Tr}(e^{-\beta H}) \\
 & =\prod _{n=0}^{\infty}\prod _{\ell =0}^{\infty}\prod _{\mathbf{m}} \frac{1}{1-e^{-\beta \omega _{n\ell}}} \\
 & =\prod _{n=0}^{\infty}\prod _{\ell =0}^{\infty}\left( \frac{1}{1-e^{-\beta (\Delta +\ell +2n)}} \right)^{\displaystyle{\tiny{\frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}}}} \\
 & =\exp\left(\sum ^{\infty}_{k=1} \frac{1}{k} \frac{e^{-\beta \Delta}}{(1-e^{-\beta k})^{d}}\right)
\end{align}$$

# $\displaystyle{\mathbb{R}_{d,1}}$

in this part we will consider flat spacetime $\displaystyle{\mathbb{R}_{d,1}}$ with matric

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}r ^{2}+r ^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

the eom for scalar is

$$\begin{align}
(\Delta-\mu^{2})\phi & =\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi)-\mu ^{2}\phi \\
 & =-\partial _{t}^{2}\phi+\partial _{r}^{2}\phi+\frac{d-1}{r}\partial _{r}\phi+\frac{1}{r^{2}}\Delta _{S^{d-1}}\phi -\mu ^{2}\phi =0
\end{align}$$

make the ansatz $\displaystyle{\phi=e^{-i\omega t}Y_{\ell \mathbf{m}}(\Omega _{d-1})R(r)}$, then we haves

$$\begin{align}
\partial _{r}^{2}R+\frac{d-1}{r}\partial _{r}R+\left(\omega ^{2}-\frac{\ell(\ell+d-2)}{r^{2}}-\mu ^{2}\right)R=0
\end{align}$$

when $\displaystyle{r\to \infty}$, the asymptotic behavior of $\displaystyle{R(r)}$ is given by

$$\begin{align}
R(r) & \sim r^{-\frac{d-1}{2}}e^{\pm i\sqrt{\omega ^{2}-\mu ^{2}}r}
\end{align}$$

when $\displaystyle{r\to 0}$, the asymptotic behavior of $\displaystyle{R(r)}$ is given by

$$\begin{align}
s(s-1)+(d-1)s-\ell(\ell+d-2)=0 \\
\implies s & =\ell
\end{align}$$

here we drop the solution $\displaystyle{R(r)\sim r^{-(\ell+d-2)}}$ since it is not singular at $\displaystyle{r=0}$. the complete solution that satisfies the boundary condition is given by

$$\begin{align}
R(r) & =C_{\omega \ell}r^{-\frac{d-2}{2}}J_{\ell +\frac{d-2}{2}}(\sqrt{\omega ^{2}-\mu ^{2}}r)
\end{align}$$

where $\displaystyle{J_{\nu}(x)}$ is the Bessel function of the first kind. the normalization constant $\displaystyle{C_{\omega \ell}}$ can be determined by imposing the orthonormal condition

$$\begin{align}
\omega[\phi _{\omega_{1}\ell_{1}\mathbf{m}_{1}},\phi ^{*}_{\omega_{2}\ell_{2}\mathbf{m}_{2}}] & =\int _{\Sigma} \mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\phi _{\omega_{1}\ell_{1}\mathbf{m}_{1}}\phi ^{*}_{\omega_{2}\ell_{2}\mathbf{m}_{2}}-\nabla _{\mu}\phi ^{*}_{\omega_{2}\ell_{2}\mathbf{m}_{2}}\phi _{\omega_{1}\ell_{1}\mathbf{m}_{1}}) \\
 & =-i\delta (\omega _{1}-\omega _{2})\delta _{\ell_{1}\ell_{2}}\delta _{\mathbf{m}_{1}\mathbf{m}_{2}}
\end{align}$$

the thermal partition function is given by

$$\begin{align}
Z[\beta] & =\mathrm{Tr}(e^{-\beta H}) \\
 & =\prod _{\ell =0}^{\infty}\prod _{\mathbf{m}}\exp \left( -\int _{\mu}^{\infty} \frac{\mathrm{d}\omega}{2\pi}\ln (1-e^{-\beta \omega}) \right) \\
 & =\prod _{\ell =0}^{\infty}\exp \left( -\frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}\int _{\mu}^{\infty} \frac{\mathrm{d}\omega}{2\pi}\ln (1-e^{-\beta \omega}) \right)
\end{align}$$

# flat limit

we first present the results we obtained above:

$$\begin{align}
Z_{\mathrm{AdS}_{d+1}} & = \prod _{n=0}^{\infty}\prod _{\ell =0}^{\infty}\left( \frac{1}{1-e^{-\beta (\Delta +\ell +2n)}} \right)^{\displaystyle{\tiny{\frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}}}} \\
Z_{\mathbb{R}_{d,1}} & =\prod _{\ell =0}^{\infty}\exp \left( -\frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}\int _{\mu}^{\infty} \frac{\mathrm{d}\omega}{2\pi}\ln (1-e^{-\beta \omega}) \right)
\end{align}$$

$$\begin{align}
\ln Z_{\mathrm{AdS}_{d+1}} & =-\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!} \sum ^{\infty}_{n=0}\ln(1-e^{-\beta(\Delta+\ell+2n)}) \\
\ln Z_{\mathbb{R}_{d,1}} & =-\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell +d-3)!}{\ell!(d-2)!}\int ^{\infty}_{\mu} \frac{\mathrm{d}\omega}{2\pi} \ln(1-e^{-\beta \omega})
\end{align}$$

when we consider flat limit, we actually take $\displaystyle{L\to \infty}$ and fix $\displaystyle{\beta L}$. when $\displaystyle{L\to \infty}$, $\displaystyle{\Delta\to \mu L}$, and

$$\begin{align}
\ln Z_{\mathrm{AdS}_{d+1}} & \approx-\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}\sum ^{\infty}_{n=0} \ln(1-e^{-\beta L(\mu+2n/L)})
\end{align}$$

write $\displaystyle{\tilde{\omega}=\mu+\frac{2n}{L},\tilde{\beta}=\beta L}$, then when $\displaystyle{L\to \infty}$, we have

$$\begin{align}
\sum ^{\infty}_{n=0} \ln(1-e^{-\beta L()}) & =\int _{\mu}^{\infty} \frac{\mathrm{d}\tilde{\omega}}{2/L} \ln(1-e^{-\tilde{\beta}\tilde{\omega}})
\end{align}$$

and in the usual box normalization, we replace the $\displaystyle{\frac{L}{2}}$ by $\displaystyle{\frac{1}{2\pi}}$(?), then we have

$$\begin{align}
\ln Z_{\mathrm{AdS}_{d+1}} & \approx-\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}\int ^{\infty}_{\mu} \frac{\mathrm{d}\tilde{\omega}}{2\pi} \ln(1-e^{-\tilde{\beta}\tilde{\omega}})
\end{align}$$

which is exactly the same as $\displaystyle{\ln Z_{\mathbb{R}_{d,1}}}$ if we identify $\displaystyle{\tilde{\beta}}$ as the inverse temperature in flat spacetime.
