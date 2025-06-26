## plan

1. QCD and Wilson loop
2. Matrix bootstrap and some examples
	1. integral
	2. matrix model
3. LQCD
	1. loop equation
	2. reflection positivity

asymptotic freedom

$$\tag{0.1}
\begin{align}
\mu \frac{\partial \alpha}{\partial \mu} & =\beta(\alpha)=\dots
\end{align}
$$

$$\tag{0.2}
\begin{align}
\implies \alpha & =\dots
\end{align}
$$

where $\displaystyle{\beta_{0}=-\frac{4}{3}N_{F}+\frac{11}{3}N}$, the first term comes from the quark loop in the gluon 1-loop self energy, and the second term comes from the gluon loop in the gluon 1-loop self energy (so there is no the second term in the qed). for qcd, we have $\displaystyle{\beta_{0}>0}$, so we have asymptotic freedom.

see: **confinment of quark** by Wilson

wilson loop is a nonlocal order parameter (what does it mean?), which is defined as

$$\tag{0.3}
\begin{align}
\braket{ W(C) }  & = \braket{ 0|\mathcal{P}\mathrm{tr}\exp\left(ig\oint \mathrm{d}x^{\mu}A_{\mu}(x)\right)|0 } 
\end{align}
$$

where $\displaystyle{C}$ is a closed curve, $\displaystyle{\mathcal{P}}$ is the path ordering operator, and $\displaystyle{A_{\mu}(x)}$ is the gauge field. the leading order of the wilson loop is

$$\tag{0.4}
\begin{align}
 \mathcal{P}\oint \mathrm{d}x^{\mu}\oint \mathrm{d}y^{\mu}\braket{ 0|A_{\mu}(x)A_{\nu}(y)|0 } & =\mathcal{P}\int ^{1}_{0}\mathrm{d}\tau_{1}\dot{x}^{\mu}(\tau_{1})\int _{0}^{1}\mathrm{d}\tau_{2}\dot{y}^{\nu}(\tau _{2})\braket{ 0|A_{\mu}(x)A_{\nu}(y)|0 }  \\
 & = \int ^{1}_{0}\mathrm{d}\tau_{1} \dot{x}^{\mu}(\tau_{1})\int _{0}^{1}\mathrm{d}\tau _{2}\dot{y}^{\nu}(\tau _{2})\braket{ 0|\theta(\tau_{1}-\tau_{2})A_{\mu}(x)A_{\nu}(y)+\theta(\tau _{2}-\tau_{1})A_{\nu}(y)A_{\mu}(x)|0 } 
\end{align}
$$

why we need Wilson loop? Wilson was considering the following correlation function

$$\tag{0.5}
\begin{align}
\braket{ 0|\mathcal{T}J^{\mu}(x)J^{\nu}(0)|0 } ,\quad J^{\mu}(x) & =\bar{\psi}\gamma ^{\mu}\psi
\end{align}
$$

this correlation function describes the propagation of a quark-antiquark pair in the vacuum, and it is related to the confinment between the quark and antiquark. the Wilson loop is exactly the gluon loop correction to the correlation function.

for example, consider the $\displaystyle{U(1)}$ gauge theory 

$$\tag{0.6}
\begin{align}
\braket{ W(C) }  & =\exp\left(-g^{2}\oint \mathrm{d}x^{\mu}\oint \mathrm{d}y^{\mu}D_{\mu \nu}(x-y)\right)
\end{align}
$$

where $\displaystyle{D_{\mu \nu}(x-y)}$ is the propagator of the gauge field. in 3+1 dimensions $\displaystyle{D_{\mu \nu}(x-y)=\frac{\eta _{\mu \nu}}{(x-y)^{2}}}$, which gives a supression for large distance. so effectively $\displaystyle{\braket{ W(C) }}$ satisfies **parameter law**. 

in 1+1 dimensions $\displaystyle{D_{\mu \nu}(x,y)\propto \log(x-y)^{2}}$, which gives non-negligible contribution for large distance. so effectively $\displaystyle{\braket{ W(C) }}$ satisfies **area law** $\displaystyle{\implies}$ confinment.

non-perturbative qcd is hard, but we can use the following methods to study it
1. Seiberg-Witten
2. low dimension model: 2D 't Hooft model
3. planar $\displaystyle{\mathcal{N}=4}$ SYM (AdS/CFT, integrability, Yangian symmetry, ...)
4. conformal bootstrap
5. S-matrix bootstrap
6. matrix bootstrap
7. lqcd (MC simulation)

# matrix bootstrap

matrix bootstrap have the following features
1. non perturbative
2. use Lagrangian
3. not require specific symmetry (such as susy...)
4. for general spacetime dimension (especially for $d=2$)

consider the following action

$$\tag{1.1}
\begin{align}
S[x] & =\frac{1}{2}x^{2}+\frac{\lambda}{4}x^{4}
\end{align}
$$

the partition function is

$$\tag{1.2}
\begin{align}
Z[x] & =\int _{-\infty}^{+\infty}\mathrm{d}xe^{-S[x]}
\end{align}
$$

the correlation function is

$$\tag{1.3}
\begin{align}
W_{k}=\frac{1}{Z}\int _{-\infty}^{+\infty} x^{k}e^{-S[x]}
\end{align}
$$

we need "Schwinger-Dyson" equation to compute the correlation function

$$\tag{1.4}
\begin{align}
0=\int _{-\infty}^{+\infty} \mathrm{d}x \frac{\partial}{\partial x}\left(x^{k+1}e^{-S[x]}\right) & =(k+1)W_{k}-W_{k+2}-\lambda W_{k+4}
\end{align}
$$

so we only need to calculate $\displaystyle{W_{2}}$.

**positivity condition**? consider

$$\tag{1.5}
\begin{align}
X & =\sum ^{n}_{i=1}\alpha _{i}x^{i}
\end{align}
$$

require $\displaystyle{X^{2}\geqslant0}$, and

$$\tag{1.6}
\begin{align}
\braket{ X^{2} }  & =\frac{1}{Z}\int \mathrm{d}xe^{-S[x]}\left( \sum _{i}\alpha _{i}x^{i} \right)^{2} \\
 & =\frac{1}{Z}\int \mathrm{d}xe^{S[x]}\sum _{i,j}\alpha _{i}\alpha _{j}x^{i+j}
\end{align}
$$

require $\displaystyle{\braket{ X^{2} }\geqslant0}$ for all $\displaystyle{\alpha _{i},\alpha _{j}}$ $\displaystyle{\Leftrightarrow}$ the matrix $\displaystyle{M_{ij}= \braket{ x^{i+j} }}$ is positive definite.

for $\displaystyle{n=2}$, we have

$$\tag{1.7}
\begin{align}
\begin{vmatrix}
1 & 0 & W_{2} \\
0 & W_{2} & 0 \\
W_{2} & 0 & W_{4}
\end{vmatrix}\geqslant0
\end{align}
$$

and $\displaystyle{W_{4}=\frac{1-W_{2}}{\lambda}}$ $\displaystyle{\implies}$ $\displaystyle{W_{2}\left( \frac{1-W_{2}}{\lambda}-W_{2}^{2} \right)\geqslant0\implies 0\leqslant W_{2}\leqslant \frac{-1+\sqrt{ 1+4\lambda }}{2\lambda}}$

when $\displaystyle{n}$ goes higher and higher, we will get more and more constraints, so we can get a better and better bound for $\displaystyle{W_{2}}$. actually the convergence is very fast.

## matrix model

$$\tag{1.8}
\begin{align}
Z & =\int \mathrm{d}M e^{-S[M]}
\end{align}
$$

where $\displaystyle{M}$ is a $\displaystyle{N\times N}$ Hermitian metrix, and the action

$$\tag{1.9}
\begin{align}
S[M] & =N\mathrm{Tr}(V(M))
\end{align}
$$

where $\displaystyle{V(M)}$ is a polynomial of $\displaystyle{M}$, such as $\displaystyle{V(M)=\frac{1}{2}M^{2}+\frac{g}{4}M^{4}}$. define

$$\tag{1.10}
\begin{align}
t_{k} & =\frac{1}{Z}\int \mathrm{d}M e^{-S[M]}\mathrm{Tr}M^{k}=\frac{1}{N}\braket{ \mathrm{Tr}M^{k} } 
\end{align}
$$

the Schwinger-Dyson equation is simply

$$\tag{1.11}
\begin{align}
0=\frac{1}{Z}\int \mathrm{d}M \frac{\partial}{\partial M_{ij}}\left(e^{-S[M]}(M^{k})_{ij}\right) \\
\implies\braket{ \frac{\partial}{\partial M_{ij}}(M^{k})_{ij} }-\braket{ \frac{\partial S}{\partial M_{ij}}(M^{k})_{ij} } =0 \\
\implies \sum ^{k-1}_{l=0} \mathrm{tr}M^{l}\mathrm{tr}M^{k-l-1}-\mathrm{tr}M^{k+1}-g\mathrm{tr}M^{k+3} =0
\end{align}
$$

for simplicity we write $\displaystyle{\mathrm{tr}=\frac{1}{N}\mathrm{Tr}}$. here we take the large $\displaystyle{N}$ limit, i.e., $\displaystyle{\braket{ \mathrm{tr}A\mathrm{tr}B }=\braket{ \mathrm{tr}A }\braket{ \mathrm{tr}B }+\mathcal{O}\left( \frac{1}{N} \right)}$. require

$$\tag{1.11}
\begin{align}
\frac{1}{Z}\int \mathrm{d}M e^{-S[M]}\sum _{i=1}^{n}(\alpha _{i}M^{i})^{2}
\end{align}
$$

to be positive definite for all $\displaystyle{\alpha _{i}}$'s, we have we get the following matrix positivity condition

$$\tag{1.12}
\begin{align}
(\mathcal{M})_{ij} & = \braket{ \mathrm{tr}M^{i+j} } 
\end{align}
$$

the idea is quite similar.

## multi-matrix model

$$\tag{1.13}
\begin{align}
S[A,B] & =\mathrm{tr}(V[A,B]) \\
V[A,B] & =\frac{1}{2}A^{4}+\frac{1}{2}B^{4}+\frac{h}{3}(A^{2}B+AB^{2})
\end{align}
$$

the idea is similar, left as excercise

# lattice gauge theory

1. presentation (kinematics)
2. loop equation (dynamics)
3. positivity
	1. hermitian
	2. reflection positivity (unitarity)

the system is defined on a lattice with

$$\tag{2.1}
\begin{align}
x & =a\sum ^{d}_{\mu=1}n_{\mu}\hat{\mu}, & n_{\mu}\in \mathbb{Z}
\end{align}
$$

denote link variables $\displaystyle{u_{\mu}(x)}$, with its conjugation $\displaystyle{u^{\dagger}_{\mu}(x)=u_{-\mu}(x+\hat{\mu})}$ and gauge transformation

$$\tag{2.2}
\begin{align}
u_{\mu}(x) & \to \Omega(x)u_{\mu}(x)\Omega ^{\dagger}(x+\hat{\mu})
\end{align}
$$

a plaque variable $\displaystyle{u_{p}}$ is defined as

$$\tag{2.3}
\begin{align}
u_{p} & =u_{\mu}(x)u_{\nu}(x+\hat{\mu})u_{-\mu}(x+\hat{\mu}+\hat{\nu})u_{-\nu}(x+\hat{\nu}) \\
 & =u_{\mu}(x)u_{\nu}(x+\hat{\mu})u^{\dagger}_{\mu}(x+\hat{\nu})u^{\dagger}_{\nu}(x)
\end{align}
$$

which is the minimal Wilson loop. the action can be written as

$$\tag{2.4}
\begin{align}
S_{\mathrm{YM}} & =-\frac{N}{2\lambda}\sum _{p} (\mathrm{tr}u_{p}+\mathrm{tr}u_{p}^{\dagger})
\end{align}
$$

the partition function is

$$\tag{2.5}
\begin{align}
\mathcal{Z} & =\int [\mathcal{D}u]e^{-S[u]} \\
 & =\int \prod _{x,\mu}\mathrm{d}u_{\mu}(x) e^{N/2\lambda \sum _{p}\mathrm{tr}u_{p}+\mathrm{tr}u_{p}^{\dagger}}
\end{align}
$$

what we want is the correlation function

$$\tag{2.6}
\begin{align}
\braket{ \mathcal{O} }  & =\frac{1}{\mathcal{Z}}\int \mathcal{D}u e^{-S[u]}\mathcal{O}
\end{align}
$$

this is the basic setup. but now we introduce a new set of variables, **letter representation**

in 4d theory, we introduce $\displaystyle{a,a^{-1},b,b^{-1},c,c^{-1},d,d^{-1}}$, a loop can be represented as a word, $\displaystyle{W_{p}=aba^{-1}b^{-1}}$ or a more complex one $\displaystyle{W_{C}=aabbab^{-1}a^{-1}a^{-1}a^{-1}b^{-b}}$. we have the following symmetry

1. lattice symmetry
2. inverse symmetry $\displaystyle{\braket{ W }= \braket{ W^{\dagger} }}$.