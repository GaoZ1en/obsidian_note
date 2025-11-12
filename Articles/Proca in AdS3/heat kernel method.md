# heat kernel method and $\displaystyle{\mathbb{H}_{3}}$

the partition function

$$\begin{align}
Z & =\int \mathcal{D}\phi e^{-g^{-2}S[\phi]} \\
S[\phi] & =\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\phi \Delta \phi
\end{align}$$

at 1-loop, one has

$$\begin{align}
Z & = \frac{1}{(\det \Delta)^{1/2}}\\
\implies \ln Z=S^{(1)} & =-\frac{1}{2}\ln \det(\Delta)=-\frac{1}{2}\sum _{n}\ln \lambda _{n}
\end{align}$$

where $\displaystyle{\lambda _{n}}$ are the eigenvalues of the Laplacian operator $\displaystyle{\Delta}$. the heat kernel $\displaystyle{K(t,x,y)}$ is a function of two points $\displaystyle{x}$ and $\displaystyle{y}$ on $\displaystyle{\mathcal{M}}$, defined as

$$\begin{align}
K(t,x,y) & =\sum _{n}e^{-\lambda _{n}t}\psi _{n}(x)\psi _{n}^{*}(y)
\end{align}$$

where $\displaystyle{\psi _{n}(x)}$ are the eigenfunctions of $\displaystyle{\Delta}$ satisfying

$$\begin{align}
\sum _{n}\psi _{n}(x)\psi _{n}^{*}(y) & =\delta ^{d}(x-y) \\
\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\psi _{n}(x)\psi _{m}^{*}(x) & =\delta _{nm}
\end{align}$$

the trace of the heat kernel is given by

$$\begin{align}
\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }K(t,x,x) & =\sum _{n}e^{-\lambda _{n}t} \\
\implies S^{(1)} & =-\frac{1}{2}\sum _{n}\ln \lambda _{n} \\
 & =\frac{1}{2}\int ^{\infty}_{0^{+}} \frac{\mathrm{d}t}{t}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }K(t,x,x)
\end{align}$$

the heat kernel satisfies the heat equation

$$\begin{align}
\partial _{t}K(t,x,y)+\Delta _{x}K(t,x,y) & =0
\end{align}$$

with the initial condition

$$\begin{align}
K(0,x,y) & =\delta ^{d}(x-y)
\end{align}$$

in this note we will consider $\displaystyle{\mathcal{M}=\mathbb{H}_{3}}$, the Euclidean AdS$_{3}$ space with the metric

$$\begin{align}
\mathrm{d}s^{2} & =g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} =\frac{\mathrm{d}y^{2}+\mathrm{d}z\mathrm{d}\bar{z}}{y^{2}}
\end{align}$$

with $\displaystyle{y>0}$ and $\displaystyle{z}$ is a complex coordinate. since the space $\displaystyle{\mathbb{H}^{3}}$ is maximally symmetric, the heat kernel $\displaystyle{K(t,x,x')}$ will depend on $\displaystyle{x}$ and $\displaystyle{x'}$ only through the geodesic distance

$$\begin{align}
r(x,x') & =\mathrm{arccosh}(1+u(x,x')) \\
u(x,x') & =\frac{(y-y')^{2}+|z-z'|^{2}}{2yy'}
\end{align}$$

# scalar field in $\displaystyle{\mathbb{H}_{3}}$

we consider a free scalar field with the action

$$\begin{align}
S & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\left( g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi +\mu^{2}\phi ^{2} \right) \\
 & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\phi (-\Delta +\mu^{2})\phi
\end{align}$$

the heat kernel satisfies

$$\begin{align}
(\nabla _{x}^{2}-\mu ^{2} )K(t,x,x') & =\delta ^{3}(x-x') \\
\delta ^{3}(x-x') & = \frac{1}{\sqrt{ g(x) }}\delta(y-y')\delta ^{2}(z-z')
\end{align}$$

since the heat kernel only depends on the geodesic distance $\displaystyle{r(x,x')}$, we can rewrite the Laplacian operator as

$$\begin{align}
\nabla^{2} & =u(u+2)\partial _{u}^{2}+3(u+1)\partial _{u} \\
 & =\partial _{r}^{2}+2\coth r\partial _{r}
\end{align}$$

which gives the solution

$$\begin{align}
(\partial _{r}^{2}+2\coth r\partial _{r}-\mu ^{2})K(t,r) & =\partial _{t}K(t,r)
\end{align}$$

the general solution to the above equation is

$$\begin{align}
K^{\mathbb{H}_{3}}(t,r) & =\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}\frac{r}{\sinh r}e^{-\frac{r^{2}}{4t}}
\end{align}$$

---

for $\displaystyle{\mathbb{H}^{n}}$, the heat kernel is given by

$$\begin{align}
K^{\mathbb{H}_{n}}(t,r) & =e^{-(\mu ^{2}+\rho ^{2})t}\left(-\frac{1}{2\pi \sinh r} \frac{\partial}{\partial r}\right)^{\rho}\left(\frac{e^{-r^{2}/4t}}{(4\pi t)^{1/2}}\right)
\end{align}$$

where $\displaystyle{\rho=\frac{n-1}{2}}$. this can be derived as follows. define

$$\begin{align}
R=-\frac{1}{2\pi \sinh r}\partial _{r}
\end{align}$$

it satisfies the intertwining relation

$$\begin{align}
R(\Delta _{n}-\rho ^{2}_{n}) & =(\Delta _{n+2}-\rho _{n+2}^{2})R \\
\rho _{n} & =\frac{n-1}{2} \\
\Delta _{n} & =\partial _{r}^{2}+(n-1)\coth r\partial _{r}
\end{align}$$

then we have

$$\begin{align}
R(\partial _{t}-(\Delta _{n}-\rho _{n}^{2})) & =(\partial _{t}-(\Delta _{n+2}-\rho _{n+2}^{2}))R
\end{align}$$

which implies that if $\displaystyle{\widetilde{K}_{n}}$ satisfies $\displaystyle{\partial _{t}\widetilde{K}_{n}=(\Delta _{n}-\rho _{n}^{2})\widetilde{K}_{n}}$, then $\displaystyle{\widetilde{K}_{n+2}:=R\widetilde{K}_{n}}$ satisfies $\displaystyle{\partial _{t}\widetilde{K}_{n+2}=(\Delta _{n+2}-\rho _{n+2}^{2})\widetilde{K}_{n+2}}$. for $\displaystyle{n}$ odd, starting from $\displaystyle{n=1}$ where $\displaystyle{\rho _{1}=0}$, we have the 1d gaussian kernel

$$\begin{align}
\widetilde{K}_{1}(t,r) & =\frac{e^{-r^{2}/(4t)}}{(4\pi t)^{1/2}}
\end{align}$$

and applying $\displaystyle{R}$ repeatedly $\displaystyle{m=\frac{n-1}{2}}$ times, we get

$$\begin{align}
\widetilde{K}_{2m+1}(t,r) & =\left(-\frac{1}{2\pi \sinh r}\partial _{r}\right)^{m}\left(\frac{e^{-r^{2}/(4t)}}{(4\pi t)^{1/2}}\right)
\end{align}$$

and restoring the spectral shift factor $\displaystyle{K_{n}(t,r)=e^{-\rho ^{2}t}\widetilde{K}_{n}(t,r)}$ (corresponding to going back to the unshifted heat equation), we obtain the boxed formula above. the normalization $\displaystyle{1/(2\pi)}$ can be fixed by the volume element and the $\displaystyle{\delta}$ initial condition as $\displaystyle{t\to 0^{+}}$.

---

then the partition function at 1-loop is given by
$$\begin{align}
Z & =\frac{1}{2}\int ^{\infty}_{0^{+}} \frac{\mathrm{d}t}{t}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }K(t,x,x) \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{H}_{3})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}} \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{H}_{3}) \frac{1}{(4\pi)^{3/2}} \Gamma\left(-\frac{3}{2}\right)(\mu ^{2}+1)^{3/2} \\
 & =\mathrm{Vol}(\mathbb{H}_{3}) \frac{1}{12\pi}(\mu ^{2}+1)^{3/2}
\end{align}$$

here we use

$$\begin{align}
\int ^{\infty}_{0} \mathrm{d}tt^{\nu-1}e^{-st} & =\frac{\Gamma(\nu)}{s^{\nu}}
\end{align}$$

# Proca field in $\displaystyle{\mathbb{H}_{3}}$

we consider a free Proca field with the action

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }A_{\mu}\left(-g^{\mu \nu}\nabla ^{2}+R^{\mu \nu}+\mu ^{2}g^{\mu \nu}\right)A_{\nu}
\end{align}$$

the heat kernel $\displaystyle{K_{\mu \nu'}(t,x,x')}$ now carries vector indices, and satisfies

$$\begin{align}
\Delta _{\mu}^{~\nu}K_{\nu \nu'}(t,x,x') & =-\partial _{t}K_{\mu \nu'}(t,x,x') \\
K_{\mu \nu'}(0,x,x') & =g_{\mu \nu'}\delta ^{3}(x,x')
\end{align}$$

where the differential operator is given by

$$\begin{align}
\Delta _{\mu}^{~\nu} & =-\delta _{\mu}^{~\nu}\nabla ^{2}+R_{\mu}^{~\nu}+\mu ^{2}\delta _{\mu}^{~\nu} \\
 & =-(\nabla ^{2}+2-\mu ^{2})\delta _{\mu}^{~\nu}
\end{align}$$

due to the maximal symmetry of the space, the heat kernel can be decomposed as

$$\begin{align}
K_{\mu \nu'}(t,x,x') & =F\nabla _{\mu}\nabla _{\nu}u+\nabla _{\mu}\nabla _{\nu'}S
\end{align}$$

where $\displaystyle{F}$ and $\displaystyle{S}$ are functions of $\displaystyle{t}$ and $\displaystyle{u}$. then the LHS of heat equation becomes

$$\begin{align}
(\nabla ^{2}+2-\mu ^{2})K_{\mu \nu'}=(\nabla ^{2}F+F-\mu ^{2})\nabla _{\mu}\nabla _{\nu'}u+\nabla _{\mu}\nabla _{\nu'}\left( \nabla ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v-\mu ^{2}S \right)
\end{align}$$

which gives

$$\begin{align}
(\nabla ^{2}+1-\mu ^{2})F & =\partial _{t}F \\
\nabla ^{2}S-\mu ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v & =\partial _{t}S
\end{align}$$

with boundary condition

$$\begin{align}
F(0,u) & =-\delta ^{3}(x,x') \\
\partial _{u}S(0,u) & =u \partial _{u}^{2}S(0,u)=0
\end{align}$$

---

here we present a review of bitensor formalism on maximally symmetric spaces, and the derivation of the heat kernel equation for $\displaystyle{F}$ and $\displaystyle{S}$ above.

let $\displaystyle{r(x,x')}$ be the geodesic distance and $\displaystyle{u=\cosh r-1}$. define unit tangent vectors along the geodesic

$$\begin{align}
n_{\mu} & =\nabla _{\mu}r, & n_{\nu'} & =\nabla _{\nu'}r,  & n_{\mu}n^{\mu}=1
\end{align}$$

then

$$\begin{align}
\nabla _{\mu}u & =\sinh rn_{\mu}, & \nabla _{\nu'}u & =\sinh rn_{\nu'}
\end{align}$$

and

$$\begin{align}
\nabla ^{\mu}u\nabla _{\mu}u & =u(u+2) \\
\nabla _{\mu}\nabla _{\nu}u & =g_{\mu \nu}(1+u) \\
\nabla ^{\mu}u\nabla _{\mu}\nabla _{\nu}\nabla _{\nu'}u & =\nabla _{\nu}u\nabla _{\nu'}u \\
\nabla ^{\mu}u\nabla _{\mu}\nabla _{\nu'}u & =(1+u)\nabla _{\nu'}u \\
\nabla ^{\mu}\nabla _{\mu'}u\nabla _{\mu}\nabla _{\nu'}u & =g_{\mu'\nu'}+\nabla _{\mu'}u\nabla _{\nu'}u \\
\nabla _{\mu}\nabla _{\nu}\nabla _{\nu'}u & =g_{\mu \nu}\nabla _{\nu'}u 
\end{align}$$

introduce the standard bitensor basis

$$\begin{align}
B_{\mu \nu'} & =\nabla _{\mu}\nabla _{\nu'}u \\
C_{\mu \nu'} & =\nabla _{\mu}u\nabla _{\nu'}u=\sinh ^{2}rn_{\mu}n_{\nu'}
\end{align}$$

on $\displaystyle{\mathbb{H}_{3}}$, the following identities hold:
1. Hessian decomposition
$$\begin{align}
B_{\mu \nu'} & =(1+u)(2n_{\mu}n_{\nu'}-g_{\mu \nu'})
\end{align}$$
2. Laplacian of u
$$\begin{align}
\nabla ^{2}u & =3(1+u)
\end{align}$$
3. derivatives of $\displaystyle{n}$ along the geodesic
$$\begin{align}
\nabla _{\mu}n_{\nu} & =\coth r(g_{\mu \nu}-n_{\mu}n_{\nu}) \\
\nabla _{\mu}n_{\nu'} & =-\mathrm{csch}r(g_{\mu \nu'}+n_{\mu}n_{\nu'})
\end{align}$$

from these, two key contraction identities follow

$$\begin{align}
\nabla ^{2}B_{\mu \nu'} & =-B_{\mu \nu'}-2C_{\mu \nu'} \\
\nabla ^{\alpha}u\nabla _{\alpha}B_{\mu \nu'} & =-C_{\mu \nu'} \\
\nabla _{\mu}\nabla _{\nu'}G(u) & =G'(u)B_{\mu \nu'}+G''(u)C_{\mu \nu'}
\end{align}$$

now we compute $(\nabla^{2}+2-\mu^{2})K_{\mu\nu'}$ piece by piece. we first consider $\displaystyle{S}$ terms. notice that

$$\begin{align}
[\nabla ^{2},\nabla _{\mu}]S & =R_{\mu}^{~\lambda}\nabla _{\lambda}S=-2\nabla _{\mu}S
\end{align}$$

thus

$$\begin{align}
\nabla ^{2}(\nabla _{\mu}\nabla _{\nu'}S) & =\nabla _{\mu}\nabla _{\nu'}(\nabla ^{2}S)-2\nabla _{\mu}\nabla _{\nu'}S \\
\implies(\nabla ^{2}+2-\mu ^{2})(\nabla _{\mu}\nabla _{\nu'}S) & =\nabla _{\mu}\nabla _{\nu'}(\nabla ^{2}S-\mu ^{2}S)
\end{align}$$

then consider $\displaystyle{FB_{\mu \nu}}$. 

$$\begin{align}
\nabla ^{2}(FB_{\mu \nu'}) & =\nabla ^{2}FB_{\mu \nu'}+2\nabla ^{\alpha}F\nabla _{\alpha}B_{\mu \nu'}+F\nabla ^{2}B_{\mu \nu'} \\
 & =\nabla ^{2}FB_{\mu \nu'}+2F'\nabla ^{\alpha}u\nabla _{\alpha}B_{\mu \nu'}+F(-B_{\mu \nu'}-2C_{\mu \nu'}) \\
 & =(\nabla ^{2}F-F)B_{\mu \nu'}-2(F'+F)C_{\mu \nu'}
\end{align}$$

hence

$$\begin{align}
(\nabla ^{2}+2-\mu ^{2})(FB_{\mu \nu'}) & =(\nabla ^{2}F+F-\mu ^{2}F)B_{\mu \nu'}-2(F'+F)C_{\mu \nu'}
\end{align}$$

introduce

$$\begin{align}
G(u) & =-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v \\
\implies \nabla _{\mu}\nabla _{\nu'}G(u) & =G'(u)B_{\mu \nu'}+G''(u)C_{\mu \nu'} \\
 & =2F B_{\mu \nu'}+2F' C_{\mu \nu'}
\end{align}$$

then

$$\begin{align}
(\nabla ^{2}+2-\mu ^{2})(FB_{\mu \nu'}) & =(\nabla ^{2}F+F-\mu ^{2}F)B_{\mu \nu'}+\nabla _{\mu}\nabla _{\nu'}G(u)
\end{align}$$

and finally we have

$$\begin{align}
(\nabla ^{2}+2-\mu ^{2})K_{\mu \nu'} & =(\nabla ^{2}F+F-\mu ^{2}F)B_{\mu \nu'}+\nabla _{\mu}\nabla _{\nu'}\left( \nabla ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v-\mu ^{2}S \right) \\
\implies(\nabla ^{2}+1-\mu ^{2})F & =\partial _{t}F \\
\nabla ^{2}S-\mu ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v & =\partial _{t}S
\end{align}$$

---

the general solution to these equations with the given boundary conditions is

$$\begin{align}
F(t,u) & =-\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}} \frac{r}{\sinh r} \\
S(t,u) & =\frac{4e^{-\mu ^{2}t}}{(4\pi)^{3/2}} \frac{e^{-r^{2}/4t}}{\sinh r}\sqrt{ t }\int ^{1}_{0}\mathrm{d}\xi e^{-t(1-\xi)^{2}}\sinh r\xi
\end{align}$$

then the trace of the heat kernel is given by

$$\begin{align}
\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }g^{\mu \nu'}K_{\mu \nu'}(t,x,x) & =-3\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }(F+\partial _{u}S)|_{u=0} \\
 &  =\mathrm{Vol}(\mathbb{H}_{3}) e^{-\mu ^{2}t} \frac{e^{-t}+2+4t}{(4\pi t)^{3/2}}
\end{align}$$

thus the partition function at 1-loop is

$$\begin{align}
Z & =\frac{1}{2}\int ^{\infty}_{0^{+}} \frac{\mathrm{d}t}{t}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }g^{\mu \nu'}K_{\mu \nu'}(t,x,x) \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{H}_{3})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} e^{-\mu ^{2}t} \frac{e^{-t}+2+4t}{(4\pi t)^{3/2}} \\
 & =\mathrm{Vol}(\mathbb{H}_{3}) \frac{1}{6\pi}\left((\mu ^{2}+1)^{3/2}+2\mu ^{3}-6\mu\right)
\end{align}$$

we should substract the non-physical longitudinal mode contribution, which gives

$$\begin{align}
Z_{\perp} & =\mathrm{Vol}(\mathbb{H}_{3}) \frac{1}{3\pi}(\mu ^{3}-3\mu)
\end{align}$$

# general discussion of $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$

now we consider the thermal AdS3, i.e., the $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$. now we periodically identify

$$\begin{align}
(t,\phi)\sim (t+\beta,\phi+\vartheta)
\end{align}$$

where $\displaystyle{t}$ is the Euclidean time coordinate and $\displaystyle{\phi}$ an angular coordinate. $\displaystyle{\beta}$ and $\displaystyle{\vartheta}$ are the inverse temperature and angular potential respectively. to describe the geometry of $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$ it is helpful to introduce a single complex quantity

$$\begin{align}
\tau=\frac{1}{2\pi}(\vartheta+i\beta)
\end{align}$$

in terms of the metric $\displaystyle{\mathrm{d}s^{2}=\frac{\mathrm{d}y^{2}+\mathrm{d}z\mathrm{d}\bar{z}}{y^{2}}}$ on $\displaystyle{\mathbb{H}_{3}}$, $\displaystyle{\mathbb{Z}}$ is generated by an element $\displaystyle{\gamma}$ of the isometry group $\displaystyle{\mathrm{SL}(2,\mathbb{C})}$ of $\displaystyle{\mathbb{H}_{3}}$

$$\begin{align}
\gamma(y,z) & =(|q|^{-1}y,q^{-1}z)
\end{align}$$

where $\displaystyle{q=e^{2\pi i\tau}}$. the quotient space $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$ can be though of as a solid torus endowed with a metric of constant negative curvature, in the same way the $\displaystyle{\mathbb{H}_{3}}$ is viewed as a unit ball with a metric of constant negative curvature. the parameter $\displaystyle{\tau}$ is the modulus of the $\displaystyle{T^{2}}$ boundary of $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$. it is useful to introduce coordinates $\displaystyle{(\rho,\theta,\phi)}$ by

$$\begin{align}
y & =\rho \sin \theta \\
z & =\rho \cos \theta e^{i\phi}
\end{align}$$

and $\displaystyle{1\leqslant \rho<e^{2\pi \tau _{2}}}$, $\displaystyle{0\leqslant \theta< \frac{\pi}{2}}$, $\displaystyle{0\leqslant \phi< 2\pi}$, where $\displaystyle{\tau_{2}}$ is the imaginary part of $\displaystyle{\tau}$. $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$ is also the geometry of Euclidean BTZ black hole, if we let $\displaystyle{-\frac{1}{\tau}=\frac{1}{2\pi}(\vartheta'+i\beta')}$.

# scalar field in $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$

the heat kernel on $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$ can be obtained by the method of images

$$\begin{align}
K^{\mathbb{H}_{3}/\mathbb{Z}}(t,x,x') & =\sum _{n\in \mathbb{Z}}K^{\mathbb{H}_{3}}(t,r(x,\gamma ^{n}x'))
\end{align}$$

it follows (notice that $\displaystyle{K^{\mathbb{H}_{3}}(t,r) =\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}\frac{r}{\sinh r}e^{-\frac{r^{2}}{4t}}}$)

$$\begin{align}
-\ln \det \Delta & =\int _{0} ^{\infty}\frac{\mathrm{d}t}{t}\int \mathrm{d}^{3}x\sqrt{ g }K^{\mathbb{H}_{3}/\mathbb{Z}}(t,x,x) \\
 & =\mathrm{Vol}(\mathbb{H}_{3}/\mathbb{Z})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}+\sum _{n\neq 0} \int ^{\infty}_{0}\frac{\mathrm{d}t}{t}\int _{\mathbb{H}_{3}/\mathbb{Z}} \mathrm{d}^{3}x\sqrt{ g }K^{\mathbb{H}_{3}}(t,r(x,\gamma ^{n}x))
\end{align}$$

we have

$$\begin{align}
r & \equiv r(x,\gamma ^{n}x) \\
 & =\mathrm{arccosh}(1+2\sinh ^{2}\pi n\tau _{2}+2|\sinh \pi n\tau|^{2}\cot ^{2}\theta)
\end{align}$$

which lives in the interval $\displaystyle{[2\pi n\tau _{2},+\infty)}$. the measure

$$\begin{align}
\mathrm{d}^{3}x\sqrt{ g } & =\frac{\mathrm{d}\rho}{\rho}\mathrm{d}\phi \mathrm{d}\theta \frac{\cos \theta}{\sin ^{3}\theta}= \frac{\mathrm{d}\rho}{\rho}\mathrm{d}\phi \frac{\mathrm{d}r\sinh r}{4|\sin \pi n\tau|^{2}}
\end{align}$$

then the integration over $\displaystyle{r}$ is

$$\begin{align}
\int ^{\infty}_{2\pi n\tau _{2}}\mathrm{d}r\sinh rK^{\mathbb{H}_{3}}(t,r) & =\int ^{\infty}_{2\pi n\tau _{2}}\mathrm{d}r\sinh r \frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}\frac{r}{\sinh r}e^{-\frac{r^{2}}{4t}} \\
 & =\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}\int ^{\infty}_{2\pi n\tau _{2}}\mathrm{d}r re^{-\frac{r^{2}}{4t}} \\
 & =\frac{e^{-(\mu ^{2}+1)t}}{4\pi ^{3/2}t^{1/2}}e^{-\frac{(2\pi n\tau _{2})^{2}}{4t}}
\end{align}$$

and

$$\begin{align}
-\ln \det \Delta & =2\sum ^{\infty}_{n=1} \frac{(2\pi \tau _{2})(2\pi)}{4|\sin \pi n\tau|^{2}}\int ^{\infty}_{0}\frac{\mathrm{d}t}{t} \frac{e^{-(\mu ^{2}+1)t}}{4\pi ^{3/2}t^{1/2}} e^{-\frac{(2\pi n\tau _{2})^{2}}{4t}}
\end{align}$$

here we substracted the divergent $\displaystyle{n=0}$ term corresponding to the infinite volume of thermal AdS3 (vacuum fluctuations). evaluating the integral we get

$$\begin{align}
-\ln \det \Delta & =\sum ^{\infty}_{n=1} \frac{e^{2\pi n\tau _{2}\sqrt{ \mu ^{2}+1 }}}{2n|\sin \pi n\tau|^{2}} \\
 & =2\sum ^{\infty}_{n=1} \frac{|q|^{2nh}}{n|1-q^{n}|}
\end{align}$$

here we use the integral and series formula

$$\begin{align}
\int ^{\infty}_{0} \mathrm{d}tt^{-c}e^{-at-b/t} & =2\left(\frac{b}{a}\right)^{(1-c)/2}K_{c-1}(2\sqrt{ ab }) \\
\text{in particular for } c=\frac{3}{2}\quad \int ^{\infty}_{0} \mathrm{d}tt^{-3/2}e^{-at-b/t} & =\sqrt{ \frac{\pi}{b} }e^{-2\sqrt{ ab }}
\end{align}$$

and then

$$\begin{align}
Z^{\text{1-loop}}_{\text{scalar}}(\tau,\bar{\tau}) & =(\det \Delta)^{-1/2} \\
 & =\exp\left( \sum ^{\infty}_{n=1} \frac{|q|^{2nh}}{n|1-q^{n}|^{2}} \right) \\
 & =\exp\left(\sum ^{\infty}_{n=1}\sum ^{\infty}_{\ell,\bar{\ell}=1} \frac{1}{n}q^{n(\ell+h)} \bar{q}^{n(\ell+h)}\right) \\
 & =\prod ^{\infty}_{\ell,\bar{\ell}=0} \frac{1}{1-q^{\ell+h}\bar{q}^{\bar{\ell}+h}}
\end{align}$$

this has a natural interpretation as

$$\begin{align}
Z & =\mathrm{Tr}q^{L_{0}}\bar{q}^{\bar{L}_{0}}
\end{align}$$

where boundary Virosoror generators $\displaystyle{L_{0},\bar{L}_{0}}$ are related to energy and angular momentum

$$\begin{align}
L_{0} & =H+iJ \\
\bar{L}_{0} & =H-iJ
\end{align}$$

...

# Proca field in $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$

similarly, the heat kernel on $\displaystyle{\mathbb{H}_{3}/\mathbb{Z}}$ is given by

$$\begin{align}
K_{\mu \nu'}^{\mathbb{H}_{3}/\mathbb{Z}}(t,x,x') & =\sum _{n\in \mathbb{Z}} \frac{\partial(\gamma ^{n}x)^{\rho'}}{\partial x^{\nu'}}K^{\mathbb{H}_{3}}_{\mu \rho'}(t,r(x,\gamma ^{n}x'))
\end{align}$$

then

$$\begin{align}
-\ln \det \Delta _{\mu}^{~\nu} & =\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\sum _{n\in \mathbb{Z}}\int \mathrm{d}^{3}x\sqrt{ g }\hat{g}^{\mu \nu'}K_{\mu \nu'}^{\mathbb{H_{3}}}(t,r(x,\gamma ^{n}x))
\end{align}$$

where $\displaystyle{\hat{g}^{\mu \nu'}=g^{\mu \rho'}(x) \frac{\partial(\gamma ^{n}x)^{\nu'}}{\partial x^{\rho'}}}$. notice that

$$\begin{align}
K_{\mu \nu'}^{\mathbb{H}_{3}}(t,x,x') & =F(t,r)\nabla _{\mu}\nabla _{\nu'}u+\nabla _{\mu}\nabla _{\nu'}S \\
F(t,r) & =-\frac{e^{(\mu ^{2}+1)t}}{(4\pi t)^{3/2}} \frac{r}{\sinh r} \\
S(t,r) & =\frac{4e^{-\mu ^{2}t}}{(4\pi)^{3/2}} \frac{e^{-r^{2}/4t}}{\sinh r}\sqrt{ t }\int ^{1}_{0}\mathrm{d}\xi e^{-t(1-\xi)^{2}}\sinh r\xi
\end{align}$$

define

$$\begin{align}
A_{\gamma ^{n}}(r) & =\hat{g}^{\mu \nu'}\nabla _{\mu}\nabla _{\nu'}u \\
 & =\cosh r-2\cosh(2\pi n\tau _{2})-2\cos(2\pi n\tau _{1}) \\
B_{\gamma ^{n}}(r) & =\hat{g}^{\mu \nu'}\nabla _{\mu}u\nabla _{\nu'}u \\
 & =(\cosh r-e^{2\pi n\tau _{2}})(\cosh r-e^{-2\pi n\tau _{2}})-2\cos(2\pi n\tau _{1})(\cosh r-\cosh(2\pi n\tau _{2}))
\end{align}$$

then we have

$$\begin{align}
-\ln \det \Delta _{\mu}^{~\nu} & =-3\mathrm{Vol}(\mathbb{H}_{3}/\mathbb{Z})\int ^{\infty}_{0}\frac{\mathrm{d}t}{t}(F+\partial _{u}S)|_{u=0} \\
 & +2\sum ^{\infty}_{n=1} \frac{(2\pi \tau _{2})(2\pi)}{4|\sin \pi n\tau|^{2}}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\int ^{\infty}_{2\pi \tau _{2}}\mathrm{d}r\sinh r((F+\partial _{u}S)A_{\gamma ^{n}}+\partial _{u}^{2}SB_{\gamma ^{n}}) \\
 & =(\text{vacuum fluctuation})+2\sum ^{\infty}_{n=1} \frac{(2\pi \tau _{2})(2\pi)}{4|\sin \pi n\tau|^{2}}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}e^{-\mu ^{2}t} \frac{e^{-\frac{(2\pi n\tau _{2})^{2}}{4t}}}{4\pi ^{3/2}t^{1/2}} (2\cos(2\pi n\tau _{1})+e^{-t}) \\
 & =\sum ^{\infty}_{n=1} \frac{1}{4n|\sin \pi n\tau|^{2}}(e^{-2\pi n\tau _{2}\sqrt{ \mu ^{2}+1 }}+2\cos(2\pi n\tau _{1})e^{-2\pi n\tau _{2}\mu}) \\
 & =\sum ^{\infty}_{n=1} \frac{1}{n|1-q^{n}|^{2}}(|q|^{2nh}+(q^{n}+\bar{q}^{n})|q|^{n\mu})
\end{align}$$

thus the 1-loop partition function is

$$\begin{align}
Z^{\text{1-loop}}_{\text{Proca}}(\tau,\bar{\tau}) & =(\det \Delta _{\mu}^{~\nu})^{-1/2} \\
 & =\exp\left( \sum ^{\infty}_{n=1} \frac{1}{n|1-q^{n}|^{2}}(|q|^{2nh}+(q^{n}+\bar{q}^{n})|q|^{n\mu}) \right) \\
 & =\prod ^{\infty}_{\ell,\bar{\ell}=0} \frac{1}{(1-q^{\ell+h}\bar{q}^{\bar{\ell}+h})(1-q^{\ell+\mu +1}\bar{q}^{\bar{\ell}+\mu})(1-q^{\ell+\mu}\bar{q}^{\bar{\ell}+\mu +1})}
\end{align}$$

here we should substract the non-physical longitudinal mode contribution, which gives

$$\begin{align}
Z^{\text{1-loop}}_{\text{Proca},\perp}(\tau,\bar{\tau}) & =\prod ^{\infty}_{\ell,\bar{\ell}=0} \frac{1}{(1-q^{\ell+\mu +1}\bar{q}^{\bar{\ell}+\mu})(1-q^{\ell+\mu}\bar{q}^{\bar{\ell}+\mu +1})}
\end{align}$$

I think this method can be simply generalized to thermal AdS/dS/flat space in higher dimensions, and also to higher spin fields...?

---

# harmonic oscillator

the Euclidean action of a harmonic oscillator is (here we see it as a 1d field theory)

$$\begin{align}
S & =\int\mathrm{d}\tau \left( \frac{1}{2}\left(\frac{\mathrm{d}x}{\mathrm{d}\tau}\right)^{2}+\frac{\omega ^{2}}{2}x^{2} \right) \\
 & =\frac{1}{2}\int ^{t}_{0}\mathrm{d}\tau x\Delta x \\
\Delta & =-\frac{\mathrm{d}^{2}}{\mathrm{d}\tau ^{2}}+\omega ^{2}
\end{align}$$

the heat kernel satisfies

$$\begin{align}
\Delta _{\tau} K(t,\tau,\tau') & =-\partial _{t}K(t,\tau,\tau') \\
K(0,\tau,\tau') & =\delta (\tau-\tau')
\end{align}$$

the solution is

$$\begin{align}
K(t,\tau,\tau') & =\frac{1}{\sqrt{4\pi t}}e^{-\omega ^{2}t}e^{-\frac{(\tau-\tau')^{2}}{4t}}
\end{align}$$

thus the partition function is

$$\begin{align}
\ln Z & =\frac{1}{2}\int ^{\infty}_{0}\frac{\mathrm{d}t}{t} \int _{\mathbb{R}} \mathrm{d}\tau K(t,\tau,\tau) \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{R})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}  \frac{1}{\sqrt{ 4\pi t }}e^{-\omega ^{2}t} \\
 & =\frac{1}{2}\mathrm{Vol}(\mathbb{R}) \frac{1}{\sqrt{ 4\pi }} \frac{\Gamma\left( -\frac{1}{2} \right)}{(\omega ^{2})^{-1/2}} \\
 & =-\frac{1}{2}\omega \mathrm{Vol}(\mathbb{R})
\end{align}$$

then we consider thermal circle $\displaystyle{S^{1}=\mathbb{R}/\mathbb{Z}}$, with identification $\displaystyle{\tau \sim \tau+\beta}$. the heat kernel is given by the method of images

$$\begin{align}
K^{S^{1}}(t,\tau,\tau') & =\sum _{n\in \mathbb{Z}}K(t,\tau,\tau'+n\beta)
\end{align}$$

thus the partition function is

$$\begin{align}
\ln Z & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\int _{0}^{\beta} \mathrm{d}\tau \sum _{n\in \mathbb{Z}}K(t,\tau,\tau+n\beta) \\
 & =\sum _{n\in \mathbb{Z}}\frac{\beta}{4\sqrt{ \pi }}\int ^{\infty}_{0} \mathrm{d}t t^{-3/2} e^{-\omega ^{2}t-\frac{(n\beta)^{2}}{4t}} \\
 & =-\frac{1}{2}\beta \omega+\sum _{n=1}^{\infty} \frac{e^{-n\beta \omega}}{n} \\
 & =-\frac{1}{2}\beta \omega-\ln(1-e^{-\beta \omega}) \\
\implies Z & =\frac{e^{-\beta \omega/2}}{1-e^{-\beta \omega}}
\end{align}$$

# heat kernel of Proca field

the action

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ g }A_{\mu}\left(-g^{\mu \nu}\nabla ^{2}+R^{\mu \nu}+\mu ^{2}g^{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\right)A_{\nu}
\end{align}$$

the heat kernel satisfies

$$\begin{align}
\Delta _{\mu}^{~\nu}K_{\nu \nu'}(t,x,x') & =-\partial _{t}K_{\mu \nu'}(t,x,x') \\
\Delta _{\mu}^{~\nu} & =-(\nabla ^{2}+2-\mu ^{2})\delta _{\mu}^{~\nu}+\nabla _{\mu}\nabla ^{\nu} \\
K_{\mu \nu'}(0,x,x') & =g_{\mu \nu'}\delta ^{3}(x,x')
\end{align}$$

we make the ansatz

$$\begin{align}
K_{\mu \nu'}(t,x,x') & =F(t,u)\nabla _{\mu}\nabla _{\nu'}u+\nabla _{\mu}\nabla _{\nu'}S(t,u)
\end{align}$$

then

$$\begin{align}
-(\nabla ^{2}+2-\mu ^{2})\delta _{\mu}^{~\nu}K_{\nu \nu'}(t,x,x') & =-(\nabla ^{2}F+F-\mu ^{2}F)B_{\mu \nu'} \\
 & -\nabla _{\mu}\nabla _{\nu'}\left( \nabla ^{2}S-2\int ^{\infty}_{u}F(t,v)\mathrm{d}v-\mu ^{2}S \right)
\end{align}$$

we only need to compute the $\displaystyle{\nabla _{\mu}\nabla ^{\nu}}$ term

$$\begin{align}
\nabla _{\mu}\nabla ^{\nu}\nabla _{\nu}\nabla _{\nu'}(S) & = \nabla _{\mu}\nabla _{\nu'}(\nabla ^{2}S) \\
\nabla _{\mu}\nabla ^{\nu}(FB_{\nu \nu'}) & =((1+u)F'+3F)B_{\mu \nu'}+((1+u)F''+4F')C_{\mu \nu'} \\
 & =\nabla _{\mu}\nabla _{\nu'}\left( -\int ^{\infty}_{u}((1+v)F'(t,v)+3F(t,v))\mathrm{d}v \right)
\end{align}$$

thus the heat kernel equation reduces to

$$\begin{align}
\nabla ^{2}F+F-\mu ^{2}F & =\partial _{t}F \\
(1+u)F(t,u)+\mu ^{2}S & =-\partial _{t}S
\end{align}$$

with boundary conditions

$$\begin{align}
F(0,u) & =-\delta ^{3}(x,x') \\
\partial _{u}S(0,u) & =0 \\
u\partial _{u}^{2}S(0,u) & =0
\end{align}$$

the solution to these equations with the given boundary conditions is

$$\begin{align}
F & = -\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}} \frac{r}{\sinh r} \\

\end{align}$$

define $\displaystyle{F=e^{-\mu ^{2}t}\tilde{F},S=e^{-\mu ^{2}t}\tilde{S}}$, we have

$$\begin{align}
(1+u)\tilde{F} & =-\partial _{t}\tilde{S} \\
\implies \tilde{S} & =\int ^{\infty}_{t}\mathrm{d}\tau (1+u)\tilde{F}(\tau,u) \\
\implies S & =-e^{-\mu ^{2}t}\int ^{\infty}_{t}\mathrm{d}\tau e^{\mu ^{2}\tau}(1+u)F(t,u)
\end{align}$$

then the trace of the heat kernel is given by

$$\begin{align}
\mathrm{Tr}K_{\mu \nu}(t,x,x')=\int _{\mathbb{H}_{3}} \mathrm{d}^{3}x\sqrt{ g }g^{\mu \nu'}K_{\mu \nu'}(t,x,x) & =-3\mathrm{Vol}(\mathbb{H}_{3})\left[F+\partial _{u}S\right]{\Huge|}_{u=0} \\
  & = 3\mathrm{Vol}(\mathbb{H}_{3})\left(\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}+\frac{2}{3}e^{-\mu ^{2}t}\int ^{\infty}_{t}\mathrm{d}\tau \frac{e^{-\tau}}{(4\pi \tau)^{3/2}}\right)
\end{align}$$

thus the partition function at 1-loop is

$$\begin{align}
\ln Z & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \mathrm{Tr}K_{\mu \nu}(t,x,x) \\
 & =\frac{3}{2}\mathrm{Vol}(\mathbb{H}_{3}) \int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\left(\frac{e^{-(\mu ^{2}+1)t}}{(4\pi t)^{3/2}}+\frac{2}{3}e^{-\mu ^{2}t}\int ^{\infty}_{t} \mathrm{d}\tau \frac{e^{-\tau}}{(4\pi \tau)^{3/2}}\right)
\end{align}$$

which is not the same as the previous result. where is the problem?

$$\begin{align}
\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} e^{-\mu ^{2}t} \int ^{\infty}_{t} \mathrm{d}\tau \tau ^{\nu-1} e^{-\tau}
\end{align}$$
