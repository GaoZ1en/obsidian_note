# problem 1

*prove that $\displaystyle{\boldsymbol{\alpha}(s)=\left(\frac{(1+s)^{3/2}}{3},\frac{(1-s)^{3/2}}{3},\frac{s}{\sqrt{ 2 }}\right),-1<s<1}$ is parametrized by arc length $\displaystyle{s}$. evaluate its curvature, torsion and Frenet frame.*

suppose $\displaystyle{s'}$ is the arc length parameter of $\displaystyle{\boldsymbol{\alpha}(s)}$. then we have

$$\begin{align}
\frac{\mathrm{d}s'}{\mathrm{d}s} & =|\boldsymbol{\alpha}'(s)| \\
 & =\left| \frac{1}{4}(1+s)+\frac{1}{4}(1-s)+\frac{1}{2}\right| \\
 & =1
\end{align}$$

thus $\displaystyle{s'=s+C}$ for some constant . we can choose $\displaystyle{C=0}$ so that $\displaystyle{s'=s}$. thus $\displaystyle{\boldsymbol{\alpha}(s)}$ is parametrized by arc length. the Frenet frame is given by

$$\begin{align}
\boldsymbol{T}(s) & =\boldsymbol{\alpha}'(s) \\
 & =\left(\frac{\sqrt{ 1+s }}{2},-\frac{\sqrt{ 1-s }}{2},\frac{1}{\sqrt{ 2 }}\right) \\
\boldsymbol{N}(s) & =\frac{\boldsymbol{T}'(s)}{|\boldsymbol{T}'(s)|} \\
 & =\left(\frac{\sqrt{ 1-s }}{\sqrt{ 2 }},\frac{\sqrt{ 1+s }}{\sqrt{ 2 }},0\right) \\
\boldsymbol{B}(s) & =\boldsymbol{T}(s)\times \boldsymbol{N}(s) \\
 & =\left(-\frac{\sqrt{ 1+s }}{2},-\frac{\sqrt{ 1-s }}{2},\frac{1}{\sqrt{ 2 }}\right)
\end{align}$$

then the curvature and torsion are given by

$$\begin{align}
\kappa(s) & =|T'(s)| \\
 & =\sqrt{ \frac{1}{8(1-s^{2})} } \\
\tau(s) & =-\boldsymbol{B}'(s)\cdot \boldsymbol{N}(s) \\
 & =\sqrt{ \frac{1}{8(1-s^{2})} }
\end{align}$$

# problem 2

1. *suppose all the tangents of a space curve $\displaystyle{C}$ pass through a fixed point. prove that $\displaystyle{C}$ is a straight line.*

suppose the tangent of curve $\displaystyle{C:\boldsymbol{\alpha}(s)}$ is $\displaystyle{\boldsymbol{T}(s)}$ pass through a fixed point, say the origin $\displaystyle{O}$. then we have

$$\begin{align}
0=\boldsymbol{\alpha}(s)+\lambda(s) \boldsymbol{T}(s)
\end{align}$$

for some function $\displaystyle{\lambda(s)}$. differentiating both sides with respect to $\displaystyle{s}$, we have

$$\begin{align}
0 & =\left(1+\lambda'(s)\right)\boldsymbol{T}(s)+\lambda(s)\kappa(s)\boldsymbol{N}(s)
\end{align}$$

since $\displaystyle{\boldsymbol{T}(s)}$ and $\displaystyle{\boldsymbol{N}(s)}$ are linearly independent, we have

$$\begin{align}
1+\lambda'(s) & =0 \\
\lambda(s)\kappa(s) & =0 \\
\implies \lambda(s) & =-s+C \\
\kappa(s) & =0
\end{align}$$

thus the curvature of curve $\displaystyle{C}$ is zero, which means $\displaystyle{C}$ is a straight line.

2. *suppose all the principal normals of a space curve $\displaystyle{C}$ pass through a fixed point. prove that $\displaystyle{C}$ is a circle*

following the same idea as above, we have

$$\begin{align}
0=\boldsymbol{\alpha}(s)+\mu(s) \boldsymbol{N}(s)
\end{align}$$

for some function $\displaystyle{\mu(s)}$. differentiating both sides with respect to $\displaystyle{s}$, we have

$$\begin{align}
0 & =\left(1-\mu(s)\kappa(s)\right)\boldsymbol{T}(s)+\mu'(s)\boldsymbol{N}(s)+\mu(s)\tau(s)\boldsymbol{B}(s)
\end{align}$$

since $\displaystyle{\boldsymbol{T}(s)}$, $\displaystyle{\boldsymbol{N}(s)}$ and $\displaystyle{\boldsymbol{B}(s)}$ are linearly independent, we have

$$\begin{align}
1-\mu(s)\kappa(s) & =0 \\
\mu'(s) & =0 \\
\mu(s)\tau(s) & =0 \\
\implies \mu(s) & =\frac{1}{\kappa(s)}=\text{Const.} \\
\tau(s) & =0
\end{align}$$

thus the torsion of curve $\displaystyle{C}$ is zero, which means $\displaystyle{C}$ is a plane curve. since the radius of curvature is constant, $\displaystyle{C}$ is a circle.

# problem 3

*given the curvature of a planar curve $\displaystyle{\kappa(s)}$. find the curve up to a rigid motion.*
1. $\displaystyle{\kappa(s)=\frac{a}{a^{2}+s^{2}}}$

let 




2. $\displaystyle{\kappa(s)=\frac{1}{\sqrt{ a^{2}-s^{2} }}}$



# problem 4

*suppose we have two curves $\displaystyle{\boldsymbol{\alpha}(t)=\left(t+\sqrt{ 3} \sin t,2\cos t,\sqrt{ 3 }t-\sin t\right)}$ and $\displaystyle{\boldsymbol{\beta}(t)=\left(2\cos t,2\sin t,-2t\right)}$*
1. *prove that these two curves are the same up to a rigid motion.*

notice that

$$\begin{align}
\begin{pmatrix}
t+\sqrt{ 3 }\sin t \\
2\cos t \\
\sqrt{ 3 }t-\sin t
\end{pmatrix} & =\begin{pmatrix}
0 & \frac{\sqrt{ 3 }}{2} & -\frac{1}{2} \\
\frac{\sqrt{ 3 }}{2} & \frac{1}{2} & 0 \\
0 & 0 & 1
\end{pmatrix}\begin{pmatrix}
2\cos t \\
2\sin t \\
-2t
\end{pmatrix}
\end{align}$$



2. *find the curvature and torsion of $\displaystyle{\alpha(t)}$*