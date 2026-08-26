## Geometry

We work on the universal cover of $\displaystyle{\mathrm{AdS}_{d+1},d\geqslant 2}$, with $\mathrm{AdS}$ radius $\displaystyle{\ell=1}$ and signature $\displaystyle{(-,+,\dots)}$. Put

$$\begin{align}
n & =d-1, & f(r) & =r^{2}-1, & r>1
\end{align}$$

the right wedge metric is

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}\tau _{R}^{2}+\dfrac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}S_{\mathbb{H}^{n}}
\end{align}$$

equivalently, let $\displaystyle{r=\sqrt{ 1+\xi ^{2} },\xi \in(0,\infty)}$, one has

$$\begin{align}
\mathrm{d}s^{2} & =-\xi ^{2}\mathrm{d}\tau ^{2}_{R}+\dfrac{\mathrm{d}\xi ^{2}}{1+\xi ^{2}}+(1+\xi ^{2})\mathrm{d}s^{2}_{\mathbb{H}^{n}}
\end{align}$$

in the embedding formalism

$$\begin{align}
-(X^{-1})^{2}-(X^{0})^{2}+(X^{1})^{2}+\dots+(X^{d})^{2} & =-1
\end{align}$$

the right time plane may be parameterized by

$$\begin{align}
X^{0} & =\xi \sinh \tau _{R}, & X^{1} & =\xi \cosh \tau _{R}
\end{align}$$

for the left wedge choose a separately future-directed time

$$\begin{align}
X^{0} & =\xi \sinh \tau _{L}, & X^{1} & =-\xi \cosh \tau _{L}
\end{align}$$

take

$$\begin{align}
\zeta & =X^{1}\partial _{X^{0}}+X^{0}\partial X^{1}
\end{align}$$

then

$$\begin{align}
\zeta|_{R} & =\partial _{\tau _{R}}, & \zeta|_{L} & =-\partial _{\tau _{L}}
\end{align}$$

### Kruskal Regions

Introduce the turtoise coordinate

$$\begin{align}
r_{*} & := \int ^{r} \dfrac{\mathrm{d}r}{r^{2}-1}=\dfrac{1}{2} \log \dfrac{r-1}{r+1}\in(-\infty,0)
\end{align}$$

in $\displaystyle{R}$ set $\displaystyle{u=\tau _{R}-r_{*},v=\tau _{R}+r_{*}}$, and then

$$\begin{align}
U & =-e^{-u}, & V=e^{v}
\end{align}$$

the analytic extension is

$$\begin{align}
\mathrm{d}s^{2} & -\dfrac{4\mathrm{d}U\mathrm{d}V}{(1+UV)^{2}}+\left( \dfrac{1-UV}{1+UV} \right)^{2}\mathrm{d}s^{2}_{\mathbb{H}^{n}}, & r=\dfrac{1-UV}{1+UV}
\end{align}$$

the $\mathrm{AdS}_{d+1}$ is divided to four regions

$$
\begin{array}{c|cc}
&U&V\\ \hline
R&<0&>0\\
L&>0&<0\\
F&>0&>0\\
P&<0&<0.
\end{array}
$$

The bifurcation surface is $\displaystyle{U=V=0}$.

## Scalar Field

Take

$$\begin{align}
S & =-\dfrac{1}{2}\int\mathrm{d}^{d+1}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}\right), & \mu ^{2}\geqslant 0
\end{align}$$

take a variation of the Lagrangian

$$\begin{align}
\delta \mathcal{L} & =E\delta \phi+\mathrm{d}\theta \\
E & =\nabla ^{2}\phi-\mu ^{2}\phi \\
\theta ^{\mu} & =\nabla ^{\mu}\phi \delta \phi
\end{align}$$

we consider standard quantization in this note, which means near the conformal infnity, we impose the following asymptotic boundary condition

$$\begin{align}
\phi & =o(r^{-d})
\end{align}$$

### Solving Modes in One Wedge

Now we will solve the eom in one ads-rindler wedge, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(r^{2}-1)\mathrm{d}\tau ^{2}+\dfrac{\mathrm{d}r^{2}}{r^{2}-1}r^{2}\mathrm{d}s^{2}_{\mathbb{H}^{n}}, & r\in(1,\infty)
\end{align}$$

take the ansatz

$$\begin{align}
\phi & =e^{-i\omega \tau}Y_{\lambda}(Y)\psi _{\omega \lambda}(r)
\end{align}$$

where $\displaystyle{Y_{\lambda}(Y)}$ is the generalized harmonic on $\displaystyle{\mathbb{H}^{n}}$ that satisfy

$$\begin{align}
-\Delta _{\mathbb{H}^{n}}Y_{\lambda} & =\kappa ^{2}_{\lambda}Y_{\lambda}, & \kappa ^{2}_{\lambda} & =\lambda ^{2}+\dfrac{(n-1)^{2}}{4}, & \lambda\geqslant 0
\end{align}$$

which gives

$$\begin{align}
\dfrac{1}{r^{n}} \dfrac{\mathrm{d}}{\mathrm{d}r}\left( r^{n}(r^{2}-1) \dfrac{\mathrm{d}\psi}{\mathrm{d}r} \right)+\left(\dfrac{\omega ^{2}}{r^{2}-1}-\mu ^{2}-\dfrac{\kappa ^{2}_{\lambda}}{r^{2}}\right)\psi=0
\end{align}$$

put

$$\begin{align}
x & := -r_{*}>0, & \chi(x) & =r^{n/2}\psi(r)
\end{align}$$

the equation becomes

$$\begin{align}
-\dfrac{\mathrm{d}^{2}\chi}{\mathrm{d}x^{2}}+\left( \dfrac{\nu ^{2}-1/4}{\sinh ^{2}x}+\dfrac{\lambda ^{2}+1/4}{\cosh ^{2}x} \right)\chi & =\omega ^{2}\chi
\end{align}$$

where $\displaystyle{\nu=\sqrt{ \mu ^{2}+\dfrac{d^{2}}{4} }}$. The equation is a one-dimensional Schrödinger equation with a Pöschl–Teller potential. In $\displaystyle{\xi=\sqrt{ r^{2}-1 }}$, the solution is

$$\begin{align}
\psi _{\omega \lambda} & =\dfrac{N_{\omega \lambda}}{\Gamma(1+\nu)} \xi ^{i\omega}(1_\xi ^{2})^{-i\omega/2} {}_{2}F_{1}\left( \dfrac{1+\nu+i\omega-i\lambda}{2}, \dfrac{1+\nu+i\omega+i\lambda}{2}; 1+\nu; \dfrac{1}{1+\xi ^{2}} \right)
\end{align}$$

where the positive normalization is

$$\begin{align}
N_{\omega \lambda} & = \dfrac{\left|\Gamma\left( \dfrac{1+\nu+i\omega-i\lambda}{2} \right)\right|\left|\Gamma\dfrac{(1+\nu+i\omega+i\lambda}{2})\right|}{\sqrt{ 4\pi \omega }\left|\Gamma(i\omega)\right|}
\end{align}$$

which is determined by

$$\begin{align}
\int \dfrac{_{0}^{\infty}\mathrm{d}\xi (1+\xi ^{2})^{(d-2)/2}}{\xi} \psi _{\omega \lambda}\psi _{\omega'\lambda} & =\dfrac{1}{2\omega}\delta(\omega'-\omega)
\end{align}$$

and satisfies the completeness

$$\begin{align}
\int _{0}^{\infty}2\omega \mathrm{d}\omega \psi _{\omega \lambda}(\xi) \psi _{\omega \lambda}(\xi') & =\dfrac{\xi}{(1+\xi ^{2})^{(d-2)/2}}\delta(\xi-\xi')
\end{align}$$

### Horizon Amplitudes and Reflection

Near the horizon $\displaystyle{\xi=0}$

$$\begin{align}
\psi _{\omega \lambda} & \sim A_{\mathrm{in}}(\omega,\lambda) e^{-i\omega r_{*}}+A_{\mathrm{out}}(\omega,\lambda)e^{i\omega r_{*}}
\end{align}$$

with

$$\begin{align}
A_{\mathrm{in}} & =N_{\omega \lambda}2^{-i\omega} \dfrac{\Gamma(i\omega)}{D_{+}}, \\
A_{\mathrm{out}} & =N_{\omega \lambda} 2^{i\omega} \dfrac{\Gamma(-i\omega)}{D_{-}} \\
D_{+} & =\Gamma\left( \dfrac{1+\nu+i\omega-i\lambda}{2} \right)\Gamma\left( \dfrac{1+\nu+i\omega+i\lambda}{2} \right) \\
D_{-} & =D_{+}^{*}
\end{align}$$

therefore the horizon amplitude $\displaystyle{\mathcal{R}_{\lambda}(\omega)}$ is defined as

$$\begin{align}
\mathcal{R}_{\lambda}(\omega) & := \dfrac{A_{\mathrm{out}}}{A_{\mathrm{in}}} \\
 & =2^{2i\omega}\frac{\Gamma(-i\omega)}{\Gamma(i\omega)} \frac{ \Gamma\left(\frac{1+\nu+i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu+i(\omega+\lambda)}2\right)}{ \Gamma\left(\frac{1+\nu-i(\omega-\lambda)}2\right) \Gamma\left(\frac{1+\nu-i(\omega+\lambda)}2\right)}
\end{align}$$

for real $\displaystyle{\omega}$, we have

$$\begin{align}
|\mathcal{R}_{\lambda}(\omega)| =1
\end{align}$$
