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

1. $\displaystyle{\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}-\frac{z^{2}}{c^{2}}=1}$

introduce

$$\begin{align}
x & =a\cosh \chi\cos \phi \\
y & =b\cosh \chi\sin \phi \\
z & =c\sinh \chi
\end{align}$$

with $\displaystyle{\chi \in \mathbb{R},\phi \in[0,2\pi]}$

1. $\displaystyle{z=\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}}$

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
\implies I & =\boldsymbol{x}_{u}\cdot \boldsymbol{x}_{u}\mathrm{d}u^{2}+2\boldsymbol{x}_{u}\cdot \boldsymbol{x}_{v}\mathrm{d}u\mathrm{d}v+\boldsymbol{x}_{v}\cdot \boldsymbol{x}_{v}\mathrm{d}v^{2} \\
 & =(f'^{2}+g'^{2})\mathrm{d}u^{2}+\mathrm{d}v^{2}
\end{align}$$

unit normal vector

$$\begin{align}
\boldsymbol{n}(u,v) & =\frac{\boldsymbol{x}_{u}\times \boldsymbol{x}_{v}}{|\boldsymbol{x}_{u}\times \boldsymbol{x}_{v}|} \\
 & =\frac{(g',-f',0)}{\sqrt{f'^{2}+g'^{2}}}
\end{align}$$

second fundamental forms

$$\begin{align}
\boldsymbol{x}_{uu}(u,v) & =(f'',g'',0) \\
\boldsymbol{x}_{uv}(u,v) & =(0,0,0) \\
\boldsymbol{x}_{vv}(u,v) & =(0,0,0) \\
\implies II & =\boldsymbol{n}\cdot \boldsymbol{x}_{uu}\mathrm{d}u^{2}+2\boldsymbol{n}\cdot \boldsymbol{x}_{uv}\mathrm{d}u\mathrm{d}v+\boldsymbol{n}\cdot \boldsymbol{x}_{vv}\mathrm{d}v^{2} \\
 & =\frac{g'f''-f'g''}{\sqrt{f'^{2}+g'^{2}}}\mathrm{d}u^{2}
\end{align}$$

Gaussian curvature

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}} \\
 & =0
\end{align}$$

mean curvature

$$\begin{align}
H & =\frac{EN+GL-2FM}{2(EG-F^{2})} \\
 & =\frac{(f'^{2}+g'^{2})(g'f''-f'g'')}{2(f'^{2}+g'^{2})^{3/2}} \\
 & =\frac{g'f''-f'g''}{2(f'^{2}+g'^{2})^{3/2}}
\end{align}$$

1. $\displaystyle{z=f(x,y)}$

write $\displaystyle{\boldsymbol{x}(x,y)=(x,y,f(x,y))}$. first fundamental forms

$$\begin{align}
\boldsymbol{x}_{x}(x,y) & =(1,0,f_{x}) \\
\boldsymbol{x}_{y}(x,y) & =(0,1,f_{y}) \\
\implies I & =\boldsymbol{x}_{x}\cdot \boldsymbol{x}_{x}\mathrm{d}x^{2}+2\boldsymbol{x}_{x}\cdot \boldsymbol{x}_{y}\mathrm{d}x\mathrm{d}y+\boldsymbol{x}_{y}\cdot \boldsymbol{x}_{y}\mathrm{d}y^{2} \\
 & =(1+f_{x}^{2})\mathrm{d}x^{2}+2f_{x}f_{y}\mathrm{d}x\mathrm{d}y+(1+f_{y}^{2})\mathrm{d}y^{2}
\end{align}$$

second fundamental forms

$$\begin{align}
\boldsymbol{n}(x,y) & =\frac{\boldsymbol{x}_{x}\times \boldsymbol{x}_{y}}{|\boldsymbol{x}_{x}\times \boldsymbol{x}_{y}|} \\
 & =\frac{(-f_{x},-f_{y},1)}{\sqrt{1+f_{x}^{2}+f_{y}^{2}}} \\
\boldsymbol{x}_{xx}(x,y) & =(0,0,f_{xx}) \\
\boldsymbol{x}_{xy}(x,y) & =(0,0,f_{xy}) \\
\boldsymbol{x}_{yy}(x,y) & =(0,0,f_{yy}) \\
\implies II & =\boldsymbol{n}\cdot \boldsymbol{x}_{xx}\mathrm{d}x^{2}+2\boldsymbol{n}\cdot \boldsymbol{x}_{xy}\mathrm{d}x\mathrm{d}y+\boldsymbol{n}\cdot \boldsymbol{x}_{yy}\mathrm{d}y^{2} \\
 & =\frac{f_{xx}}{\sqrt{1+f_{x}^{2}+f_{y}^{2}}}\mathrm{d}x^{2}+\frac{2f_{xy}}{\sqrt{1+f_{x}^{2}+f_{y}^{2}}}\mathrm{d}x\mathrm{d}y+\frac{f_{yy}}{\sqrt{1+f_{x}^{2}+f_{y}^{2}}}\mathrm{d}y^{2}
\end{align}$$

Gaussian curvature and mean curvature

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}} \\
 & =\frac{f_{xx}f_{yy}-f_{xy}^{2}}{(1+f_{x}^{2}+f_{y}^{2})^{2}} \\
M & =\frac{EN+GL-2FM}{2(EG-F^{2})} \\
 & =\frac{(1+f_{x}^{2})f_{yy}+(1+f_{y}^{2})f_{xx}-2f_{x}f_{y}f_{xy}}{2(1+f_{x}^{2}+f_{y}^{2})^{3/2}}
\end{align}$$

1. $\displaystyle{\boldsymbol{x}(u,v)=(f(u)\cos v,f(u)\sin v,g(u))}$ with $\displaystyle{f'^{2}+g'^{2}=1}$

first fundamental forms

$$\begin{align}
\boldsymbol{x}_{u}(u,v) & =(f'\cos v,f'\sin v,g') \\
\boldsymbol{x}_{v}(u,v) & =(-f\sin v,f\cos v,0) \\
\implies I & =\boldsymbol{x}_{u}\cdot \boldsymbol{x}_{u}\mathrm{d}u^{2}+2\boldsymbol{x}_{u}\cdot \boldsymbol{x}_{v}\mathrm{d}u\mathrm{d}v+\boldsymbol{x}_{v}\cdot \boldsymbol{x}_{v}\mathrm{d}v^{2} \\
 & =\mathrm{d}u^{2}+f^{2}\mathrm{d}v^{2}
\end{align}$$

second fundamental forms

$$\begin{align}
\boldsymbol{n}(u,v) & =\frac{\boldsymbol{x}_{u}\times \boldsymbol{x}_{v}}{|\boldsymbol{x}_{u}\times \boldsymbol{x}_{v}|} \\
 & =(-g'\cos v,-g'\sin v,f') \\
\boldsymbol{x}_{uu}(u,v) & =(f''\cos v,f''\sin v,g'') \\
\boldsymbol{x}_{uv}(u,v) & =(-f'\sin v,f'\cos v,0) \\
\boldsymbol{x}_{vv}(u,v) & =(-f\cos v,-f\sin v,0) \\
\implies II & =\boldsymbol{n}\cdot \boldsymbol{x}_{uu}\mathrm{d}u^{2}+2\boldsymbol{n}\cdot \boldsymbol{x}_{uv}\mathrm{d}u\mathrm{d}v+\boldsymbol{n}\cdot \boldsymbol{x}_{vv}\mathrm{d}v^{2} \\
 & =(-g'f''+f'g'')\mathrm{d}u^{2}+fg'\mathrm{d}v^{2}
\end{align}$$

Gaussian curvature and mean curvature

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}} \\
 & =\frac{(-g'f''+f'g'')g'}{f} \\
 & = \begin{cases} -\frac{f''}{f} & g' \neq 0 \\
0 & g' = 0
\end{cases}\\
H & =\frac{EN+GL-2FM}{2(EG-F^{2})} \\
 & =\frac{g'-fg'f''+ff'g''}{2f} \\
 & =\begin{cases} \frac{1}{2}\left(-\frac{f''}{g'}+\frac{g'}{f}\right) & g' \neq 0 \\
\frac{1}{2}g'' & g' = 0
\end{cases}
\end{align}$$

# problem 4

*given that the first fundamental form of a surface is $\displaystyle{I=\mathrm{d}r^{2}+r^{2}\mathrm{d}s^{2}}$, find its Christoffel symbol*

the nonzero Christoffel symbols are

$$\begin{align}
\Gamma ^{r}_{~ss} & =-r \\
\Gamma ^{s}_{~rs}=\Gamma ^{s}_{~sr} & =\frac{1}{r}
\end{align}$$

# problem 5

*prove that if the coefficients of the first and second fundamental forms of a surface $\displaystyle{E,F,G,L,M,N}$ are all constants, then the surface is a plane or a cylinder*

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}} \\
M & =\frac{EN+GL-2FM}{2(EG-F^{2})}
\end{align}$$

Theorema Egregium states that the Gaussian curvature $\displaystyle{K}$ is an intrinsic invariant of the surface, i.e.,

$$\begin{align}
K & =\frac{1}{(EG-F^{2})}\begin{vmatrix} -\frac{1}{2}G_{uu}+F_{uv}-\frac{1}{2}E_{vv} & \frac{1}{2}E_{u} & F_{u}-\frac{1}{2}E_{v} \\
F_{v}-\frac{1}{2}F_{u} & E & F \\
\frac{1}{2}G_{v} & F & G
\end{vmatrix}-\frac{1}{(EG-F^{2})^{2}}\begin{vmatrix}
0 & \frac{1}{2}E_{v} & \frac{1}{2}G_{u} \\
\frac{1}{2}E_{v} & E & F \\
\frac{1}{2}G_{u} & F & G
\end{vmatrix} \\
 & =0
\end{align}$$

notice that the Gauss curvature can be expressed as product of two principal curvatures $\displaystyle{K=\kappa_{1}\kappa_{2}}$. if $\displaystyle{K=0}$, then at least one of the principal curvatures is zero, which means that the surface is a plane ($\displaystyle{\kappa_{1}=\kappa_{2}=0}$) or a cylinder ($\displaystyle{\kappa_{1}=0,\kappa_{2}\neq 0}$.

# problem 6

*given the first fundamental form of a surface. find its Gauss curvature*
1. $\displaystyle{I=\mathrm{d}u^{2}+u^{2}\mathrm{d}v^{2}}$

choose $\displaystyle{\omega_{1}=\mathrm{d}u,\omega_{2}=u\mathrm{d}v}$, then by the structure equations

$$\begin{align}
\mathrm{d}\omega_{1} & =0 \\
\mathrm{d}\omega_{2} & =\mathrm{d}u\wedge \mathrm{d}v \\
\implies \omega _{12} & =\mathrm{d}v
\end{align}$$

then

$$\begin{align}
\mathrm{d}\omega_{12} & =0
\implies K & =0
\end{align}$$

1. $\displaystyle{I=\mathrm{d}u^{2}+\sin ^{2}u\mathrm{d}v^{2}}$

choose $\displaystyle{\omega_{1}=\mathrm{d}u,\omega_{2}=\sin u\mathrm{d}v}$, then by the structure equations

$$\begin{align}
\mathrm{d}\omega_{1} & =0 \\
\mathrm{d}\omega_{2} & =\cos u\mathrm{d}u\wedge \mathrm{d}v \\
\implies \omega _{12} & =\cos u\mathrm{d}v
\end{align}$$

then

$$\begin{align}
\mathrm{d}\omega _{12} & =-\sin u\mathrm{d}u\wedge \mathrm{d}v \\
 & =-\omega_{1}\wedge \omega _{2} \\
\implies K & =1
\end{align}$$

1. $\displaystyle{I=\frac{\mathrm{d}u^{2}+\mathrm{d}v^{2}}{(c+u^{2}+v^{2})^{2}}}$

choose $\displaystyle{\omega_{1}=\frac{\mathrm{d}u}{c+u^{2}+v^{2}},\omega_{2}=\frac{\mathrm{d}v}{c+u^{2}+v^{2}}}$, then by the structure equations

$$\begin{align}
\mathrm{d}\omega_{1} & = \frac{2v}{(c+u^{2}+v^{2})^{2}}\mathrm{d}u\wedge \mathrm{d}v \\
\mathrm{d}\omega_{2} & =-\frac{2u}{(c+u^{2}+v^{2})}\mathrm{d}u\wedge \mathrm{d}v \\
\implies \omega _{12} & =\frac{2v\mathrm{d}u-2u\mathrm{d}v}{c+u^{2}+v^{2}}
\end{align}$$

then

$$\begin{align}
\mathrm{d}\omega _{12} & =-\frac{4c}{(c+u^{2}+v^{2})^{2}}\mathrm{d}u\wedge \mathrm{d}v \\
\implies K & =4c
\end{align}$$

# problem 7

*suppose $\displaystyle{F_{\lambda}(x,y,z)=\frac{x^{2}}{a-\lambda}+\frac{y^{2}}{b-\lambda}+\frac{z^{2}}{c-\lambda}}$ with $\displaystyle{a>b>c>0}$. when $\displaystyle{\lambda \in(-\infty,c)}$, $\displaystyle{F_{\lambda}=1}$ gives a family of ellipsoids; when $\displaystyle{\lambda \in(c,b)}$, $\displaystyle{F_{\lambda}=1}$ gives a family of one-sheeted hyperboloids; when $\displaystyle{\lambda \in(b,a)}$, $\displaystyle{F_{\lambda}=1}$ gives a family of two-sheeted hyperboloids. prove that for any point $\displaystyle{P=(x,y,z)\in \mathbb{R}^{3} }$ with $\displaystyle{xyz \neq 0}$, there exist exactly three quadratic surfaces passing through $\displaystyle{P}$, one from each of these three families, and these three surfaces are mutually orthogonal at $\displaystyle{P}$*

# problem 8

*find the mean curvature of $\displaystyle{\boldsymbol{x}(u,v)=(u\cos v,u\sin v,bv)}$*

# problem 9

*is there a surface that has $\displaystyle{\varphi}$ and $\displaystyle{\psi}$ as its first and second fundamental forms?*
1. $\displaystyle{\varphi=\mathrm{d}u^{2}+\mathrm{d}v^{2},\psi=\mathrm{d}u^{2}-\mathrm{d}v^{2}}$

from the first fundamental form

$$\begin{align}
\omega_{1} & =\mathrm{d}u \\
\omega_{2} & =\mathrm{d}v
\end{align}$$

notice that the principal curvatures are $\displaystyle{\kappa_{1}=1,\kappa_{2}=-1}$, which gives $\displaystyle{K=\kappa_{1}\kappa_{2}=-1}$, contradicting the fact that the Gaussian curvature of the metric $\displaystyle{\varphi=\mathrm{d}u^{2}+\mathrm{d}v^{2}}$ is $\displaystyle{K=0}$. so there is no such surface.

1. $\displaystyle{\varphi=\mathrm{d}u^{2}+\cos ^{2}u\mathrm{d}v^{2},\psi=\cos ^{2}u\mathrm{d}u^{2}+\mathrm{d}v^{2}}$

from the first fundamental form

$$\begin{align}
\omega_{1} & =\mathrm{d}u \\
\omega_{2} & =\cos u\mathrm{d}v \\
\implies \mathrm{d}\omega _{2} & =\sin u\mathrm{d}u\wedge \mathrm{d}v \\
\implies \omega _{12} & =-\sin u\mathrm{d}v
\end{align}$$

from the second fundamental form

$$\begin{align}
\omega _{13} & =\cos ^{2}u\mathrm{d}u \\
\omega _{23} & =\frac{1}{\cos u}\mathrm{d}v
\end{align}$$

the Codazzi equations require

$$\begin{align}
\mathrm{d}\omega _{23} & =\omega _{21}\wedge \omega _{13}
\end{align}$$

but it is not satisfied here. so there is no such surface.

# problem 10

*suppose $\displaystyle{\left\{\boldsymbol{e}_{1},\boldsymbol{e}_{2}\right\}}$ is an orthonormal frame on a surface, $\displaystyle{\boldsymbol{e}_{1},\boldsymbol{e}_{2}}$ are the principal directions with corresponding principal curvatures $\displaystyle{k_{1},k_{2}}$. prove that the Codazzi equations are equivalent to $\displaystyle{\mathrm{d}k_{1}\wedge \omega_{1}=(k_{2}-k_{1})\omega _{12}\wedge \omega _{2},\mathrm{d}k_{2}\wedge \omega _{2}=(k_{1}-k_{2})\omega _{21}\wedge \omega_{1}}$*

suppose $\displaystyle{\omega_{1},\omega_{2}}$ are the dual forms of $\displaystyle{\boldsymbol{e}_{1},\boldsymbol{e}_{2}}$, then by the structure equations

$$\begin{align}
\mathrm{d}\omega_{1} & =-\omega _{12}\wedge \omega _{2} \\
\mathrm{d}\omega_{2} & =-\omega _{21}\wedge \omega _{1}
\end{align}$$

since $\displaystyle{\boldsymbol{e}_{1},\boldsymbol{e}_{2}}$ are the principal directions, then

$$\begin{align}
\omega _{31}=k_{1}\omega_{1},\omega _{32}=k_{2}\omega_{2}
\end{align}$$

Codazzi equations read

$$\begin{align}
\mathrm{d}\omega _{31} & =\omega _{32}\wedge \omega _{21} \\
\text{LHS} & =\mathrm{d}k_{1}\wedge \omega_{1}+k_{1}\mathrm{d}\omega_{1} \\
 & =\mathrm{d}k_{1}\wedge \omega_{1}+k_{1}(-\omega _{12}\wedge \omega _{2}) \\
\text{RHS} & =k_{2}\omega_{2}\wedge \omega _{21} \\
\implies \mathrm{d}k_{1}\wedge \omega_{1} & =(k_{2}-k_{1})\omega _{12}\wedge \omega_{2}
\end{align}$$

similarly, we have

$$\begin{align}
\mathrm{d}k_{2}\wedge \omega_{2} & =(k_{1}-k_{2})\omega _{21}\wedge \omega_{1}
\end{align}$$
