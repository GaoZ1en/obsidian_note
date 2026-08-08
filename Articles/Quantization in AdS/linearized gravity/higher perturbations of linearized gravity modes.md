The unperturbed normal modes in [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]] can be written, after the canonical rescaling used below, as

$$\begin{align}
h^{[0]}_{L/R,n,\mu \nu} & =\mathcal{L}_{\zeta _{L/R,n}}g^{(0)}_{\mu \nu}
\end{align}$$

with

$$\begin{align}
\zeta _{L,n} & =\sqrt{ \dfrac{6}{n!(n+3)!} }\mathcal{L}_{\xi _{-1}}^{n}\zeta _{L,0} \\
\zeta _{R,n} & =\sqrt{ \dfrac{6}{n!(n+3)!} }\mathcal{L}_{\bar{\xi}_{-1}}^{n}\zeta _{R,0} \\
\zeta _{L,0} & =\left( i \dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{r^{4}}{(1+r^{2})^{2}},-\dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{r(3+2r^{2})}{1+r^{2}}, -i \dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{3+r^{2}}{1+r^{2}}\right) \\
\zeta _{R,0} & =\left(i \dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{r^{4}}{(1+r^{2})^{2}},-\dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{r(3+2r^{2})}{1+r^{2}},i \dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{3+r^{2}}{1+r^{2}}\right)
\end{align}$$

here we choose $\displaystyle{\kappa ^{2}=16\pi G}$. For one mode, the finite-diffeomorphism continuation truncated at relative order $\displaystyle{\kappa ^{p}}$ is

$$\begin{align}
h ^{[p]}_{A,n} & =\sum ^{p}_{j=0} \dfrac{\kappa ^{j}}{(j+1)!}\mathcal{L}^{j+1}_{\zeta _{A,n}}g^{(0)}, & A=L,R
\end{align}$$

and hence

$$\begin{align}
h_{A,n} & =\dfrac{e^{\kappa \mathcal{L}_{\zeta _{A,n}}}-1}{\kappa}g^{(0)} \\
 & =\mathcal{L}_{\zeta _{A,n}}g^{(0)}+\dfrac{\kappa}{2}\mathcal{L}^{2}_{\zeta _{A,n}}g^{(0)}+\mathcal{O}(\kappa ^{2})
\end{align}$$

A convenient exact nonlinear continuation of a general linearized mode superposition is obtained by expanding

$$\begin{align}
\zeta[a] & =\sum _{A=L,R}\sum_{n=0}^{\infty} \left(a_{A,n}\zeta _{A,n}+a^{\dagger}_{A,n}\zeta _{A,n}^{*}\right)
\end{align}$$

then

$$\begin{align}
h[a] & = \dfrac{e^{\kappa \mathcal{L}_{\zeta[a]}}-1}{\kappa} g^{(0)}.
\end{align}$$

This fixed-generator exponential contains every linear Brown-Henneaux mode as a tangent direction and generates the cross terms of the chosen autonomous flow. The time-dependent completion that reaches every smooth point of the global-AdS vacuum orbit is proved in Section 10.

## A Simple Argument

Consider the bulk action

$$\begin{align}
S_{\text{bulk}} & =\dfrac{1}{\kappa ^{2}} \int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2), & \kappa ^{2}=16\pi G
\end{align}$$

and Brown-Henneaux boundary conditions. We expand

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+\kappa h_{\mu \nu}
\end{align}$$

and no higher expansions. The action can be expanded as

$$\begin{align}
S[h] & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}^{(2)}[h,h] \\
 & +\kappa \int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}^{(3)}[h,h,h]+\mathcal{O}(\kappa ^{2})
\end{align}$$

let the AdS-Einstein tensor be

$$\begin{align}
\mathcal{E}_{\mu \nu}[g] & :=R_{\mu \nu}[g]-\dfrac{1}{2}g_{\mu \nu}R[g]-g_{\mu \nu}
\end{align}$$

expanding $\displaystyle{\mathcal{E}_{\mu \nu}[g]}$ in the order of $\displaystyle{\kappa}$, we have

$$\begin{align}
\kappa\mathcal{E}^{(1)}_{\mu \nu}[h]+\kappa ^{2}\mathcal{E}_{\mu \nu}^{(2)}[h,h]+\mathcal{O}(\kappa ^{3})=0
\end{align}$$

at $\displaystyle{\mathcal{O}(\kappa)}$ order, we have

$$\begin{align}
\mathcal{E}_{\mu \nu}^{(1)}[h]=0
\end{align}$$

and solve the unperturbed solutions $\displaystyle{h^{[0]}_{L/R,n}}$ as [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]]. To do classical perturbation theory, we expand

$$\begin{align}
h_{\mu \nu} & =h^{[0]}_{\mu \nu}+\kappa h_{\mu \nu}^{[1]}+\mathcal{O}(\kappa ^{2})
\end{align}$$

and insert it into the expansion of $\displaystyle{\mathcal{E}_{\mu \nu}}$, we have

$$\begin{align}
\mathcal{E}^{(1)}[h^{[1]}] +\mathcal{E}^{(2)}[h^{[0]},h^{[0]}] & =0
\end{align}$$

notice that diffeomorphism covariance gives

$$\begin{align}
\mathcal{E}[\mathcal{L}_{\xi}g] & =\mathcal{L}_{\xi}\mathcal{E}[g] \\
\implies \mathcal{E}[e^{\varepsilon \mathcal{L}_{\xi}}g] & =e^{\varepsilon \mathcal{L}_{\xi}}\mathcal{E}[g]
\end{align}$$

which means

$$\begin{align}
\mathcal{E}^{(1)}[h_{A,n}^{[0]}] & =0 \\
\mathcal{E}^{(1)}\left[ \dfrac{1}{2}\mathcal{L}^{2}_{\zeta _{A,n}}g^{(0)} \right]+\mathcal{E}^{(2)}[h^{[0]}_{A,n},h^{[0]}_{A,n}] & =0 \\
\dots
\end{align}$$

therefore we have

$$\begin{align}
h^{[1]}_{A,n,\mu \nu} & =\dfrac{1}{2}\mathcal{L}^{2}_{\zeta _{A,n}}g^{(0)}_{\mu \nu}+\mathcal{L}_{\xi}g^{(0)}_{\mu \nu}
\end{align}$$

here $\displaystyle{\xi}$ are some proper gauge generators, we may set $\displaystyle{\xi=0}$ by a gauge transformation $\displaystyle{h_{\mu \nu}\to h_{\mu \nu}-\kappa\mathcal{L}_{\xi}g^{(0)}_{\mu \nu}}$. Higher perturbations can be constructed by similar argument, but we will only need the first-order perturbative solution for the moment.

Expand

$$\begin{align}
\zeta & =\sum _{A,n}(a_{A,n}\zeta _{A,n}+a^{\dagger}_{A,n}\zeta ^{*}_{A,n}) \\
h_{\mu \nu}^{[0]} & =\mathcal{L}_{\zeta}g^{(0)}_{\mu \nu} \\
 & =\sum _{A,n}a_{A,n}\mathcal{L}_{\zeta _{A,n}}g^{(0)}+a_{A,n}^{\dagger}\mathcal{L}_{\zeta ^{*}_{A,n}}g^{(0)}
\end{align}$$

the first order perturbation can be represented as

$$\begin{align}
h_{\mu \nu}^{[1]} & =\dfrac{1}{2}\mathcal{L}_{\zeta}^{2}g^{(0)}_{\mu \nu}
\end{align}$$

## Perturbed Symplectic Form

First we relabel the descendant number by $\displaystyle{N=n+2\geqslant 2}$ and the normalized generators obey

$$\begin{align}
\zeta _{L,N-2} & =q_{N}\xi _{-N}, & \zeta _{R,N-2} & =q_{N}\bar{\xi}_{-N} \\
q_{N} & =-\dfrac{(-i)^{N-1}}{\sqrt{ 2\pi N(N^{2}-1) }}
\end{align}$$

here $\displaystyle{\xi _{N},\bar{\xi}_{N}}$ are asymptotic Killing vectors and satisfy

Inserting the solution

$$\begin{align}
g[a] & =e^{\kappa \mathcal{L}_{\zeta}}g^{(0)}
\end{align}$$

to the symplectic form

$$\begin{align}
\omega & =\delta \theta \\
\theta & =\dfrac{1}{\kappa ^{2}}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(g^{\mu \alpha}\nabla ^{\nu}\delta g_{\alpha \nu}-g^{\alpha \beta}\nabla ^{\mu}\delta g_{\alpha \beta})-\dfrac{1}{\kappa ^{2}}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}\gamma ^{\mu \nu}n^{\alpha}\delta g_{\nu \alpha}
\end{align}$$

and expand to order $\displaystyle{\mathcal{O}(\kappa ^{1})}$, we get

$$\begin{align}
\omega & =\omega ^{(0)}+\kappa \sum _{A}\omega _{A} ^{(1)}+\mathcal{O}(\kappa ^{2})
\end{align}$$

with

$$\begin{align}
\omega ^{(0)} & =i\sum _{A,N}\delta a^{\dagger}_{A,N}\wedge \delta a_{A,N} \\
\omega ^{(1)}_{A} & =-\dfrac{i}{4}\sum _{N,M\geqslant 2}\lambda _{NM}a^{\dagger}_{A,N+M}\delta a_{A,N}\wedge \delta a_{A,M} \\
 & +\dfrac{i}{4}\sum _{N,M\geqslant 2}\lambda _{NM}a_{A,N+M}\delta a^{\dagger}_{A,N}\wedge \delta a^{\dagger}_{A,M} \\
 & +i\sum _{N,M\geqslant 2,|N-M| \geqslant 2} \mu _{NM}\mathfrak{a}_{A,M-N}\delta a_{A,N}\wedge \delta a^{\dagger}_{A,M}
\end{align}$$

where

$$\begin{align}
\lambda _{NM} & := (N-M) \sqrt{ \dfrac{D_{N+M}}{D_{N}D_{M}} } \\
\mu _{NM} & := \dfrac{N+M}{2} \sqrt{ \dfrac{D_{|N-M|}}{D_{N}D_{M}} } \\
D_{N} & := 2\pi N(N^{2}-1) \\
\mathfrak{a}_{A,k} & =\begin{cases}
a_{A,k}, & k\geqslant 2 \\
a^{\dagger}_{A,-k}, & k\leqslant -2 \\
0, & |k|\leqslant 1
\end{cases}
\end{align}$$

here we take the $\displaystyle{\mathcal{L}^{(1)}[h]}$ and boundary terms into consideration.

## Perturbed Noether Charges and Poisson Brackets

Consider diffeomorphisms generated by (asymptotic) Killing vectors $\displaystyle{\xi _{n},\bar{\xi}_{n}}$ and $\displaystyle{\zeta _{A,n},\zeta _{A,n}^{*}}$ (up to a constant factor). By CPS formalism, we have

$$\begin{align}
H_{\xi} & =-\dfrac{2}{\kappa ^{2}}\int _{\partial\Sigma}\mathrm{d}x\sqrt{ h }\tau ^{\alpha}\xi ^{\beta}(-K_{\alpha \beta}+K\gamma _{\alpha \beta}-\gamma _{\alpha \beta})
\end{align}$$

we expand

$$\begin{align}
\zeta _{A} & =\sum _{N\geqslant 2}(q_{N}a_{A,N}\xi _{-n}+q^{*}_{N}a^{\dagger}_{A,N}\xi _{N})
\end{align}$$

for compectness, define

$$\begin{align}
\rho _{k} & :=\begin{cases}
q^{*}_{k}, & k\geqslant 2 \\
q_{-k}, & k\leqslant -2 \\
0, & |k|\leqslant 1 &
\end{cases}, & \rho _{-N}\mathfrak{a}_{A,N} & =q_{N}a_{A,N}, & \rho _{N}\mathfrak{a}_{A,-N} & =q^{*}_{N}a^{\dagger}_{A,N}
\end{align}$$

we denote the Noether charge corresponding to $\displaystyle{\xi _{p}}$ as $\displaystyle{H_{p}}$, we have

$$\begin{align}
H_{p} & =-\dfrac{2\pi i}{\kappa}p(p^{2}-1)\rho _{-p}\mathfrak{a}_{L,p} \\
 & -\pi \sum _{\substack{k+l+p=0,\\
|k|,|l| \geqslant 2}}\rho _{k}\rho _{l}\mathfrak{a}_{L,-k}\mathfrak{a}_{L,-l}(l-p)k(k^{2}-1) \\
 & -\dfrac{i\pi \kappa}{3}\sum _{\substack{k+l+m+p=0, \\
|k|,|l|,|m|\geqslant2}}\rho _{k}\rho _{l}\rho _{m}\mathfrak{a}_{L,-k}\mathfrak{a}_{L,-l}\mathfrak{a}_{L,-m}(m-p)(l-m-p)k(k^{2}-1)+\mathcal{O}(\kappa ^{2})
\end{align}$$

barred charges takes the similar expression. On the other hand, we write

$$\begin{align}
X_{p} & =\int \mathrm{d}^{3}x\mathcal{L}_{\xi _{p}}g_{\mu \nu} \dfrac{\delta}{\delta g_{\mu \nu}}
\end{align}$$

then we have

$$\begin{align}
X_{p}\cdot \delta \mathfrak{a}_{L,-k} & =\dfrac{1}{\rho _{k}}\left\{\dfrac{1}{\kappa}\delta _{k,p}-\dfrac{i}{2}(2p-k)\rho _{k-p}\mathfrak{a}_{L,p-k}\right. \\
 & -\dfrac{\kappa}{12}\sum _{\substack{r+s+p=k \\
|r|,|s| \geqslant 2}}\rho _{r}\rho _{s}\mathfrak{a}_{L,-r}\mathfrak{a}_{L,-s}(s-p)(r-s-p) \\
 & \left.+\dfrac{\kappa}{4}\sum _{\substack{u=-1,0,1 \\
|u-p|,|k-u|\geqslant 2}}\rho _{u-p}\rho _{k-u}\mathfrak{a}_{L,p-u}\mathfrak{a}_{L,u-k}(2p-u)(k-2u)+\mathcal{O}(\kappa ^{2})\right\}, & |k|\geqslant 2
\end{align}$$

then by massive calculation, we can verify that

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

is correct up to $\displaystyle{\mathcal{O}(\kappa ^{0})}$.

The Poisson brackets between $\displaystyle{H_{\xi}}$ and $\displaystyle{H_{\xi'}}$ is defined as

$$\begin{align}
\left\{H_{\xi},H_{\xi'}\right\} & =X_{\xi}\cdot X_{\xi'}\cdot \omega
\end{align}$$

the result is

$$\begin{align}
\{H_{p},H_{q}\} & =-i(p-q)H_{p+q} -\dfrac{2\pi i}{\kappa ^{2}}p(p^{2}-1)\delta _{p+q,0}, \\
\{\bar{H}_{p},\bar{H}_{q}\} & =-i(p-q)\bar{H}_{p+q} -\dfrac{2\pi i}{\kappa ^{2}}p(p^{2}-1)\delta _{p+q,0}, \\
\{H_{p},\bar{H}_{q}\} & =0.
\end{align}$$

Thus the perturbative charges realize two commuting Virasoro algebras with

$$\begin{align}
c & =\dfrac{24\pi}{\kappa ^{2}}=\dfrac{3}{2G}.
\end{align}$$
