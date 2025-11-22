in [[Articles/thermodynamics of scalar in ads/scalar in AdS and flat spacetime|scalar in AdS and flat spacetime]] we have already got the partition function of a free scalar in $\displaystyle{\mathrm{AdS}_{d+1}}$

$$\begin{align}
\ln Z & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!} \ln(1-e^{-\beta(\Delta+\ell+2n)}) \\
 & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{\ell=0} \frac{(2\ell+d-2)(\ell+d-3)!}{\ell!(d-2)!}\sum ^{\infty}_{k=0}\frac{e^{-k\beta(\Delta+\ell+2n)}}{k} \\
 & =\sum ^{\infty}_{k=0} \frac{1}{k}e^{-\beta k\Delta}\sum ^{\infty}_{n=0} e^{-2\beta kn}\left(2\sum ^{\infty}_{\ell=0} \frac{(\ell+d-2)!}{\ell!(d-2)!}e^{-k\beta \ell}-\sum ^{\infty}_{\ell=0} \frac{(\ell+d-3)!}{\ell(d-3)!}e^{-k\beta \ell}\right) \\
 & =\sum ^{\infty}_{k=0} \frac{1}{k}e^{-\beta k\Delta} \frac{1}{(1-e^{-\beta k})(1+e^{-\beta k})} \left(\frac{2}{(1-e^{-\beta k})^{d-1}}-\frac{1}{(1-e^{-\beta k})^{d-2}}\right) \\
 & =\sum ^{\infty}_{k=0} \frac{1}{k}\frac{e^{-\beta k\Delta}}{(1-e^{-\beta k})^{d}}
\end{align}$$

here we dropped the vacuum energy contribution. in this file we will compute the corresponding thermodynamic quantities, including free energy and entropy, and their high-temperature behaviors.

the free energy and the entropy is given by

$$\begin{align}
F & =-\frac{1}{\beta}\ln Z[\beta] \\
 & =-\frac{1}{\beta}\sum ^{\infty}_{k=1} \frac{1}{k}\frac{e^{-\beta k\Delta}}{(1-e^{-\beta k})^{d}} \\
S & =\beta ^{2}\frac{\partial F}{\partial \beta}
\end{align}$$

in the high-temperature limit $\displaystyle{\beta \to 0}$

$$\begin{align}
F & =-\frac{1}{\beta}\sum ^{\infty}_{k=1} \frac{1}{k}\frac{e^{-\beta k\Delta}}{(1-e^{-\beta k})^{d}} \\
 & \approx -\frac{1}{\beta}\sum ^{\infty}_{k=1} \frac{1}{k}\frac{1}{(\beta k)^{d}}\left( 1+\frac{1}{2}(\Delta _{-}-\Delta _{+})k\beta \right) \\
 & =-\frac{1}{\beta ^{d+1}}\zeta (d+1)-\frac{1}{2}(\Delta _{-}-\Delta _{+}) \frac{1}{\beta ^{d}}\zeta(d)
 \\
S & =\beta ^{2}\frac{\partial F}{\partial \beta} \\
 & \approx\frac{d+1}{\beta ^{d}}\zeta (d+1)+\frac{d}{2}(\Delta _{-}-\Delta _{+}) \frac{1}{\beta ^{d-1}}\zeta(d)
\end{align}$$
 
in general we expand

$$\begin{align}
\frac{e^{-\beta k\Delta}}{(1-e^{-\beta k})^{d}} & =\sum ^{\infty}_{m=0}C_{m}(d,\Delta)(\beta k)^{m-d} \\
F & =-\frac{1}{\beta}\sum ^{\infty}_{k=1} \frac{1}{k}\sum ^{\infty}_{m=0}C_{m}(d,\Delta)(\beta k)^{m-d} \\
 & \approx-\frac{1}{\beta ^{d+1}}\sum ^{d}_{m=0}C_{m}(d,\Delta)\beta ^{m}\zeta (d+1-m)+\mathcal{O}(\beta ^{0}) \\
\end{align}$$

the error term is bounded by

$$\begin{align}
F-\left( -\frac{1}{\beta ^{d+1}}\sum ^{n}_{m=0}C_{m}(d,\Delta)\beta ^{m}\zeta(d+1,m) \right) & < A\beta ^{n-d}, n<d
\end{align}$$

here $\displaystyle{A}$ is a constant depending on $\displaystyle{d,\Delta ,n}$. how to give a estimate of $\displaystyle{A}$?

---

now we add chemical potentials to each angular momentum $\displaystyle{J_{i},i=1,2,\dots \left\lfloor  \frac{d}{2}  \right\rfloor}$, which are the Cartan generators of $\mathrm{SO}(d)$, the isometry group of $\mathrm{S}^{d-1}$, and consider the following partition function

$$\begin{align}
Z[\beta,\mu _{i}] & =\mathrm{\mathrm{Tr}}\exp\left(-\beta H+i\mu _{i}J_{i}\right)
\end{align}$$

## $\displaystyle{d-1=2r}$

in this case the isometry group is $\displaystyle{\mathrm{SO}(2r)}$, whose Cartan generators are $\displaystyle{J_{i},i=1,2,\dots ,r}$. the eigenvalue of $\displaystyle{J_{i}}$ acting on spherical harmonic $\displaystyle{Y_{\ell \mathbf{m}}}$ is $\displaystyle{m_{i}}$. the partition function becomes

$$\begin{align}
\ln Z[\beta,\mu _{i}] & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{\ell=0}\sum _{\mathbf{m}}\ln(1-e^{-\beta (\Delta +\ell +2n)+i\mu _{i}m_{i}}) \\
 & =\sum ^{\infty}_{k=1} \frac{1}{k}e^{-\beta k\Delta}\sum ^{\infty}_{n=0} e^{-2\beta kn}\sum ^{\infty}_{\ell=0} e^{-\beta k\ell}\sum _{\mathbf{m}} e^{i\mu _{i}km_{i}}
\end{align}$$

