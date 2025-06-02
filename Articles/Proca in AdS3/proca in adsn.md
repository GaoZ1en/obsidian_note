equation of motion

$$\tag{1.1}
\begin{align}
\nabla ^{2}A^{\nu}-m^{2}A^{\nu}+R^{~\nu}_{\mu}A^{\mu}=0 \\
\implies \nabla ^{2}A^{\nu}-(m^{2}+n-1)A^{\nu}=0
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
A^{0} & =e^{-i \omega t}f(\rho)Y_{\ell \mathbf{m}}(\Omega) \\
A^{\rho} & =e^{-i \omega t}g(\rho)Y_{\mathrm{\ell}\mathbf{m}}(\Omega) \\
A^{\Omega} & =e^{-i \omega t}(h(\rho)\mathbf{Y}^{(e)}_{\ell \mathbf{m}}(\Omega)+k(\rho)\mathbf{Y}^{(m)}_{\ell \mathbf{m}}(\Omega))
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

where we have the dispersion relation $\displaystyle{\omega ^{2}=k^{2}+m^{2}}$. by orthogonality relations, we have

$$
\begin{align} 
f_{k\ell} & =\frac{k}{\sqrt{ \omega }} \sqrt{ \frac{\ell(\ell+n-3)}{\omega ^{2}+\ell(\ell+n-3)} } \\
g_{k\ell} & =0 \\
h_{k\ell} & =\frac{k}{\sqrt{ \omega }} \frac{1}{\sqrt{ 1+\frac{\ell(\ell+n-3)}{\omega ^{2}} }} \\
k _{k\ell} & =\frac{k}{\sqrt{ \omega }}\rho ^{(3-n)/2}J_{\ell+\frac{n-3}{2}}(k\rho)
\end{align}
$$

here we choose $\displaystyle{g_{k\ell}=0}$ by constraint (1.2).

---
now we return to the AdS space.

