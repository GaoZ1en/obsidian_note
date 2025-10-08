# problem 1

*find the parametric representation of the following surfaces*
1. $\displaystyle{\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}+\frac{z^{2}}{c^{2}}=1}$

introduce

$$\begin{align}
x & =a\sin \theta \cos \phi \\
y & =b\sin \theta \sin \phi \\
z & =c\cos \theta
\end{align}$$

with $\displaystyle{\theta \in[0,\pi],\phi \in[0,2\pi]}$

2. $\displaystyle{\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}-\frac{z^{2}}{c^{2}}=1}$

introduce

$$\begin{align}
x & =a\cosh \chi\cos \phi \\
y & =b\cosh \chi\sin \phi \\
z & =c\sinh \chi
\end{align}$$

with $\displaystyle{\chi \in \mathbb{R},\phi \in[0,2\pi]}$

3. $\displaystyle{z=\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}}$

introduce

$$\begin{align}
x & =au\cos \phi \\
y & =bu\sin \phi \\
z & =u^{2}
\end{align}$$

with $\displaystyle{u\in[0,\infty),\phi \in[0,2\pi]}$

# problem 2

*prove that at any point on a regular surface, the sum of the normal curvatures in any two mutually orthogonal tangent directions is constant*

suppose $\displaystyle{S}$ is a regular surface and $\displaystyle{p \in S}$. at point $\displaystyle{p}$, there exists two principal directions with corresponding principal curvatures $\displaystyle{\kappa_{1}}$ and $\displaystyle{\kappa_{2}}$. let $\displaystyle{\vec{e}_{1},\vec{e}_{2}}$ be the unit vectors along the principal directions at $\displaystyle{p}$, and let $\displaystyle{\vec{v},\vec{w}}$ be any two mutually orthogonal unit tangent vectors at $\displaystyle{p}$, that can be expressed as

$$\begin{align}
\begin{pmatrix}
\vec{v} \\
\vec{w}
\end{pmatrix} & =\begin{pmatrix}
\cos \theta & \sin \theta \\
-\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
\vec{e}_{1} \\
\vec{e}_{2}
\end{pmatrix}
\end{align}$$

then the normal curvatures corresponding to $\displaystyle{\vec{v}}$ and $\displaystyle{\vec{w}}$ are given by

$$\begin{align}
\kappa _{\vec{v}} & =\kappa_{1}\cos ^{2}\theta+\kappa _{2}\sin ^{2}\theta \\
\kappa _{\vec{w}} & =\kappa_{1}\sin ^{2}\theta+\kappa_{2}\cos ^{2}\theta
\end{align}$$

then

$$\begin{align}
\kappa _{\vec{v}}+\kappa _{\vec{2}} & =\kappa_{1}+\kappa_{2}
\end{align}$$

which is exactly a constant.

# problem 3

*find the first fundamental forms, the second fundamental forms, the Gaussian curvature and the mean curvature of the following surfaces*
1. $\displaystyle{\boldsymbol{x}(u,v)=(f(u),g(u),v)}$

first fundamental forms

$$\begin{align}
\boldsymbol{x}_{u}(u,v) & =(f',g',0) \\
\boldsymbol{x}_{v}(u,v) & =(0,0,1) \\
\implies I & =(f'^{2}+g'^{2})\mathrm{d}u^{2}+\mathrm{d}v^{2}
\end{align}$$

unit normal vector

$$\begin{align}
\vec{n}(u,v) & =
\end{align}$$

2. $\displaystyle{z=f(x,y)}$
3. $\displaystyle{\boldsymbol{x}(u,v)=(f(u)\cos v,f(u)\sin v,g(u))}$ with $\displaystyle{f'^{2}+g'^{2}=1}$

