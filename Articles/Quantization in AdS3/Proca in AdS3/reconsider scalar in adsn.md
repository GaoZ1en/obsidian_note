the metric of global $\displaystyle{\mathrm{AdS}_{d+1}}$ is given by

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

where $\displaystyle{\mathrm{d}\Omega _{d-1}^{2}}$ is the metric for unit sphere $\displaystyle{S^{d-1}}$. consider a free real scalar field $\displaystyle{\phi}$ with mass $\displaystyle{\mu}$, the action is given by

$$\begin{align}
S & =\int _{M} \mathrm{d}^{d+1}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\frac{1}{2}\mu ^{2}\phi ^{2}\right)
\end{align}$$

to keep the action finite, we require $\displaystyle{\phi}$ to satisfy the following boundary condition

$$\begin{align}
\phi & =o(r^{-d/2})  & \text{ as }r\to \infty \\
\phi & =\mathcal{O}(r^{-d/2}) & \text{as }r\to 0
\end{align}$$

take a variation with respect to $\displaystyle{\phi}$, we get the eom and the symplectic potential

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }\left(\nabla ^{2}\phi-\mu ^{2}\phi\right)+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

here $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$ are the initial and final Cauchy surfaces, $\displaystyle{\sigma}$ is the determinant of the induced metric on $\displaystyle{\Sigma _{f}-\Sigma _{i}}$, and $\displaystyle{\tau ^{\mu}}$ is the unit normal vector to $\displaystyle{\Sigma _{f}-\Sigma _{i}}$. then we read off the eom

$$\begin{align}
\nabla ^{2}\phi-\mu ^{2}\phi & =0
\end{align}$$

and the symplectic potential

$$\begin{align}
\theta & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

take an variation of the symplectic potential, we get the symplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

to do quantization, we need to find a complete set of solutions to the eom. we first expand the eom

$$\begin{align}
-\frac{1}{1+r^{2}}\partial _{t}^{2}\phi+(1+r^{2})\partial _{r}^{2}\phi+\frac{(d-1)+(d+1)r^{2}}{r}\partial _{r}\phi +\frac{1}{r^{2}}\nabla ^{2}_{S^{d-1}}\phi-\mu ^{2}\phi & =0
\end{align}$$

make the following ansatz

$$\begin{align}
\phi(x) & =e^{-i\omega t}Y_{\ell \mathbf{m}}(\Omega)f(r)
\end{align}$$

where $\displaystyle{Y_{\ell \mathbf{m}}(\Omega)}$ is the spherical harmonic on $\displaystyle{S^{d-1}}$ satisfying

$$\begin{align}
\nabla ^{2}_{S^{d-1}}Y_{\ell \mathbf{m}}(\Omega) & =-\ell (\ell +d-2)Y_{\ell \mathbf{m}}(\Omega)
\end{align}$$

and the orthonormal condition

$$\begin{align}
\int _{S^{d-1}}\mathrm{d}\Omega Y_{\ell \mathbf{m}}^{*}(\Omega)Y_{\ell' \mathbf{m}'}(\Omega) & =\delta _{\ell\ell'}\delta _{\mathbf{m}\mathbf{m}'}
\end{align}$$

then the eom becomes an ODE for $\displaystyle{f(r)}$

$$\begin{align}
(1+r^{2})f''+\frac{d-1+(d+1)r^{2}}{r}f'+\left(\frac{\omega ^{2}}{1+r^{2}}-\frac{\ell(\ell+d-2)}{r^{2}}-\mu ^{2}\right)f & =0
\end{align}$$

by defining $\displaystyle{r=\tan \rho, z=\cos ^{2}\rho}$ we have

$$\begin{align}
4z(1-z)f''+2(2-d-2z)f'+\left(\omega ^{2}-\frac{\ell(\ell+d-2)}{1-z}-\frac{\mu ^{2}}{z}\right)f=0
\end{align}$$

the solution that satisfies the boundary condition is given by

$$\begin{align}
f(z) & =z^{\Delta/2}(1-z)^{\ell/2}{}_{2}F_{1}\left(\frac{\ell+\Delta-\omega}{2},\frac{\ell+\Delta+\omega}{2},\Delta+\frac{2-d}{2},z\right) \\
 & =r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2}{}_{2}F_{1}\left(\frac{\ell+\Delta-\omega}{2},\frac{\ell+\Delta+\omega}{2},\Delta+\frac{2-d}{2}, \frac{1}{1+r^{2}}\right)
\end{align}$$

where $\displaystyle{\Delta=\frac{d}{2}+\sqrt{ \mu ^{2}+\frac{d^{2}}{4} }}$ is the conformal dimension of the dual operator in the CFT. to make the solution regular at $\displaystyle{r=0}$, we require $\displaystyle{\omega =\Delta +\ell +2n}$, where $\displaystyle{n\in \mathbb{Z}}$. thus we have the complete set of solutions

$$\begin{align}
\phi _{n\ell\mathbf{m}}(t,r,\Omega) & =N_{n\ell}e^{-i\omega _{n\ell} t}Y_{\ell \mathbf{m}}(\Omega)r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2}{}_{2}F_{1}\left(-n,\ell+\Delta+n,\Delta+\frac{2-d}{2}, \frac{1}{1+r^{2}}\right) \\
 & =\sqrt{ \frac{\Gamma(n+\Delta+\ell)\Gamma(n+1)}{\Gamma\left( n+\Delta+\frac{2-d}{2} \right)\Gamma\left( n+\ell+\frac{d}{2} \right)} }e^{-i\omega _{n\ell}t}Y_{\ell \mathbf{m}}(\Omega)r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2}P_{n}^{(\Delta-d/2,\ell+(d-2)/2)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

the normalization constant is determined by the Klein-Gordon inner product defined by the symplectic form

$$\begin{align}
\omega[\phi _{n_{1}\ell_{1}\mathbf{m}_{1}},\phi ^{*}_{n_{2}\ell_{2}\mathbf{m}_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{\ell_{1}\ell_{2}}\delta _{\mathbf{m}_{1}\mathbf{m}_{2}}
\end{align}$$
---

now we will try to derive the time ordered correlation function in Euclidean signature. in this case our spacetime metric becomes

$$\begin{align}
\mathrm{d}s^{2} & =(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

and the solutions to the eom are given by

$$\begin{align}
\phi _{n\ell \mathbf{m}} & =\sqrt{ \frac{\Gamma(n+\Delta+\ell)\Gamma(n+1)}{\Gamma\left( n+\Delta+\frac{d-2}{2} \right)\Gamma\left( n+\ell+\frac{d}{2} \right)} }e^{-\omega _{n\ell}\tau}Y_{\ell \mathbf{m}}(\Omega)r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2}P_{n}^{(\Delta-d/2,\ell+(d-2)/2)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and the two-point function is given by

$$\begin{align}
G(x_{1},x_{2}) & =\begin{cases}
\sum _{n\ell \mathbf{m}}\phi _{n\ell \mathbf{m}}(x_{1})\phi _{n\ell \mathbf{m}}^{*}(x_{2}) & \text{ if }\tau _{1}>\tau _{2} \\
\sum _{n\ell \mathbf{m}}\phi _{n\ell \mathbf{m}}^{*}(x_{1})\phi _{n\ell \mathbf{m}}(x_{2}) & \text{ if }\tau _{1}<\tau _{2}
\end{cases}
\end{align}$$

since $\displaystyle{\mathrm{AdS}_{d+1}}$ is a maximally symmetric space, the two-point function should only depend on the geodesic distance $\displaystyle{\rho(x_{1},x_{2})}$ between the two points $\displaystyle{x_{1}}$ and $\displaystyle{x_{2}}$. in global coordinates, the geodesic distance is given by

$$\begin{align}
\cosh \rho(x_{1},x_{2}) & =\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh (\tau _{1}-\tau _{2})-r_{1}r_{2}\cos \Theta
\end{align}$$

where $\displaystyle{\Theta}$ is the angle between the two points on the sphere $\displaystyle{S^{d-1}}$. in the following discussion, we will only consider the case $\displaystyle{\tau_{1}>\tau_{2}}$.

---

we first consider the case $\displaystyle{d=2}$. in this case we rewrite the solutions as

$$\begin{align}
\phi _{n,m} =\phi _{k,\bar{k}} & =\frac{1}{\sqrt{ 2\pi }} \sqrt{ \frac{\bar{k}!(\Delta)_{k}}{k!(\Delta)_{\bar{k}}} } e^{-(\Delta+k+\bar{k})\tau}e^{i(k-\bar{k})\phi} r^{k-\bar{k}}(1+r^{2})^{-(\Delta+k-\bar{k})/2}P_{k}^{(\Delta-1,k-\bar{k})}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & = \frac{1}{\sqrt{ 2\pi }} \sqrt{ \frac{\bar{k}!(\Delta)_{k}}{k!(\Delta)_{\bar{k}}} }e^{-(\Delta+k+\bar{k})\tau}e^{i(k-\bar{k})\phi} r^{k-\bar{k}}(1+r^{2})^{-(\Delta+k-\bar{k})/2} \\
 & \times \frac{1}{2\pi i}\int ^{(0+)} \mathrm{d}u u^{-1-\bar{k}}(1-u)^{\Delta+\bar{k}-1}\left( 1-\frac{u}{1+r^{2}} \right)^{-\Delta-k} \\
 & =\frac{1}{\sqrt{ 2\pi }} \sqrt{ \frac{\bar{k}!(\Delta)_{k}}{k!(\Delta)_{\bar{k}}} }e^{-(\Delta+k+\bar{k})\tau}e^{i(k-\bar{k})\phi}\times \frac{1}{2\pi i} \int ^{(0+)}\mathrm{d}uu^{-1-\bar{k}}(r-\sqrt{ 1+r^{2} }u)^{k}(\sqrt{ 1+r^{2} }-ru)^{-\Delta-k}
\end{align}$$

and

$$\begin{align}
\phi _{k,\bar{k}}^{*} & =\frac{1}{\sqrt{ 2\pi }}\sqrt{ \frac{k!(\Delta)_{\bar{k}}}{\bar{k}!(\Delta)_{k}} }e^{-(\Delta+k+\bar{k})}e^{i(\bar{k}-k)\phi}r^{\bar{k}-k}(1+r^{2})^{-(\Delta+\bar{k}-k)/2}P_{\bar{k}}^{(\Delta-1,\bar{k}-k)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

in the second step, we have used the integral representation of Jacobi polynomial

$$\begin{align}
P_{n}^{(\alpha,\beta)}(x) & =\frac{1}{2\pi i}\int ^{(0+)}\mathrm{d}u u^{-1-n}(1-u)^{\alpha +n}(1-u(1-x)/2)^{-\alpha -\beta -n-1}
\end{align}$$

where the integral contour is a small circle around the origin. in the third step, we have changed the variable as $\displaystyle{u\to \frac{(1+r^{2})^{1/2}u}{(1+r^{2})^{1/2}u-r}}$. then the two-point function becomes

$$\begin{align}
G(x_{1},x_{2}) & = \sum ^{\infty}_{k,\bar{k}=0}\phi _{k,\bar{k}}(x_{1})\phi _{k,\bar{k}}^{*}(x_{2}) \\
 & \sum ^{\infty}_{k,\bar{k}=0} \frac{1}{2\pi} e^{-(\Delta+k+\bar{k})(\tau_{1}-\tau_{2})}e^{i(k-\bar{k})(\phi_{1}-\phi_{2})} \\
 & \times \frac{1}{2\pi i}\int _{C_{1}} \mathrm{d}u_{1} u_{1}^{-1-\bar{k}}(r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1})^{k}(\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1})^{-\Delta-k} \\
 & \times \frac{1}{2\pi i}\int _{C_{2}} \mathrm{d}u_{2} u_{2}^{-1-k}(r_{2}-\sqrt{ 1+r_{2}^{2} }u_{2})^{\bar{k}}(\sqrt{ 1+r_{2}^{2} }-r_{2}u_{2})^{-\Delta-\bar{k}} \\
 & =\frac{1}{2\pi}e^{-\Delta(\tau_{1}-\tau_{2})} \frac{1}{2\pi i} \int _{C_{1}} \frac{\mathrm{d}u_{1}}{u_{1}} \frac{1}{2\pi i}\int _{C_{2}} \frac{\mathrm{d}u_{2}}{u_{2}}(\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1})^{-\Delta}(\sqrt{ 1+r_{2}^{2} }-r_{2}u_{2})^{-\Delta} \\
 & \times \sum ^{\infty}_{k=0}\left(e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})} \frac{1}{u_{2}} \frac{r_{1}-\sqrt{ 1+r_{1} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}}\right)^{k} \\
 & \times \sum ^{\infty}_{\bar{k}=0}\left(e^{-(\tau_{1}-\tau_{2})}e^{-i(\phi_{1}-\phi_{2})} \frac{1}{u_{1}} \frac{r_{2}-\sqrt{ 1+r_{2}^{2} }u_{2}}{\sqrt{ 1+r_{2}^{2} }-r_{2}u_{2}}\right)^{\bar{k}} \\
 & =\frac{1}{2\pi} e^{-\Delta(\tau_{1}-\tau_{2})} \int _{C_{1}} \frac{\mathrm{d}u_{1}}{2\pi i} \int _{C_{2}} \frac{\mathrm{d}u_{2}}{2\pi i} \frac{(\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1})^{-\Delta}(\sqrt{ 1+r_{2}^{2} }-r_{2}u_{2})^{-\Delta}}{\left( u_{2}-e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}} \right)\left( u_{1}-e^{-(\tau_{1}-\tau_{2})}e^{-i(\phi_{1}-\phi_{2})}\frac{r_{2}-\sqrt{ 1+r_{2}^{2} }u_{2}}{\sqrt{ 1+r_{2}^{2} }-r_{2}u_{2}} \right)}
\end{align}$$

now we will choose the contour $\displaystyle{C_{1}}$ and $\displaystyle{C_{2}}$ to be the unit circles. on such a contour, the summation of the integrands converges uniformly.

we first do the $\displaystyle{u_{2}}$ integral. the only pole inside the pole of $\displaystyle{|u_{2}|=1}$, the only pole of the integrand is given by

$$\begin{align}
u^{*}_{2} & =e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}}
\end{align}$$

by applying the residue theorem, we have

$$\begin{align}
G(x_{1},x_{2}) & =\frac{1}{2\pi}e^{-\Delta(\tau_{1}-\tau_{2})} \int _{C_{1}} \frac{\mathrm{d}u_{1}}{2\pi i} \frac{(\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1})^{-\Delta}(\sqrt{ 1+r_{2}^{2} }-r_{2}u^{*}_{2})^{-\Delta}}{\left( u^{*}_{2}-e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}} \right)\left( u_{1}-e^{-(\tau_{1}-\tau_{2})}e^{-i(\phi_{1}-\phi_{2})}\frac{r_{2}-\sqrt{ 1+r_{2}^{2} }u^{*}_{2}}{\sqrt{ 1+r_{2}^{2} }-r_{2}u^{*}_{2}} \right)} \\
 & =\frac{1}{4\pi ^{2} i}e^{-\Delta(\tau_{1}-\tau_{2})}\int _{C_{1}}\mathrm{d}u_{1}\frac{\left( \sqrt{ 1+r_{1}^{2} }-r_{1}u_{1} \right)^{-\Delta}\left( \sqrt{ 1+r_{2}^{2} }-r_{2}e^{-(\tau _{1}-\tau _{2})}e^{i(\phi _{1}-\phi _{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}} \right)^{-\Delta}}{\left( u_{1}-e^{-(\tau _{1}-\tau _{2})}e^{-i(\phi _{1}-\phi _{2})}\frac{r_{2}-\sqrt{ 1+r_{2}^{2} }e^{-(\tau _{1}-\tau _{2})}e^{i(\phi _{1}-\phi _{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}}}{\sqrt{ 1+r_{2}^{2} }-r_{2}e^{-(\tau _{1}-\tau _{2})}e^{i(\phi _{1}-\phi _{2})}\frac{r_{1}-\sqrt{ 1+r_{1}^{2} }u_{1}}{\sqrt{ 1+r_{1}^{2} }-r_{1}u_{1}}} \right)} \\
 & =\frac{1}{2\pi}e^{-\Delta(\tau_{1}-\tau_{2})} \int _{C_{1}} \frac{\mathrm{d}u_{1}}{2\pi i} \left(\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }-r_{1}r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}+(-r_{1}\sqrt{ 1+r_{2}^{2} }+\sqrt{ 1+r_{1}^{2} }r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})})u_{1}\right)^{-(\Delta-1)} \\
 & \times\left.[(-r_{1}\sqrt{ 1+r_{2}^{2} }+\sqrt{ 1+r_{1}^{2} }r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})})u_{1}^{2}+\right. \\
 & +(\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }-r_{1}r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}+r_{1}r_{2}e^{-(\tau_{1}-\tau_{2})}e^{-i(\phi_{1}-\phi_{2})}-\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }e^{-2(\tau_{1}-\tau_{2})})u_{1} \\
 & +(-\sqrt{ 1+r_{1}^{2} }r_{2}e^{-(\tau_{1}-\tau_{2})}e^{-i(\phi_{1}-\phi_{2})}+r_{1}\sqrt{ 1+r_{2}^{2} }e^{-2(\tau_{1}-\tau_{2})})]^{-1}
\end{align}$$

the integrands has two poles, which are given by

$$\begin{align}
u_{1}^{(1)} & =\frac{e^{-(\tau_{1}-\tau_{2})}}{r_{1}\sqrt{ 1+r_{2}^{2} }-\sqrt{ 1+r_{1}^{2} }r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}} \\
 & \times\left[\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\sinh(\tau_{1}-\tau_{2})-ir_{1}r_{2}\sin(\phi_{1}-\phi_{2})-(\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2}))^{1/2}\right] \\
u_{1}^{(2)} & =\frac{e^{-(\tau_{1}-\tau_{2})}}{r_{1}\sqrt{ 1+r_{2}^{2} }-\sqrt{ 1+r_{1}^{2} }r_{2}e^{-(\tau_{1}-\tau_{2})}e^{i(\phi_{1}-\phi_{2})}} \\
 & \times\left[\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\sinh(\tau_{1}-\tau_{2})-ir_{1}r_{2}\sin(\phi_{1}-\phi_{2})+(\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2}))^{1/2}\right]
\end{align}$$

take the limit of $\displaystyle{\tau_{2}\to+\infty}$, we can see that

$$\begin{align}
\lim_{ \tau_{2} \to +\infty } u_{1}^{(1)}=0 \\
\lim_{ \tau_{2} \to +\infty } u_{1}^{(2)}=\frac{\sqrt{ 1+r_{1}^{2} }}{r_{1}}
\end{align}$$

we can see that only the pole $\displaystyle{u_{1}^{(1)}}$ is inside the contour $\displaystyle{|u_{1}|=1}$. thus we again apply the residue theorem, we have

$$\begin{align}
G(x_{1},x_{2}) & =\frac{1}{4\pi} \left[((\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2})))\right. \\
 & \left.+ [\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2})]^{1/2}\right]^{-(\Delta-1)} \\
 & \times\left[(\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2}))^{2}-1\right]^{-1/2} \\
 & =\frac{1}{4\pi} \frac{e^{-(\Delta-1)\rho}}{\sinh \rho}
\end{align}$$

this procedure is impossible for human to do the summation directly for higher dimensions.

---

for higher dimensions, a recursion relation can be used. notice the Laplacian on $\displaystyle{\mathrm{AdS}_{d+1}}$ can be written as

$$\begin{align}
\nabla ^{2}_{\text{AdS}_{d+1}} &:=\nabla ^{2}_{d+1} =\partial _{\rho}^{2}+d\coth \rho \partial _{\rho}
\end{align}$$

define the operator

$$\begin{align}
D & =-\frac{1}{2\pi \sinh \rho}\partial _{\rho}
\end{align}$$

then we have the following intertwining relation for the Laplacian:

$$\begin{align}
D(\nabla ^{2}_{d+1}-\mu^2 ) & =(\nabla ^{2}_{d+3}-\tilde{\mu}^2)D
\end{align}$$

where $\displaystyle{\mu^2 = \Delta(\Delta-d)}$. and $\displaystyle{\tilde{\mu}^2}$ is given by

$$\begin{align}
\tilde{\mu}^2 &= \mu^2 - (d+1) = \Delta(\Delta-d) - d - 1 \\
&= (\Delta+1)(\Delta-d-1) \\
&= (\Delta+1)((\Delta+1)-(d+2))
\end{align}$$

this implies that if $G_{d+1}^{\Delta}(\rho)$ is the propagator in $\mathrm{AdS}_{d+1}$ for a field with conformal dimension $\Delta$, then $D$ naturally maps it to a propagator in $\mathrm{AdS}_{d+3}$ with conformal dimension $\Delta+1$:

$$\begin{align}
G_{d+3}^{\Delta+1}(\rho) & = D G_{d+1}^{\Delta}(\rho) = -\frac{1}{2\pi \sinh \rho}\partial _{\rho} G_{d+1}^{\Delta}(\rho)
\end{align}$$

---

another way to derive the propagator is to use the embedding space formalism. $\mathrm{AdS}_{d+1}$ can be embedded into a flat space $\mathbb{R}^{2,d}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(\mathrm{d}X^{-1})^{2}-(\mathrm{d}X^{0})^{2}+(\mathrm{d}X^{1})^{2}+\cdots +(\mathrm{d}X^{d})^{2}
\end{align}$$

the embedding coordinates $\displaystyle{X^{A}}$ satisfy the following constraint

$$\begin{align}
-(X^{-1})^{2}-(X^{0})^{2}+(X^{1})^{2}+\cdots +(X^{d})^{2} & =-1
\end{align}$$

the geodesic distance $\displaystyle{\rho}$ can be expressed in terms of the embedding coordinates as

$$\begin{align}
\cosh \rho & =-X_{1}\cdot X_{2} = -\eta _{AB}X_{1}^{A}X_{2}^{B}
\end{align}$$

away from the coincident point $\displaystyle{x_{1}=x_{2}}$, the propagator is a function of only the geodesic distance $\displaystyle{\rho}$ and satisfies the source-free Klein-Gordon equation $\displaystyle{(\nabla ^{2}_{\text{AdS}_{d+1}}-\mu ^{2})G(\rho)=0}$. using the expression for the Laplacian in terms of $\displaystyle{\rho}$, the equation reads

$$\begin{align}
\left( \partial _{\rho}^{2}+d \coth \rho \partial _{\rho} - \mu ^{2} \right)G(\rho) & =0
\end{align}$$

by changing the variable to $\displaystyle{\xi = \frac{1}{\cosh \rho}}$, this differential equation transforms exactly into the standard Gauss's hypergeometric differential equation. keeping the solution that is regular (normalizable) at spatial infinity (which decays as $\displaystyle{e^{-\Delta \rho} \sim \xi^{\Delta}}$ when $\displaystyle{\xi \to 0}$), the propagator can be written as

$$\begin{align}
G(x_{1},x_{2}) & =\frac{1}{4\pi ^{(d+1)/2}}\frac{\Gamma(\Delta)}{\Gamma\left( \Delta-\frac{d-1}{2} \right)}\xi ^{\Delta} {}_{2}F_{1}\left( \frac{\Delta}{2},\frac{\Delta+1}{2},\Delta-\frac{d-1}{2}+1,\xi ^{2} \right)
\end{align}$$

where $\displaystyle{\xi =\frac{1}{\cosh \rho}}$. the hypergeometric function can be written as an integral representation

$$\begin{align}
{}_{2}F_{1}\left( \frac{\Delta}{2},\frac{\Delta+1}{2},\Delta-\frac{d-1}{2}+1,\xi ^{2} \right) & =\frac{\Gamma\left( \Delta-\frac{d-1}{2}+1 \right)}{\Gamma\left( \frac{\Delta}{2} \right)\Gamma\left( \frac{\Delta+1}{2} \right)}\int _{0}^{1}\mathrm{d}t t^{\frac{\Delta}{2}-1}(1-t)^{\frac{\Delta+1}{2}-1}(1-t\xi ^{2})^{-(\Delta-\frac{d-1}{2}+1)}
\end{align}$$
