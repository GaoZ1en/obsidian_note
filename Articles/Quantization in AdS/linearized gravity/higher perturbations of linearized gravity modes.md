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

## Higher Virasoro Charges as Local Phase-Space Coordinates

We now ask whether the charges $\displaystyle{H_{p}}$ with $\displaystyle{|p|\geqslant 2}$ can replace the oscillator coefficients as basic phase-space variables. The answer is affirmative locally and perturbatively around the AdS vacuum, but this does not establish a global coordinate system on the whole vacuum orbit.

We discuss the left-moving sector first and introduce the signed quantities

$$\begin{align}
\mathcal{D}_{p} & :=2\pi p(p^{2}-1), & A_{p}&:=-i\mathcal{D}_{p}, & x_{p}&:=\rho _{-p}\mathfrak{a}_{L,p}, & |p|&\geqslant 2.
\end{align}$$

Thus $\displaystyle{x_{N}=q_{N}a_{L,N}}$ and $\displaystyle{x_{-N}=q_{N}^{*}a_{L,N}^{\dagger}=x_{N}^{\dagger}}$ for $\displaystyle{N\geqslant 2}$. After relabelling $\displaystyle{r=-k}$ and $\displaystyle{s=-l}$ in the charge formula above, its first two homogeneous terms become

$$\begin{align}
H_{p}&=\dfrac{A_{p}}{\kappa}x_{p}+\mathcal{Q}_{p}[x]+\mathcal{O}(\kappa x^{3}), \\
\mathcal{Q}_{p}[x]&:=-\pi\sum_{\substack{r+s=p,\\
|r|,|s|\geqslant 2}}(r+2s)r(r^{2}-1)x_{r}x_{s}.
\end{align}$$

For $\displaystyle{|p|\geqslant 2}$, the linearized Jacobian at the vacuum is

$$\begin{align}
\left.\dfrac{\partial H_{p}}{\partial x_{q}}\right|_{x=0}=\dfrac{A_{p}}{\kappa}\delta _{pq}.
\end{align}$$

It is nonzero for every allowed $\displaystyle{p}$. Consequently, every finite-mode truncation is locally invertible by the ordinary inverse-function theorem, and the full mode expansion has a formal order-by-order inverse. In a continuum treatment one must still choose weighted sequence spaces and prove the corresponding infinite-dimensional inverse-function statement.

To the first nonlinear order, the inverse is

$$\begin{align}
x_{p}[H]&=\dfrac{\kappa}{A_{p}}H_{p} -\dfrac{\kappa ^{3}}{A_{p}}\mathcal{Q}_{p}\left[\dfrac{H}{A}\right] +\mathcal{O}(\kappa ^{5}H^{3}), & |p|&\geqslant 2,
\end{align}$$

where $\displaystyle{(H/A)_{r}:=H_{r}/A_{r}}$. In particular,

$$\begin{align}
a_{L,N}[H]&=\dfrac{1}{q_{N}}x_{N}[H], & a_{L,N}^{\dagger}[H]&=\dfrac{1}{q_{N}^{*}}x_{-N}[H], & N&\geqslant 2.
\end{align}$$

The expansion parameter in this inverse is the nonlinear amplitude $\displaystyle{\kappa x\sim\kappa ^{2}H}$; the displayed powers of $\displaystyle{\kappa}$ assume that the charge coordinates are held fixed when the series is organized.

### The $\boldsymbol{H_{0,\pm1}}$ Charges as Composite Observables

The factor $\displaystyle{p(p^{2}-1)}$ makes the linear term vanish for $\displaystyle{p=0,\pm1}$. Substituting the leading inverse into $\displaystyle{\mathcal{Q}_{p}}$ gives

$$\begin{align}
H_{0}&=\dfrac{\kappa ^{2}}{2\pi}\sum_{n=2}^{\infty}\dfrac{H_{n}H_{-n}}{n^{2}-1}+\mathcal{O}(\kappa ^{4}H^{3}), \\
H_{1}&=\dfrac{\kappa ^{2}}{2\pi}\sum_{n=3}^{\infty}\dfrac{H_{n}H_{1-n}}{n(n-1)}+\mathcal{O}(\kappa ^{4}H^{3}), \\
H_{-1}&=\dfrac{\kappa ^{2}}{2\pi}\sum_{n=2}^{\infty}\dfrac{H_{n}H_{-1-n}}{n(n+1)}+\mathcal{O}(\kappa ^{4}H^{3}).
\end{align}$$

Equivalently, the three formulas can be written uniformly as

$$\begin{align}
H_{u}&=\dfrac{\kappa ^{2}}{2}
\sum_{\substack{m+n=u,\\
|m|,|n|\geqslant 2}} \dfrac{m+u}{\mathcal{D}_{m}}H_{m}H_{n} +\mathcal{O}(\kappa ^{4}H^{3}), & u&=-1,0,1.
\end{align}$$

For $\displaystyle{u=-1,0,1}$, the coefficient is symmetric under $\displaystyle{m\leftrightarrow n}$ once $\displaystyle{m+n=u}$ is imposed. The reality condition $\displaystyle{H_{p}^{\dagger}=H_{-p}}$ then gives $\displaystyle{H_{0}^{\dagger}=H_{0}}$ and $\displaystyle{H_{1}^{\dagger}=H_{-1}}$.

These are the first terms of three local functions $\displaystyle{H_{u}=F_{u}[H_{|p|\geqslant 2}]}$. Higher terms are obtained recursively by substituting the inverse $\displaystyle{x[H]}$ into the higher-order charge formula. Thus $\displaystyle{H_{0,\pm1}}$ are not additional independent variables in this local chart.

### Symplectic Form in Charge Coordinates

Let

$$\begin{align}
I_{>}&:=\{p\in\mathbb{Z}:|p|\geqslant 2\}.
\end{align}$$

In the charge chart, define the restricted Poisson matrix

$$\begin{align}
P_{pq}^{>}[H]&:=\{H_{p},H_{q}\} \\
&=-i(p-q)H_{p+q}-\dfrac{i}{\kappa ^{2}}\mathcal{D}_{p}\delta _{p+q,0}, & p,q&\in I_{>}.
\end{align}$$

Whenever $\displaystyle{p+q=0,\pm1}$, the entry $\displaystyle{H_{p+q}}$ in this matrix means the composite function $\displaystyle{F_{p+q}[H_{I_{>}}]}$. On the exact Brown--Henneaux phase space, after imposing the boundary conditions, integrability, the AdS counterterm and vacuum subtraction, the Virasoro charge algebra is exact: it does not acquire higher-order corrections in the oscillator amplitude. This exactness follows from the nonlinear Brown--Henneaux moment-map algebra, not from the finite-order oscillator calculation alone. In particular, the direct calculation in this note verifies the CPS Hamiltonian relation only to the orders stated above, and the displayed formulas for $\displaystyle{F_{0,\pm1}}$ remain perturbative.

At the vacuum only the central term remains, and it is nondegenerate on $\displaystyle{I_{>}}$. Therefore $\displaystyle{P^{>}}$ remains invertible in a sufficiently small local patch. Using the exact Virasoro bracket, the symplectic form has the exact local implicit expression

$$\begin{align}
\omega _{L}&=\dfrac{1}{2}\sum_{p,q\in I_{>}}\left(P^{>}[H]^{-1}\right)_{pq}\delta H_{p}\wedge\delta H_{q}.
\end{align}$$

This is the Kirillov--Kostant form on the vacuum Virasoro orbit written in moment-map coordinates. It is not a Darboux form: its inverse is the field-dependent Virasoro bracket matrix. If one uses only the explicit oscillator formulas presently given in this note, the substitution $\displaystyle{H_{0,\pm1}=F_{0,\pm1}[H_{I_{>}}]}$ and the resulting component expansion must be read order by order to their verified accuracy.

Expanding the matrix inverse around the vacuum gives the first explicit terms

$$\begin{align}
\omega _{L} &=-\dfrac{i\kappa ^{2}}{2}\sum_{p,q\in I_{>}} \dfrac{\delta _{p+q,0}}{\mathcal{D}_{p}} \delta H_{p}\wedge\delta H_{q} \\
&\quad-\dfrac{i\kappa ^{4}}{2} \sum_{\substack{p,q\in I_{>},\\
|p+q|\geqslant 2}} \dfrac{p-q}{\mathcal{D}_{p}\mathcal{D}_{q}} H_{-p-q}\,\delta H_{p}\wedge\delta H_{q} +\mathcal{O}(\kappa ^{6}H^{2}\delta H\wedge\delta H).
\end{align}$$

In particular, the vacuum term is

$$\begin{align}
\omega _{L}^{\mathrm{vac}} &=i\kappa ^{2}\sum_{n=2}^{\infty} \dfrac{\delta H_{-n}\wedge\delta H_{n}}{\mathcal{D}_{n}},
\end{align}$$

which reproduces $\displaystyle{i\sum_{n\geqslant 2}\delta a_{L,n}^{\dagger}\wedge\delta a_{L,n}}$ after using the linear inverse. Terms with $\displaystyle{p+q=0,\pm1}$ first contribute at quadratic order in the independent charges through the functions $\displaystyle{F_{0,\pm1}}$ and are included automatically in the exact matrix-inverse expression.

### Recursive Inverse and Green Kernel

The Virasoro structure gives more than an unspecified infinite-matrix inverse. Split

$$\begin{align}
P^{>}&=C+L, \\
C_{pq}&:=-\dfrac{i}{\kappa ^{2}}\mathcal{D}_{p}\delta _{p+q,0}, & L_{pq}&:=-i(p-q)H_{p+q}, & p,q&\in I_{>}.
\end{align}$$

The vacuum inverse is

$$\begin{align}
S_{pq}:=(C^{-1})_{pq}=-\dfrac{i\kappa ^{2}}{\mathcal{D}_{p}}\delta _{p+q,0}.
\end{align}$$

Write $\displaystyle{K:=(P^{>})^{-1}=\sum_{r=0}^{\infty}K^{(r)}}$, where $\displaystyle{K^{(r)}}$ is homogeneous of degree $\displaystyle{r}$ in the entries of $\displaystyle{L}$. The Neumann recursion is

$$\begin{align}
K^{(0)}_{pq}&=-\dfrac{i\kappa ^{2}}{\mathcal{D}_{p}}\delta _{p+q,0}, \\
K^{(r+1)}_{pq}&=-\dfrac{\kappa ^{2}}{\mathcal{D}_{p}}
\sum_{s\in I_{>}}(p+s)H_{s-p}K^{(r)}_{sq}.
\end{align}$$

Thus the first two field-dependent kernels are

$$\begin{align}
K^{(1)}_{pq} &=-\dfrac{i\kappa ^{4}(p-q)}{\mathcal{D}_{p}\mathcal{D}_{q}}H_{-p-q}, \\
K^{(2)}_{pq} &=\dfrac{i\kappa ^{6}}{\mathcal{D}_{p}\mathcal{D}_{q}}
\sum_{s\in I_{>}} \dfrac{(p+s)(s-q)}{\mathcal{D}_{s}} H_{s-p}H_{-s-q}.
\end{align}$$

At every occurrence of an index $\displaystyle{0,\pm1}$, the corresponding charge is replaced by $\displaystyle{F_{0,\pm1}[H_{I_{>}}]}$. Iterating the recursion gives the formal all-order path sum

$$\begin{align}
K^{(r)}_{pq} &=(-1)^{r}(-i)\kappa ^{2r+2}
\sum_{p_{1},\ldots ,p_{r}\in I_{>}} \dfrac{\delta _{p_{r}+q,0}}
{\displaystyle{\prod_{j=0}^{r}\mathcal{D}_{p_{j}}}}
\prod_{j=0}^{r-1} \left[(p_{j}+p_{j+1})H_{p_{j+1}-p_{j}}\right], & p_{0}&:=p.
\end{align}$$

For a finite-mode truncation this series converges in a sufficiently small neighborhood of the vacuum. For the infinite matrix it is at present a formal series; convergence would follow after choosing a weighted sequence space and proving, for example, $\displaystyle{\lVert SL\rVert<1}$.

There is also a differential-operator form of the same inverse. Define

$$\begin{align}
H(\phi)&:=\sum_{n\in\mathbb{Z}}H_{n}e^{in\phi}, & \Pi _{>}&:=1-\Pi _{\{-1,0,1\}},
\end{align}$$

with $\displaystyle{H_{0,\pm1}=F_{0,\pm1}[H_{I_{>}}]}$, and introduce the third-order Virasoro Poisson operator

$$\begin{align}
\mathcal{J}_{H} &:=\dfrac{2\pi}{\kappa ^{2}}(\partial _{\phi}^{3}+\partial _{\phi}) -2H(\phi)\partial _{\phi}-H'(\phi).
\end{align}$$

If $\displaystyle{v(\phi)=\sum_{m\in I_{>}}v_{m}e^{im\phi}}$, then

$$\begin{align}
\left(\Pi _{>}\mathcal{J}_{H}\Pi _{>}v\right)_{p} &=\sum_{m\in I_{>}}P^{>}_{p,-m}v_{m}.
\end{align}$$

Consequently, up to this displayed reflection of the dual Fourier index, $\displaystyle{K}$ is the Green kernel of $\displaystyle{\mathcal{J}_{H}^{>}:=\Pi _{>}\mathcal{J}_{H}\Pi _{>}}$. More explicitly, for a source $\displaystyle{w=\Pi _{>}w}$ one solves

$$\begin{align}
\mathcal{J}_{H}v &=w+\sum_{u=-1}^{1}\lambda _{u}e^{iu\phi}, & \Pi _{\{-1,0,1\}}v&=0,
\end{align}$$

where the three multipliers $\displaystyle{\lambda _{u}}$ enforce the projection conditions. Then $\displaystyle{v=(\mathcal{J}_{H}^{>})^{-1}w}$ and

$$\begin{align}
K_{pq}&=\left((\mathcal{J}_{H}^{>})^{-1}\right)_{-p,q}.
\end{align}$$

The homogeneous Green problem is controlled by a Hill equation. Indeed, with

$$\begin{align}
\mathcal{L}_{H}(\phi)&:=-\dfrac{1}{4}+\dfrac{\kappa ^{2}}{4\pi}H(\phi),
\end{align}$$

the operator factor takes the form

$$\begin{align}
\mathcal{J}_{H} &=\dfrac{2\pi}{\kappa ^{2}} \left(\partial _{\phi}^{3}-4\mathcal{L}_{H}\partial _{\phi}-2\mathcal{L}_{H}'\right).
\end{align}$$

If $\displaystyle{\psi _{1}}$ and $\displaystyle{\psi _{2}}$ solve

$$\begin{align}
\psi ''&=\mathcal{L}_{H}\psi,
\end{align}$$

then $\displaystyle{\psi _{1}^{2},\psi _{1}\psi _{2},\psi _{2}^{2}}$ solve $\displaystyle{\mathcal{J}_{H}v=0}$. On the vacuum, they reduce to the three $\displaystyle{p=0,\pm1}$ stabilizer modes.

### Exact Green Kernel on a Finite-Diffeomorphism Background

For a point on the exceptional orbit represented by an orientation-preserving circle diffeomorphism

$$\begin{align}
f(\phi+2\pi)&=f(\phi)+2\pi, & f'(\phi)&>0,
\end{align}$$

the vacuum-subtracted coadjoint density and Hill potential are

$$\begin{align}
H_{f}(\phi) &=-\dfrac{C}{24}\left(f'^{2}-1\right) -\dfrac{C}{12}\{f,\phi\}, & C&=\dfrac{24\pi}{\kappa ^2}, \\
\mathcal{L}_{H_f} &=-\dfrac{f'^{2}}{4}-\dfrac{1}{2}\{f,\phi\}.
\end{align}$$

The two Hill solutions and the three stabilizers are elementary:

$$\begin{align}
\psi _{\pm}(\phi) &=\dfrac{e^{\pm if(\phi)/2}}{\sqrt{f'(\phi)}}, \\
z_{a}(\phi) &=\dfrac{e^{iaf(\phi)}}{f'(\phi)}, & a&=-1,0,1.
\end{align}$$

More strongly, if $\displaystyle{v(\phi)=u(f(\phi))/f'(\phi)}$, direct differentiation gives the exact conjugation identity

$$\begin{align}
\left(\partial _{\phi}^{3}-4\mathcal{L}_{H_f}\partial _{\phi} -2\mathcal{L}_{H_f}'\right)v(\phi) &=f'(\phi)^{2} \left(\partial _{f}^{3}+\partial _{f}\right)u(f(\phi)).
\end{align}$$

Consequently, no new differential equation has to be solved on a finite-diffeomorphism background: the Green problem is transported from the vacuum. Define the periodic vacuum kernel by

$$\begin{align}
G_{0}(s) &=\dfrac{1}{2\pi}\sum_{|n|\geqslant2} \dfrac{i e^{ins}}{n(n^{2}-1)} \\
&=\dfrac{(\pi-s)(1-\cos s)}{2\pi} -\dfrac{3\sin s}{4\pi}, & 0&<s<2\pi,
\end{align}$$

extended periodically. It satisfies

$$\begin{align}
(\partial _{s}^{3}+\partial _s)G_{0}(s) &=\delta _{2\pi}(s)-\dfrac{1+2\cos s}{2\pi}.
\end{align}$$

The transported raw Green operator is therefore

$$\begin{align}
(\mathcal{G}_{f}w)(\phi) &=\dfrac{\kappa ^2}{2\pi} \int_{0}^{2\pi}\mathrm{d}\phi'\, \dfrac{G_{0}\!\left(f(\phi)-f(\phi')\right)} {f'(\phi)f'(\phi')}w(\phi').
\end{align}$$

It uses the $\displaystyle{f}$-adapted stabilizer slice, whereas the charge chart uses the fixed Fourier slice. The difference is exactly finite rank. Let

$$\begin{align}
(E\lambda)(\phi)&:=\sum_{u=-1}^{1}\lambda _u e^{iu\phi}, & (Rv)_u&:=\dfrac{1}{2\pi}\int_{0}^{2\pi}\mathrm{d}\phi\,e^{-iu\phi}v(\phi), \\
(Za)(\phi)&:=\sum_{a=-1}^{1}a_a z_a(\phi), & (Kw)_a&:=\dfrac{1}{2\pi}\int_{0}^{2\pi}\mathrm{d}\phi\,z_a(\phi)^{*}w(\phi).
\end{align}$$

Here $\displaystyle{K}$ imposes the three Fredholm compatibility conditions against the actual kernel of $\displaystyle{\mathcal J_{H_f}}$, while $\displaystyle{R}$ imposes the fixed condition $\displaystyle{\Pi _{\{-1,0,1\}}v=0}$. Whenever the two $\displaystyle{3\times3}$ matrices $\displaystyle{KE}$ and $\displaystyle{RZ}$ are invertible, the required projected inverse is

$$\begin{align}
\boxed{ (\mathcal{J}_{H_f}^{>})^{-1} =\left[1-Z(RZ)^{-1}R\right] \mathcal{G}_{f} \left[1-E(KE)^{-1}K\right]}.
\end{align}$$

The right factor modifies a fixed-high-mode source so that the unprojected equation is solvable; the left factor adds an actual stabilizer so that the solution has no fixed low Fourier modes. At $\displaystyle{f(\phi)=\phi}$, both finite matrices are the identity and this formula reduces to the vacuum Fourier inverse. Since they remain invertible in an open neighborhood of the identity, the expression is an analytic nonperturbative kernel throughout that neighborhood.

For $\displaystyle{f(\phi)=\phi+0.1\sin(2\phi)}$, a 512-point spectral evaluation of the analytic kernel was compared with inverses of the principal charge matrices. The relative Frobenius errors decrease as

| $\displaystyle{N}$ | 4 | 6 | 8 | 10 | 12 |
|---:|---:|---:|---:|---:|---:|
| relative error | $\displaystyle{9.33\times10^{-4}}$ | $\displaystyle{6.34\times10^{-5}}$ | $\displaystyle{4.38\times10^{-6}}$ | $\displaystyle{5.84\times10^{-7}}$ | $\displaystyle{1.30\times10^{-7}}$ |

The vacuum calibration error is $\displaystyle{8.31\times10^{-8}}$, and both finite-rank constraints vanish to the numerical working precision. The residual difference at finite $\displaystyle{N}$ is expected: the analytic expression gives the corresponding block of the infinite inverse, whereas inversion of a principal matrix omits propagation through modes outside the window. All conjugation, Fourier-kernel, jump and numerical checks are implemented in `finite_diffeomorphism_green_kernel.wl`.

### Nonperturbative Low-Mode Reconstruction from Monodromy

The same Hill problem gives an exact implicit definition of $\displaystyle{F_{0,\pm1}}$. For fixed higher modes and three trial low modes, let $\displaystyle{Y_{H}}$ solve

$$\begin{align}
Y_{H}'(\phi)
&=\begin{pmatrix}0&1\\
\mathcal L_H(\phi)&0\end{pmatrix}Y_H(\phi), &
Y_H(0)&=\mathbf 1,
\end{align}$$

and define the Hill monodromy $\displaystyle{M[H]:=Y_H(2\pi)}\in SL(2,\mathbb R)$. The global-AdS exceptional orbit is the branch

$$\begin{align}
\boxed{M[H]=-\mathbf 1}.
\end{align}$$

Equivalently, in a neighborhood of the vacuum one solves the three real equations

$$\begin{align}
\mathcal C[H] &:=\left(M_{12},M_{21},M_{11}-M_{22}\right)=0, & \operatorname{tr}M&<0.
\end{align}$$

Write $\displaystyle{H_{1}=h_{c}+ih_{s}}$, $\displaystyle{H_{-1}=h_{c}-ih_{s}}$. At the vacuum, the Jacobian with respect to $\displaystyle{(H_0,h_c,h_s)}$ is

$$\begin{align}
\left.\dfrac{\partial\mathcal C}{\partial(H_0,h_c,h_s)}\right|_{H=0} &=\kappa ^2
\begin{pmatrix}
1&-1&0\\
-\frac14&-\frac14&0\\
0&0&-1
\end{pmatrix}, \\
\det\left.\dfrac{\partial\mathcal C}{\partial(H_0,h_c,h_s)}\right|_{H=0} &=\dfrac{\kappa ^6}{2}\neq0.
\end{align}$$

The implicit-function theorem therefore supplies unique real-analytic functions

$$\begin{align}
H_u&=F_u^{\mathrm{mon}}[H_{|p|\geqslant2}], & u&=-1,0,1,
\end{align}$$

on a neighborhood of the vacuum. This is the desired nonperturbative reconstruction: evaluation requires only a second-order ODE and three finite-dimensional root conditions. It ceases to be locally single-valued when this Jacobian loses rank, and different monodromy branches are not part of the same local coordinate chart.

As a nonlinear check, take

$$\begin{align}
f(\phi) &=\phi+\dfrac{3}{25}\sin(2\phi)+\dfrac{7}{100}\cos(3\phi).
\end{align}$$

The exact orbit density has

$$\begin{align}
H_0&=1.284995880060716449\ldots, & H_1&=0.642208612441222937\ldots\,i,
\end{align}$$

with $\displaystyle{H_{-1}=H_1^{*}}$. Removing these three Fourier coefficients, treating only the remaining function as input, and solving $\displaystyle{\mathcal C=0}$ reconstructs all three with maximum error $\displaystyle{2.9\times10^{-18}}$; the final $\displaystyle{\lVert M+\mathbf1\rVert _F}$ is $\displaystyle{4.7\times10^{-19}}$.

Finally, scaling this finite diffeomorphism by amplitudes $\displaystyle{0.05,0.1,0.2,0.4}$ and comparing with the earlier quadratic $\displaystyle{F_{0,\pm1}}$ gives maximum errors $\displaystyle{4.20\times10^{-7},6.75\times10^{-6},1.10\times10^{-4},1.83\times10^{-3}}$. The ratio to the fourth power of the amplitude stays between $\displaystyle{0.0671}$ and $\displaystyle{0.0716}$. The cubic term happens to cancel on this test family, so this is stronger than, and consistent with, the general $\displaystyle{\mathcal O}(H^{3})$ remainder stated earlier. The Jacobian, nonlinear shooting and perturbative comparison are reproduced by `hill_monodromy_low_mode_reconstruction.wl`.

The complete nonlinear symplectic structure is therefore encoded by an explicit transported Green kernel plus two $\displaystyle{3\times3}$ inverses, while the three low charges are fixed by three monodromy equations. The apparent possibility that the finite matrices or the monodromy Jacobian might become singular inside the smooth exceptional orbit can in fact be excluded, as follows.

### Global Transversality of the Higher-Mode Slice

For real stabilizers, write

$$\begin{align}
\mathcal Z_f^{\mathbb R} &=\operatorname{span}_{\mathbb R} \left\{ \dfrac{1}{f'},\dfrac{\cos f}{f'},\dfrac{\sin f}{f'} \right\}.
\end{align}$$

Suppose that $\displaystyle{RZ}$ were singular. Then there would be a nonzero real $\displaystyle{z\in\mathcal Z_f^{\mathbb R}}$ whose Fourier coefficients of orders $\displaystyle{0,\pm1}$ all vanish. The Sturm--Hurwitz zero theorem would require such a function to have at least four zeros on the circle. On the other hand,

$$\begin{align}
z(\phi) &=\dfrac{A+B\cos f(\phi)+C\sin f(\phi)}{f'(\phi)}.
\end{align}$$

Because $\displaystyle{f'>0}$ and $\displaystyle{f}$ winds once around the circle, a nonzero numerator of this form has at most two zeros. This contradiction proves

$$\begin{align}
\boxed{\det(RZ)\neq0}
\end{align}$$

for every smooth orientation-preserving $\displaystyle{f}$. Complex null vectors do not evade the argument, since their real and imaginary parts would give real null vectors. Moreover, directly from the definitions,

$$\begin{align}
KE&=(RZ)^{\dagger},
\end{align}$$

so $\displaystyle{KE}$ is globally invertible as well. Variation of parameters for the Hill fundamental matrix gives, in the low-mode and constraint bases used above,

$$\begin{align}
\dfrac{ \left|\det\dfrac{\partial\mathcal C} {\partial(H_0,h_c,h_s)}\right|} {\kappa ^6/2} &=|\det(RZ)|.
\end{align}$$

Thus the monodromy Jacobian cannot lose rank anywhere in the smooth exceptional orbit either. It follows that the higher-charge map is a local analytic coordinate map at every point of $\displaystyle{\operatorname{Diff}^{+}(S^1)/PSL(2,\mathbb R)}$, and the projected Green formula above exists throughout this orbit. This is a statement of global *local nondegeneracy*; it does not yet prove that two distant orbit points cannot have the same complete set of higher charges.

A deterministic stress test used five one-mode families and random harmonics of orders $\displaystyle{2}$ through $\displaystyle{8}$, with $\displaystyle{148}$ maps and minimum derivatives down to $\displaystyle{10^{-3}}$. No rank loss occurred. Across the scan,

$$\begin{align}
\min\sigma_{\min}(RZ)&=0.4494\ldots, & \min|\det(RZ)|&=1.0171\ldots .
\end{align}$$

The determinant identity above held with maximum residual $\displaystyle{2.1\times10^{-8}}$. The smallest singular value of the displayed monodromy-constraint Jacobian fell to $\displaystyle{7.4\times10^{-5}}$ near $\displaystyle{\min f'=10^{-3}}$: this is loss of conditioning in that particular constraint basis, not loss of rank.

A naive $\displaystyle{\sigma_{\min}}$ of a principal Fourier block of $\displaystyle{\mathcal J_H^{>}}$ is not an invariant diagnostic. The operator is third order and requires specified Sobolev norms, while hard principal truncation omits propagation through exterior modes. For the fixed test $\displaystyle{f'=1+0.5\cos(6\phi)}$, the vacuum-preconditioned principal-block minimum singular values at cutoffs $\displaystyle{8,10,12,14,16,18}$ are

$$\begin{align}
0.0617, 0.0903, 0.0903, 0.0201, 0.0266, 0.0266,
\end{align}$$

which are visibly non-monotone even though the exact transversality matrices are well conditioned. The analytic $\displaystyle{RZ}$ argument, rather than a hard-cutoff singular value, is therefore the decisive test. The full scan and the determinant relation are reproduced by `higher_charge_coordinate_domain_scan.wl`.

The right-moving sector is obtained independently by

$$\begin{align}
H_{p}&\longrightarrow \bar{H}_{p}, & a_{L,n}&\longrightarrow a_{R,n}.
\end{align}$$

Since $\displaystyle{\{H_{p},\bar{H}_{q}\}=0}$, the full symplectic form is the direct sum $\displaystyle{\omega=\omega _{L}+\omega _{R}}$ in these local coordinates, with no mixed left-right term.

The classical claim established here is nonperturbative on the exceptional orbit: the higher charges give analytic local coordinates at every smooth orbit point, the three global $\displaystyle{SL(2,\mathbb{R})}$ charges are fixed locally and uniquely by Hill monodromy, and the symplectic form is the explicit projected Green kernel of the Virasoro Poisson operator. Global injectivity of the complete higher-charge map and its behavior at the boundary $\displaystyle{f'=0}$ are not proved.

## Quantization on the Vacuum Orbit

The exact classical moment-map algebra suggests quantizing the vacuum orbit directly in the charge variables, rather than first transforming the symplectic form back to exact Darboux oscillators. With the convention

$$\begin{align}
[\widehat{\mathcal{O}}_{1},\widehat{\mathcal{O}}_{2}] &=i\{\mathcal{O}_{1},\mathcal{O}_{2}\}_{\mathrm{P}},
\end{align}$$

the left-moving quantum algebra is

$$\begin{align}
[\widehat{H}_{m},\widehat{H}_{n}] &=(m-n)\widehat{H}_{m+n} +\dfrac{c_{\mathrm{q}}}{12}m(m^{2}-1)\delta _{m+n,0}, \\
\widehat{H}_{n}^{\dagger}&=\widehat{H}_{-n}.
\end{align}$$

The coefficient of the classical orbit action is

$$\begin{align}
c_{\mathrm{cl}}&=\dfrac{24\pi}{\kappa ^{2}}.
\end{align}$$

For the Alekseev--Shatashvili path-integral quantization of the vacuum orbit, with the measure inherited from the bulk Chern--Simons path integral, this coefficient is the bare coupling

$$\begin{align}
C&=\dfrac{3}{2G}=\dfrac{24\pi}{\kappa ^{2}}=c_{\mathrm{cl}},
\end{align}$$

where $\displaystyle{\kappa ^{2}=16\pi G}$ and the AdS radius is one. The exact chiral central charge is instead

$$\begin{align}
\boxed{c_{\mathrm{q}}=C+13 =\dfrac{24\pi}{\kappa ^{2}}+13}, & & \Delta c&=13.
\end{align}$$

The shift is the zeta-regularized vacuum contribution

$$\begin{align}
\sum_{n=2}^{\infty}n &\longrightarrow \zeta(-1)-1=-\dfrac{13}{12}.
\end{align}$$

The torus path integral is one-loop exact by localization, so there are no further $\displaystyle{1/C}$ corrections to this relation. This result uses the specified orbit measure and regulator; it does not follow from the classical Poisson algebra alone. If Newton's constant is instead defined through the measured, renormalized central charge, the same effect is absorbed into that definition. The direct bulk one-loop determinant gives the same $\displaystyle{+13}$ shift. See [Cotler--Jensen](https://arxiv.org/abs/1808.03263).

### Vacuum Polarization and Positive Norms

In the present convention, $\displaystyle{H_{n}}$ with $\displaystyle{n\geqslant 2}$ is proportional to the annihilation coefficient $\displaystyle{a_{L,n}}$ at linear order. The corresponding vacuum conditions are

$$\begin{align}
\widehat{H}_{n}|0\rangle&=0, & n&\geqslant 2, \\
\widehat{H}_{-1}|0\rangle =\widehat{H}_{0}|0\rangle =\widehat{H}_{1}|0\rangle&=0.
\end{align}$$

The second line imposes invariance under the $\displaystyle{PSL(2,\mathbb{R})}$ stabilizer of the global-AdS vacuum. In particular, the annihilation condition includes $\displaystyle{n=2}$: it is $\displaystyle{n\geqslant 2}$ rather than $\displaystyle{n>2}$. The choice of positive rather than negative modes is fixed by the norm

$$\begin{align}
\left\lVert \widehat{H}_{-n}|0\rangle\right\rVert ^{2} &=\langle 0|\widehat{H}_{n}\widehat{H}_{-n}|0\rangle \\
&=\dfrac{c_{\mathrm{q}}}{12}n(n^{2}-1)>0, & n&\geqslant 2,
\end{align}$$

for $\displaystyle{c_{\mathrm{q}}>0}$. If instead $\displaystyle{\widehat{H}_{-n}|0\rangle=0}$ were used as the polarization, the norm of $\displaystyle{\widehat{H}_{n}|0\rangle}$ would be the negative of this expression.

### Vacuum Virasoro Module

The left-moving Hilbert space is generated algebraically by the negative modes,

$$\begin{align}
\widehat{H}_{-n_{1}}\widehat{H}_{-n_{2}}\cdots
\widehat{H}_{-n_{k}}|0\rangle, & & n_{1}\geqslant n_{2}\geqslant\cdots\geqslant n_{k}\geqslant 2.
\end{align}$$

All inner products and matrix elements are obtained by commuting positive modes to the right. For example,

$$\begin{align}
\langle 0|\widehat{H}_{n}\widehat{H}_{-m}|0\rangle &=\dfrac{c_{\mathrm{q}}}{12}n(n^{2}-1)\delta _{nm}, & n,m&\geqslant 2.
\end{align}$$

Moreover,

$$\begin{align}
[\widehat{H}_{0},\widehat{H}_{-n}]&=n\widehat{H}_{-n},
\end{align}$$

and hence

$$\begin{align}
\widehat{H}_{0} \widehat{H}_{-n_{1}}\cdots\widehat{H}_{-n_{k}}|0\rangle &=\left(\sum_{j=1}^{k}n_{j}\right) \widehat{H}_{-n_{1}}\cdots\widehat{H}_{-n_{k}}|0\rangle.
\end{align}$$

Thus $\displaystyle{\widehat{H}_{0}}$ measures the descendant level exactly, without requiring an explicit all-order formula for $\displaystyle{F_{0}}$. In the vacuum-subtracted convention used here, the chiral character is

$$\begin{align}
\chi _{\mathrm{vac}}(q) &=\operatorname{Tr}_{\mathcal{V}_{\mathrm{vac}}}q^{\widehat{H}_{0}} =\prod_{n=2}^{\infty}\dfrac{1}{1-q^{n}}.
\end{align}$$

In the conventional unshifted cylinder trace one restores the corresponding vacuum factor $\displaystyle{q^{-c_{\mathrm{q}}/24}}$. The right-moving construction is identical and the vacuum-orbit Hilbert space is

$$\begin{align}
\mathcal{H}_{\mathrm{vac}} &=\mathcal{V}_{\mathrm{vac}}\otimes\overline{\mathcal{V}}_{\mathrm{vac}}.
\end{align}$$

This is the same vacuum-Virasoro-module structure obtained by the path-integral quantization of the global-AdS Virasoro coadjoint orbit and by the one-loop boundary-graviton partition function; see [Cotler--Jensen](https://arxiv.org/abs/1808.03263) and [Acosta--Garbarz--Goya--Leston](https://arxiv.org/abs/2004.01723).

### Relation to the Linear Oscillators

For $\displaystyle{n\geqslant 2}$, define the classically normalized operators

$$\begin{align}
b_{n}&:=\dfrac{\kappa}{\sqrt{\mathcal{D}_{n}}}\widehat{H}_{n}, & b_{n}^{\dagger}&:=\dfrac{\kappa}{\sqrt{\mathcal{D}_{n}}}\widehat{H}_{-n}.
\end{align}$$

Their exact commutator is

$$\begin{align}
[b_{n},b_{m}^{\dagger}] &=\dfrac{\kappa ^{2}}{\sqrt{\mathcal{D}_{n}\mathcal{D}_{m}}} \left[(n+m)\widehat{H}_{n-m} +\dfrac{c_{\mathrm{q}}}{12}n(n^{2}-1)\delta _{nm}\right].
\end{align}$$

Its central term is $\displaystyle{(c_{\mathrm{q}}/c_{\mathrm{cl}})\delta _{nm}}$. Therefore

$$\begin{align}
\langle 0|[b_{n},b_{m}^{\dagger}]|0\rangle &=\dfrac{c_{\mathrm{q}}}{c_{\mathrm{cl}}}\delta _{nm}.
\end{align}$$

The exactly vacuum-normalized linear operators are $\displaystyle{\beta _{n}:=\sqrt{c_{\mathrm{cl}}/c_{\mathrm{q}}}\,b_{n}}$. The exact operator commutator of either normalization also contains $\displaystyle{\widehat{H}_{n-m}}$. Thus these operators are canonical oscillators only at the vacuum-linearized, equivalently leading large-$\displaystyle{c}$, level. The nonlinear Virasoro algebra is their exact collective completion.

The leading normal-ordered form of the composite zero mode is

$$\begin{align}
\widehat{F}_{0}^{(2)} &=\dfrac{\kappa ^{2}}{2\pi}
\sum_{n=2}^{\infty}\dfrac{\widehat{H}_{-n}\widehat{H}_{n}}{n^{2}-1} =\sum_{n=2}^{\infty}n b_{n}^{\dagger}b_{n},
\end{align}$$

independently of the value of $\displaystyle{c_{\mathrm{q}}}$. This is the leading normal-ordered symbol of the exact level operator, not its complete expression.

### Quantum Reconstruction of $\boldsymbol{H_{0,\pm1}}$

The stabilizer conditions do not make $\displaystyle{\widehat{H}_{0,\pm1}}$ zero operators. They vanish only on the vacuum and act nontrivially on descendants. For $\displaystyle{n\geqslant 2}$,

$$\begin{align}
\widehat{H}_{1}\widehat{H}_{-n}|0\rangle &=(n+1)\widehat{H}_{1-n}|0\rangle, \\
\widehat{H}_{-1}\widehat{H}_{-n}|0\rangle &=(n-1)\widehat{H}_{-n-1}|0\rangle.
\end{align}$$

For $\displaystyle{n=2}$, the first line vanishes because $\displaystyle{\widehat{H}_{-1}|0\rangle=0}$, while the second line produces $\displaystyle{\widehat{H}_{-3}|0\rangle}$.

There is in fact an exact finite reconstruction in the associative algebra generated by the higher modes. For every integer $\displaystyle{n\geqslant 2}$, the Virasoro algebra gives

$$\begin{align}
\boxed{\widehat{F}_{0}^{[n]}} &:=\dfrac{1}{2n}[\widehat{H}_{n},\widehat{H}_{-n}] -\dfrac{c_{\mathrm{q}}}{24}(n^{2}-1)\mathbf{1} =\widehat{H}_{0}, \\
\boxed{\widehat{F}_{1}^{[n]}} &:=\dfrac{1}{2n+1}[\widehat{H}_{n+1},\widehat{H}_{-n}] =\widehat{H}_{1}, \\
\boxed{\widehat{F}_{-1}^{[n]}} &:=\dfrac{1}{2n+1}[\widehat{H}_{n},\widehat{H}_{-(n+1)}] =\widehat{H}_{-1}.
\end{align}$$

The minimal $\displaystyle{n=2}$ representatives are therefore

$$\begin{align}
\widehat{F}_{0} &=\dfrac{1}{4}[\widehat{H}_{2},\widehat{H}_{-2}] -\dfrac{c_{\mathrm{q}}}{8}\mathbf{1}, \\
\widehat{F}_{1} &=\dfrac{1}{5}[\widehat{H}_{3},\widehat{H}_{-2}], \\
\widehat{F}_{-1} &=\dfrac{1}{5}[\widehat{H}_{2},\widehat{H}_{-3}].
\end{align}$$

These formulas use only modes with $\displaystyle{|p|\geqslant 2}$. They immediately obey

$$\begin{align}
[\widehat{F}_{u},\widehat{H}_{p}] &=(u-p)\widehat{H}_{u+p}, & p&\in I_{>}, \\
\widehat{F}_{u}^{\dagger}&=\widehat{F}_{-u}, & \widehat{F}_{u}|0\rangle&=0,
\end{align}$$

because they are exact identities for $\displaystyle{\widehat{H}_{u}}$. In particular, the scalar subtraction in $\displaystyle{\widehat{F}_{0}}$ is forced by

$$\begin{align}
[\widehat{H}_{2},\widehat{H}_{-2}] &=4\widehat{H}_{0}+\dfrac{c_{\mathrm{q}}}{2}\mathbf{1};
\end{align}$$

it is precisely the ordering correction that makes $\displaystyle{\widehat{F}_{0}|0\rangle=0}$. The representatives with different $\displaystyle{n}$ are equal; their equality is a useful consistency relation in a presentation that takes only the higher modes as generators.

This solves the operator-reconstruction problem without an infinite normal-ordering expansion. A distinct question is to express these operators as fully normal-ordered *commutative symbols* in independently chosen Darboux oscillators. Such a symbol depends on the quantization map and regulator, and its semiclassical expansion begins with the $\displaystyle{F_{u}}$ derived above. It carries no additional operator information once the finite commutator identities and the Virasoro representation have been fixed.

The classical counterpart is also exact as a Poisson-algebra identity:

$$\begin{align}
F_{0}^{[n]} &=\dfrac{i}{2n}\{H_{n},H_{-n}\}_{\mathrm{P}} -\dfrac{c_{\mathrm{cl}}}{24}(n^{2}-1)=H_{0}, \\
F_{1}^{[n]} &=\dfrac{i}{2n+1}\{H_{n+1},H_{-n}\}_{\mathrm{P}}=H_{1}, \\
F_{-1}^{[n]} &=\dfrac{i}{2n+1}\{H_{n},H_{-(n+1)}\}_{\mathrm{P}}=H_{-1}.
\end{align}$$

This Poisson-algebra reconstruction should not be confused with the pointwise commutative inversion $\displaystyle{H_{u}=F_{u}[\{H_{|p|\geqslant2}\}]}$ developed earlier: evaluating a Poisson bracket also uses the symplectic structure. At the quantum level, by contrast, the commutator is part of the associative product, so the three low modes genuinely belong to the algebra generated by the higher modes.

The symbolic checks of the $\displaystyle{n}$-independence, adjoint relation, action on higher modes, central subtraction, Brown--Henneaux normalization and zeta shift are recorded in `quantum_higher_charge_reconstruction.wl`.

### A Virasoro Presentation with Only Higher Generators

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

### Vacuum-Normal Symbol from Gram-Matrix Recursion

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

### Second-Order Star Product and the Cutoff Obstruction

There is a complementary deformation quantization directly in the higher-charge chart. Introduce an explicit bookkeeping parameter $\displaystyle{\hbar}$ and write the exact reduced Poisson tensor as $\displaystyle{P^{ab}(H)}$, where $\displaystyle{a,b\in I_{>}}$. In the standard second-order Kontsevich representative, the product is

$$\begin{align}
f\star g &=fg+\dfrac{i\hbar}{2}P^{ab}\partial _{a}f\,\partial _{b}g \\
&\quad-\dfrac{\hbar ^{2}}{8}P^{ab}P^{cd} \partial _{a}\partial _{c}f\,\partial _{b}\partial _{d}g \\
&\quad-\dfrac{\hbar ^{2}}{12}P^{ab}(\partial _{b}P^{cd}) \left( \partial _{a}\partial _{c}f\,\partial _{d}g -\partial _{c}f\,\partial _{a}\partial _{d}g \right)+\mathcal{O}(\hbar ^{3}).
\end{align}$$

Associativity through $\displaystyle{\mathcal{O}(\hbar ^{2})}$ is equivalent to the Jacobi identity for $\displaystyle{P}$. Since $\displaystyle{P^{>}}$ is the Poisson tensor induced on the exact charge chart, the product is associative to this order. For the linear coordinate functions the second-order bidifferential terms vanish, and hence

$$\begin{align}
H_{p}\star H_{q}-H_{q}\star H_{p} &=i\hbar P_{pq}^{>}(H)+\mathcal{O}(\hbar ^{3}) \\
&=\hbar\left[ (p-q)H_{p+q} +\dfrac{c_{\mathrm{cl}}}{12}p(p^{2}-1)\delta _{p+q,0} \right]+\mathcal{O}(\hbar ^{3}).
\end{align}$$

At this tree-level stage the central coefficient is $\displaystyle{c_{\mathrm{cl}}}$. The one-loop replacement by $\displaystyle{c_{\mathrm{q}}=c_{\mathrm{cl}}+13}$ belongs to the effective measure/action and is not generated by the local second-order bidifferential formula alone.

A hard mode cutoff is not a consistent shortcut. For example, retain only

$$\begin{align}
I_{6}&=\{-6,-5,\ldots ,-2,2,\ldots ,5,6\}
\end{align}$$

and set every low or out-of-window charge produced by a bracket to zero. The projected Witt bracket already violates Jacobi, and the induced second-order product gives the explicit associator

$$\begin{align}
(H_{-3}\star H_{2})\star H_{-2} -H_{-3}\star(H_{2}\star H_{-2}) &=-\dfrac{7}{6}\hbar ^{2}H_{-3} +\mathcal{O}(\hbar ^{3}).
\end{align}$$

Thus a calculation may use finitely many *displayed* modes, but it must retain every intermediate mode and the composite $\displaystyle{H_{0,\pm1}}$ required at the perturbative order under consideration. Equivalently, one may use the finite-level vacuum-module matrices above: their product is associative exactly, although the top-level projection introduces a separate boundary artifact. The hard mode window itself is not a finite-dimensional Poisson submanifold.

The formula, the full Virasoro Jacobi identity, the coordinate star commutator, an associative $\displaystyle{\mathfrak{su}(2)}$ control example and the hard-cutoff counterexample are checked in `higher_charge_star_product.wl`. The Kontsevich and vacuum-normal products correspond to different symbol maps and are related, order by order, by an equivalence transformation rather than by equality of their displayed coefficients; see [Kontsevich](https://arxiv.org/abs/q-alg/9709040).

### Local One-Loop Effective Symplectic Form

The statement that the shift $\displaystyle{C\to C+13}$ renormalizes the symplectic form is correct under a precise condition: it applies to the *local renormalized orbit action*. For the exceptional orbit, $\displaystyle{PSL(2,\mathbb{R})}$ invariance and Lorentz invariance allow only one local marginal counterterm, namely the Alekseev--Shatashvili Lagrangian itself. Its coefficient is one-loop exact. If $\displaystyle{\varphi}$ denotes a fixed orbit coordinate, then

$$\begin{align}
S_{C}[\varphi]&=C S_{1}[\varphi], & \alpha _{C}[\varphi]&=C\alpha _{1}[\varphi], & \omega _{C}[\varphi]&=C\omega _{1}[\varphi], \\
\Gamma _{\mathrm{loc}}[\varphi] &=(C+13)S_{1}[\varphi], & \boxed{\omega _{\mathrm{eff}}[\varphi] =\dfrac{C+13}{C}\omega _{C}[\varphi]}.
\end{align}$$

The scaling looks inverse in physical charge coordinates because the moment maps themselves scale with the same coefficient. Write $\displaystyle{c_{\mathrm{q}}=C+13}$ and normalize $\displaystyle{H_{p}}$ as the renormalized physical Virasoro charges. The effective Poisson matrix is then

$$\begin{align}
P_{pq}^{>,\mathrm{eff}}[H] &=-i(p-q)H_{p+q} -i\dfrac{c_{\mathrm{q}}}{12}p(p^{2}-1)\delta _{p+q,0}, \\
\omega _{\mathrm{eff}} &=\dfrac{1}{2}\sum_{p,q\in I_{>}} \left(P^{>,\mathrm{eff}}[H]^{-1}\right)_{pq} \delta H_{p}\wedge\delta H_{q},
\end{align}$$

where every $\displaystyle{H_{0,\pm1}}$ entry is the correspondingly renormalized composite. In particular,

$$\begin{align}
\omega _{\mathrm{eff}}^{\mathrm{vac}} &=i\dfrac{12}{c_{\mathrm{q}}}
\sum_{n=2}^{\infty} \dfrac{\delta H_{-n}\wedge\delta H_{n}}{n(n^{2}-1)}, \\
F_{0,\mathrm{eff}}^{(2)}[H] &=\dfrac{12}{c_{\mathrm{q}}}
\sum_{n=2}^{\infty}\dfrac{H_{n}H_{-n}}{n^{2}-1}.
\end{align}$$

For $\displaystyle{|p+q|\geqslant2}$, the first two inverse kernels are

$$\begin{align}
K_{pq,\mathrm{eff}}^{(0)} &=-i\dfrac{12}{c_{\mathrm{q}}p(p^{2}-1)}\delta _{p+q,0}, \\
K_{pq,\mathrm{eff}}^{(1)} &=-i\dfrac{144}{c_{\mathrm{q}}^{2}} \dfrac{p-q}{p(p^{2}-1)q(q^{2}-1)}H_{-p-q}.
\end{align}$$

At fixed physical $\displaystyle{H_{p}}$, their ratios to the bare-$\displaystyle{C}$ kernels are

$$\begin{align}
\dfrac{K_{\mathrm{eff}}^{(0)}}{K_{C}^{(0)}} &=\dfrac{C}{C+13} =1-\dfrac{13}{C}+\mathcal{O}(C^{-2}), \\
\dfrac{K_{\mathrm{eff}}^{(1)}}{K_{C}^{(1)}} &=\left(\dfrac{C}{C+13}\right)^{2} =1-\dfrac{26}{C}+\mathcal{O}(C^{-2}).
\end{align}$$

This packages the measure correction into a renormalized local Kirillov--Kostant form. It must not be quantized a second time with another $\displaystyle{+13}$ shift. Moreover, uniqueness of the local counterterm and one-loop exactness of the torus partition function do not prove that the complete off-shell 1PI action contains no finite nonlocal terms. The result established here concerns the local first-order orbit term, its moment maps and the associated effective Poisson/symplectic tensors. The scaling and finite-mode inverse checks are in `one_loop_effective_symplectic_form.wl`; the one-loop-exact renormalization argument is from [Cotler--Jensen](https://arxiv.org/abs/1808.03263).

### Liouville Measure and the Projected Determinant

The charge-coordinate Liouville measure is formally determined by the same projected operator:

$$\begin{align}
\mathrm{d}\mu _H &=\operatorname{Pf}(\omega _L)
\prod_{p\in I_{>}}\mathrm{d}H_p \\
&=\left[\det{}'P^{>}[H]\right]^{-1/2}
\prod_{p\in I_{>}}\mathrm{d}H_p \\
&=\left[\det{}'\mathcal J_H^{>}\right]^{-1/2}
\prod_{p\in I_{>}}\mathrm{d}H_p,
\end{align}$$

up to the field-independent determinant of the Fourier-index reflection in the relation between $\displaystyle{P^{>}}$ and $\displaystyle{\mathcal J_H^{>}}$. The prime means that the three stabilizer directions have been removed using the fixed-slice construction above.

At the vacuum, the eigenvalues are

$$\begin{align}
\lambda _n^{(0)} &=-i\dfrac{c_{\mathrm q}}{12}n(n^{2}-1), & |n|&\geqslant2,
\end{align}$$

so each conjugate pair contributes

$$\begin{align}
\lambda _n^{(0)}\lambda _{-n}^{(0)} &=\left[\dfrac{c_{\mathrm q}}{12}n(n^{2}-1)\right]^2, \\
\mathrm{d}\mu _H^{(0)} &\propto\prod_{n=2}^{\infty} \dfrac{12\,\mathrm{d}H_{-n}\mathrm{d}H_n} {c_{\mathrm q}n(n^{2}-1)}.
\end{align}$$

The overall infinite constant requires a regulator and cancels after the usual normalization of the phase-space path integral. Field dependence is less ambiguous. Expanding the determinant about the vacuum gives

$$\begin{align}
\delta\log\det{}'\mathcal J_H^{>} &=\operatorname{Tr}\!\left[(\mathcal J_0^{>})^{-1}\delta\mathcal J_H^{>}\right]=0
\end{align}$$

for every first-order variation $\displaystyle{\delta H_r}$ with $\displaystyle{|r|\geqslant2}$; Fourier momentum conservation forbids a diagonal trace. For a configuration with only $\displaystyle{H_r}$ and $\displaystyle{H_{-r}}$ nonzero at first order, the first nontrivial term is

$$\begin{align}
\log\dfrac{\det{}'\mathcal J_H^{>}}
{\det{}'\mathcal J_0^{>}} &=\dfrac{A_r}{c_{\mathrm q}^{\,2}}H_rH_{-r} +\mathcal O(H^3), \\
A_r &=\dfrac{432}{r^2-1} -144\!\sum_{\substack{p\in I_{>},\\
p+r\in I_{>}}} \dfrac{(2p+r)^2} {p(p^2-1)(p+r)((p+r)^2-1)}.
\end{align}$$

The first term in $\displaystyle{A_r}$ is essential: it is the contribution of the monodromy-determined composite

$$\begin{align}
H_0^{(2)}&=\dfrac{12}{c_{\mathrm q}(r^2-1)}H_rH_{-r}.
\end{align}$$

The remaining path sum is absolutely convergent. The first values are

$$\begin{align}
A_2&=104, & A_3&=26, & A_4&=\dfrac{188}{25}.
\end{align}$$

Consequently,

$$\begin{align}
\log\dfrac{\mathrm{d}\mu_H}{\mathrm{d}\mu_H^{(0)}} &=-\dfrac{A_r}{2c_{\mathrm q}^{\,2}}H_rH_{-r} +\mathcal O(H^3)
\end{align}$$

on this one-pair slice. A direct finite-matrix trace expansion reproduces the same expression, and the $\displaystyle{r=2}$ coefficient approaches $\displaystyle{104}$ as the principal cutoff is increased.

It is important not to identify this static Pfaffian by itself with the $\displaystyle{+13}$ shift. The latter is fixed by the *thermal first-order path integral*, which combines the Liouville measure with the quadratic Hamiltonian evolution. Its chiral oscillator determinant is

$$\begin{align}
Z_{\mathrm{1-loop}}^{\mathrm{ch}}(q) &=q^{\frac12\sum_{n=2}^{\infty}n}
\prod_{n=2}^{\infty}\dfrac{1}{1-q^n} \\
&=q^{-13/24}\prod_{n=2}^{\infty}\dfrac{1}{1-q^n}, \\
\dfrac12\sum_{n=2}^{\infty}n &\longrightarrow\dfrac12\left(\zeta(-1)-1\right) =-\dfrac{13}{24}.
\end{align}$$

Multiplying by the classical vacuum factor gives

$$\begin{align}
q^{-C/24}Z_{\mathrm{1-loop}}^{\mathrm{ch}}(q) &=q^{-(C+13)/24}
\prod_{n=2}^{\infty}\dfrac{1}{1-q^n}.
\end{align}$$

Thus the high-charge formulation isolates two logically distinct determinant statements: $\displaystyle{\det{}'\mathcal J_H^{>}}$ supplies the field-dependent Liouville density, while the regulated thermal product over the same $\displaystyle{n\geqslant2}$ modes supplies $\displaystyle{\Delta c=13}$. The vacuum pair determinant, vanishing linear variation, quadratic coefficients and zeta shift are checked in `higher_charge_liouville_determinant.wl`. The regulator-dependent overall static normalization is not assigned physical meaning.

Computing the cubic background variation

$$\begin{align}
\delta\log\det{}'\mathcal J_H^{>} &=\operatorname{Tr}'\!\left[ (\mathcal J_H^{>})^{-1}\delta\mathcal J_H^{>} \right]
\end{align}$$

would therefore not constitute a new derivation of $\displaystyle{+13}$. The Alekseev--Shatashvili measure is already known exactly in the finite-diffeomorphism variable, and the exact thermal character with $\displaystyle{c=C+13}$ is fixed by localization. A cubic calculation in $\displaystyle{H}$ coordinates would instead test three more limited statements: that the nonlinear Jacobian from $\displaystyle{f}$ to the higher charges has been implemented correctly, that the fixed-slice determinant agrees with the known orbit measure, and that two regulators differ only by allowed local normalizations or counterterms. The field-dependent coefficients of a static coordinate density may be rearranged by a change of coordinates or local subtraction; the thermal vacuum-character exponent, after fixing the bulk-induced measure and the renormalized definition of $\displaystyle{c}$, is the physical statement. Thus this calculation is a useful consistency check, but it is not required to establish the shift quoted above.

### Vacuum Correlators and Ward Identities

The charge variables are themselves observables, so their quantum correlators require no transformation back to metric modes. We use ordered cylinder-mode correlators

$$\begin{align}
\langle n_1\cdots n_k\rangle &:=\langle0|\widehat H_{n_1}\cdots\widehat H_{n_k}|0\rangle,
\end{align}$$

with the displayed operator order kept fixed. Define

$$\begin{align}
A_n&:=\dfrac{c_{\mathrm q}}{12}n(n^2-1), & n&\geqslant2.
\end{align}$$

The exact two-point function is

$$\begin{align}
\boxed{\langle n,-m\rangle=A_n\delta _{nm}}, & n,m&\geqslant2.
\end{align}$$

For two positive modes followed by the compensating negative mode, the ordered three-point function is

$$\begin{align}
\boxed{ \langle m,n,-m-n\rangle =(m+2n)A_m}, & m,n&\geqslant2.
\end{align}$$

This is not symmetric under $\displaystyle{m\leftrightarrow n}$: the difference is exactly the correlator of the commutator $\displaystyle{[\widehat H_m,\widehat H_n]=(m-n)\widehat H_{m+n}}$. For example,

$$\begin{align}
\langle2,3,-5\rangle&=4c_{\mathrm q}, & \langle3,2,-5\rangle&=14c_{\mathrm q}.
\end{align}$$

The first useful four-point family has the closed form

$$\begin{align}
\langle m,n,-n,-m\rangle &=A_mA_n+\delta _{mn}A_m^2+2mnA_m \\
&\quad+\Theta(m-n-1)(m+n)^2A_{m-n},
\end{align}$$

where $\displaystyle{\Theta(k)=1}$ for integer $\displaystyle{k\geqslant0}$ and vanishes otherwise. Subtracting all allowed pairings gives

$$\begin{align}
\langle m,n,-n,-m\rangle_{\mathrm c} &=2mnA_m +\Theta(m-n-1)(m+n)^2A_{m-n}.
\end{align}$$

Some low-level examples are

$$\begin{align}
\langle2,2,-2,-2\rangle &=\dfrac{c_{\mathrm q}(c_{\mathrm q}+8)}{2}, & \langle2,2,-2,-2\rangle_{\mathrm c}&=4c_{\mathrm q}, \\
\langle2,3,-3,-2\rangle &=c_{\mathrm q}(c_{\mathrm q}+6), & \langle2,3,-3,-2\rangle_{\mathrm c}&=6c_{\mathrm q}, \\
\langle4,2,-2,-4\rangle &=\dfrac{c_{\mathrm q}(5c_{\mathrm q}+196)}{2}, & \langle4,2,-2,-4\rangle_{\mathrm c}&=98c_{\mathrm q}.
\end{align}$$

All higher ordered vacuum correlators follow from the adjacent-exchange Ward identity

$$\begin{align}
&\langle\mathcal A,m,n,\mathcal B\rangle -\langle\mathcal A,n,m,\mathcal B\rangle \\
&\quad=(m-n)\langle\mathcal A,m+n,\mathcal B\rangle +\dfrac{c_{\mathrm q}}{12}m(m^2-1)\delta _{m+n,0} \langle\mathcal A,\mathcal B\rangle,
\end{align}$$

together with $\displaystyle{\widehat H_n|0\rangle=0}$ for $\displaystyle{n\geqslant-1}$ and its adjoint. This supplies an exact terminating recursion, not merely a large-$\displaystyle{c}$ expansion. The barred algebra commutes with the unbarred algebra and the vacuum is a tensor product, hence

$$\begin{align}
\langle\mathcal A(H)\mathcal B(\bar H)\rangle &=\langle\mathcal A(H)\rangle \langle\mathcal B(\bar H)\rangle,
\end{align}$$

so every mixed connected correlator vanishes in the vacuum-orbit theory.

There is also a precise relation between the vacuum-normal symbol and the Kontsevich/Weyl symbol. At the vacuum tangent space, the Poisson tensor is constant and each pair has $\displaystyle{[\widehat H_n,\widehat H_{-n}]=\hbar A_n}$. Let $\displaystyle{\star_{\mathrm W}}$ be the Wick product associated with the vacuum-normal symbol and $\displaystyle{\star_{\mathrm M}}$ the Moyal reduction of the Kontsevich product. Then

$$\begin{align}
T_0(f\star_{\mathrm W}g) &=(T_0f)\star_{\mathrm M}(T_0g), \\
T_0 &=\exp\!\left[-\dfrac{\hbar}{2}
\sum_{n=2}^{\infty}A_n \dfrac{\partial^2}{\partial H_n\partial H_{-n}}\right].
\end{align}$$

For instance,

$$\begin{align}
H_n\star_{\mathrm W}H_{-n} &=H_nH_{-n}+\hbar A_n, \\
H_n\star_{\mathrm M}H_{-n} &=H_nH_{-n}+\dfrac{\hbar A_n}{2},
\end{align}$$

and the Berezin map supplies precisely the missing half-contraction. The identity has been checked on nontrivial single-mode polynomials through $\displaystyle{\hbar^5}$. On the full nonlinear charge chart the two products quantize the same symplectic form; in a contractible vacuum neighborhood their characteristic classes agree, so a formal equivalence transformation exists order by order. The displayed $\displaystyle{T_0}$ is its vacuum term. A closed all-order nonlinear equivalence operator has not been derived.

The two-, three- and four-point formulas, a large family of exact adjacent-exchange Ward identities, left-right factorization and the vacuum Wick--Moyal map are verified in `higher_charge_vacuum_correlators.wl`.

### Nonlinear Finite-Diffeomorphism Benchmark

To test whether the charge-coordinate form is useful beyond a formal expansion, consider the two-parameter family

$$\begin{align}
f(\phi;\epsilon,\eta) &=\phi+\epsilon\sin(2\phi)+\eta\cos(2\phi).
\end{align}$$

At $\displaystyle{\eta=0}$, this is an orientation-preserving circle diffeomorphism for $\displaystyle{|\epsilon|<1/2}$. Two parameters are essential: the pullback of a two-form to a one-parameter family would vanish identically and could not test the symplectic structure.

For the exceptional orbit with vacuum subtraction, the exact classical charges used in the benchmark are

$$\begin{align}
H_{p}[f] &=\dfrac{1}{2\pi}\int_{0}^{2\pi}\mathrm{d}\phi\, e^{ip\phi} \left[ -\dfrac{C}{24}(f'^{2}-1) -\dfrac{C}{12}\{f,\phi\} \right], \\
\{f,\phi\} &:=\dfrac{f'''}{f'}-\dfrac{3}{2}\left(\dfrac{f''}{f'}\right)^{2}.
\end{align}$$

The direct orbit-coordinate result follows from the exact Kirillov--Kostant form

$$\begin{align}
\omega &=-\dfrac{C}{48\pi}\int_{0}^{2\pi}\mathrm{d}\phi\, \left[ \dfrac{\delta f'\wedge\delta f''}{f'^{2}} -\delta f\wedge\delta f' \right].
\end{align}$$

For each cutoff $\displaystyle{N}$, the comparison calculation retains tangent components $\displaystyle{\delta H_{p}}$ with $\displaystyle{2\leqslant|p|\leqslant N}$, forms the corresponding principal matrix $\displaystyle{P_{N}}$, inverts it exactly, and evaluates

$$\begin{align}
\omega_{\epsilon\eta}^{(N)} &=(\partial _{\epsilon}H)^{\mathsf{T}} P_{N}^{-1}(\partial _{\eta}H).
\end{align}$$

This principal-matrix calculation is a numerical approximation to the infinite inverse; unlike the hard bracket projection discussed above, it is not being asserted to define a separate finite-dimensional Poisson algebra.

With $\displaystyle{C=100}$ and $\displaystyle{\epsilon=0.1}$, the direct value is

$$\begin{align}
\omega_{\epsilon\eta}^{\mathrm{direct}} &=27.104886324988109\ldots .
\end{align}$$

The charge-coordinate pullback converges rapidly:

| $\displaystyle{N}$ | $\displaystyle{\omega_{\epsilon\eta}^{(N)}}$ |                      relative error |
| -----------------: | -------------------------------------------: | ----------------------------------: |
|                  4 |                                27.0099338842 |  $\displaystyle{3.50\times10^{-3}}$ |
|                  6 |                                27.1025656440 |  $\displaystyle{8.56\times10^{-5}}$ |
|                  8 |                                27.1048398849 |  $\displaystyle{1.71\times10^{-6}}$ |
|                 10 |                                27.1048855045 |  $\displaystyle{3.03\times10^{-8}}$ |
|                 12 |                                27.1048863117 | $\displaystyle{4.91\times10^{-10}}$ |
|                 14 |                                27.1048863248 | $\displaystyle{7.48\times10^{-12}}$ |

The Neumann criterion is controlled by the spectral radius

$$\begin{align}
r_{N}(\epsilon) &:=\rho\!\left(\mathsf{C}_{N}^{-1}L_{N}\right).
\end{align}$$

At $\displaystyle{N=12}$, the relative error of the Neumann approximation to the inverse matrix behaves as follows:

| $\displaystyle{\epsilon}$ | $\displaystyle{\min f'}$ | $\displaystyle{r_{12}}$ |                            order 0 |                            order 2 |                            order 4 |                             order 7 |
| ------------------------: | -----------------------: | ----------------------: | ---------------------------------: | ---------------------------------: | ---------------------------------: | ----------------------------------: |
|                      0.02 |                     0.96 |                  0.0199 | $\displaystyle{8.32\times10^{-3}}$ | $\displaystyle{3.21\times10^{-6}}$ | $\displaystyle{1.26\times10^{-9}}$ | $\displaystyle{2.09\times10^{-14}}$ |
|                      0.05 |                     0.90 |                  0.0510 | $\displaystyle{2.10\times10^{-2}}$ | $\displaystyle{5.23\times10^{-5}}$ | $\displaystyle{1.34\times10^{-7}}$ | $\displaystyle{3.49\times10^{-11}}$ |
|                      0.10 |                     0.80 |                  0.1078 | $\displaystyle{4.35\times10^{-2}}$ | $\displaystyle{4.86\times10^{-4}}$ | $\displaystyle{5.70\times10^{-6}}$ |  $\displaystyle{1.23\times10^{-8}}$ |
|                      0.20 |                     0.60 |                  0.2577 | $\displaystyle{9.90\times10^{-2}}$ | $\displaystyle{6.86\times10^{-3}}$ | $\displaystyle{4.96\times10^{-4}}$ |  $\displaystyle{1.13\times10^{-5}}$ |
|                      0.35 |                     0.30 |                  0.7419 | $\displaystyle{2.42\times10^{-1}}$ | $\displaystyle{1.68\times10^{-1}}$ | $\displaystyle{1.02\times10^{-1}}$ |  $\displaystyle{4.44\times10^{-2}}$ |

The deterioration near $\displaystyle{|\epsilon|=1/2}$ has two independent causes: the Neumann spectral radius approaches one, and the Fourier coefficients decay more slowly as $\displaystyle{\min f'}$ approaches zero. The second effect is visible at $\displaystyle{\epsilon=0.35}$: increasing $\displaystyle{N}$ from $\displaystyle{12}$ to $\displaystyle{16}$ and $\displaystyle{20}$ reduces the direct pullback error from $\displaystyle{5.24\times10^{-3}}$ to $\displaystyle{3.05\times10^{-4}}$ and $\displaystyle{1.53\times10^{-5}}$, respectively.

This benchmark gives a positive answer to the original practical question. For a smooth finite diffeomorphism well inside the vacuum patch, the charge variables reduce the nonlinear symplectic calculation to Fourier transforms plus one structured matrix inverse, and the Neumann expansion converges rapidly. This is simpler than pulling back the full nonlinear metric perturbation to oscillator coefficients. The simplification becomes progressively weaker near the boundary of the orientation-preserving orbit chart.

All quoted integrations use 45-digit working precision. The exact inverse residuals are below $\displaystyle{10^{-25}}$, the vacuum normalization is independently calibrated, all sampled maps obey $\displaystyle{\min f'>0}$, and the full scans are reproduced by `nonlinear_charge_symplectic_benchmark.wl`. The benchmark demonstrates convergence for this family; it is not a proof of uniform convergence over the whole orbit.

### Literature and Novelty Audit

The relevant primary literature separates the established coadjoint-orbit structure from the coordinate-level formulas derived here. The audit below is deliberately conservative: “not located” means not found in the cited primary sources and targeted searches, not a proof of mathematical priority.

| Result                                                                                                                                                                                  | Prior literature                                                                                                             | Audit verdict                                                                                                                                                  |     |                                                                                                                                                |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| Virasoro coadjoint orbits, their Kirillov--Kostant form, exceptional $\displaystyle{\operatorname{Diff}(S^1)/PSL(2,\mathbb R)}$ orbit and stabilizer equation                           | [Witten](https://doi.org/10.1007/BF01218287); [Balog--Fehér--Palla](https://arxiv.org/abs/hep-th/9703045)                    | Established structure. The Poisson operator and the three Hill-bilinear stabilizers are not new.                                                               |     |                                                                                                                                                |
| Classification by Hill monodromy conjugacy class together with a discrete winding/zero invariant                                                                                        | [Witten](https://doi.org/10.1007/BF01218287); [Balog--Fehér--Palla](https://arxiv.org/abs/hep-th/9703045)                    | Established. Imposing $\displaystyle{M=-\mathbf1}$ to select the global-AdS exceptional orbit is standard.                                                     |     |                                                                                                                                                |
| Closed vacuum Green function, transport by a finite diffeomorphism, and the two fixed-Fourier finite-rank corrections $\displaystyle{1-E(KE)^{-1}K}$ and $\displaystyle{1-Z(RZ)^{-1}R}$ | Standard ingredients occur in the orbit literature above, but this assembled fixed-slice inverse was not located             | Candidate technical contribution. Its value is the explicit charge-coordinate inverse, not a new symplectic form.                                              |     |                                                                                                                                                |
| Solving $\displaystyle{H_{0,\pm1}}$ from the three monodromy equations, the explicit vacuum Jacobian, and the global transversality proof for the higher-mode slice                     | Orbit classification is standard, but this Fourier-coordinate reconstruction was not located                                 | Candidate technical contribution. The strongest result is local nondegeneracy at every smooth point of the exceptional orbit; global injectivity remains open. |     |                                                                                                                                                |
| Generating the complete Virasoro algebra from higher generators                                                                                                                         | [Fairlie--Nuyts--Zachos](https://doi.org/10.1007/BF01218387) prove the stronger fact that two suitable generators suffice    | Not new as an abstract algebraic result. The present all-$\displaystyle{                                                                                       | p   | \geqslant2}$ presentation is a physically adapted repackaging that makes the low-charge elimination and vacuum-module interpretation explicit. |
| Alekseev--Shatashvili measure, vacuum character and exact $\displaystyle{c=C+13}$ shift                                                                                                 | [Alekseev--Shatashvili](https://doi.org/10.1016/0550-3213(89)90130-2); [Cotler--Jensen](https://arxiv.org/abs/1808.03263)    | Established, including the zeta sum and localization argument. The $\displaystyle{+13}$ shift must not be presented as new here.                               |     |                                                                                                                                                |
| Static Liouville density $\displaystyle{[\det{}'\mathcal J_H^>]^{-1/2}}$ and its explicit quadratic coefficients in higher-charge coordinates                                           | The exact measure is known in the diffeomorphism variable; these $\displaystyle{H}$-coordinate coefficients were not located | Candidate coordinate-level calculation and regulator check, not an independent anomaly or central-charge derivation.                                           |     |                                                                                                                                                |

Accordingly, the defensible new claim tier is not a new quantization of the Virasoro vacuum orbit. It is an explicit higher-charge coordinate package: projected Green kernel, nonperturbative low-mode reconstruction, global transversality of the fixed Fourier slice, charge-coordinate measure coefficients and a physically adapted operator presentation. A broader priority claim would require a more exhaustive mathematical literature review.

### Other Monodromy Classes and General Brown--Henneaux Backgrounds

For a real Hill problem the conjugacy class of $\displaystyle{M\in SL(2,\mathbb R)}$ is characterized, at the elementary level, by its trace:

| Class       | Monodromy                      | Constant Hill representative in the present sign convention        | Typical bulk interpretation                                                                   |                                                                           |                                                          |
| ----------- | ------------------------------ | ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | -------------------------------------------------------- |
| exceptional | $\displaystyle{M=\pm\mathbf1}$ | $\displaystyle{\mathcal L=-n^2/4}$ with integer $\displaystyle{n}$ | $\displaystyle{n=1}$ is global AdS$_3$; higher covers give exceptional/conical-excess sectors |                                                                           |                                                          |
| elliptic    | $\displaystyle{                | \operatorname{tr}M                                                 | <2}$                                                                                          | $\displaystyle{\mathcal L=-\nu^2/4}$ with noninteger $\displaystyle{\nu}$ | horizon-free particle or ordinary conical-defect sectors |
| parabolic   | $\displaystyle{                | \operatorname{tr}M                                                 | =2}$ but $\displaystyle{M\neq\pm\mathbf1}$                                                    | $\displaystyle{\mathcal L=0}$                                             | Poincaré AdS$_3$ or massless-BTZ-type sector             |
| hyperbolic  | $\displaystyle{                | \operatorname{tr}M                                                 | >2}$                                                                                          | $\displaystyle{\mathcal L=b^2>0}$                                         | BTZ black holes and their Virasoro descendants           |

The trace alone is not the full orbit label: in the universal cover one must also retain the discrete winding or zero-count invariant. “Conical sector” is also used for two related but distinct cases: generic elliptic particle/defect orbits, and exceptional integer-cover conical excesses, the latter having enlarged stabilizers and generally nonunitary semiclassical quantizations. See [Balog--Fehér--Palla](https://arxiv.org/abs/hep-th/9703045), [Sheikh-Jabbari--Yavartanoo](https://arxiv.org/abs/1603.05272) and [Raeymaekers](https://arxiv.org/abs/1412.0278).

One can study general asymptotically AdS$_3$ solutions directly at the classical level. In pure Einstein gravity with Brown--Henneaux boundary conditions, the general Bañados metric is specified by two arbitrary periodic functions $\displaystyle{\mathcal L_+(x^+)}$ and $\displaystyle{\mathcal L_-(x^-)}$; the two Hill monodromies identify the left and right Virasoro orbits. However, the present prescription cannot simply be copied with $\displaystyle{|p|\geqslant2}$ on every orbit:

1. The vacuum exceptional orbit has a three-dimensional $\displaystyle{PSL(2,\mathbb R)}$ stabilizer, which is why precisely three modes are removed. A generic elliptic, parabolic or hyperbolic orbit has only a one-dimensional stabilizer, so removing $\displaystyle{0,\pm1}$ would discard two physical directions.
2. Monodromy/Floquet data are Casimirs labelling different symplectic leaves. To describe the union of general Bañados backgrounds, these orbit invariants must be retained as additional variables; the Kirillov--Kostant form is inverted only after fixing a leaf.
3. A finite boundary diffeomorphism changes Virasoro hair within one orbit but cannot change the monodromy class. Global AdS$_3$, BTZ and conical backgrounds are therefore different sectors, not large-amplitude points of the same vacuum chart.
4. Orbit-by-orbit classical Green kernels can still be constructed from the corresponding Hill solutions and an adapted one-dimensional stabilizer projection. Their quantizations need not be vacuum modules, and global bulk topology may impose additional constraints, especially for two-sided BTZ geometries.

Thus the answer is: general Brown--Henneaux backgrounds are directly accessible, but only after replacing the universal “higher modes only” prescription by “orbit invariants plus coordinates adapted to the stabilizer of each orbit.” The natural next controlled extension would be a single constant hyperbolic orbit $\displaystyle{\mathcal L=b^2}$, not the union of all asymptotically AdS$_3$ sectors at once.

### Geometric Interpretation and Claim Boundary

Geometrically, the chiral classical phase space is the vacuum orbit

$$\begin{align}
\mathcal{O}_{\mathrm{vac}} &=\operatorname{Vir}/PSL(2,\mathbb{R})
\end{align}$$

with the Kirillov--Kostant form $\displaystyle{\omega _{L}=(P^{>})^{-1}}$. Choosing the positive modes as the complex polarization and quantizing the corresponding prequantum line bundle gives the vacuum Virasoro module. The inverse symplectic form supplies the classical geometry, while the polarization, adjoint, inner product, quantum central charge and composite-operator ordering are additional parts of the quantization.

This construction quantizes the perturbative boundary-graviton sector of the global-AdS vacuum orbit and, for the specified bulk-induced measure, fixes $\displaystyle{\Delta c=13}$. It does not by itself include other Virasoro orbits, BTZ or conical sectors, or prove a modular-invariant completion of pure AdS$_{3}$ gravity. For generic $\displaystyle{c_{\mathrm{q}}>1}$, the vacuum module is understood after quotienting the $\displaystyle{\widehat{H}_{-1}|0\rangle}$ null module generated by the global conformal stabilizer.

**Verified.** The finite-diffeomorphism conjugation identity and projected Green kernel; global transversality of the fixed higher-mode slice and its $\displaystyle{148}$-sample stress test; the monodromy reconstruction and determinant relation; the vacuum and quadratic projected determinant together with the thermal $\displaystyle{+13}$ shift; exact two-, three- and four-point charge correlators, Ward recursion, chiral factorization and the vacuum Wick--Moyal map; the pure higher-generator Virasoro presentation and vacuum-module equivalence; the triangular vacuum-normal symbol through level eight; the second-order star product and hard-cutoff obstruction; the local effective symplectic renormalization; and the nonlinear two-parameter benchmark have independent symbolic or numerical checks in the eleven companion Wolfram scripts.

**Assumptions.** Brown--Henneaux boundary conditions; the global-AdS exceptional monodromy branch $\displaystyle{\operatorname{Vir}/PSL(2,\mathbb{R})}$; the bulk-induced Alekseev--Shatashvili measure and zeta prescription; $\displaystyle{\kappa ^2=16\pi G}$ and unit AdS radius; $\displaystyle{c_{\mathrm{q}}>1}$ for the nonsingular vacuum Gram recursion; and a smooth orientation-preserving finite diffeomorphism with $\displaystyle{f'>0}$.

**Not verified.** Global injectivity or properness of the higher-charge map; uniform analytic estimates as the boundary $\displaystyle{f'=0}$ is approached; operator-topology convergence of the infinite normal symbol; a closed nonlinear all-order equivalence map between the normal and Kontsevich symbols; a strict finite-dimensional Poisson algebra obtained by a mode cutoff; uniform convergence of principal inverses or Neumann series over the whole orbit; all higher background variations of $\displaystyle{\det{}'\mathcal J_H^{>}}$; absence of finite nonlocal terms in the complete off-shell 1PI action; orbit-adapted quantization of generic Bañados sectors; and the modular completion of pure AdS$_3$ quantum gravity.
