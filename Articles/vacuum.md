in this note we will show that for two free field theory that defined on spatially compact or bounded manifold, the inner product of their vacuum can be argued by Weyl's law.

consider the manifold $\displaystyle{\mathcal{M}=\mathbb{R}\times \Sigma}$, where $\displaystyle{\Sigma}$ is compact or bounded (whatever boundary condition, only affects the next leading terms). the metric is given by

$$\begin{align}
\mathrm{d}s^{2}= & -\mathrm{d}t^{2}+\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b}
\end{align}$$

and the action for a scalar field is

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}t\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}$$

the eom is given by

$$\begin{align}
\left( -\partial _{t}^{2}+\Delta _{\Sigma}-m^{2} \right)\phi & =0
\end{align}$$

where $\displaystyle{\Delta _{\Sigma}=\frac{1}{\sqrt{\sigma}}\partial _{a}(\sqrt{\sigma}\sigma ^{ab}\partial _{b})}$ is the Laplacian on $\displaystyle{\Sigma}$. for compact or bounded $\displaystyle{\Sigma}$, the eigenvalue problem

$$\begin{align}
\Delta _{\Sigma}\phi _{n} & =-\lambda _{n}\phi _{n}
\end{align}$$

has discrete eigenvalues $\displaystyle{\lambda _{n}}$ and orthonormal eigenfunctions $\displaystyle{\phi _{n}}$. expand the field as

$$\begin{align}
\phi (t,x) & =\sum _{n}a_{n}(t)\phi _{n}(x)
\end{align}$$

then the action becomes

$$\begin{align}
S & =\frac{1}{2}\int \mathrm{d}t\sum _{n}\left( \dot{a}_{n}^{2}-\omega _{n}^{2}a_{n}^{2} \right)
\end{align}$$

where $\displaystyle{\omega _{n}^{2}=\lambda _{n}+m^{2}}$. consider two such theories with masses $\displaystyle{m_{1},m_{2}}$. denote $\displaystyle{\omega _{n}^{(1)}=\omega _{n}^{(n)}e^{-2\theta _{n}}}$, the inner product of their vacuum is given by

$$\begin{align}
\braket{ 0_{1}|0_{2} }  & =\prod ^{\infty}_{n} \frac{1}{\sqrt{ \cosh \theta _{n} }} \\
 & =\exp \left( -\frac{1}{2}\sum ^{\infty}_{n}\ln\left( \frac{1}{2}\left(\sqrt{ \frac{\omega ^{(1)}_{n}}{\omega _{n}^{(2)}} }+\sqrt{ \frac{\omega _{n}^{(2)}}{\omega _{n}^{(1)}} }\right) \right) \right) \\
 & =\exp\left(-\frac{1}{2}\sum ^{\infty}_{n} \frac{(m_{1}^{2}-m_{2}^{2})^{2}}{8\lambda _{n}^{2}}\right) \\
 & \sim C\exp\left(-\frac{(m_{1}^{2}-m_{2}^{2})^{2}}{16}\int ^{\infty}_{\Lambda}\mathrm{d}N(\lambda) \lambda ^{-2} \right)
\end{align}$$

by Weyl's law, the eigenvalue counting function $\displaystyle{N(\lambda)=\#\{ n|\lambda _{n}\leq \lambda \}}$ has the following asymptotic behavior

$$\begin{align}
N(\lambda) & \sim \frac{\pi ^{d/2}\mathrm{Vol}(\Sigma)}{(2\pi)^{d}\Gamma\left( 1+\frac{d}{2} \right)}\lambda ^{d/2}+\mathcal{O}(\lambda ^{(d-1)/2})
\end{align}$$

then

$$\begin{align}
\braket{ 0_{1}|0_{2} }  & \sim C\exp\left(-\int ^{\infty}_{\Lambda} \mathrm{d}\lambda\lambda ^{d/2-3}\right) \\
 & =\begin{cases}
0 & d\geqslant 4 \\
\text{finite} & d\leqslant3 \\
\end{cases}
\end{align}$$

for higher spin field, the only difference is that the Laplacian $\displaystyle{\Delta _{\Sigma}}$ is replaced by the corresponding Laplace-type operator acting on the appropriate bundle over $\displaystyle{\Sigma}$, but Weyl's law still holds true with the same leading term up to a factor depending on the spin. and for interacting theory, we could consider the Weyl law for the Schrodinger operator, then the same argument goes through.

---

as a further application of Weyl's law, we can 

---

for infinite $\displaystyle{\Sigma}$, we can define a series of $\displaystyle{\Sigma _{R}\subset \Sigma}$, and when $\displaystyle{R}$ grows, $\displaystyle{\Sigma _{R}}$ approaches to $\displaystyle{\Sigma}$. by same construction, we can show that same statement holds for unit volume...
