# problem 1

*find the curvature of the following planar curves*
1. $\displaystyle{\boldsymbol{\alpha}(t)=(a\cos t,b\sin t)}$

$$\begin{align}
\kappa(t) & =\frac{x'(t)y''(t)-y'(t)x''(t)}{(x'^{2}(t)+y'^{2}(t))^{3/2}} \\
 & =\frac{ab}{(a^{2}\sin^{2}t+b^{2}\cos^{2}t)^{3/2}}
\end{align}$$

2. $\displaystyle{\boldsymbol{\beta}(t)=(a\cosh t,b\sinh t)}$

$$\begin{align}
\kappa(t) & =\frac{x'(t)y''(t)-y'(t)x''(t)}{(x'^{2}(t)+y'^{2}(t))^{3/2}} \\
 & =-\frac{ab}{(a^{2}\sinh^{2}t+b^{2}\cosh^{2}t)^{3/2}}
\end{align}$$

# problem 2

*find the curvature and torsion of the following curvatures*
1. $\displaystyle{\boldsymbol{\alpha}(t)=(a\cosh t,a\sinh t,bt)}$

$$\begin{align}
\kappa(t) & =\frac{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|}{|\boldsymbol{\alpha}'(t)|^{3}} \\
 & =a\frac{\sqrt{ a^{2}+b^{2}\cosh2t }}{(b^{2}+a^{2}\cosh2t)^{3/2}} \\
\tau(t) & =\frac{(\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t))\cdot \boldsymbol{\alpha}'''(t)}{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|^{2}} \\
 & =\frac{b}{a^{2}+b^{2}\cosh 2t}
\end{align}$$

2. $\displaystyle{\boldsymbol{\beta}(t)=(3t-t^{2},3t^{2},3t+t^{2})}$

$$\begin{align}
\kappa(t) & =\frac{|\boldsymbol{\beta}'(t)\times \boldsymbol{\beta}''(t)|}{|\boldsymbol{\beta}'(t)|^{3}} \\
 & =\frac{3\sqrt{ 11 }}{(9+22t^{2})^{3/2}} \\
\tau(t) & =\frac{(\boldsymbol{\beta}'(t)\times \boldsymbol{\beta}''(t))\cdot \boldsymbol{\beta}'''(t)}{|\boldsymbol{\beta}'(t)\times \boldsymbol{\beta}''(t)|^{2}} \\
 & =0
\end{align}$$

# problem 3

*prove that for a regular space curve $\displaystyle{\boldsymbol{\alpha}(t)}$ the curvature and torsion satisfies*

$$\begin{align}
\kappa(t) & =\frac{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|}{|\boldsymbol{\alpha}'(t)|^{3}} \\
\tau(t) & =\frac{(\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t))\cdot \boldsymbol{\alpha}'''(t)}{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|^{2}}
\end{align}$$

the Frenet frame of $\displaystyle{\boldsymbol{\alpha}(t)}$ is given by

$$\begin{align}
\boldsymbol{T}(t) & =\frac{\boldsymbol{\alpha}'(t)}{|\boldsymbol{\alpha}'(t)|} \\
\boldsymbol{N}(t) & =\frac{\boldsymbol{T}'(t)}{|\boldsymbol{T}'(t)|} \\
 & =\frac{|\boldsymbol{\alpha}'(t)|\boldsymbol{\alpha}''(t)-(\boldsymbol{\alpha}'(t)\cdot \boldsymbol{\alpha}''(t))\boldsymbol{\alpha}'(t)}{|\boldsymbol{\alpha}'(t)|^{2}|\boldsymbol{T}'(t)|} \\
\boldsymbol{B}(t) & =\boldsymbol{T}(t)\times \boldsymbol{N}(t) \\
 & =\frac{\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)}{|\boldsymbol{\alpha}'(t)| |\boldsymbol{T}'(t)|}
\end{align}$$

by Frenet-Serret formulas, we have

$$\begin{align}
\kappa(t) & =|\boldsymbol{T}'(t)| \\
 & =\frac{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|}{|\boldsymbol{\alpha}'(t)|^{3}} \\
\tau(t) & =-\boldsymbol{B}'(t)\cdot \boldsymbol{N}(t) \\
 & =\frac{(\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t))\cdot \boldsymbol{\alpha}'''(t)}{|\boldsymbol{\alpha}'(t)\times \boldsymbol{\alpha}''(t)|^{2}}
\end{align}$$

# problem 4

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

# problem 5

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

# problem 6

*given the curvature of a planar curve $\displaystyle{\kappa(s)}$. find the curve up to a rigid motion.*
1. $\displaystyle{\kappa(s)=\frac{a}{a^{2}+s^{2}}}$

define $\displaystyle{\theta(s)=\int^{s}\kappa(s)\mathrm{d}s=\arctan \frac{s}{a}}$, then we have

$$\begin{align}
x(s) & =\int^{s}\cos \theta(s)\mathrm{d}s=\int^{s}\frac{a}{\sqrt{ a^{2}+s^{2} }}\mathrm{d}s=a\ln \left(s+\sqrt{ a^{2}+s^{2} }\right) \\
y(s) & =\int^{s}\sin \theta(s)\mathrm{d}s=\int^{s}\frac{s}{\sqrt{ a^{2}+s^{2} }}\mathrm{d}s=\sqrt{ a^{2}+s^{2} }
\end{align}$$

thus the curve is given by $\displaystyle{\boldsymbol{\alpha}(s)=\left(a\ln \left(s+\sqrt{ a^{2}+s^{2} }\right),\sqrt{ a^{2}+s^{2} }\right)}$ up to a rigid motion.

2. $\displaystyle{\kappa(s)=\frac{1}{\sqrt{ a^{2}-s^{2} }}}$

define $\displaystyle{\theta(s)=\int^{s}\kappa(s)\mathrm{d}s=\arcsin\frac{s}{a}}$, then we have

$$\begin{align}
x(s) & =\int^{s}\cos \theta(s)\mathrm{d}s=\int^{s} \frac{\sqrt{ a^{2}-s^{2} }}{a}\mathrm{d}s=\frac{a}{2}\left(\arctan\right) \\
y(s) & =\int^{s}\sin \theta(s)\mathrm{d}s=\int^{s}\frac{s}{a}\mathrm{d}s=\frac{s^{2}}{2a}
\end{align}$$

$$\begin{align}
1-\frac{s^{2}}{a^{2}}
\end{align}$$

thus the curve is given by $\displaystyle{\boldsymbol{\alpha}(s)=\left(\sqrt{ a^{2}-s^{2} },a\arcsin \frac{s}{a}\right)}$ up to a rigid motion.

# problem 7

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
1 & 0 & 0 \\
0 & -\frac{1}{2} & -\frac{\sqrt{ 3 }}{2}
\end{pmatrix}\begin{pmatrix}
2\cos t \\
2\sin t \\
-2t
\end{pmatrix}
\end{align}$$

and $\displaystyle{\det \begin{pmatrix}0 & \frac{\sqrt{ 3 }}{2} & -\frac{1}{2} \\1 & 0 & 0 \\0 & -\frac{1}{2} & -\frac{\sqrt{ 3 }}{2}\end{pmatrix}=1}$, thus these two curves are the same up to a rigid motion.

2. *find the curvature and torsion of $\displaystyle{\boldsymbol\alpha(t)}$*

we only neet to find the curvature and torsion of $\displaystyle{\boldsymbol\beta(t)}$, since they are the same curve. the Frenet frame is given by

$$\begin{align}
\boldsymbol{T}(t) & =\frac{\boldsymbol{\beta}'(t)}{|\boldsymbol{\beta}'(t)|} \\
 & =\left(-\frac{\sin t}{\sqrt{ 2 }},\frac{\cos t}{\sqrt{ 2 }},-\frac{1}{\sqrt{ 2 }}\right) \\
\boldsymbol{N}(t) & =\frac{\boldsymbol{T}'(t)}{|\boldsymbol{T}'(t)|} \\
 & =\left(-\cos t,-\sin t,0\right) \\
\boldsymbol{B}(t) & =\boldsymbol{T}(t)\times \boldsymbol{N}(t) \\
 & =\left(-\frac{\sin t}{\sqrt{ 2 }},\frac{\cos t}{\sqrt{ 2 }}\cos t,\frac{1}{\sqrt{ 2 }}\right)
\end{align}$$

then the curvature and torsion are given by

$$\begin{align}
\kappa(t) & =|T'(t)| \\
 & =\frac{1}{4} \\
\tau(t) & =-\boldsymbol{B}'(t)\cdot \boldsymbol{N}(t) \\
 & =-\frac{1}{4}
\end{align}$$
