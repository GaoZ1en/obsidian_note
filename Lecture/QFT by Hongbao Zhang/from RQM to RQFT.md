a Hilbert space $\displaystyle{\mathcal{H}}$ with inner product $\displaystyle{(\cdot,\cdot)}$. we denote $\displaystyle{\varphi ^{\alpha}\in \mathcal{H}}$. the dual space $\displaystyle{\mathcal{H}^{*}}$ is induced by the inner product, in which the elements are linear mappings, denoted as $\displaystyle{\lambda _{\alpha}}$. all the anti-linear mappings form the complex conjugate of $\displaystyle{\mathcal{H^{*}}}$, denoted as $\displaystyle{\bar{\mathcal{H}}^{*}}$, in which the elements are denoted as $\displaystyle{\bar{\lambda}_{\alpha'}}$ and act as $\displaystyle{\bar{\lambda}_{\alpha'}\psi ^{\alpha}=\overline{\lambda _{\alpha} \psi ^{\alpha}}}$, and its dual space is denoted as $\displaystyle{\bar{\mathcal{H}}}$, in which the elements are denoted as $\displaystyle{\bar{\psi}^{\alpha'}}$ and act as $\displaystyle{\bar{\psi}^{\alpha'}\bar{\lambda}_{\alpha}=\lambda[\psi]}$.

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\psi ^{\alpha}\in \mathcal{H} \arrow[leftrightarrow]{r}{\text{ dual }} \arrow[leftrightarrow]{d}{\text{ dual }}& \mathcal{H}^{*}\ni \lambda _{\alpha}\arrow[leftrightarrow]{d}{\text{ dual }} \\
\bar{\psi}^{\alpha}\in \bar{\mathcal{H}} \arrow[leftrightarrow]{r}{\text{dual}} & \bar{\mathcal{H}}^{*}\ni\bar{\lambda}_{\alpha}
\end{tikzcd}\end{document}
```

then the inner product can be expand as

$$\begin{align}
(\varphi,\phi) & =G_{\alpha'\alpha}\bar{\varphi}^{\alpha'}\phi ^{\alpha} \\
 & =\bar{\varphi}_{\alpha}\phi ^{\alpha}
\end{align}$$

notice that

$$\begin{align}
(\varphi,\phi) & =\overline{(\phi,\varphi)} \\
\implies \bar{\varphi}_{\alpha}\phi ^{\alpha} & =\overline{\bar{\phi}_{\alpha}\varphi ^{\alpha}} \\
 & =\phi _{\alpha'}\bar{\varphi}^{\alpha'}=\bar{\varphi}^{\alpha'}\phi _{\alpha'}
\end{align}$$

so we only need $\displaystyle{\mathcal{H}}$ and $\displaystyle{\mathcal{H}^{*}}$. additionally

$$\begin{align}
\left(\varphi,\phi\right) & =\overline{(\phi,\varphi)} \\
\implies \bar{G}_{\alpha'\alpha} & =G_{\alpha'\alpha}
\end{align}$$

# symmetric and antisymmetric Fock space

from a one-particle Hilbert space $\displaystyle{\mathcal{H}}$, we can define (anti)symmetric Fock space $\displaystyle{\mathcal{F}_{S/A}(\mathcal{H})=\bigoplus^{\infty}_{n=0}\bigotimes_{S/A}\mathcal{H}^{n}}$. elements in the Fock space $\displaystyle{\mathcal{F}_{S}(\mathcal{H})}$ can be written as

$$\begin{align}
\psi & =(\psi,\psi ^{\alpha},\psi ^{\alpha \beta},\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

for a normalized one particle state $\displaystyle{\sigma}$, we can define the creation operator $\displaystyle{c(\sigma)}$ as

$$\begin{align}
c(\sigma)\psi & =(0,\psi \sigma ^{\alpha},\sqrt{ 2 }\sigma ^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\sigma ^{(\alpha}\psi ^{\beta \gamma)},\dots)
\end{align}$$

and annihilation operator $\displaystyle{a(\bar{\sigma})}$ as

$$\begin{align}
a(\bar{\sigma})\psi & =(\bar{\sigma}_{\alpha}\psi ^{\alpha},\sqrt{ 2 }\bar{\sigma} _{\alpha}\psi ^{\alpha \beta},\sqrt{ 3 }\bar{\sigma}_{\alpha}\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

the creation and annihilation operator $\displaystyle{c(\sigma)}$ and $\displaystyle{a(\bar{\sigma})}$ have the following properties

1. $\displaystyle{a(\bar{\sigma})=c^{\dagger}(\sigma)}$.

$$\begin{align}
(\varphi,c(\sigma)\psi) & =(0,\psi \sigma ^{\alpha},\sqrt{ 2 }\sigma ^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\sigma ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 & =\bar{\varphi}\cdot 0+\bar{\varphi}_{\alpha}\psi \sigma ^{\alpha}+\sqrt{ 2 }\bar{\varphi}_{\alpha \beta}\sigma ^{(\alpha}\psi ^{\beta)}+\sqrt{ 3 }\bar{\varphi}_{\alpha \beta \gamma}\sigma ^{(\alpha}\psi ^{\beta \gamma)}+\dots \\
 & =0+\bar{\varphi}_{\alpha}\psi \sigma ^{\alpha}+\sqrt{ 2 }\bar{\varphi}_{\alpha \beta}\sigma ^{\alpha}\psi ^{\beta}+\sqrt{ 3 }\bar{\varphi}_{\alpha \beta \gamma}\sigma ^{\alpha}\psi ^{\beta \gamma}+\dots  \\
 & =(c^{\dagger}(\sigma)\varphi,\psi) \\
(a(\bar{\sigma})\varphi,\psi) & =\sigma ^{\alpha}\bar{\varphi}_{\alpha}\psi+\sqrt{ 2 }\sigma ^{\alpha}\bar{\varphi}_{\alpha \beta}\psi ^{\beta}+\sqrt{ 3 }\sigma ^{\alpha}\bar{\varphi}_{\alpha \beta \gamma}\psi ^{\beta \gamma}+\dots \\
 & =(c^{\dagger}(\sigma)\varphi,\psi)
\end{align}$$

2. $\displaystyle{[c(\sigma),c(\tau)]=[a(\bar{\sigma}),a(\bar{\tau})]=0}$.

$$\begin{align}
c(\sigma)c(\tau)\psi & =c(\sigma)(0,\tau ^{\alpha}\psi,\sqrt{ 2 }\tau ^{(\alpha}\psi ^{\beta)}+\sqrt{ 3 }\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 &=(0,0,\sqrt{ 1\cdot 2 }\sigma ^{(\alpha}\tau ^{\beta)}\psi,\sqrt{ 2\cdot 3 }\sigma ^{(\alpha}\tau ^{\beta}\psi ^{\gamma)},\sqrt{ 3\cdot4 }\sigma ^{(\alpha}\tau ^{\beta}\psi ^{\gamma \delta)},\dots) \\
 & =c(\tau)c(\sigma)\psi \\
\implies[c(\sigma),c(\tau)] & =0 \\
\implies[a(\bar{\sigma}),a(\bar{\tau})] & =0
\end{align}$$

3. $\displaystyle{[a(\bar{\sigma}),c(\tau)]=\bar{\sigma}_{\alpha}\tau ^{\alpha}\mathbb{I}}$. 

$$\begin{align}
a(\bar{\sigma})c(\tau)\psi & =a(\bar{\sigma})(0,\tau^{\alpha}\psi,\sqrt{ 2 }\tau^{(\alpha}\psi ^{\beta)},\sqrt{ 3 }\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
 & =(\bar{\sigma}_{\alpha}\tau ^{\alpha}\psi,2\bar{\sigma}_{\alpha}\tau ^{(\alpha}\psi ^{\beta)},3\bar{\sigma}_{\alpha}\tau ^{(\alpha}\psi ^{\beta \gamma)},\dots) \\
c(\tau)a(\bar{\sigma})\psi & =c(\tau)(\bar{\sigma}_{\alpha}\psi ^{\alpha},\sqrt{ 2 }\bar{\sigma} _{\alpha}\psi ^{\alpha \beta},\sqrt{ 3 }\bar{\sigma}_{\alpha}\psi ^{\alpha \beta \gamma},\dots) \\
 & =(0,\tau ^{\alpha}\bar{\sigma}_{\beta}\psi ^{\beta},2\bar{\sigma}_{\alpha}\psi ^{\alpha (\beta}\tau ^{\gamma)},3\bar{\sigma}_{\alpha}\psi ^{\alpha(\beta \gamma}\tau ^{\delta)},\dots) \\
\implies[a(\bar{\sigma}),c(\tau)] & =\bar{\sigma}_{\alpha}\tau ^{\alpha}\mathbb{I}
\end{align}$$

define $\displaystyle{N(\sigma)=c(\sigma)a(\bar{\sigma}), N=\sum _{\sigma}c(\sigma)a(\bar{\sigma})}$, then

$$\begin{align}
[N(\sigma),c(\sigma)] & =c(\sigma) \\
[N(\sigma),a(\bar{\sigma})] & =-a(\bar{\sigma})
\end{align}$$

$$\begin{align}
N(\sigma)\psi & =(0,\sigma ^{\alpha}\bar{\sigma}_{\beta}\psi ^{\beta},2\bar{\sigma}_{\alpha}\psi ^{\alpha (\beta}\sigma ^{\gamma)},3\bar{\sigma}_{\alpha}\psi ^{\alpha(\beta \gamma}\sigma ^{\delta)},\dots) \\
N\psi & =(0,\psi ^{\alpha},2\psi ^{\alpha \beta},3\psi ^{\alpha \beta \gamma},\dots)
\end{align}$$

since

$$\begin{align}
[N(\sigma),N] & =0
\end{align}$$

so the eigenstate with $\displaystyle{n}$ particle in which $\displaystyle{m}$ particle on the state $\displaystyle{\sigma}$ is

$$\begin{align}
\psi & =(0,0,\dots,\sigma ^{(\alpha_{1}}\sigma ^{\alpha _{2}}\dots \sigma ^{\alpha _{m}}\kappa ^{\beta_{1}\beta_{2}\dots \beta _{n-m})},0,\dots)
\end{align}$$

where $\displaystyle{\kappa ^{\beta_{1}\dots \beta_{n-m}}\bar{\sigma}_{\beta _{k}}=0}$. then

$$\begin{align}
N(\sigma)\psi & =(0,0,\dots,n\sigma ^{(\alpha_{1}}\bar{\sigma}_{\beta}\sigma ^{\beta}\sigma ^{\alpha_{2}}\dots \sigma ^{\alpha _{m}}\kappa ^{\beta_{1}\dots \beta _{n-m}},0,\dots) \\
 & =(0,0,\dots,m\sigma ^{(\alpha_{1}}\sigma ^{\alpha_{2}}\dots \sigma ^{\alpha _{m}}\kappa ^{\beta_{1}\dots \beta _{n-m})},0,\dots)
\end{align}$$

for antisymmetric case, the definitions of creation and annihilation operator is simply turn $\displaystyle{()}$ into $\displaystyle{[]}$, and we have the following properties

$$\begin{align}
c^{\dagger}(\sigma) & =a(\bar{\sigma}) \\
\left\{c(\sigma),c(\tau)\right\} & =\left\{a(\bar{\sigma}),a(\bar{\tau})\right\}=0 \\
\left\{a(\bar{\sigma}),c(\tau)\right\} & =\bar{\sigma}_{\alpha}\tau ^{\alpha}\mathbb{I} \\
N(\sigma) & =c(\sigma)a(\bar{\sigma}) \\
[N(\sigma),a(\bar{\sigma})] & =-a(\bar{\sigma}) \\
[N(\sigma),c(\sigma)] & =c(\sigma) \\
[N,N(\sigma)] & =0
\end{align}$$

and for fermion, we have the following unique property

$$\begin{align}
N^{2}(\sigma) & =c(\sigma)a(\bar{\sigma})c(\sigma)a(\bar{\sigma}) \\
 & =c(\sigma)\left\{a(\bar{\sigma}),c(\sigma)\right\}a(\bar{\sigma}) \\
 & =c(\sigma)a(\bar{\sigma})=N(\sigma) \\
\implies N(\sigma)(N(\sigma)-1) & =0
\end{align}$$

then the eigenvalue of $\displaystyle{N(\sigma)}$ can only be $\displaystyle{0}$ and $\displaystyle{1}$. Pauli exclusion principle. so the eigenstates can be written as

$$\begin{align}
\psi & =(\psi,\psi ^{\alpha},\psi ^{\alpha \beta},\psi ^{\alpha \beta \gamma},\dots) & \text{ with }\psi ^{\alpha\dots}\bar{\sigma}_{\alpha}=0 \\
\psi & =(0,\sigma ^{\alpha}\kappa,\sigma ^{[\alpha}\kappa ^{\beta]},\sigma ^{[\alpha}\kappa ^{\beta \gamma]},\dots) & \text{ with }\kappa ^{\alpha\dots}\bar{\sigma}_{\alpha}=0
\end{align}$$

# operator valued function and distribution

a field operator, operator valued function $\displaystyle{\hat{\phi}(x)}$ is defined as

$$\begin{align}
\hat{\phi}(x) & =a(\bar{\sigma}^{i})\sigma _{i}(x)+c(\sigma _{i})\bar{\sigma}^{i}(x)
\end{align}$$

it is Hermitian

$$\begin{align}
\hat{\phi}^{\dagger}(x) & =a^{\dagger}(\bar{\sigma}^{i})\bar{\sigma} _{i}(x)+c^{\dagger}(\sigma _{i})\sigma _{i}(x) \\
 & =c(\sigma _{i})\bar{\sigma}^{i}(x)+a(\bar{\sigma}^{i})\sigma _{i}(x)
\end{align}$$

$\displaystyle{\hat{\phi}(x)}$ satisfies KG equation, and does not depend on the choice of $\displaystyle{\left\{\sigma _{i}(x)\right\}}$. assume we have another orthonormal basis $\displaystyle{\left\{\tau _{i}(x)\right\}}$

$$\begin{align}
\hat{\phi}(x) & =a(\bar{\tau}^{i})\tau _{i}(x)+c(\tau _{i})\bar{\tau}^{i}(x)
\end{align}$$

expand $\displaystyle{\tau _{i}(x)=\lambda _{i}^{~j}\sigma _{j}(x)\implies \lambda_{i}^{~j}=\bar{\sigma}^{j}\tau _{i}}$, then

$$\begin{align}
\hat{\phi} & =a(\bar{\tau}^{i})\lambda _{i}^{~j}\sigma _{j}(x)+c(\tau _{i})\bar{\lambda} ^{i}_{~j}\bar{\sigma}^{j}(x) \\
 & =a(\bar{\tau}^{i})\bar{\sigma}^{j}_{\alpha}\tau ^{\alpha}_{i}\sigma _{j}(x)+c(\tau _{i})\sigma _{j}^{\alpha}\bar{\tau}^{i}_{\alpha}\bar{\sigma}^{j}(x) \\
 & =a(\bar{\tau}^{i}_{\beta}\bar{\sigma}^{j}_{\alpha}\tau ^{\alpha}_{i})\sigma ^{\beta} _{j}(x)+c(\tau _{i}^{\beta}\sigma ^{\alpha}_{j}\bar{\tau}^{i}_{\alpha})\bar{\sigma}^{j}(x) \\
 & =a(\bar{\sigma}^{j})\sigma _{j}(x)+c(\sigma _{j})\bar{\sigma}^{j}(x)
\end{align}$$

in Minkowski spacetime, we can choose the following basis

$$\begin{align}
\vec{k}'(x)=\frac{1}{(2\pi)^{d/2}\sqrt{ 2\omega _{k} }}e^{ik'_{a}x^{a}}
\end{align}$$

then the field operator $\displaystyle{\hat{\phi}(x)}$ can be written as the standard form

$$\begin{align}
\hat{\phi}(x) & =\frac{1}{(2\pi)^{d/2}}\int \frac{\mathrm{d}^{d-1}\vec{k}}{\sqrt{ 2\omega _{k} }}\left(a_{\vec{k}}e^{ik _{a}x^{a}}+a^{\dagger}_{\vec{k}}e^{-ik _{a}x^{a}}\right)
\end{align}$$

more precisely, field operator $\displaystyle{\hat{\phi}}$ is actually a distribution. when acting on a real test function $\displaystyle{f}$ with compact support

$$\begin{align}
\hat{\phi}(f) & =a(\bar{\sigma}_{f})+c(\sigma _{f})
\end{align}$$

where $\displaystyle{\sigma _{f}}$ is defined as

$$\begin{align}
\sigma _{f} & =\sigma _{i}\int \mathrm{d}^{d}x\bar{\sigma}^{i}(x)f(x)
\end{align}$$

then we have

$$\begin{align}
\int \mathrm{d}^{d}x\hat{\phi}(x)f(x) & =\int \mathrm{d}^{d}x(a(\bar{\sigma}^{i})\sigma _{i}(x)+c(\sigma _{i})\bar{\sigma}^{i}(x))f(x) \\
 & =a(\bar{\sigma}^{i})\int \mathrm{d}^{d}x\sigma _{i}(x)f(x)+c(\sigma _{i})\int \mathrm{d}^{d}x\bar{\sigma}^{i}(x)f(x) \\
 & =a\left( \bar{\sigma}^{i}\int \mathrm{d}^{d}x\sigma _{i}(x)f(x) \right)+c\left( \sigma _{i}\int \mathrm{d}^{d}x\bar{\sigma}^{i}(x)f(x) \right) \\
 & =a(\bar{\sigma}_{f})+c(\sigma _{f})
\end{align}$$

and the KG equation can be generalized into

$$\begin{align}
\boxed{\hat{\phi}(x)((\square+m^{2})f)=\int \mathrm{d}^{d}x\hat{\phi}(x)(\square+m^{2})f(x)} \\
 =\int \mathrm{d}^{d}x(\square+m^{2})\hat{\phi}(x)f(x) \\
 =0
\end{align}$$

there are some insights from PDE theory.

# commutators and propagators

we first define

$$\begin{align}
D^{+}(f,g) & =\braket{ 0|\hat{\phi}(f)\hat{\phi}(g)|0 }
\end{align}$$

where $\displaystyle{\ket{0}=(1,0,0,\dots)}$ is the vacuum state, satisfies $\displaystyle{a(\bar{\sigma})\ket{0}=0}$

$$\begin{align}
D^{-}(f,g) & = \braket{ 0|(a(\bar{\sigma}_{f})+c(\sigma _{f}))(a(\bar{\sigma}_{g})+c(\sigma_{g}))|0 }  \\
 & = \braket{ 0|a(\bar{\sigma}_{f})c(\sigma _{g})|0 } \\
 & = \braket{ 0|[a(\bar{\sigma}_{f}),c(\sigma _{g})]|0 }
\end{align}$$

we then define

$$\begin{align}
D^{-}(f,g) & = -\braket{ 0|\hat{\phi}(g)\hat{\phi}(f)|0 }  \\
 & = \braket{ 0|[c(\sigma _{g}),a(\bar{\sigma}_{f})]|0 } 
\end{align}$$

and then

$$\begin{align}
D(f,g) & =D^{+}(f,g)+D^{-}(f,g) \\
 & =\braket{ 0|[\hat{\phi}(f),\hat{\phi}(g)]|0 } 
\end{align}$$

we have the following properties

1. 
$$\begin{align}
D^{+}(f,g) & =-D^{-}(g,f)=-\overline{D^{-}(f,g)} \\
\implies D(f,g) & =-D(g,f)=-\overline{D(f,g)}
\end{align}$$

2. $\displaystyle{D^{\pm}(f,g),D(f,g)}$ are Poincare (diffepmorphism?) invariance, i.e.,

$$\begin{align}
D^{\pm}(\phi ^{*}f,\phi ^{*}g) & =D^{\pm}(f,g) \\
D(\phi ^{*}f,\phi ^{*}g) & =D(f,g)
\end{align}$$

where $\displaystyle{\phi}$ is a Poincare transformation (diffeomorphism?). 
3. if $\displaystyle{\mathrm{supp}(f)\cap\left(J^{+}(\mathrm{supp}(g))\cup J^{-}(\mathrm{supp}(g))\right)=0}$, then $\displaystyle{D(f,g)=0}$.

if we choose test function as $\displaystyle{f(y)=\delta(y-x)}$, we get the usual results.

we then define propagators. the retarded, advanced and Feynman propagator are defined as

$$\begin{align}
D^{\mathrm{R}}(x,x') & =\theta(x^{0}-x'^{0})\braket{ 0|\hat{\phi}(x)\hat{\phi}(x')|0 }  \\
D^{\mathrm{A}}(x,x') & =-\theta(x'^{0}-x^{0})\braket{ 0|\hat{\phi}(x)\hat{\phi}(x')|0 }  \\
D^{\mathrm{F}}(x,x') & =\braket{ 0|T\hat{\phi}(x)\hat{\phi}(y)|0 }  \\
 & =D^{\mathrm{R}}(x,x')-D^{\mathrm{A}}(x,x')
\end{align}$$

# spin and statistics

for a scalar field operator

$$\begin{align}
\hat{\phi}(f) & =a(\bar{\sigma}_{f})+c(\sigma _{f})
\end{align}$$

if we take $\displaystyle{a(\bar{\sigma}_{f})}$ and $\displaystyle{c(\sigma _{f})}$ to living in the antisymmetric Fock space $\displaystyle{\mathcal{F}_{A}(\mathcal{H})}$, what would happen?

## causality requirement of the commutators

$$\begin{align}
\left\{\hat{\phi}(f),\hat{\phi}(g)\right\} =0
\end{align}$$

for $\displaystyle{\mathrm{supp}f\cap(J^{+}(\mathrm{supp}(g))\cup J^{-}(\mathrm{supp}(g)))=0}$. but

$$\begin{align}
\left\{\hat{\phi}(f),\hat{\phi}(g)\right\} & =\left\{a(\bar{\sigma}_{f})+c(\sigma _{f}),a(\bar{\sigma}_{g})+c(\sigma _{g})\right\} \\
 & =\left\{a(\bar{\sigma}_{f}),c(\sigma _{g})\right\}+\left\{a(\bar{\sigma}_{g}),c(\sigma _{f})\right\} \\
 & =\bar{\sigma}_{f,\alpha}\sigma _{g}^{\alpha}+\bar{\sigma}_{g,\alpha}\sigma _{f}^{\alpha}\neq0
\end{align}$$

contradiction!

## Poincare (diffeomorphism) invariance of the time ordered correlators

$$\begin{align}
D^{\mathrm{F}}(x,x') & =\braket{ 0|T[\hat{\phi}(x)\hat{\phi}(x')]|0 }  \\
 & =\theta(x^{0}-x'^{0})\braket{ 0|\hat{\phi}(x)\hat{\phi}(x')|0 }-\theta(x'^{0}-x^{0})\braket{ 0|\hat{\phi}(x')\hat{\phi}(x)|0 }
\end{align}$$

is not Poincare (diffeomorphism) invariance!

# Unruh effect and Casimir effect

vacua are not unique and empty, and are highly entangled!

# particles and antiparticles