in general it is hard to solve the arc parameter $\displaystyle{s}$, and we can express curvature $\displaystyle{\kappa}$ and torsion $\displaystyle{\tau}$ via other parameter as

$$\begin{align}
\nu(t) & =|\dot{\alpha}| \\
 & =\sqrt{ \dot{x}^{2}+\dot{y}^{2}+\dot{z}^{2} } \\
T(t) & =\frac{\alpha'}{\nu} \\
 & =\frac{x',y',z'}{\sqrt{ \dot{x}^{2}+\dot{y}^{2}+\dot{z}^{2} }} \\
N(t) & =\frac{T'}{|T'|} \\
B(t) & =T\times N \\
\kappa(t) & =\frac{|\dot{T}|}{\nu} \\
\tau(t) & =\frac{(T\times \dot{T})\cdot \ddot{T}}{|\dot{T}|^{2}\nu} \\
\end{align}$$

and the Frenet-Serret equations become

$$\begin{align}
\begin{cases}
\dot{T}= & +\nu \kappa N \\
\dot{N}=-\nu \kappa T &  & +\nu \tau B \\
\dot{B}= & -\nu \tau N
\end{cases}
\end{align}$$

---

surfaces in $\displaystyle{\mathbb{R}^{3}}$

a surface $\displaystyle{S}$ in $\displaystyle{\mathbb{R}^{3}}$ can be represented by a parametric equation

$$\begin{align}
\alpha(u,v) & =(x(u,v),y(u,v),z(u,v)),\quad (u,v)\in D\subset \mathbb{R}^{2}
\end{align}$$

the tangent vectors are

$$\begin{align}
\alpha_{u} & =\frac{\partial \alpha}{\partial u}=(x_{u},y_{u},z_{u}) \\
\alpha_{v} & =\frac{\partial \alpha}{\partial v}=(x_{v},y_{v},z_{v})
\end{align}$$

the normal vector is

$$\begin{align}
n & =\frac{\alpha_{u}\times \alpha_{v}}{|\alpha_{u}\times \alpha_{v}|}
\end{align}$$

the first fundamental form is

$$\begin{align}
I & =\mathrm{d}\alpha \cdot \mathrm{d}\alpha \\
 & =E\mathrm{d}u^{2}+2F\mathrm{d}u\mathrm{d}v+G\mathrm{d}v^{2}
\end{align}$$

where

$$\begin{align}
E & =\alpha_{u}\cdot \alpha_{u} \\
F & =\alpha_{u}\cdot \alpha_{v} \\
G & =\alpha_{v}\cdot \alpha_{v}
\end{align}$$

the second fundamental form is

$$\begin{align}
II & =-\mathrm{d}n \cdot \mathrm{d}\alpha \\
 & =L\mathrm{d}u^{2}+2M\mathrm{d}u\mathrm{d}v+N\mathrm{d}v^{2}
\end{align}$$

where

$$\begin{align}
L & =n \cdot \alpha_{uu} \\
M & =n \cdot \alpha_{uv} \\
N & =n \cdot \alpha_{vv}
\end{align}$$

the Gaussian curvature is

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}}
\end{align}$$

the mean curvature is

$$\begin{align}
H & =\frac{EN-2FM+GL}{2(EG-F^{2})}
\end{align}$$

reformulate above results in modern differential geometry language

let $\displaystyle{M}$ be a 2-dimensional manifold, and $\displaystyle{\alpha:U\subset \mathbb{R}^{2}\to M}$ be a local chart, then the tangent vectors are

$$\begin{align}
\alpha_{u} & =\frac{\partial \alpha}{\partial u} \\
\alpha_{v} & =\frac{\partial \alpha}{\partial v}
\end{align}$$

the metric tensor is

$$\begin{align}
g & =\begin{pmatrix}
E & F \\
F & G
\end{pmatrix}
\end{align}$$

the normal vector is a section of the normal bundle $\displaystyle{NM}$, which is a rank 1 vector bundle over $\displaystyle{M}$

$$\begin{align}
n & \in \Gamma(NM)
\end{align}$$

the second fundamental form is a symmetric bilinear form on the tangent bundle $\displaystyle{TM}$ with values in the normal bundle $\displaystyle{NM}$

$$\begin{align}
II & :TM\times TM\to NM \\
II(X,Y) & =-n \cdot \nabla_{X}Y
\end{align}$$

where $\displaystyle{\nabla}$ is the Levi-Civita connection on $\displaystyle{M}$ induced by the metric $\displaystyle{g}$

the Gaussian curvature is a scalar function on $\displaystyle{M}$

$$\begin{align}
K & :M\to \mathbb{R}
\end{align}$$

which is exactly the exterior curvature of the surface in $\displaystyle{\mathbb{R}^{3}}$, and can be computed as

$$\begin{align}
K & =\frac{\det(II)}{\det(g)} \\
 & =\kappa_{1}\kappa_{2}
\end{align}$$

The mean curvature is also a scalar function on $\displaystyle{M}$

$$\begin{align}
H & :M\to \mathbb{R}
\end{align}$$

which is the average of the principal curvatures of the surface in $\displaystyle{\mathbb{R}^{3}}$

$$\begin{align}
H & =\frac{1}{2}(\kappa_{1}+\kappa_{2})
\end{align}$$

Gauss Theorema Egregium states that the Gaussian curvature $\displaystyle{K}$ is an intrinsic invariant of the surface, i.e., it can be computed solely from the metric $\displaystyle{g}$ without reference to the embedding in $\displaystyle{\mathbb{R}^{3}}$.

the Gauss-Codazzi equations relate the intrinsic and extrinsic geometry of the surface

$$\begin{align}
R(X,Y,Z,W) & =II(X,W)II(Y,Z)-II(X,Z)II(Y,W)
\end{align}$$

where $\displaystyle{R}$ is the Riemann curvature tensor of the surface $\displaystyle{M}$, and $\displaystyle{X,Y,Z,W\in TM}$ are tangent vectors.

the Codazzi-Mainardi equations are

$$\begin{align}
(\nabla_{X}II)(Y,Z) & =(\nabla_{Y}II)(X,Z)
\end{align}$$

where $\displaystyle{\nabla}$ is the Levi-Civita connection on $\displaystyle{M}$.
