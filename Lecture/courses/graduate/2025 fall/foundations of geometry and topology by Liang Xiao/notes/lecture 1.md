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
1. such curve is unique up to a rigid motion

for $\displaystyle{\vec{\alpha}(s)\subset \mathbb{R}^{3}}$, we define

$$\begin{align}
\vec{t}(s) & =\vec{\alpha}'(s) \\
\vec{n}(s) & =\frac{\vec{t}'}{|\vec{t}|} \\
\vec{b}(s) & =\vec{t}\times \vec{n}
\end{align}$$

then $\displaystyle{\left\{\vec{\alpha}(s);\vec{t}(s),\vec{n}(s),\vec{b}(s)\right\}}$ becomes a Frenet frame, and the Frenet formula reads

$$\begin{align}
\vec{t}' & = & +\kappa \vec{n} \\
\vec{n}' & =-\kappa \vec{n} &  &  & +\tau\vec{b} \\
\vec{b}' & = & -\tau\vec{n}
\end{align}$$

where $\displaystyle{\tau}$ is called the torsion. similar theorem holds for curves in $\displaystyle{\mathbb{R}^{3}}$:

suppose $\displaystyle{\kappa(s),\tau(s)}$ is a continuous differentiable function
1. $\displaystyle{\exists \vec{\alpha}(s)\subset \mathbb{R}^{3},\text{ s.t. }}$ its arc length parameter is $\displaystyle{s}$, its curvature is $\displaystyle{\kappa(s)}$, and its torsion is $\displaystyle{\tau(s)}$
1. such curve is unique up to a rigid motion

actually we have a theorem that we arbitrarily choose a unit frame $\displaystyle{\left\{\vec{r}(s);\vec{a}(s),\vec{b}(s),\vec{c}(s)\right\}}$, then

$$\begin{align}
\begin{pmatrix}
\vec{a}'(s) \\
\vec{b}'(s) \\
\vec{c}'(s)
\end{pmatrix} & =\begin{pmatrix}
 & \alpha & \beta \\
-\alpha &  & \gamma \\
-\beta & -\gamma
\end{pmatrix}\begin{pmatrix}
\vec{a}(s) \\
\vec{b}(s) \\
\vec{c}(s)
\end{pmatrix}
\end{align}$$
