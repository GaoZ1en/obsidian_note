in this file we will consider the bulk-to-bulk propagator of Proca field in Euclidean $\displaystyle{\mathrm{AdS}_{d+1}}$ under Poincare coordinate

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{z^{2}}\left( \mathrm{d}z^{2}+\eta _{ij}\mathrm{d}x^{i}\mathrm{d}x^{j}\right)
\end{align}
$$

where $\displaystyle{\eta _{ij}=\mathrm{diag}(-,+,\dots,+)}$. the non-zero Christoffel symbols are

$$\tag{1.3}
\begin{align}
\Gamma ^{z}_{~zz} & =-\frac{1}{z},\Gamma ^{z}_{~ij}=\frac{1}{z}\eta _{ij} \\
\Gamma ^{i}_{~zj} & =-\frac{1}{z}\delta ^{i}_{~j}
\end{align}
$$

## scalar

the eom for a scalar is

$$\tag{1.4}
\begin{align}
z^{d+1}\partial _{z}(z^{-d+1}\partial _{z}\phi)+z^{2}\tilde{\nabla} ^{2}\phi-\mu^{2}\phi=0
\end{align}
$$

make a Fourier transformation as

$$\tag{1.5}
\begin{align}
\phi(x)=\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}z^{d/2}\phi _{k}(k)e^{ik\cdot x}
\end{align}
$$

then the eom becomes

$$\tag{1.6}
\begin{align}
\partial _{z}^{2}\phi(k,z)+\frac{1}{z}\partial _{z}\phi(k,z)-\left( \frac{\nu^{2}}{z^{2}}+k^{2} \right)\phi(k,z)=0
\end{align}
$$

where $\displaystyle{\nu=\sqrt{ \mu^{2}+\frac{d^{2}}{4} }}$. this is exacly the modified Bessel equation, with general solution

$$\tag{1.7}
\begin{align}
\phi(k,z) & =A_{k}I_{\nu}(|k|z)+B_{k}K_{\nu}(|k|z)
\end{align}
$$

first, we require the solution to be regular when $\displaystyle{x}$ approaches to $\displaystyle{+\infty}$, then we should neglect the $I_{\nu}$ term, so $\displaystyle{A_{k}=0}$. second, we require the solution approaches to $\displaystyle{0}$ when $\displaystyle{z\to 0^{+}}$, then

$$\tag{1.8}
\begin{align}
\lim_{ z \to 0 } \phi(z,x) & \propto\int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} z^{d/2}K_{\nu}(|k|z)e^{ik\cdot x} \\
 & \propto \int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} k^{-\nu}z^{\Delta _{-}}e^{ik\cdot x}
\end{align}
$$

actually $\displaystyle{\Delta _{-}}$ is bound by $\displaystyle{\Delta> \frac{d-2}{2}}$, which is the well-known unitary bound in the CFT. 
$$\tag{.}
\begin{align}
K_{\nu}(z)\sim \frac{\Gamma(\nu)}{2}\left( \frac{2}{z} \right)^{\nu} \quad \text{as } z\to 0^{+}, \nu>0
\end{align}
$$











---
$$\tag{1.4}
\begin{align}
\nabla ^{2}A_{\mu}-(\mu^{2}-d)A_{\mu} & =0 \\
\nabla _{\mu}A^{\mu} & =0
\end{align}
$$

or

$$\tag{1.5}
\begin{align}

\end{align}
$$

$$\tag{.}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}
\end{align}
$$

take a variation

$$\tag{.}
\begin{align}
(\nabla ^{2}A^{\mu}-m^{2}A^{\mu})\delta A_{\mu}
\end{align}
$$