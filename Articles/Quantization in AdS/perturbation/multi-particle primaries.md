We have constructed the 1-particle Hilbert space $\displaystyle{\mathcal{H}_{1}}$ of a free scalar on global $\displaystyle{\mathrm{AdS}_{3}}$ [[Articles/Quantization in AdS/thermodynamics of scalar in ads/canonical quantization with covariant phase formalism|canonical quantization with covariant phase formalism]]. It is spanned by a conformal primary with weights $\displaystyle{(h,\bar{h})=(\Delta/2,\Delta/2)}$ and its descendants

$$\begin{align}
\mathcal{H}_{1} & =\mathcal{V}_{\Delta/2,\Delta/2}=\mathrm{span}\left\{a^{\dagger}_{n,\bar{n}}\ket{0},n,\bar{n}\in \mathbb{N}\right\}
\end{align}$$

here $\displaystyle{\mathcal{V}_{h,\bar{h}}}$ denotes the irreducible highest-weight $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ module generated from weights $\displaystyle{(h,\bar{h})}$.

The multi-particle states are constructed by the usual bosonic Fock-space construction

$$\begin{align}
\mathcal{F} & =\bigoplus^{\infty}_{N=0}\mathcal{F}_{N}, & \mathcal{F}_{N} & =\mathrm{Sym}^{N}\mathcal{H}_{1} \\
\ket{\vec{N}}  & =\prod _{n,\bar{n}} \dfrac{(a^{\dagger}_{n,\bar{n}})^{N_{n,\bar{n}}}}{\sqrt{ N_{n,\bar{n}}! }}\ket{0} , & \sum _{n,\bar{n}}N_{n,\bar{n}} & =N
\end{align}$$

for calculation convenience, at each level we should organize these states into $\displaystyle{N}$-particle conformal primaries and their descendants. In general, we have the following decomposition

$$\begin{align}
\mathrm{Sym}^{N}\mathcal{H}_{1} & =\bigoplus_{p,q\geqslant 0}M_{N}(p,q)\mathcal{V}_{\frac{N\Delta}{2}+p,\frac{N\Delta}{2}+q}
\end{align}$$

here $\displaystyle{M_{N}(p,q)}$ is the number of independent $\displaystyle{N}$-particle primaries with weights

$$\begin{align}
h_{N;p,q} & =\dfrac{N\Delta}{2}+p, & \bar{h}_{N;p,q} & =\dfrac{N\Delta}{2}+q
\end{align}$$

and energy/angular momentum

$$\begin{align}
E_{N;p,q} & =N\Delta+p+q, & L_{N;p,q} & =q-p
\end{align}$$

## Character formula for every multiplicity

The 1-particle character is

$$\begin{align}
\chi _{1}(x,y) & =\sum ^{\infty}_{n,\bar{n}=0} x^{\Delta/2+n}y^{\Delta/2+\bar{n}} \\
 & =\dfrac{x^{\Delta/2}y^{\Delta/2}}{(1-x)(1-y)}
\end{align}$$

the bosonic plethystic exponential separates all particle-number sectors at once:

$$\begin{align}
\mathcal{Z}(\nu;x,y) & := \sum ^{\infty}_{N=0}\nu ^{N}\chi _{N}(x,y) \\
 & =\exp\left(\sum ^{\infty}_{k=1} \dfrac{\nu ^{k}}{k}\chi _{1}(x^{k},y^{k})\right) \\
 & =\prod _{n,\bar{n}=0}^{\infty} \dfrac{1}{1-\nu x^{\Delta/2+n}y^{\Delta/2+\bar{n}}}
\end{align}$$

where $\displaystyle{\chi _{N}=\chi _{\mathrm{Sym}^{N}\mathcal{H}_{1}}}$. Removing the universal weight and one copy of each descendant tower gives the primary generating function

$$\begin{align}
P_{N}(x,y) & := (1-x)(1-y)x^{-N\Delta/2}y^{-N\Delta/2}\chi _{N}(x,y) \\
 & =\sum _{p,q=0}^{\infty}M_{N}(p,q)x^{p}y^{q}
\end{align}$$

equivalently, using the cycle index of $\displaystyle{S_{N}}$

$$\begin{align}
P_{N}(x,y) & =(1-x)(1-y) \sum _{\lambda=1^{m_{1}}2^{m_{2}}\dots\vdash N} \dfrac{1}{z_{\lambda}} \prod _{j\geqslant 1} \dfrac{1}{(1-x^{j})^{m_{j}}(1-y^{j})^{m_{j}}} \\
z_{\lambda} & := \prod _{j\geqslant 1} j ^{m_{j}}m_{j}!
\end{align}$$

Here $\displaystyle{\lambda=1^{m_{1}}2^{m_{2}}\dots\vdash N}$ is the partition of $N$ into $m_j$ cycles of length $j$.

On the other hand, let

$$\begin{align}
A_{N}(p,q) & := \mathrm{dim}\mathcal{F}_{N;p,q} \\
 & =[\nu ^{N}x^{p}y^{q}]\prod _{n,\bar{n}=0}^{\infty} \dfrac{1}{1-\nu x^{n}y^{\bar{n}}}
\end{align}$$

then we have

$$\begin{align}
M_{N}(p,q) & =A_{N}(p,q)-A_{N}(p-1,q)-A_{N}(p,q-1)+A_{N}(p-1,q-1)
\end{align}$$

for $\displaystyle{N=2}$, the case we will discuss later, this reduces to

$$\begin{align}
P_{2}(x,y) & =\dfrac{1+xy}{(1-x^{2})(1-y^{2})}=\sum _{p,q\geqslant 0,p+q|2}x^{p}y^{q} \\
\mathrm{Sym}^{2}\mathcal{H}_{1} & =\bigoplus_{p,q\geqslant 0,p+q|2} \mathcal{V}_{\Delta+p,\Delta+q}
\end{align}$$

## Construction of multi-particle primaries and descendants

The $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ generators can be represented as

$$\begin{align}
L_{+1} & =\sum _{n,\bar{n}=0}^{\infty}\sqrt{ n(\Delta+n-1) }a^{\dagger}_{n-1,\bar{n}}a_{n,\bar{n}} \\
L_{0} & =\sum _{n,\bar{n}=0}^{\infty}\left(\dfrac{\Delta}{2}+n\right)a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}} \\
L_{-1} & =\sum _{n,\bar{n}=0}^{\infty}\sqrt{ (n+1)(\Delta+n) }a^{\dagger}_{n+1,\bar{n}}a_{n,\bar{n}}
\end{align}$$

with barred formulas obtained by acting on $\displaystyle{\bar{n}}$. When act the raising operator $\displaystyle{L_{+1}}$ on $\displaystyle{\ket{\vec{N}}}$, we have

$$\begin{align}
L_{+1}\ket{\vec{N}}  & =\sum _{n,\bar{n}=0}^{\infty}\sqrt{ n(\Delta+n-1) }\sqrt{ N_{n,\bar{n}}(N_{n-1,\bar{n}}+1) }\ket{\vec{N}-\vec{e}_{n,\bar{n}}+\vec{e}_{n-1,\vec{n}}}
\end{align}$$

and similarly for $\displaystyle{\bar{L}_{+1}}$. Use the finite basis

$$\begin{align}
\mathcal{F}_{N;p,q} & =\mathrm{span}\left\{\ket{\vec{N}}:\sum _{n,\bar{n}}N_{n,\bar{n}}=N,\sum _{n,\bar{n}}nN_{n,\bar{n}}=p,\sum _{n,\bar{n}}\bar{n}N_{n,\bar{n}}=q\right\}
\end{align}$$

the full primary space is exactly

$$\begin{align}
\mathcal{P}_{N;p,q} & =\mathrm{ker}\left(L_{+1}:\mathcal{F}_{N;p,q}\to \mathcal{F}_{N;p-1,q}\right)\cap \mathrm{ker}(\bar{L}_{+1}:\mathcal{F}_{N;p,q}\to \mathcal{F}_{N;p,q-1}) \\
\mathrm{dim}\mathcal{P}_{N;p,q} & =M_{N}(p,q)
\end{align}$$

thus every primary can be found be enumerating the occupation states. At each $\displaystyle{(N,p,q)}$, choose an orthonormal basis $\displaystyle{\ket{P^{\alpha}_{N;p,q}}}$ with $\displaystyle{\alpha=1,\dots,M_{N}(p,q)}$, the conformal dimensions are

$$\begin{align}
h & =\dfrac{N\Delta}{2}+p, & \bar{h} & =\dfrac{N\Delta}{2}+q
\end{align}$$

the descendants are

$$\begin{align}
\ket{P^{\alpha}_{N;p,q};r,s}  & =\dfrac{L_{-1}^{r}\bar{L}_{-1}^{s}}{\sqrt{ r!(2h)_{r}s!(2\bar{h})_{s} }}\ket{P^{\alpha}_{N;p,q}}  & r,s \in \mathbb{N} &
\end{align}$$

with energy and angular momentum

$$\begin{align}
E_{N;p,q;r,s} & =N\Delta+p+q+r+s \\
L_{N;p,q;r,s} & =q-p+s-r
\end{align}$$

## 2-particle primaries

For a 2-particle primary $\displaystyle{\ket{n,\ell \in2\mathbb{Z}}_{2}}$, we introduce

$$\begin{align}
p & =n+\max(-\ell,0), & q=n+\max(\ell,0)
\end{align}$$

then we can expand

$$\begin{align}
\ket{n,\ell} _{2} & =\dfrac{(-1)^{n}}{\sqrt{ 2 }} \sum ^{p}_{k=0}\sum ^{q}_{\bar{k}=0} c^{(p)}_{k}c^{(q)}_{\bar{k}}a^{\dagger}_{k,\bar{k}}a^{\dagger}_{p-k,q-\bar{k}}\ket{0}
\end{align}$$

and coefficients $\displaystyle{c_{k}^{(p)},c_{\bar{k}}^{(q)}}$ are determined by the following primary and normalization conditions

$$\begin{align}
L_{+1}\ket{n,\ell} _{2} & =0, & \bar{L}_{+1}\ket{n,\ell} _{2} & =0 \\
\bar{L}_{0}\ket{n,\ell} _{2} & =(\Delta+p)\ket{n,\ell} _{2}, & \bar{L}_{0}\ket{n,\ell} _{2} & =(\Delta+q)\ket{n,\ell} _{2} \\
{}_{2}\braket{ n,\ell|n',\ell' }  & =\delta _{nn'}\delta _{\ell \ell'}
\end{align}$$

for example, we have

$$\begin{align}
\ket{0,0} _{2} & =\dfrac{1}{\sqrt{ 2 }}(a^{\dagger}_{0,0})^{2}\ket{0} \\
\ket{0,+2} _{2} & =\sqrt{ \dfrac{\Delta}{2\Delta+1} }a^{\dagger}_{0,0}a^{\dagger}_{0,2}\ket{0} -\sqrt{ \dfrac{\Delta+1}{2(2\Delta+1)} }(a^{\dagger}_{0,1})^{2}\ket{0}  \\
\ket{0,-2} _{2} & =\sqrt{ \dfrac{\Delta}{2\Delta+1} }a^{\dagger}_{0,0}a^{\dagger}_{2,0}\ket{0} -\sqrt{ \dfrac{\Delta+1}{2(2\Delta+1)} }(a^{\dagger}_{1,0})^{2}\ket{0}  \\
\ket{1,0} _{2} & =\dfrac{1}{\sqrt{ 2 }}\left(a^{\dagger}_{0,1}a^{\dagger}_{1,0}-a^{\dagger}_{0,0}a^{\dagger}_{1,1}\right)\ket{0}  \\
\dots
\end{align}$$

---

Consider the wavefunction

$$\begin{align}
F_{n}(x) & := \braket{ 0|\phi ^{2}(x)|n,0 } _{2} \\
 & =C_{n}\dfrac{e^{-i(2\Delta+2n)t}}{(1+r^{2})^{\Delta+n}}
\end{align}$$

the form is fixed by isometry. At the center $\displaystyle{r=0}$, only the spin-0 1-particle modes contribute

$$\begin{align}
\Phi _{k,k}(t,0) & =\dfrac{(-1)^{k}}{\sqrt{ 2\pi }} e^{-i(\Delta+2k)t}
\end{align}$$

then we have

$$\begin{align}
F_{n}(t,0) & =(-1)^{n}\sqrt{ 2 }\sum ^{n}_{k=0}(c_{k}^{(n)})^{2}\Phi _{k,k}(t,0)\Phi _{n-k,n-k}(t,0) \\
 & =\dfrac{1}{\sqrt{ 2 }\pi}e^{-i(2\Delta+2n)t}\implies C_{n}=\dfrac{1}{\sqrt{ 2 }\pi} \\
\implies F_{n}(x) & =\dfrac{1}{\sqrt{ 2 }\pi} \dfrac{e^{-(2\Delta+2n)t}}{(1+r^{2})^{\Delta+n}}
\end{align}$$

for $\displaystyle{\phi ^{4}}$-interaction

$$\begin{align}
V & =\dfrac{\mu}{4!}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ -g }\phi ^{4}
\end{align}$$

consider the matrix elements

$$\begin{align}
V_{mn} & ={}_{2}\braket{ m,0|V|n,0 } _{2} \\
 & =\dfrac{\mu}{4}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ -g }{}_{2}\braket{ m,0|\phi ^{2}(x)|0 } \braket{ 0|\phi ^{2}(x)|n,0 } _{2} \\
 & =\dfrac{\mu}{4}\int _{0}^{2\pi}\mathrm{d}\phi \int _{0}^{\infty}\mathrm{d}r r  \dfrac{1}{2\pi ^{2}} \dfrac{e^{i(2\Delta+2m)t}}{(1+r^{2})^{\Delta+m}} \dfrac{e^{-i(2\Delta+2n)t}}{(1+r^{2})^{\Delta+n}} \\
 & =\dfrac{\mu}{8\pi} \dfrac{e^{-2i(n-m)t}}{2\Delta+m+n-1}
\end{align}$$
