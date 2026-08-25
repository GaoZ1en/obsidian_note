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

This fixed-generator exponential contains every linear Brown--Henneaux mode as a tangent direction and generates the cross terms of the chosen autonomous flow. A time-dependent product of flows is needed to reach a general smooth point of the global-AdS vacuum orbit; the fixed-generator chart below is used locally near the vacuum.

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

## Next CPS Order and the Darboux Completion

The first nonlinear continuation is sufficient for $\Omega _1$, but the one-loop composite-charge question requires the next classical coefficient. For the same fixed generator $\zeta[a]$,

$$\begin{align}
h^{[0]}&=\mathcal L_{\zeta}g^{(0)}, &
h^{[1]}&=\dfrac12\mathcal L_{\zeta}^{2}g^{(0)}, &
h^{[2]}&=\dfrac16\mathcal L_{\zeta}^{3}g^{(0)}.
\end{align}$$

The ordered multimode sums are retained. This is the selected autonomous-flow chart near the global-AdS vacuum; it is not a claim that a single exponential is a global chart on every smooth Virasoro orbit.

Define the vacuum bilinear from the full renormalized bulk-plus-boundary-plus-corner CPS form by

$$\begin{align}
B(\xi_m,\xi_n)&:=\kappa^2\Omega_{g^{(0)}}(X_m,X_n)
=iD_m\delta_{m+n,0}, & D_m&=2\pi m(m^2-1).
\end{align}$$

With

$$\begin{align}
\Theta
&=\dfrac{1-e^{-\kappa\operatorname{ad}_{\zeta}}}
{\kappa\operatorname{ad}_{\zeta}}\,\delta\zeta,
\end{align}$$

the exact pullback on the selected high-mode section is

$$\begin{align}
\Omega_{\zeta}(u,v)&=B(P_{>}\Theta(u),P_{>}\Theta(v))
=\dfrac{i}{2}\sum_{|k|\geqslant2}D_k\Theta_k\wedge\Theta_{-k}.
\end{align}$$

Here $P_{>}$ removes only the final $-1,0,1$ stabilizer components; it is not inserted between nested brackets. Expanding $\Omega=\Omega_0+\kappa\Omega_1+\kappa^2\Omega_2+O(\kappa^3)$ gives

$$\begin{align}
\Omega_2(u,v)
={}&\dfrac16B([\zeta,[\zeta,u]],v)
+\dfrac16B(u,[\zeta,[\zeta,v]])
+\dfrac14B([\zeta,u],[\zeta,v]).
\end{align}$$

This formula contains all multimode cross terms, is closed, and supplies the missing Hamiltonian identity

$$\begin{align}
X_{p,1}\mathbin{\lrcorner}\Omega_0
+X_{p,0}\mathbin{\lrcorner}\Omega_1
+X_{p,-1}\mathbin{\lrcorner}\Omega_2
&=-\delta H_{p,1}.
\end{align}$$

The explicit signed-mode coefficient and the finite-cutoff edge analysis are recorded in [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS one-loop central charge from next-order perturbation|CPS one-loop central charge from next-order perturbation]].

For the radial Moser construction, let $\mathcal E$ be the mode-space Euler vector field. The first primitive and vector field obey

$$\begin{align}
\alpha_1&=\dfrac13\iota_{\mathcal E}\Omega_1, &
\iota_{Y_1}\Omega_0&=-\alpha_1.
\end{align}$$

In the Lie-flow convention the second residual is

$$\begin{align}
R_2&=\Omega_2+\dfrac12\mathcal L_{Y_1}\Omega_1, &
\alpha_2&=\dfrac14\iota_{\mathcal E}R_2, &
\iota_{Z_2}\Omega_0&=-\alpha_2.
\end{align}$$

Thus the direct coordinate map is

$$\begin{align}
a&=b+\kappa Y_1(b)+\kappa^2Y_2(b)+O(\kappa^3), &
Y_2&=Z_2+\dfrac12(Y_1\cdot\partial)Y_1,
\end{align}$$

and

$$\begin{align}
H^D_{p,1}
&=H_{p,1}+\mathrm dH_{p,0}[Y_1]+\mathrm dH_{p,-1}[Y_2].
\end{align}$$

The distinction between $Z_2$ and the direct-coordinate coefficient $Y_2$ is essential. Exact finite-cutoff checks verify the Darboux residual through $O(\kappa^2)$ and the interior Hamiltonian identity; hard cutoffs retain the expected upper-edge obstruction because a finite mode window is not invariant under the Witt action.

## Exact Reduced Hamiltonian

The global generator acts exactly linearly on the exponential chart,

$$\begin{align}
X_0z_k&=ikz_k,
\end{align}$$

because left multiplication by the vacuum stabilizer is equivalent to its adjoint action on $\zeta$. The exact CPS form is $U(1)$ invariant, and the radial Moser construction can be chosen equivariantly. Therefore, in a local $U(1)$-equivariant Darboux chart,

$$\begin{align}
\boxed{H_0^D=\sum_{N\geqslant2}N b_N^{\dagger}b_N.}
\end{align}$$

The additive constant vanishes by the same global-AdS vacuum subtraction used in the classical charge. Explicitly,

$$\begin{align}
H_{0,1}^D&=0, & H_{0,2}^D&=0.
\end{align}$$

At every finite mode cutoff this follows from the finite-dimensional equivariant Darboux theorem near the vacuum fixed point and has been checked through the displayed $Y_2$ order. With infinitely many modes, it is a local formal-power-series statement on finite-support configurations; convergence of an all-order Darboux map in a specified infinite-dimensional topology is not established. The full argument and checks are archived in [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS canonical quantum perturbation test of Brown-Henneaux one-loop central charge|CPS canonical quantum perturbation test of Brown-Henneaux one-loop central charge]].

Thus the reduced Brown--Henneaux dynamics on the selected smooth global-AdS vacuum orbit is exactly free in these coordinates. Quantum corrections within this reduced description arise from defining the nonlinear charges as composite observables, not from interaction vertices in $H_0^D$.

## CPS/Wick Quantization of the Nonlinear Charges

Quantize the Darboux modes with

$$\begin{align}
[b_N,b_M^{\dagger}]&=\delta_{NM}, & b_N|0\rangle&=0.
\end{align}$$

The practical reference prescription is to define every nonlinear charge insertion by Wick subtraction with respect to this free CPS vacuum, while retaining a regulator until the mode sums are meaningful. For the low tests $p=2,3$, the quadratic charges contain only number-conserving bilinears. Their hard-cutoff and energy-damped commutators contain no identity term, and the Wick cubic cross-contractions have zero vacuum expectation. Hence the natural reference prescription gives

$$\begin{align}
\Delta c_{\mathrm{CPS/Wick}}^{\mathrm{bare}}&=0.
\end{align}$$

This zero is the value of the chosen reference composite prescription, not a separately scheme-independent observable. Wick subtraction does not exclude a finite Hermitian linear renormalization of the composite moment map. In the signed variables it is

$$\begin{align}
\delta H_{p,1}^{\mathrm{fin}}
&=-i\gamma_p z_{-p}, &
\gamma_p&=\dfrac{\Delta c}{24}p(p^2-1),
\end{align}$$

or, after the oscillator rephasing used in the archived checks,

$$\begin{align}
r_p^{\mathrm{fin}}&=\dfrac{\Delta c}{48\pi}\sqrt{D_p}.
\end{align}$$

Hermiticity, vacuum subtraction, the $p=2$/$p=3$ comparison, mixed commutators, and Jacobi constrain the $p(p^2-1)$ dependence but do not fix the one real coefficient $\Delta c$. The reduced Liouville/Pfaffian-Darboux Jacobian and symmetric Fujikawa-style tests likewise give no nonzero cocycle in the reference prescription; their precise finite-cutoff and regulator boundaries are recorded in [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS reduced measure and Virasoro anomaly test|CPS reduced measure and Virasoro anomaly test]].

Therefore no principle internal to the present pure-gravity CPS/Wick construction forces a nonzero $\Delta c$. The convention used in this note is

$$\begin{align}
\Delta c_{\mathrm{ref}}&=0,
\end{align}$$

while the invariant quantum central charge is written

$$\begin{align}
\boxed{
c_{\mathrm{phys}}
=\dfrac{3\ell}{2G_R(\mathsf S)}+\Delta c(\mathsf S),
}
\end{align}$$

with only $c_{\mathrm{phys}}$ invariant under a finite change of renormalization scheme $\mathsf S$. External $+13$ representatives, their Chern--Simons/WZW/orbit derivation, and the corresponding finite Einstein-coupling redefinition are separated in [[Articles/Quantization in AdS/linearized gravity/one-loop central charge normalization and scheme dependence|one-loop central charge normalization and scheme dependence]].

## Algebraic Consequences at Fixed Central Charge

Once a central parameter $c$ is fixed, the quantum algebra is

$$\begin{align}
[H_m,H_n]&=(m-n)H_{m+n}+\dfrac{c}{12}m(m^2-1)\delta_{m+n,0}, &
H_n^{\dagger}&=H_{-n}.
\end{align}$$

The presentation, low-mode reconstruction, and vacuum-module consequences below are conditional on this chosen $c$; algebraic closure does not determine the finite split between $3\ell/(2G_R)$ and $\Delta c$.

---

For $\displaystyle{n=-1,0,1}$, we require the quantum Virasoro algebra is also valid

$$\begin{align}
[H_{m},H_{n}] & =(m-n)H_{m+n}+\dfrac{c}{12}m(m^{2}-1)\delta _{m+n,0}, & \forall m,n\in \mathbb{Z}
\end{align}$$

and therefore

$$\begin{align}
H_{0} & =\dfrac{1}{2n}[H_{n},H_{-n}]-\dfrac{c}{24}(n^{2}-1) \\
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
\chi _{\mathrm{vac}}(q) & =\mathrm{Tr}q^{H_{0}-c/24}=q^{-c/24}\prod ^{\infty}_{n=2} \dfrac{1}{1-q^{n}}
\end{align}$$

the right-moving construction is identical and the vacuum-orbit Hilbert space is

$$\begin{align}
\mathcal{H}_{\mathrm{vac}} & =\mathcal{V}_{\mathrm{vac}}\otimes \overline{\mathcal{V}}_{\mathrm{vac}}
\end{align}$$

---

*Tldr: this part provides the isomorphism between the commutator definition and the composition definition of $\displaystyle{H_{-1,0,1}}$, and the composition constructiono f $\displaystyle{H_{-1,0,1}}$ in some recursion algorithm.*

The finite commutator reconstruction can be promoted from an operator identity to a presentation of the complete quantum algebra. Fix the scalar $\displaystyle{c}$ and let $\displaystyle{\mathfrak A_{>}(c)}$ be the unital star algebra generated by

$$\begin{align}
\mathsf h_p, & & p&\in I_{>}, & \mathsf h_p^{\dagger}&=\mathsf h_{-p}.
\end{align}$$

Inside the free associative algebra define

$$\begin{align}
\mathsf f_0 &:=\dfrac14[\mathsf h_2,\mathsf h_{-2}] -\dfrac{c}8\mathbf1, \\
\mathsf f_1 &:=\dfrac15[\mathsf h_3,\mathsf h_{-2}], & \mathsf f_{-1} &:=\dfrac15[\mathsf h_2,\mathsf h_{-3}], \\
\mathsf x_r
&:=\begin{cases}
\mathsf h_r, & |r|\geqslant2,\\
\mathsf f_r, & r=-1,0,1.
\end{cases}
\end{align}$$

The defining higher-generator relations are

$$\begin{align}
\boxed{ [\mathsf h_p,\mathsf h_q] =(p-q)\mathsf x_{p+q} +\dfrac{c}{12}p(p^2-1) \delta _{p+q,0}\mathbf1}, & &p,q&\in I_{>}.
\end{align}$$

For sums $\displaystyle{p+q=0,\pm1}$, these relations both define the missing mode and require that every possible high-mode representative agree. Explicitly, for every $\displaystyle{n\geqslant2}$ they imply

$$\begin{align}
\mathsf f_0 &=\dfrac{1}{2n}[\mathsf h_n,\mathsf h_{-n}] -\dfrac{c}{24}(n^2-1)\mathbf1, \\
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
[\mathsf x_m,\mathsf x_n] &=(m-n)\mathsf x_{m+n} +\dfrac{c}{12}m(m^2-1) \delta _{m+n,0}\mathbf1
\end{align}$$

for arbitrary integers $\displaystyle{m,n}$.

This proves that the presentation is exactly Virasoro rather than merely a quotient resembling it. Indeed, there is a homomorphism

$$\begin{align}
\Phi:\mathfrak A_{>}(c)&\longrightarrow U(\operatorname{Vir}_{c}), & \Phi(\mathsf h_p)&=\widehat H_p.
\end{align}$$

It is surjective because $\displaystyle{\widehat H_{0,\pm1}}$ are the displayed composites. Conversely, the full Virasoro relations for the $\displaystyle{\mathsf x_r}$ define

$$\begin{align}
\Psi:U(\operatorname{Vir}_{c})&\longrightarrow\mathfrak A_{>}(c), & \Psi(\widehat H_r)&=\mathsf x_r.
\end{align}$$

Both compositions are the identity on their respective generating sets. Hence

$$\begin{align}
\boxed{\mathfrak A_{>}(c)\simeq U(\operatorname{Vir}_{c})}.
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

Thus using the higher modes as primitive quantum observables loses neither the global generators nor any vacuum descendant. The representative independence, translated high-high relations, covariance, $\displaystyle{\mathfrak{sl}(2)}$ closure, star structure, thousands of high-mode Jacobi overlaps and the character through level fourteen are checked in `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/higher_mode_virasoro_presentation.wl`.

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

Thus the normal-symbol ambiguity is removed by the triangular prescription whenever the two Gram matrices are nonsingular. For the unitary vacuum module with $\displaystyle{c>1}$ this holds after removing the $\displaystyle{SL(2,\mathbb{R})}$ null module. At a Kac zero the recursion correctly becomes singular and the symbol must instead be defined on the corresponding quotient.

The first nontrivial blocks are

$$\begin{align}
\widehat{F}_{0}^{\mathrm{normal}} &=\dfrac{4}{c}\widehat{H}_{-2}\widehat{H}_{2} +\dfrac{3}{2c}\widehat{H}_{-3}\widehat{H}_{3} \\
&\quad+\dfrac{4(c+8)}{c(5c+22)}
\widehat{H}_{-4}\widehat{H}_{4} \\
&\quad-\dfrac{24}{c(5c+22)} \left(\widehat{H}_{-4}\widehat{H}_{2}^{2} +\widehat{H}_{-2}^{2}\widehat{H}_{4}\right) \\
&\quad-\dfrac{176}{c^{2}(5c+22)}
\widehat{H}_{-2}^{2}\widehat{H}_{2}^{2} +\mathcal{O}_{\mathrm{level}}(5), \\
\widehat{F}_{1}^{\mathrm{normal}} &=\dfrac{2}{c}\widehat{H}_{-2}\widehat{H}_{3} +\dfrac{1}{c}\widehat{H}_{-3}\widehat{H}_{4} +\mathcal{O}_{\mathrm{level}}(5), \\
\widehat{F}_{-1}^{\mathrm{normal}} &=\dfrac{2}{c}\widehat{H}_{-3}\widehat{H}_{2} +\dfrac{1}{c}\widehat{H}_{-4}\widehat{H}_{3} +\mathcal{O}_{\mathrm{level}}(4).
\end{align}$$

Here $\displaystyle{\mathcal{O}_{\mathrm{level}}(N)}$ means terms whose positive-mode factors have total level at least $\displaystyle{N}$; it is not an expansion only in the polynomial degree. The large-$\displaystyle{c}$ quadratic coefficient tends to $\displaystyle{12/[c(n^{2}-1)]}$, agreeing with the classical symbol after $\displaystyle{c\to c_{\mathrm{cl}}}$ at leading order. Starting at level four, mixing with multiparticle descendants forces the displayed cubic and quartic terms.

The recursion has been implemented through level eight for all three $\displaystyle{u=-1,0,1}$ operators in `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/vacuum_normal_symbol_reconstruction.wl`. It reproduces their exact Virasoro action on every vacuum descendant through that cutoff. This is an exact finite-level statement and a formal all-level recursion; convergence of the resulting infinite normal series in an operator topology is not established.

---

Or we can expand the $\displaystyle{H_{u},u=-1,0,1}$ in $\displaystyle{c}$. Write

$$\begin{align}
H_{u} & =\dfrac{1}{c}\mathcal{N}_{u}^{(1)} +\dfrac{1}{c^{2}}\mathcal{N}_{u}^{(2)}+\mathcal{O}(c^{-3}), & u=-1,0,1
\end{align}$$

### $\displaystyle{u=0}$

For $\displaystyle{u=0}$, we write

$$\begin{align}
\mathcal{N}_{0}^{(1)} & =\sum _{n\geqslant 2}A_{n}^{(0)}H_{-n}H_{n}
\end{align}$$

and require it to satisfy

$$\begin{align}
[H_{0},H_{-p}] & =pH_{-p} \\
\implies A^{(0)}_{p} & =\dfrac{12}{p^{2}-1}
\end{align}$$

The superscript in $\displaystyle{\mathcal{N}_{u}^{(r)}}$ denotes the order in $\displaystyle{1/c}$, not the positive-mode level used in the triangular blocks above. Define

$$\begin{align}
d_{n} & :=\dfrac{n(n^{2}-1)}{12}, & \mathcal{P}_{N} & :=\left\{(a,b):a\geqslant b\geqslant2,\ a+b=N\right\},
\end{align}$$

and take every sum over an empty range or an empty $\displaystyle{\mathcal{P}_{N}}$ to vanish.

### The $\displaystyle{u=0}$ Kernel

Set

$$\begin{align}
A_{n}^{(0)} & :=\dfrac{n}{d_{n}}=\dfrac{12}{n^{2}-1}.
\end{align}$$

The leading term is

$$\begin{align}
\mathcal{N}_{0}^{(1)} & =\sum_{n=2}^{\infty}A_{n}^{(0)}\widehat{H}_{-n}\widehat{H}_{n}.
\end{align}$$

For $\displaystyle{a\geqslant b\geqslant2}$, define the cubic kernel

$$\begin{align}
\Gamma_{ab}^{(0)} & :=-\dfrac{ A_{a}^{(0)}(2a+b)+A_{b}^{(0)}(a+2b)
}{(1+\delta_{ab})d_{a+b}},
\end{align}$$

and the subleading quadratic kernel

$$\begin{align}
B_{n}^{(0)} & :=-\dfrac{1}{d_{n}^{2}}\left[ \sum_{m=2}^{n-2}A_{m}^{(0)}(n+m)^{2}d_{n-m} +2d_{n}\sum_{(a,b)\in\mathcal{P}_{n}} \Gamma_{ab}^{(0)}(2a+b)d_{b} \right].
\end{align}$$

Then the complete vacuum-normal symbol through $\displaystyle{\mathcal{O}(c^{-2})}$ is determined by

$$\begin{align}
\mathcal{N}_{0}^{(2)} & =\sum_{n=2}^{\infty}B_{n}^{(0)}\widehat{H}_{-n}\widehat{H}_{n} \\
&\quad+\sum_{a\geqslant b\geqslant2}\Gamma_{ab}^{(0)}\left( \widehat{H}_{-(a+b)}\widehat{H}_{b}\widehat{H}_{a} +\widehat{H}_{-a}\widehat{H}_{-b}\widehat{H}_{a+b} \right).
\end{align}$$

For example,

$$\begin{align}
\Gamma_{22}^{(0)}&=-\dfrac{24}{5}, & \Gamma_{32}^{(0)}&=-4, & B_{4}^{(0)}&=\dfrac{72}{25}, & B_{5}^{(0)}&=-\dfrac{6}{5},
\end{align}$$

which reproduce the large-$\displaystyle{c}$ expansion of the displayed level-four block and its level-five continuation.

### The $\displaystyle{u=1}$ Kernel

Set

$$\begin{align}
A_{n}^{(1)}
& :=\begin{cases}
\dfrac{n+1}{d_{n}}=\dfrac{12}{n(n-1)}, & n\geqslant3,\\
0, & n=2.
\end{cases}
\end{align}$$

The leading term is

$$\begin{align}
\mathcal{N}_{1}^{(1)} & =\sum_{n=3}^{\infty}A_{n}^{(1)}\widehat{H}_{1-n}\widehat{H}_{n}.
\end{align}$$

There are two independent cubic normal-ordering kernels. The one-negative--two-positive kernel is

$$\begin{align}
\Gamma_{ab}^{(1)} & :=-\dfrac{ A_{b}^{(1)}(a+1-b)+A_{a+b}^{(1)}(2a+b)
}{(1+\delta_{ab})d_{a}}, & (a,b)&\neq(2,2),\\
\Gamma_{22}^{(1)}&:=0,
\end{align}$$

where the exceptional value follows from the vacuum $\displaystyle{SL(2,\mathbb{R})}$ null relation. The two-negative--one-positive kernel is

$$\begin{align}
\widetilde{\Gamma}_{ab}^{(1)} & :=-\dfrac{ A_{a+1}^{(1)}(2a+b+2)+A_{b+1}^{(1)}(a+2b+2)
}{(1+\delta_{ab})d_{a+b+1}}.
\end{align}$$

The subleading quadratic kernel is

$$\begin{align}
B_{n}^{(1)} & :=-\dfrac{1}{d_{n}d_{n-1}}\left[ \sum_{m=3}^{n-2}A_{m}^{(1)}(n+m)(n+m-2)d_{n-m}\right.\\
&\qquad\left. +d_{n-1}\sum_{(a,b)\in\mathcal{P}_{n}} \Gamma_{ab}^{(1)}(2a+b)d_{b} +d_{n}\sum_{(a,b)\in\mathcal{P}_{n-1}} \widetilde{\Gamma}_{ab}^{(1)}(2a+b)d_{b} \right].
\end{align}$$

Therefore

$$\begin{align}
\mathcal{N}_{1}^{(2)} & =\sum_{n=3}^{\infty}B_{n}^{(1)}\widehat{H}_{1-n}\widehat{H}_{n} \\
&\quad+\sum_{a\geqslant b\geqslant2}
\Gamma_{ab}^{(1)}\widehat{H}_{1-a-b}\widehat{H}_{b}\widehat{H}_{a} \\
&\quad+\sum_{a\geqslant b\geqslant2}
\widetilde{\Gamma}_{ab}^{(1)}\widehat{H}_{-a}\widehat{H}_{-b}\widehat{H}_{a+b+1}.
\end{align}$$

The first nonzero subleading coefficients include

$$\begin{align}
\Gamma_{32}^{(1)}&=-\dfrac{12}{5}, & \widetilde{\Gamma}_{22}^{(1)}&=-\dfrac{8}{5}, & B_{5}^{(1)}&=\dfrac{24}{25}.
\end{align}$$

### The $\displaystyle{u=-1}$ Kernel and Verification Boundary

The star structure fixes the remaining symbol without an independent calculation:

$$\begin{align}
\mathcal{N}_{-1}^{(r)}&=\left(\mathcal{N}_{1}^{(r)}\right)^{\dagger}, & r&=1,2.
\end{align}$$

In particular,

$$\begin{align}
\mathcal{N}_{-1}^{(2)} & =\sum_{n=3}^{\infty}B_{n}^{(1)}\widehat{H}_{-n}\widehat{H}_{n-1} \\
&\quad+\sum_{a\geqslant b\geqslant2}
\Gamma_{ab}^{(1)}\widehat{H}_{-a}\widehat{H}_{-b}\widehat{H}_{a+b-1} \\
&\quad+\sum_{a\geqslant b\geqslant2}
\widetilde{\Gamma}_{ab}^{(1)}\widehat{H}_{-(a+b+1)}\widehat{H}_{b}\widehat{H}_{a}.
\end{align}$$

The leading kernels follow from the central contractions in the Virasoro commutators. Cancelling the remaining quadratic commutator residuals fixes $\displaystyle{\Gamma_{ab}^{(0)}}$, $\displaystyle{\Gamma_{ab}^{(1)}}$, and $\displaystyle{\widetilde{\Gamma}_{ab}^{(1)}}$; matching the one-particle matrix elements then fixes $\displaystyle{B_{n}^{(0)}}$ and $\displaystyle{B_{n}^{(1)}}$. Expanding the exact triangular Gram recursion and comparing every coefficient through $\displaystyle{\mathcal{O}(c^{-2})}$ gives zero residual for $\displaystyle{\widehat{F}_{0}^{\mathrm{normal}}}$ at levels two through eight and for $\displaystyle{\widehat{F}_{1}^{\mathrm{normal}}}$ at levels three through eight. This is a formal all-level large-central-charge construction; convergence of the infinite sums on a common dense operator domain is not established.
