equation of motion

$$\tag{1.1}
\begin{align}
\nabla ^{2}A^{\nu}-m^{2}A^{\nu}-R^{~\nu}_{\mu}A^{\mu}=0 \\
\implies \nabla ^{2}A^{\nu}-(m^{2}-n+1)A^{\nu}=0
\end{align}
$$

with constraint

$$\tag{1.2}
\begin{align}
\nabla _{\mu}A^{\mu} & =0
\end{align}
$$


---

I think it is benifit to solve the equation of motion in flat spacetime first. we pick the metric

$$
\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\Omega _{n-2}^{2}
\end{align}
$$

then the equation of motion is

$$
\begin{align}
(\nabla ^{2}-m^{2})A^{\mu} & =-\partial _{t}^{2}A^{\mu}+\partial _{\rho}^{2}A^{\mu}+ \frac{n-2}{\rho} \partial _{\rho}A^{\mu}+\frac{1}{\rho ^{2}}\Delta _{S^{n-2}}A^{\mu}-m^{2}A^{\mu}
\end{align}
$$

make the ansatz

$$
\begin{align}
A^{0} & =e^{-i \omega t}f(\rho)Y_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A^{\rho} & =e^{-i \omega t}g(\rho)Y_{\mathrm{\ell}\mathbf{m}}(\Omega _{n-2}) \\
A^{\Omega} & =e^{-i \omega t}(h(\rho)\mathbf{Y}^{(e)}_{\ell \mathbf{m}}(\Omega)+k(\rho)\mathbf{Y}^{(m)}_{\ell \mathbf{m}}(\Omega _{n-2}))
\end{align}
$$

where $\displaystyle{\mathbf{Y}^{(e)}_{\ell \mathbf{m}}(\Omega)= \frac{r}{\sqrt{ \ell(\ell+n-3) }}\nabla _{\Omega}Y_{\ell \mathbf{m}}(\Omega)}$  and $\displaystyle{\mathbf{Y}^{(m)}_{\ell \mathbf{m}}(\Omega)=\frac{r}{\sqrt{ \ell(\ell+n-3) }}}\mathbf{L}Y_{\ell \mathbf{m}}(\Omega)$ are electric and magnetic vector spherical harmonics, respectively. they satisfy the following orthogonality relations:

$$
\begin{align}
\int _{S^{n-2}}\mathbf{Y}^{(\alpha)*}_{\ell \mathbf{m}}\cdot \mathbf{Y}^{(\beta)}_{\ell'\mathbf{m}'} & =\delta _{\alpha \beta}\delta_{\ell \ell'}\delta_{\mathbf{m} \mathbf{m}'}
\end{align}
$$

then we have

$$
\begin{align}
\frac{\mathrm{d}^{2}X}{\mathrm{d}\rho ^{2}}+\frac{n-2}{r} \frac{\mathrm{d}X}{\mathrm{d}\rho}+\left(\omega ^{2}-m^{2}-\frac{\ell(\ell+n-3)}{r^{2}}\right)X=0
\end{align}
$$

where $\displaystyle{X=f,g,h,k}$. this equation solves to

$$
\begin{align}
X_{k\ell}(\rho) & =\rho^{(3-n)/2}J_{\ell+\frac{n-3}{2}}(k\rho)
\end{align}
$$

where we have the dispersion relation $\displaystyle{\omega ^{2}=k^{2}+m^{2}}$. the full solution is

$$
\begin{align}
A^{t}_{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =(\text{ some function determined by } \partial _{\mu}A^{\mu}=0) \\
A^{\rho}_{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N^{\rho}_{k\ell}e^{-i \omega t}X_{k\ell}(\rho)Y_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A^{\Omega}_{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N^{e}_{k\ell}e^{-i \omega t}X_{k\ell}(\rho)\mathbf{Y}^{(e)}_{\ell \mathbf{m}}(\Omega _{n-2})+N^{m}_{k\ell}e^{-i \omega t}X_{k\ell}(\rho) \mathbf{Y}^{(m)}_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

here we don't write the explicit form of normalization constant $\displaystyle{N_{k\ell}}$. make the mode expansion

$$
\begin{align}
A^{\mu}(t,\rho,\Omega _{n-2}) & =\sum _{k,\ell,\mathbf{m}}a_{k,\ell,\mathbf{m}}A_{k\ell \mathbf{m}}^{\mu}(t,\rho,\Omega _{n-2})
\end{align}
$$

and the symplectic form is

$$
\begin{align}
\omega & =i\sum _{k,\ell,\mathbf{m}}\delta a_{k\ell \mathbf{m}}^{\dagger}\wedge \delta a_{k\ell \mathbf{m}}
\end{align}
$$

---
now we return to the AdS space.

the equation of motion is

$$\tag{1.3}
\begin{align}
\nabla ^{2}A^{\nu}-(m^{2}-n+1)A^{\nu}=0
\end{align}
$$

the problem is that different modes mix in the equations of motion.

we first consider the case $\displaystyle{n=3}$. make the ansatz $\displaystyle{A^{\mu}=e^{-i \omega t}e^{im\theta}R^{\mu}(\rho)}$, the equation of motion and constraint becomes

$$\tag{1.4}
\begin{align}
[-\omega ^{2}\cos ^{2}\rho+\cos ^{2}\rho \partial ^{2}_{\rho}+\cot \rho \partial _{\rho}-m^{2}\cot ^{2}\rho+(4-\mu ^{2})]R^{t} & =-i \omega\sin 2\rho R^{\rho}-\sin 2\rho \partial _{\rho}R^{t} \\
[-\omega ^{2}\cos ^{2}\rho+\cos ^{2}\rho \partial ^{2}_{\rho}+\cot \rho \partial _{\rho}-m^{2}\cot ^{2}\rho+(4-\mu ^{2})]R^{\rho} & =-i \omega\sin 2\rho R^{t}-\sin 2\rho \partial _{\rho}R^{\rho}+2im\cot \rho R^{\theta}+\frac{1}{\sin ^{2}\rho}R^{\rho} \\
[-\omega ^{2}\cos ^{2}\rho+\cos ^{2}\rho \partial ^{2}_{\rho}+\cot \rho \partial _{\rho}-m^{2}\cot ^{2}\rho+(4-\mu ^{2})]R^{\theta} & =-2\cot \rho \partial _{r}R^{\theta}-2im\frac{\cos\rho}{\sin ^{3}\rho}R^{\rho} \\
-i \omega R^{t}+\partial _{\rho}R^{\rho}+imR^{\theta}+\left(2\tan \rho + \frac{1}{\sin \rho \cos \rho}\right)R^{\rho} & =0
\end{align}
$$

when $\displaystyle{m=0}$, $\displaystyle{R^{\theta}}$ decouples from the equations, and we can solve the system of equations as

$$\tag{1.5}
\begin{align}
R^{\theta}(\rho) & =(\cos \rho)^{2+\mu}{}_{2}F_{1}\left( \frac{2-\omega+\mu}{2},\frac{2+\omega+\mu}{2};1+\mu;\cos ^{2}\rho \right)
\end{align}
$$

for $\displaystyle{R^{\theta}(\rho)}$ converges at $\displaystyle{\rho=\frac{\pi}{2}}$, we have $\displaystyle{\frac{2-\omega+\mu}{2}=-n,n\in \mathbb{N}=\implies \omega=2+\mu+2n}$. then (1.5) becomes

$$\tag{1.6}
\begin{align}
R_{n0}^{\theta}(\rho) & =(\cos \rho)^{2+\mu}{}_{2}F_{1}\left( -n,2+\mu+n;1+\mu;\cos ^{2}\rho \right)
\end{align}
$$
