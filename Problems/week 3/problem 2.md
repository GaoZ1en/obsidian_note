# problem

Weyl law states that for a $\displaystyle{d}$ dimensional compact manifold $\displaystyle{\Sigma}$, the asymptotic behavior of spectrum distribution of the Laplace-Beltrami operator $\displaystyle{\Delta}$ satisfies

$$\begin{align}
N(\lambda)\sim \frac{\omega _{n}\mathrm{Vol}(\Sigma)}{(2\pi)^{n}}\lambda ^{n/2}+\mathcal{O}(\lambda ^{(n-1)/2})
\end{align}$$

where $\displaystyle{N(\lambda)}$ is the counting function of eigenvalues:

$$\begin{align}
N(\lambda) &= \#\{n : \lambda_n \leq \lambda\}
\end{align}$$

and $\displaystyle{\omega _{n}}$ is the volume of unit sphere $\displaystyle{S^{n}}$. 

consider the amplitude $\displaystyle{\braket{ 0|0' }}$, in which $\displaystyle{\ket{0},\ket{0'}}$ is the vacuum of free scalar field defined in $\displaystyle{M=\mathbb{R}\times \Sigma}$, where $\displaystyle{\Sigma}$ is a $\displaystyle{d-1}$ dimensional compact manifold, with action

$$\begin{align}
S & =-\frac{1}{2}\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2}) \\
S' & =-\frac{1}{2}\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}$$

where $\displaystyle{m\neq m'}$. and $\displaystyle{\sqrt{ -g }}$ is the determinant of the metric on $\displaystyle{M}$. and the metric of $\displaystyle{M}$ is given by

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b}
\end{align}$$

where $\displaystyle{\sigma _{ab}}$ is the metric on $\displaystyle{\Sigma}$.

the question is under what $\displaystyle{d}$ the amplitude $\displaystyle{\braket{ 0|0' }=0}$?

# answer

when $\displaystyle{d\geqslant 4}$, the amplitude $\displaystyle{\braket{ 0|0' }=0}$

# solution

the eom of the scalar field is given by

$$\begin{align}
\left( -\partial _{t}^{2}+\Delta _{\Sigma}-m^{2} \right)\phi & =0
\end{align}$$

suppose the eigenvalue problem

$$\begin{align}
\Delta _{\Sigma}\phi _{n} & =-\lambda _{n}\phi _{n}
\end{align}$$

has discrete eigenvalues $\displaystyle{\lambda _{n}}$ and orthonormal eigenfunctions $\displaystyle{\phi _{n}}$ (this is guaranteed by the compactness of $\displaystyle{\Sigma}$). expand the field as

$$\begin{align}
\phi (t,x) & =\sum _{n}a_{n}(t)\phi _{n}(x)
\end{align}$$

then the action becomes

$$\begin{align}
S & =\frac{1}{2}\int \mathrm{d}t\sum _{n}\left( \dot{a}_{n}^{2}-\omega _{n}^{2}a_{n}^{2} \right)
\end{align}$$

where $\displaystyle{\omega _{n}^{2}=\lambda _{n}^{2}+m^{2}}$. similarly, for the action $\displaystyle{S'}$, we have

$$\begin{align}
S' & =\frac{1}{2}\int \mathrm{d}t\sum _{n}\left( \dot{a}_{n}^{2}-\omega _{n}^{'2}a_{n}^{2} \right)
\end{align}$$

where $\displaystyle{\omega _{n}^{'2}=\lambda _{n}^{2}+m^{'2}}$. denote $\displaystyle{\omega _{n}=\omega _{n}'e^{-2\theta _{n}}}$, the inner product of their vacuum is given by

$$\begin{align}
\braket{ 0|0' }  & =\prod ^{\infty}_{n} \frac{1}{\sqrt{ \cosh \theta _{n} }} \\
 & =\exp \left( -\frac{1}{2}\sum ^{\infty}_{n}\ln\left( \frac{1}{2}\left(\sqrt{ \frac{\omega _{n}}{\omega _{n}'} }+\sqrt{ \frac{\omega _{n}'}{\omega _{n}} }\right) \right) \right) \\
 & =\exp\left(-\frac{1}{2}\sum ^{\infty}_{n} \frac{(m^{2}-m^{'2})^{2}}{8\lambda _{n}^{2}}\right) \\
 & \sim C\exp\left(-\frac{(m^{2}-m^{'2})^{2}}{16}\int ^{\infty}_{\Lambda}\mathrm{d}N(\lambda) \lambda ^{-2} \right)
\end{align}$$

by Weyl's law, the eigenvalue counting function $\displaystyle{N(\lambda)=\#\{ n|\lambda _{n}\leq \lambda \}}$ has the following asymptotic behavior

$$\begin{align}
N(\lambda) & \sim \frac{\omega _{d}\mathrm{Vol}(\Sigma)}{(2\pi)^{d}}\lambda ^{d/2}+\mathcal{O}(\lambda ^{(d-1)/2})
\end{align}$$

then

$$\begin{align}
\braket{ 0|0' } &  \sim C\exp\left(-\frac{(m^{2}-m'^{2})^{2}}{32} \frac{d\omega _{d}\mathrm{Vol}(\Sigma)}{(2\pi)^{d}}\int _{\Lambda}^{\infty}\lambda ^{d/2-3}\mathrm{d}\lambda\right) \\
 & =\begin{cases}
0 & d\geqslant 4 \\
\text{finite} & d\leqslant 3
\end{cases}
\end{align}$$

thus when $\displaystyle{d\geqslant 4}$, the amplitude $\displaystyle{\braket{ 0|0' }=0}$.

