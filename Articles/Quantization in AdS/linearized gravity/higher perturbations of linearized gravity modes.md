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

This fixed-generator exponential contains every linear Brown-Henneaux mode as a tangent direction and generates the cross terms of the chosen autonomous flow. The time-dependent completion that reaches every smooth point of the global-AdS vacuum orbit.

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

notice that covariance under the finite diffeomorphism flow gives

$$\begin{align}
\mathcal{E}[e^{\varepsilon \mathcal{L}_{\xi}}g] & =e^{\varepsilon \mathcal{L}_{\xi}}\mathcal{E}[g] \\
\implies \left.D\mathcal{E}\right|_{g}[\mathcal{L}_{\xi}g] & =\mathcal{L}_{\xi}\mathcal{E}[g]
\end{align}$$

Since $\displaystyle{\mathcal{E}[g^{(0)}]=0}$, expanding this identity means

$$\begin{align}
\mathcal{E}^{(1)}[h_{A,n}^{[0]}] & =0 \\
\mathcal{E}^{(1)}\left[ \dfrac{1}{2}\mathcal{L}^{2}_{\zeta _{A,n}}g^{(0)} \right]+\mathcal{E}^{(2)}[h^{[0]}_{A,n},h^{[0]}_{A,n}] & =0 \\
\dots
\end{align}$$

We now restrict to the nonlinear continuation determined by the selected linear solution mode $\displaystyle{h^{[0]}_{A,n}}$. Any additional homogeneous solution carrying independent Brown--Henneaux mode data is assigned to another solution mode and is not included in $\displaystyle{h^{[1]}_{A,n}}$. Within this restricted sector, we have

$$\begin{align}
h^{[1]}_{A,n,\mu \nu} & =\dfrac{1}{2}\mathcal{L}^{2}_{\zeta _{A,n}}g^{(0)}_{\mu \nu}+\mathcal{L}_{\xi}g^{(0)}_{\mu \nu}
\end{align}$$

Here $\displaystyle{\xi}$ generates the remaining proper-gauge freedom, so we may set $\displaystyle{\xi=0}$ by a gauge transformation $\displaystyle{h_{\mu \nu}\to h_{\mu \nu}-\kappa\mathcal{L}_{\xi}g^{(0)}_{\mu \nu}}$. Higher perturbations can be constructed by a similar argument, but we will only need the first-order perturbative solution for the moment.

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

---

Introduce

$$\begin{align}
\mathcal{D}_{p} & =2\pi p(p^{2}-1), & x_{p} & := \rho _{-p}\mathfrak{a}_{L,p}, & |p| \geqslant 2
\end{align}$$

we can represent $\displaystyle{a_{p}}$ (actually the related $\displaystyle{x_{p}}$) in terms of $\displaystyle{H_{p}}$ as

$$\begin{align}
x_{p} & =\dfrac{i\kappa}{\mathcal{D}_{p}}H_{p}-\dfrac{i\kappa ^{3}}{2\mathcal{D}_{p}} \sum _{\substack{r+s=p \\
|r|+|s| \geqslant 2}} \dfrac{r+2s}{\mathcal{D}_{s}} H_{r}H_{s} +\mathcal{O}(\kappa ^{5}H^{3}), & |p| \geqslant 2
\end{align}$$

insert into the symplectic form, we have

$$\begin{align}
\omega & =-\dfrac{i\kappa ^{2}}{2}\sum _{|p|,|q| \geqslant 2} \dfrac{\delta _{p+q,0}}{\mathcal{D}_{p}} \delta H_{p}\wedge \delta H_{q} \\
 & -\dfrac{i\kappa ^{4}}{2}\sum _{\substack{|p|,|q| \geqslant 2 \\
|p+q|\geqslant 2}} \dfrac{p-q}{\mathcal{D}_{p}\mathcal{D}_{q}}H_{-p-q}\delta H_{p}\wedge \delta H_{q}+\mathcal{O}(\kappa ^{6}H^{2}\delta H\wedge \delta H)
\end{align}$$

---

Denote the Virasoro algebra as

$$\begin{align}
P_{pq}[H] &:= \left\{H_{p},H_{q}\right\} \\
 & =-i(p-q)H_{p+q}-\dfrac{i}{\kappa ^{2}}\mathcal{D}_{p}\delta _{p+q,0}, & |p|,|q|\geqslant 2 \\
\mathcal{D}_{p} &=2\pi p(p^{2}-1)
\end{align}$$

in principle we can represent the sympelctic form as

$$\begin{align}
\omega & =\dfrac{1}{2}\sum _{|p|,|q|\geqslant 2}(P^{-1})_{pq}\delta H_{p}\wedge \delta H_{q}
\end{align}$$

split

$$\begin{align}
P & =C+L \\
C_{pq} & := -\dfrac{i}{\kappa ^{2}}\mathcal{D}_{p}\delta _{p+q,0}, & L_{pq} & := -i(p-q)H_{p+q}, & |p|,|q| \geqslant 2
\end{align}$$

then write $\displaystyle{P^{-1}=\sum ^{\infty}_{r=0}(P^{-1})^{(r)}}$, and we have the Neumann recursion relation

$$\begin{align}
(P^{-1})_{pq}^{(0)} & =-\dfrac{i\kappa ^{2}}{\mathcal{D}_{p}}\delta _{p+q,0} \\
(P^{-1})^{(r+1)}_{pq} & =-\dfrac{\kappa ^{2}}{\mathcal{D_{p}}}\sum _{|s| \geqslant 2} (p+s)H_{s-p}\times(P^{-1})^{(r)}_{sq}
\end{align}$$

then the first two entries are

$$\begin{align}
(P^{-1})^{(1)}_{pq} & =-\dfrac{i\kappa ^{4}(p-q)}{\mathcal{D}_{p}\mathcal{D}_{q}}H_{-p-q} \\
(P^{-1})^{(2)}_{pq} & =\dfrac{i\kappa ^{6}}{\mathcal{D}_{p}\mathcal{D}_{q}}\sum _{|s|\geqslant 2} \dfrac{(p+s)(s-q)}{\mathcal{D}_{s}} H_{s-p}H_{-s-q}
\end{align}$$

at every occurrence of an index $\displaystyle{0,\pm 1}$, the corresponding charge is replaced by

$$\begin{align}
H_{0} & =\dfrac{\kappa ^{2}}{2\pi}\sum ^{\infty}_{n=2} \dfrac{H_{n}H_{-n}}{n^{2}-1}+\mathcal{O}(\kappa ^{4}H^{3}) \\
H_{1} & =\dfrac{\kappa ^{2}}{2\pi}\sum ^{\infty}_{n=3} \dfrac{H_{n}H_{1-n}}{n(n-1)}+\mathcal{O}(\kappa ^{4}H^{4}) \\
H_{-1} & =\dfrac{\kappa ^{2}}{2\pi}\sum ^{\infty}_{n=2} \dfrac{H_{n}H_{-1-n}}{n(n+1)}+\mathcal{O}(\kappa ^{4}H^{3})
\end{align}$$

(we can use monodromy or other method to find the precise implicit expression for $\displaystyle{H_{-1,0,+1}}$). Iterating the recursion gives the formal all-order sum

$$\begin{align}
(P^{-1})^{(r)}_{pq} & =(-i)^{2r+1}\kappa ^{2r+2}\sum _{|p_{1}|,\dots,|p_{r}| \geqslant 2} \dfrac{\delta _{p_{r}+q,0}}{\prod ^{r}_{j=0}\mathcal{D}_{p_{j}}} \prod ^{r-1}_{j=0}[(p_{j}+p_{j+1})H_{p_{j+1}-p_{j}}], & p_{0}:= p
\end{align}$$

## Quantization on the Vacuum Orbit

We quantize the classical Virasoro algebra to quantum algebra with central charge $\displaystyle{c_{q}}$ as

$$\begin{align}
[H_{m},H_{n}] & =(m-n)H_{m+n}+\dfrac{c_{q}}{12}m(m^{2}-1)\delta _{m+n,0}, & |m|,|n|\geqslant 2 \\
H^{\dagger}_{n} & =H_{-n}
\end{align}$$

the central charge $\displaystyle{c_{q}}$ contains classical contribution $\displaystyle{c_{\mathrm{cl}}=\dfrac{24\pi}{\kappa ^{2}}=\dfrac{3}{2G}}$ and quantum correction $\displaystyle{13}$.

---

### Chern-Simons Derivation of the Boundary Action

In 3d with unit $\mathrm{AdS}$ radius, introduce the two $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$ connections

$$\begin{align}
A & =\omega+e, & \bar{A}=\omega-e
\end{align}$$

where $\displaystyle{e}$ is the dreibein and $\displaystyle{\omega}$ is the spin connection. The Einstein action with the Brown-Henneaux boundary term can be written as

$$\begin{align}
S & =S_{\mathrm{CS}}[A]-S_{\mathrm{CS}}[\bar{A}]+S_{\mathrm{bdy}} \\
S_{\mathrm{CS}}[A] & =\dfrac{k}{4\pi} \int _{M}\mathrm{Tr}\left( A\wedge \mathrm{d}A+\dfrac{2}{3}A\wedge A\wedge A \right) \\
k & =\dfrac{1}{4G},\quad c_{\mathrm{cl}}=6k=\dfrac{3}{2G} \\
S_{\mathrm{bdy}} & =-\dfrac{k}{4\pi} \int _{\Gamma}\mathrm{d}^{2}x\left[\mathrm{Tr}(A_{\theta}^{2})+\mathrm{Tr}(\bar{A}_{\theta}^{2})\right]
\end{align}$$

separate time from the disk coordinates and write $\displaystyle{A=A_{0}\mathrm{d}t+\tilde{A}}$. The temporal component $\displaystyle{A_{0}}$ is a Lagrange multiplier imposing

$$\begin{align}
\tilde{F} & := \tilde{\mathrm{d}}\tilde{A}+\tilde{A}\wedge \tilde{A}=0
\end{align}$$

a flat connection can be written as

$$\begin{align}
\tilde{A} & =g^{-1}\tilde{\mathrm{d}}g
\end{align}$$

this parameterization has the residual redundancy

$$\begin{align}
g(t,\vec{x})\sim h(t)g(t,\vec{x}), h(t)\in \mathrm{PSL}(2,\mathbb{R})
\end{align}$$

because the two representatives give the same spatial connection. Substituting the flat connection into the Chern-Simons action produces a chiral WZW action on the asymptotic boundary

$$\begin{align}
S_{\pm}[g] & =\dfrac{k}{2\pi}\left[  \int _{\Gamma}\mathrm{d}^{2}x\mathrm{Tr}(\partial _{\theta}(g^{-1})\partial _{\pm}g)\mp \dfrac{1}{6}\int _{M}\mathrm{Tr}(g^{-1}\mathrm{d}g)^{3}  \right]\\
\partial _{\pm} & =\dfrac{1}{2}(\partial _{\theta}\pm \partial _{t})
\end{align}$$

thus the two gravitational chiralities become two boundary WZW theories before imposing the asymptotically AdS constraints.

For one chiral sector, use the Gauss parameterization

$$\begin{align}
g & =\begin{pmatrix}1 & 0 \\
F & 1\end{pmatrix}
\begin{pmatrix}\lambda & 0 \\
0 & \lambda ^{-1}\end{pmatrix}
\begin{pmatrix}1 & \Psi \\
0 & 1\end{pmatrix}
\end{align}$$

the Brown-Henneaux falloffs, equivalently the Drinfeld-Sokolov constraints on the boundary WZW current, fix two of these three fields near the boundary as

$$\begin{align}
\lambda & =\sqrt{ \dfrac{r}{F'} }, & \Psi & =-\dfrac{F''}{2rF'}
\end{align}$$

the remaining function is parameterized as

$$\begin{align}
F|_{\Gamma} & =\tan\left( \dfrac{\phi}{2} \right), & \phi' & > 0, & \phi(\theta+2\pi,t)=\phi(\theta,t)+2\pi
\end{align}$$

the positivity and winding conditions follow from smoothness and the fact that the spatial circle is contractible in global $\displaystyle{\mathrm{AdS}_{3}}$. The residual bulk redundancy acts by

$$\begin{align}
F  & \mapsto \dfrac{a(t)F+b(t)}{c(t)F+d(t)}, & \begin{pmatrix}a & b \\
c & d\end{pmatrix}\in \mathrm{PSL}(2,\mathbb{R})
\end{align}$$

in the Gauss variables, the constrained WZW action reduces to

$$\begin{align}
S_{\pm}[g] & =-\dfrac{k}{\pi} \int _{\Gamma}\mathrm{d}^{2}x\left[\dfrac{\lambda'\partial _{\pm}\lambda}{\lambda ^{2}}+\lambda ^{2}F'\partial _{\pm}\Psi\right] \\
 & =-\dfrac{c_{\mathrm{cl}}}{24\pi} \int _{\Gamma}\mathrm{d}^{2}x\left[\dfrac{\phi''\partial _{\pm}\phi'}{\phi'^{2}}-\phi'\partial _{\pm}\phi\right]
\end{align}$$

for the left-moving sector, Wick rotate $\displaystyle{t=-i\tau}$ and define

$$\begin{align}
\bar{\partial} & =\dfrac{1}{2}(\partial _{\theta}+i\partial _{\tau})
\end{align}$$

then the Euclidean action becomes

$$\begin{align}
S_{E}[\phi] & =\dfrac{c_{\mathrm{cl}}}{24\pi} \int \mathrm{d}^{2}x\left[\dfrac{\bar{\partial}\phi'\phi''}{\phi'^{2}}-\bar{\partial}\phi \phi'\right]
\end{align}$$

---

Put the chiral boundary theory on a Euclidean torus with complex structure $\displaystyle{\tau}$ and $\displaystyle{q=e^{2\pi i\tau}}$. Its Euclidean action is the one derived above,

$$\begin{align}
S_{E}[\phi] & =\dfrac{c_{\mathrm{cl}}}{24\pi} \int \mathrm{d}^{2}x\left[\dfrac{(\bar{\partial}\phi')\phi''}{\phi'^{2}}-(\bar{\partial}\phi)\phi'\right]
\end{align}$$

modulo the local $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ redundancy. The relevant saddle is

$$\begin{align}
\phi_{0}(\theta,y) & =\theta-\dfrac{\mathrm{Re}\tau}{\mathrm{Im}\tau}y, & S_{0} & =\dfrac{i\pi c_{\mathrm{cl}}\tau}{12}
\end{align}$$

so its classical contribution is $\displaystyle{e^{-S_{0}}=q^{-c_{\mathrm{cl}}/24}}$. Expand around it as

$$\begin{align}
\phi & =\phi_{0}+\sum _{m,n}\dfrac{\varepsilon _{m,n}}{(2\pi)^{2}}\exp\left[\dfrac{imy}{\mathrm{Im}\tau}+in\left( \theta-\dfrac{\mathrm{Re}\tau}{\mathrm{Im}\tau}y \right)\right]
\end{align}$$

the local $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ quotient removes the three spatial modes

$$\begin{align}
\varepsilon _{m,-1}=\varepsilon _{m,0}=\varepsilon _{m,1}=0
\end{align}$$

for every temporal Fourier index $\displaystyle{m}$. The quadratic action is

$$\begin{align}
S_{E} & =S_{0}+\dfrac{ic_{\mathrm{cl}}}{96\pi ^{3}}\sum _{m \in \mathbb{Z}}\sum _{n\neq -1,0,1} n(n^{2}-1)(m-n\tau)|\varepsilon _{m,n}|^{2}+\mathcal{O}(\varepsilon ^{3})
\end{align}$$

the Gaussian integral therefore gives, up to a $\displaystyle{\tau}$-independent normalization

$$\begin{align}
Z_{\text{1-loop}} & =\mathcal{N}q^{-c_{\mathrm{cl}}/24}\prod _{\substack{m\in \mathbb{Z}\\
n\neq -1,0,1}}(m-n\tau)^{-1/2}
\end{align}$$

after differentiating with respect to $\displaystyle{\tau}$ and summing over the temporal modes $\displaystyle{m}$, the real-field determinant becomes

$$\begin{align}
\partial _{\tau}\log Z_{\text{1-loop}} & =-\dfrac{i\pi c_{\mathrm{cl}}}{12}-\pi \sum ^{\infty}_{n=2}n\cot(\pi n\tau)
\end{align}$$

where

$$\begin{align}
\sum ^{\infty}_{n=2}n\cot(\pi n\tau) & =\sum ^{\infty}_{n=2}n[\cot(\pi n\tau)+i]-i\sum ^{\infty}_{n=2}n \\
 & =-2i\sum ^{\infty}_{n=2} \dfrac{nq^{n}}{1-q^{n}}-i(\zeta(-1)-1)
\end{align}$$

consequently

$$\begin{align}
\partial _{\tau}\log Z_{\text{1-loop}} & =-\dfrac{\pi i(c_{\mathrm{cl}}+13)}{12}+2\pi i\sum ^{\infty}_{n=2} \dfrac{nq^{n}}{1-q^{n}}
\end{align}$$

integrating with respect to $\displaystyle{\tau}$ gives

$$\begin{align}
Z_{\text{1-loop}} & =\mathcal{N}q^{-(c_{\mathrm{cl}}+13)/24}\prod ^{\infty}_{n=2} \dfrac{1}{1-q^{n}}
\end{align}$$

Comparing with the vacuum Virasoro character

$$\begin{align}
\chi _{\mathrm{vac}}(q) & =q^{-c_{q}/24}\prod ^{\infty}_{n=2} \dfrac{1}{1-q^{n}}
\end{align}$$

gives the one-loop result

$$\begin{align}
c_{q} & =c_{\mathrm{cl}}+13
\end{align}$$

This derivation follows Section 5.1 and the localization argument of Section 5.3 of [Cotler-Jensen](https://arxiv.org/abs/1808.03263).

---

For $\displaystyle{n=-1,0,1}$, we require the quantum Virasoro algebra is also valid

$$\begin{align}
[H_{m},H_{n}] & =(m-n)H_{m+n}+\dfrac{c_{q}}{12}m(m^{2}-1)\delta _{m+n,0}, & \forall m,n\in \mathbb{Z}
\end{align}$$

and therefore

$$\begin{align}
H_{0} & =\dfrac{1}{2n}[H_{n},H_{-n}]-\dfrac{c_{q}}{24}(n^{2}-1) \\
H_{1} & =\dfrac{1}{2n+1}[H_{n+1},H_{-n}] \\
H_{-1} & =\dfrac{1}{2n+1}[H_{n},H_{-(n+1)}]
\end{align}$$

(we have, to some extent, bypassed the issue of operator ordering). The vacuum $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
H_{n}\ket{0}  & =0, & n\geqslant 2 \\
H_{-1}\ket{0}=H_{0}\ket{0}=H_{1}\ket{0}  & =0
\end{align}$$

the second line imposes invariance under the $\displaystyle{\mathrm{PSL}(2,\mathbb{R})}$ stabilizer of the global-AdS vacuum. The left-moving Hilbert space is generated algebraically by the negative modes

$$\begin{align}
H_{-n_{1}}H_{-n_{2}}\dots H_{-n_{k}}\ket{0} ,  & & n_{1}\geqslant n_{2}\geqslant\dots\geqslant n_{k}\geqslant 2
\end{align}$$

moreover

$$\begin{align}
[H_{0},H_{-n}] & =nH_{-n}
\end{align}$$

and hence

$$\begin{align}
H_{0}H_{-n_{1}}\dots H_{-n_{k}}\ket{0}  & =\left(\sum ^{k}_{j=1}n_{j}\right)H_{-n_{1}}\dots H_{-n_{k}}\ket{0}
\end{align}$$

then the chiral character is

$$\begin{align}
\chi _{\mathrm{vac}}(q) & =\mathrm{Tr}q^{H_{0}-c_{q}/24}=q^{-c_{q}/24}\prod ^{\infty}_{n=2} \dfrac{1}{1-q^{n}}
\end{align}$$

the right-moving construction is identical and the vacuum-orbit Hilbert space is

$$\begin{align}
\mathcal{H}_{\mathrm{vac}} & =\mathcal{V}_{\mathrm{vac}}\otimes \overline{\mathcal{V}}_{\mathrm{vac}}
\end{align}$$

---

*Tldr: this part provides the isomorphism between the commutator definition and the composition definition of $\displaystyle{H_{-1,0,1}}$, and the composition constructiono f $\displaystyle{H_{-1,0,1}}$ in some recursion algorithm.*

The finite commutator reconstruction can be promoted from an operator identity to a presentation of the complete quantum algebra. Fix the scalar $\displaystyle{c_{\mathrm q}}$ and let $\displaystyle{\mathfrak A_{>}(c_{\mathrm q})}$ be the unital star algebra generated by

$$\begin{align}
\mathsf h_p, & & p&\in I_{>}, & \mathsf h_p^{\dagger}&=\mathsf h_{-p}.
\end{align}$$

Inside the free associative algebra define

$$\begin{align}
\mathsf f_0 &:=\dfrac14[\mathsf h_2,\mathsf h_{-2}] -\dfrac{c_{\mathrm q}}8\mathbf1, \\
\mathsf f_1 &:=\dfrac15[\mathsf h_3,\mathsf h_{-2}], & \mathsf f_{-1} &:=\dfrac15[\mathsf h_2,\mathsf h_{-3}], \\
\mathsf x_r
&:=\begin{cases}
\mathsf h_r, & |r|\geqslant2,\\
\mathsf f_r, & r=-1,0,1.
\end{cases}
\end{align}$$

The defining higher-generator relations are

$$\begin{align}
\boxed{ [\mathsf h_p,\mathsf h_q] =(p-q)\mathsf x_{p+q} +\dfrac{c_{\mathrm q}}{12}p(p^2-1) \delta _{p+q,0}\mathbf1}, & &p,q&\in I_{>}.
\end{align}$$

For sums $\displaystyle{p+q=0,\pm1}$, these relations both define the missing mode and require that every possible high-mode representative agree. Explicitly, for every $\displaystyle{n\geqslant2}$ they imply

$$\begin{align}
\mathsf f_0 &=\dfrac{1}{2n}[\mathsf h_n,\mathsf h_{-n}] -\dfrac{c_{\mathrm q}}{24}(n^2-1)\mathbf1, \\
\mathsf f_1 &=\dfrac{1}{2n+1}[\mathsf h_{n+1},\mathsf h_{-n}], \\
\mathsf f_{-1} &=\dfrac{1}{2n+1}[\mathsf h_n,\mathsf h_{-(n+1)}].
\end{align}$$

The nontrivial overlap conditions are precisely

$$\begin{align}
[\mathsf f_u,\mathsf h_p] &=(u-p)\mathsf x_{u+p}, & u&=-1,0,1, & p&\in I_{>}, \\
[\mathsf f_u,\mathsf f_v] &=(u-v)\mathsf f_{u+v}, & u,v&=-1,0,1,
\end{align}$$

where the second line is understood only for the automatically allowed $\displaystyle{u+v\in\{-1,0,1\}}$; the antisymmetric cases with $\displaystyle{u=v}$ vanish. These equations may be added as rewriting relations in a computational presentation. Algebraically, they follow by inserting the commutator definitions into the associative Jacobi identity and using the high-high relations. Once they hold, every $\displaystyle{\mathsf x_r}$ satisfies

$$\begin{align}
[\mathsf x_m,\mathsf x_n] &=(m-n)\mathsf x_{m+n} +\dfrac{c_{\mathrm q}}{12}m(m^2-1) \delta _{m+n,0}\mathbf1
\end{align}$$

for arbitrary integers $\displaystyle{m,n}$.

This proves that the presentation is exactly Virasoro rather than merely a quotient resembling it. Indeed, there is a homomorphism

$$\begin{align}
\Phi:\mathfrak A_{>}(c_{\mathrm q})&\longrightarrow U(\operatorname{Vir}_{c_{\mathrm q}}), & \Phi(\mathsf h_p)&=\widehat H_p.
\end{align}$$

It is surjective because $\displaystyle{\widehat H_{0,\pm1}}$ are the displayed composites. Conversely, the full Virasoro relations for the $\displaystyle{\mathsf x_r}$ define

$$\begin{align}
\Psi:U(\operatorname{Vir}_{c_{\mathrm q}})&\longrightarrow\mathfrak A_{>}(c_{\mathrm q}), & \Psi(\widehat H_r)&=\mathsf x_r.
\end{align}$$

Both compositions are the identity on their respective generating sets. Hence

$$\begin{align}
\boxed{\mathfrak A_{>}(c_{\mathrm q})\simeq U(\operatorname{Vir}_{c_{\mathrm q}})}.
\end{align}$$

The corresponding vacuum representation can be defined without taking any low mode as primitive. Let $\displaystyle{|0\rangle_{>}}$ obey

$$\begin{align}
\mathsf h_p|0\rangle_{>}&=0, & p&\geqslant2, \\
\mathsf f_{-1}|0\rangle_{>} =\mathsf f_0|0\rangle_{>} =\mathsf f_1|0\rangle_{>}&=0.
\end{align}$$

The algebra isomorphism maps this cyclic module to the usual Virasoro vacuum module. A PBW spanning basis is therefore

$$\begin{align}
\mathsf h_{-n_1}\cdots\mathsf h_{-n_k}|0\rangle_{>}, & & n_1&\geqslant\cdots\geqslant n_k\geqslant2,
\end{align}$$

and its graded dimensions are $\displaystyle{1,0,1,1,2,2,4,4,7,8,12,14,21,24,34,\ldots}$ through level fourteen, agreeing with

$$\begin{align}
\prod_{n=2}^{\infty}\dfrac{1}{1-q^n}.
\end{align}$$

Thus using the higher modes as primitive quantum observables loses neither the global generators nor any vacuum descendant. The representative independence, translated high-high relations, covariance, $\displaystyle{\mathfrak{sl}(2)}$ closure, star structure, thousands of high-mode Jacobi overlaps and the character through level fourteen are checked in `higher_mode_virasoro_presentation.wl`.

The finite commutator formulas determine the operators without choosing a symbol map. One can nevertheless construct a unique vacuum-normal symbol level by level after fixing the following triangular prescription. Let $\displaystyle{\mathcal{P}_{\geqslant2}(N)}$ be the partitions $\displaystyle{I=(i_{1}\geqslant\cdots\geqslant i_{r}\geqslant2)}$ of $\displaystyle{N}$ and define

$$\begin{align}
|I\rangle &:=\widehat{H}_{-i_{1}}\cdots\widehat{H}_{-i_{r}}|0\rangle, \\
\widehat{H}_{-I} &:=\widehat{H}_{-i_{1}}\cdots\widehat{H}_{-i_{r}}, & \widehat{H}_{I}^{(+)} &:=\widehat{H}_{i_{r}}\cdots\widehat{H}_{i_{1}}, \\
G_{N}(I,J)&:=\langle I|J\rangle.
\end{align}$$

For $\displaystyle{u=-1,0,1}$, write the normal symbol as blocks of fixed positive-mode level,

$$\begin{align}
\widehat{F}_{u}^{\mathrm{normal}} &=\sum_{N\geqslant2}\widehat{F}_{u}^{[N]}, \\
\widehat{F}_{u}^{[N]} &:=\sum_{\substack{I\in\mathcal{P}_{\geqslant2}(N-u),\\
J\in\mathcal{P}_{\geqslant2}(N)}} C_{u}^{(N)}(I,J)\widehat{H}_{-I}\widehat{H}_{J}^{(+)}.
\end{align}$$

The $\displaystyle{N}$th block annihilates every state below level $\displaystyle{N}$. Suppose all blocks with $\displaystyle{M<N}$ have already been fixed, and denote the residual matrix elements from level $\displaystyle{N}$ to level $\displaystyle{N-u}$ by

$$\begin{align}
R_{u}^{(N)}(I,J) &:=\left\langle I\left|
\widehat{H}_{u}-\sum_{M<N}\widehat{F}_{u}^{[M]} \right|J\right\rangle.
\end{align}$$

Then the unique next coefficient matrix is

$$\begin{align}
\boxed{C_{u}^{(N)} =G_{N-u}^{-1}R_{u}^{(N)}G_{N}^{-1}}.
\end{align}$$

Thus the normal-symbol ambiguity is removed by the triangular prescription whenever the two Gram matrices are nonsingular. For the unitary vacuum module with $\displaystyle{c_{\mathrm{q}}>1}$ this holds after removing the $\displaystyle{SL(2,\mathbb{R})}$ null module. At a Kac zero the recursion correctly becomes singular and the symbol must instead be defined on the corresponding quotient.

The first nontrivial blocks are

$$\begin{align}
\widehat{F}_{0}^{\mathrm{normal}} &=\dfrac{4}{c_{\mathrm{q}}}\widehat{H}_{-2}\widehat{H}_{2} +\dfrac{3}{2c_{\mathrm{q}}}\widehat{H}_{-3}\widehat{H}_{3} \\
&\quad+\dfrac{4(c_{\mathrm{q}}+8)}{c_{\mathrm{q}}(5c_{\mathrm{q}}+22)}
\widehat{H}_{-4}\widehat{H}_{4} \\
&\quad-\dfrac{24}{c_{\mathrm{q}}(5c_{\mathrm{q}}+22)} \left(\widehat{H}_{-4}\widehat{H}_{2}^{2} +\widehat{H}_{-2}^{2}\widehat{H}_{4}\right) \\
&\quad-\dfrac{176}{c_{\mathrm{q}}^{2}(5c_{\mathrm{q}}+22)}
\widehat{H}_{-2}^{2}\widehat{H}_{2}^{2} +\mathcal{O}_{\mathrm{level}}(5), \\
\widehat{F}_{1}^{\mathrm{normal}} &=\dfrac{2}{c_{\mathrm{q}}}\widehat{H}_{-2}\widehat{H}_{3} +\dfrac{1}{c_{\mathrm{q}}}\widehat{H}_{-3}\widehat{H}_{4} +\mathcal{O}_{\mathrm{level}}(5), \\
\widehat{F}_{-1}^{\mathrm{normal}} &=\dfrac{2}{c_{\mathrm{q}}}\widehat{H}_{-3}\widehat{H}_{2} +\dfrac{1}{c_{\mathrm{q}}}\widehat{H}_{-4}\widehat{H}_{3} +\mathcal{O}_{\mathrm{level}}(4).
\end{align}$$

Here $\displaystyle{\mathcal{O}_{\mathrm{level}}(N)}$ means terms whose positive-mode factors have total level at least $\displaystyle{N}$; it is not an expansion only in the polynomial degree. The large-$\displaystyle{c_{\mathrm{q}}}$ quadratic coefficient tends to $\displaystyle{12/[c_{\mathrm{q}}(n^{2}-1)]}$, agreeing with the classical symbol after $\displaystyle{c_{\mathrm{q}}\to c_{\mathrm{cl}}}$ at leading order. Starting at level four, mixing with multiparticle descendants forces the displayed cubic and quartic terms.

The recursion has been implemented through level eight for all three $\displaystyle{u=-1,0,1}$ operators in `vacuum_normal_symbol_reconstruction.wl`. It reproduces their exact Virasoro action on every vacuum descendant through that cutoff. This is an exact finite-level statement and a formal all-level recursion; convergence of the resulting infinite normal series in an operator topology is not established.
