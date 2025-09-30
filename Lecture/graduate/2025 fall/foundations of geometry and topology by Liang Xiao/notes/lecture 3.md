curve on surfaces in $\displaystyle{\mathbb{R}^{3}}$

consider a curve $\displaystyle{\gamma :[0,1]\to \mathbb{R}^{3}}$, $\displaystyle{t\mapsto \gamma (t)=(x(t),y(t),z(t))}$ on a surface $\displaystyle{S}$ defined by $\displaystyle{F(x,y,z)=0}$. the tangent vector of the curve is $\displaystyle{\gamma '(t)=(x'(t),y'(t),z'(t))}$. since the curve lies on the surface, we have

$$\begin{align}
F(x(t),y(t),z(t)) & =0
\end{align}$$

differentiating both sides with respect to $\displaystyle{t}$, we have

$$\begin{align}
\frac{\partial F}{\partial x}x'(t)+\frac{\partial F}{\partial y}y'(t)+\frac{\partial F}{\partial z}z'(t) & =\nabla F(\gamma (t))\cdot \gamma '(t)=0
\end{align}$$

thus the tangent vector $\displaystyle{\gamma '(t)}$ is orthogonal to the normal vector $\displaystyle{\nabla F(\gamma (t))}$ of the surface at the point $\displaystyle{\gamma (t)}$. therefore, the tangent plane of the surface at the point $\displaystyle{\gamma (t)}$ is given by

$$\begin{align}
\nabla F(\gamma (t))\cdot (X-\gamma (t)) & =0
\end{align}$$

the normal curvature of the curve $\displaystyle{\gamma }$ at the point $\displaystyle{\gamma (t)}$ is defined as the curvature of the curve obtained by intersecting the surface $\displaystyle{S}$ with the plane spanned by the tangent vector $\displaystyle{\gamma '(t)}$ and the normal vector $\displaystyle{\nabla F(\gamma (t))}$. to compute this, we can use the following formula:

$$\begin{align}
\kappa_n & =\frac{\gamma ''(t)\cdot \nabla F(\gamma (t))}{|\nabla F(\gamma (t))|}
\end{align}$$

thus the normal curvature depends on the second derivative of the curve and the gradient of the defining function of the surface.

---
