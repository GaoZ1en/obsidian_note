---
references: differential geometry of curves and surfaces by K. Tapp, basic topology by Armstrong
---

curve. suppose $\displaystyle{\vec{r}(t)=\left(x(t),y(t),z(t)\right)}$, then we can define arc length $\displaystyle{s(t)}$ as

$$\begin{align}
s(t) & =\int _{t_{0}}^{t}|\mathrm{d}\vec{r}| \\
 & =\int _{t_{0}}^{t}\sqrt{ x'(u)^{2}+y'(u)^{2}+z'(u)^{2} }\mathrm{d}u
\end{align}$$

for a 2-dimensional curve $\displaystyle{\vec{\alpha}(s)}$, introduce its unit tangent vector $\displaystyle{\vec{t}(s)}$ and unit normal vector $\displaystyle{\vec{n}(s)}$ as

$$\begin{align}
\vec{t}(s) & =\frac{\mathrm{d}}{\mathrm{d}s}\vec{\alpha}(s) \\
\vec{n}(s) & =\frac{\mathrm{d}\vec{t}}{\mathrm{d}s}/\left|\frac{\mathrm{d}\vec{t}}{\mathrm{d}s}\right|
\end{align}$$

then we call $\displaystyle{\left\{\vec{\alpha}(s);\vec{t}(s),\vec{n}(s)\right\}}$ the Frenet frame, and we have the Frenet formula

$$\begin{align}
\frac{\mathrm{d}\vec{t}}{\mathrm{d}s} & = & +\kappa \vec{n} \\
\frac{\mathrm{d}\vec{n}}{\mathrm{d}s} & =-\kappa \vec{t}
\end{align}$$

where $\displaystyle{\kappa}$ is called the curvature. we have the following **fundamental theorem of planar curve**:

suppose $\displaystyle{\kappa(s)}$ is a continuous differentiable function
1. $\displaystyle{\exists \vec{\alpha}(s)\subset \mathbb{R}^{2},\text{ s.t. }}$ its arc length parameter is $\displaystyle{s}$ and its curvature is $\displaystyle{\kappa(s)}$
2. such curve