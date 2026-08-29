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
\mathrm{d}s^{2} & = -\dfrac{4\mathrm{d}U\mathrm{d}V}{(1+UV)^{2}}+\left( \dfrac{1-UV}{1+UV} \right)^{2}\mathrm{d}s^{2}_{\mathbb{H}^{n}}, & r=\dfrac{1-UV}{1+UV}
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

---

Now we will consider how to define initial data on the future Killing horizons $\displaystyle{\mathcal{H}_{L,R}^{+}}$, how to "glue" them at the bifurcation surface, how to evolve them into the bulk, and how to do quantization using characteristic data.

We will start from free scalar defined in $\displaystyle{\mathrm{AdS}_{2}}$.

The embedding and Kruskal conventions are

$$\begin{align}
-(X^{-1})^{2}-(X^{0})^{2}+(X^{1})^{2} & =-L^{2} \\
X^{-1} & =L \dfrac{1-UV}{1+UV} \\
X^{0} & = L \dfrac{U+V}{1+UV} \\
X^{1} & =L \dfrac{V-U}{1+UV} \\
\implies \mathrm{d}s^{2} & = -\dfrac{4L^{2}\mathrm{d}U\mathrm{d}V}{(1+UV)^{2}}
\end{align}$$

with

$$\begin{align}
R & :(U<0,V>0), & L: & (U>0,V<0), & F: & (U>0,V>0), & P:(U<0,V<0)
\end{align}$$

and horizons

$$\begin{align}
\mathcal{H}^{-}_{R}: & (V=0,U<0), & \mathcal{H}^{+}_{R}: & (U=0,V>0), \\
\mathcal{H}_{L}^{-}: & (U=0,V<0), & \mathcal{H}_{L}^{+}: & (V=0,U>0)
\end{align}$$

![[Attachments/draw.pdf]]

We choose $\displaystyle{L=1}$ for simplicity. The action is given by

$$\begin{align}
S[\phi] & =-\dfrac{1}{2} \int _{\mathcal{M}}\mathrm{d}^{2}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2}\right)
\end{align}$$

here the spacetime region $\displaystyle{\mathcal{M}}$ is sandwiched by the future Cauchy surface $\displaystyle{\Sigma _{f}}$, which anchored at $\displaystyle{\partial \mathrm{AdS}_{2}}$, and the two future rindler horizons $\displaystyle{\mathcal{H}^{+}_{L}}$ and $\displaystyle{\mathcal{H}^{+}_{R}}$.

Take a variation of the action

$$\begin{align}
\delta S & =\int _{\mathcal{M}}\mathrm{d}^{2}x\sqrt{ -g }(\nabla ^{2}\phi-m^{2}\phi)\delta \phi+\int _{\Sigma _{f}}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\phi \delta \phi \\
 & -\int _{\mathcal{H}_{L}^{+}}\mathrm{d}U \partial _{U}\phi \delta \phi-\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\partial _{V}\phi \delta \phi
\end{align}$$

on a spacelike Cauchy surface, the symplectic potential reads

$$\begin{align}
\theta|_{\Sigma} & =\int _{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\phi \delta \phi \\
\implies \omega|_{\Sigma} & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

and on the rindler horizon $\displaystyle{\mathcal{N}^{+}=\mathcal{H}_{R}^{+}\cup \mathcal{H}^{+}_{L}}$, the symplectic potential is defined as

$$\begin{align}
\theta|_{\mathcal{N}^{+}} & =\int _{\mathcal{H}_{L}^{+}}\mathrm{d}U\partial _{U}\phi \delta \phi+\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\partial _{V}\phi \delta \phi \\
\implies \omega|_{\mathcal{N}^{+}} & =\int _{\mathcal{H}_{L}^{+}}\mathrm{d}U\partial _{U}\delta \phi \wedge \delta \phi+\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\partial _{V}\delta \phi \wedge \delta \phi
\end{align}$$

the eom read

$$\begin{align}
\nabla ^{2}\phi-m^{2}\phi & \propto\partial _{U}\partial _{V}\phi+\dfrac{m^{2}}{(1+UV)^{2}}\phi=0
\end{align}$$

the covariant phase space $\displaystyle{\tilde{\mathcal{P}}}$ is defined as the space of solutions, with initial data given on the $\displaystyle{\mathcal{N}^{+}}$. When onshell, the symplectic form is time-independent

$$\begin{align}
\omega|_{\Sigma _{f}} & \approx \omega|_{\mathcal{N}^{+}}
\end{align}$$

## Symmetry

In coordinates $\displaystyle{(U,V)}$, the three Killing vectors are

$$\begin{align}
\xi _{0} & =\dfrac{1}{2}(1+U^{2})\partial _{U}+\dfrac{1}{2}(1+V^{2})\partial _{V} \\
\xi _{1} & =-\dfrac{1}{2}(1-U^{2})\partial _{U}+\dfrac{1}{2}(1-V^{2})\partial _{V} \\
\xi _{2} & =-U\partial _{U}+V\partial _{V}
\end{align}$$

which satisfies the following algebras

$$\begin{align}
[\xi _{0},\xi _{1}] & =-\xi _{2}, & [\xi _{0},\xi _{2}] & =\xi _{1}, & [\xi _{1},\xi _{2}] & =\xi _{0}
\end{align}$$

define

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{2}x\mathcal{L}_{\xi}\phi \dfrac{\delta}{\delta \phi}
\end{align}$$

act on the action, we have

$$\begin{align}
X_{\xi}\cdot \delta S  & =-\int _{\mathcal{M}}\mathrm{d}^{2}x\sqrt{ -g }\nabla _{\mu}\left( \xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\dfrac{1}{2}m^{2}\phi ^{2}\right) \right) \\
 & =\int _{\Sigma _{f}} \mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\dfrac{1}{2}m^{2}\phi ^{2}\right) \\
 & -\int _{\mathcal{H}_{L}^{+}} \mathrm{d}U\xi ^{V}\left(\nabla _{\nu}\phi \nabla ^{\nu}\phi+m^{2}\phi ^{2}\right) \\
 & -\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\xi ^{U}\left(\nabla _{\nu}\phi \nabla ^{\nu}\phi+m^{2}\phi ^{2}\right)
\end{align}$$

which gives

$$\begin{align}
\alpha _{\xi}|_{\Sigma} & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\left(\dfrac{1}{2}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\dfrac{1}{2}m^{2}\phi ^{2}\right)
\end{align}$$

and on the $\displaystyle{\mathcal{N}^{+}}$

$$\begin{align}
\alpha _{\xi}|_{\mathcal{N}^{+}} & = \int _{\mathcal{H}_{L}^{+}} \mathrm{d}U\xi ^{V}(\nabla _{\nu}\phi \nabla ^{\nu}\phi+m^{2}\phi ^{2})+\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\xi ^{U}(\nabla _{\nu}\phi \nabla ^{\nu}\phi+m^{2}\phi ^{2})
\end{align}$$

the corresponding Noether charge is given by

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
\implies H_{\xi}|_{\Sigma} & = \int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}T^{\mu \nu} \\
T^{\mu \nu} & = \nabla ^{\mu}\phi \nabla ^{\nu}\phi-\dfrac{1}{2}g^{\mu \nu}(\nabla _{\rho}\phi \nabla ^{\rho}\phi+m^{2}\phi ^{2}) \\
\implies H_{\xi}|_{\mathcal{N}^{+}} & =\int _{\mathcal{H}_{L}^{+}} \mathrm{d}U\left(\xi ^{U}(\partial _{U}\phi)^{2}+\xi ^{V}m^{2}\phi ^{2}\right) \\
 & +\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V(\xi ^{V}(\partial _{V}\phi)^{2}+\xi ^{U}m^{2}\phi ^{2}) \\
 & = \int _{\mathcal{H}_{L}^{+}}\mathrm{d}U\sqrt{ -g } \xi _{\nu}T^{V\nu}+\int _{\mathcal{H}_{R}^{+}}\mathrm{d}V\sqrt{ -g }\xi _{\nu}T^{U\nu}
\end{align}$$

the Noether charge is time-independent

$$\begin{align}
H_{\xi}|_{\mathcal{N}^{+}} & =H_{\xi}|_{\Sigma}
\end{align}$$

and satisfies the Hamilton equation

$$\begin{align}
X_{\xi}\cdot \omega|_{\mathcal{N}^{+}} & =-\delta H_{\xi}|_{\mathcal{N}^{+}}
\end{align}$$

## Solving Eom

to solve the eom, we have to determine what is the initial data defined on $\displaystyle{\mathcal{N}^{+}}$. instead of usual $\displaystyle{(\phi,\tau ^{\mu}\nabla _{\mu}\phi)}$ for spacelike Cauchy surface $\displaystyle{\Sigma}$, with $\displaystyle{\tau}$ its future directed normal vector, it turns out to be $\displaystyle{(\phi|_{\mathcal{H}_{L}^{+}},\phi|_{\mathcal{H}_{R}^{+}})}$ for $\displaystyle{\mathcal{N}^{+}}$. denote

$$\begin{align}
f(V) & =\phi(0,V), & g(U) & =\phi(U,0), & f(0)=g(0) & =c
\end{align}$$

the Goursat problem gives the formal solution as

$$\begin{align}
\phi(U,V) & =f(V)+g(U)-c-m^{2} \int _{0}^{U}\mathrm{d}u \int _{0}^{V}\mathrm{d}v \dfrac{\phi(u,v)}{(1+uv)^{2}}
\end{align}$$

we denote this map from characteristic data $\displaystyle{z=(f,g)}$ to $\displaystyle{\phi(U,V)}$ as $\displaystyle{G_{\mathcal{N}}}$, which is a linear functional

To do quantization, we need to find "normal modes" for the characteristic data $\displaystyle{z=(f,g)}$. It is convenient for $\displaystyle{\mathrm{AdS}_{2}}$ to use the $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$ symmetry. Let

$$\begin{align}
\xi _{\pm} & =\xi _{1}\mp i\xi _{2}
\end{align}$$

the primary $\displaystyle{z_{0}=(f_{0},g_{0})}$ satisfies

$$\begin{align}
\mathcal{L}_{\xi _{0}}z_{0} & =-ihz_{0} \\
\mathcal{L}_{\xi _{-}}z_{0} & =0
\end{align}$$

which gives

$$\begin{align}
\dfrac{i}{2}(-\partial _{U}f+(1+iV)^{2}\partial _{V}f) & =0 \\
\dfrac{i}{2}(\partial _{V}g-(1+iU)^{2}\partial _{U}g )& =0 \\
\dfrac{1}{2}(\partial _{U}f+(1+V^{2})\partial _{V}f) & =-ihf \\
\dfrac{1}{2}(\partial _{V}g+(1+U^{2})\partial _{U}g) & =-ihg
\end{align}$$

which solves

$$\begin{align}
f_{0}(V) & =C(1+iV)^{-h} \\
g_{0}(V) & =C(1+iU)^{-h}
\end{align}$$

where $\displaystyle{h}$ satisfies

$$\begin{align}
h(h-1) & =m^{2}\implies h=\dfrac{1}{2}\pm \sqrt{ \dfrac{1}{4}+m^{2} }
\end{align}$$

for standard quantization, we choose $\displaystyle{h=\Delta=\dfrac{1}{2}+\sqrt{ \dfrac{1}{4}+m^{2} }}$, and the normalizable primary is

$$\begin{align}
z_{0} & =(f_{0},g_{0}) \\
 & =(C(1+iV)^{-\Delta},C(1+iU)^{-\Delta})
\end{align}$$

descendants are generated by iterating $\displaystyle{\mathcal{L}_{\xi _{+}}}$ on $\displaystyle{z_{0}}$

$$\begin{align}
z_{n} & \propto\mathcal{L}_{\xi _{+}}^{n}z_{0}, & n\in \mathbb{N}
\end{align}$$

for each solution $\displaystyle{z_{n}}$, we associate a vector of the configuration space $\displaystyle{X_{n}}$ as

$$\begin{align}
X_{n} & = \int \mathrm{d}^{2}x G_{\mathcal{N}} z_{n} \dfrac{\delta}{\delta \phi}
\end{align}$$

the normalization constant is determined by the symplectic form as

$$\begin{align}
(z_{n},z_{m}) & =i X_{m}^{*}\cdot X_{n}\cdot \omega \\
 & =\delta _{nm}
\end{align}$$

which gives

$$\begin{align}
z_{0} & = \sqrt{ \dfrac{\Gamma(\Delta)}{2\sqrt{ \pi } \Gamma(\Delta+1/2)} }((1+iV)^{-\Delta},(1+iU)^{-\Delta}) \\
z_{n} & =\dfrac{\mathcal{L}_{\xi _{+}}^{n}z_{0}}{\sqrt{ n!(2\Delta)_{n} }}
\end{align}$$

expand

$$\begin{align}
\phi & =G_{\mathcal{N}}\sum ^{\infty}_{n=0} a_{n}z_{n}+a^{\dagger}_{n}z_{n}^{*} \\
 & =\sum ^{\infty}_{n=0} a_{n}G_{\mathcal{N}}z_{n}+a^{\dagger}_{n}G_{\mathcal{N}}z_{n}^{*}
\end{align}$$

plug back into the symplectic form, we have

$$\begin{align}
\omega & =i\sum ^{\infty}_{n=0}\delta a^{\dagger}_{n}\wedge \delta a_{n}
\end{align}$$

quantization is quite straightforward.

---

For $\displaystyle{z_{n}}$, we have

$$\begin{align}
\Phi _{0}(U,V) & =G_{\mathcal{N}}z_{0} \\
 & =\sqrt{ \dfrac{\Gamma(\Delta)}{2\sqrt{ \pi }\Gamma(\Delta+1/2)} }\left(\dfrac{1+UV}{(1+iU)(1+iV)}\right)^{\Delta} \\
\Phi _{n}(UV) & =G_{\mathcal{N}}z_{n} \\
 & =\dfrac{\mathcal{L}_{\xi _{+}}^{n}\Phi _{0}}{\sqrt{ n!(2\Delta)_{n} }}
\end{align}$$

turn to global coordinates

$$\begin{align}
\mathrm{d}s^{2} & =\dfrac{1}{\cos ^{2}\rho}(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2})
\end{align}$$

we have

$$\begin{align}
\dfrac{1+UV}{(1+iU)(1+iV)} & =e^{-it}\cos \rho
\end{align}$$

and $\displaystyle{G_{\mathcal{N}}z_{0}}$ is the global primary.

---

In general, we can solve the normal modes as follows. Consider the global Hamiltonian generator

$$\begin{align}
\xi _{0} & =\dfrac{1}{2}(1+U^{2})\partial _{U}+\dfrac{1}{2}(1+V^{2})\partial _{V}
\end{align}$$

and solve

$$\begin{align}
\mathcal{L}_{\xi _{0}}z & =-i\omega z
\end{align}$$

which gives

$$\begin{align}
(1+V^{2})f''+(2V+2i\omega )f'-m^{2}f & =0 \\
(1+U^{2})g''+(2U+2i\omega)g'-m^{2}g & =0
\end{align}$$

and the matching condition

$$\begin{align}
f(0)=g(0)=C
\end{align}$$

which solves

$$\begin{align}
\dots
\end{align}$$
