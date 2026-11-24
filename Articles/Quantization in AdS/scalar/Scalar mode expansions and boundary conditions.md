## Dirichlet to Neumann on an Interval

Consider a free scalar field on 1+1 dimensional flat space

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}x^{2}, & x \in[0,L]
\end{align}$$

with the action

$$\begin{align}
S & =\dfrac{1}{2}\int_{t_i}^{t_f}\mathrm{d}t\int_0^L\mathrm{d}x\left(\dot{\phi}^{2}-\phi'^{2}-m^{2}\phi ^{2}\right).
\end{align}$$

At boundaries $\displaystyle{x=0}$ and $\displaystyle{x=L}$, we impose the Dirichlet boundary condition,

$$\begin{align}
\phi|_{x=0} & =\phi|_{x=L}=0
\end{align}$$

the normalized spatial mode functions are

$$\begin{align}
\phi _{n}(x) & =\sqrt{ \dfrac{2}{L} }\sin \dfrac{n\pi x}{L}, & \lambda_n & =m^2+\left(\dfrac{n\pi}{L}\right)^2,\qquad n=1,2,\ldots .
\end{align}$$

Now expand

$$\begin{align}
\phi(t,x) & = \sum _{n=1}^{\infty}q_{n}(t)\phi _{n}(x)+q(t)h(x).
\end{align}$$

Here the trial function $\displaystyle{h(x)}$ satisfies

$$\begin{align}
h(0)&=0,\qquad h(L)\neq0
\end{align}$$

For example, we take

$$\begin{align}
h(x) & =\sqrt{\dfrac3L}\dfrac{x}{L}.
\end{align}$$

Plug the ansatz into the action and integrate over $x$, we have

$$\begin{align}
S & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\left(\dfrac{1}{2}\dot{Q}^{T}G\dot{Q}-\dfrac{1}{2}Q^{T}KQ\right) \\
Q & =(q,q_{1},\dots)^{T} \\
G_{ij} & =\int _{0}^{L}\mathrm{d}xu_{i}u_{j} \\
K_{ij} & =\int _{0}^{L}\mathrm{d}x(u'_{i}u'_{j}+m^{2}u_{i}u_{j})
\end{align}$$

it can be shown that

$$\begin{align}
G_{hh} & =1, & G_{hn} & =\dfrac{\sqrt{ 6 }(-1)^{n+1}}{n\pi}, & G_{nk} & =\delta _{nk}, \\
K_{hh} & =m^{2}+\dfrac{3}{L^{2}}, & K_{hn} & =m^{2}G_{hn}, & K_{nk} & =\lambda _{n}\delta _{nk}.
\end{align}$$

Write $\displaystyle{k^{2}=\omega ^{2}-m^{2}}$. Consider the generalized eigenvalue problem

$$\begin{align}
Kv & =\omega ^{2}Gv \\
\implies \det(K-\omega ^{2}G) & =0 \\
 & =\prod ^{\infty}_{n=1}\left( \dfrac{n^{2}\pi ^{2}}{L^{2}}-k^{2} \right) \dfrac{3k}{L}\cot kL \\
\implies \omega ^{2}_{a} & =m^{2}+\dfrac{(2a+1)^{2}\pi ^{2}}{4L^{2}},\quad a\in \mathbb{N}
\end{align}$$

these are frequencies for BVP with $\displaystyle{\phi(0)=0}$ and $\displaystyle{\phi'(L)=0}$.

## Standard to Alternative Quantization

Consider a scalar field on global $\displaystyle{\mathrm{AdS}_{3}}$

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2} \\
\mu ^{2} & =\Delta(\Delta-2),\quad 0<\Delta< 1
\end{align}$$

with the renormalized action

$$\begin{align}
S_{R} & =-\dfrac{1}{2}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2})-\dfrac{\Delta}{2}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\phi ^{2}
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S_{R} & =\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla ^{2}\phi-\mu ^{2}\phi\right)\delta \phi-\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }(n^{\mu}\nabla _{\mu}+\Delta)\phi \delta \phi \\
 & +\int _{\Sigma _{R,f}-\Sigma _{R,i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

for "fast branch" or standard quantization, we impose the Dirichlet boundary condition that $\displaystyle{\delta \phi|_{\Gamma _{R}}=0}$, and for "slow branch" or alternative quantization, we impose the Robin boundary condition that $\displaystyle{(n^{\mu}\nabla _{\mu}+\Delta)\phi|_{\Gamma _{R}}=0}$.

The normalizable spatial mode functions, up to overall normalization, are

$$\begin{align}
\psi _{nm}(r) & =r^{|m|}(1+r^{2})^{-(2-\Delta+|m|)/2}P_{n}^{(1-\Delta,|m|)}\left( \dfrac{r^{2}-1}{r^{2}+1} \right) \\
\chi _{nm}(r) & =r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left( \dfrac{r^{2}-1}{r^{2}+1} \right)
\end{align}$$

with $\displaystyle{\psi _{nm}}$ for the fast branch and $\displaystyle{\chi _{nm}}$ for the slow branch. Formally expand

$$\begin{align}
\Phi & =\sum _{m=-\infty}^{\infty}\dfrac{e^{im\phi}}{\sqrt{ 2\pi }}\left(\sum _{n=0}^{\infty}q_{nm}(t)\psi _{nm}(r)+q_{s,m}(t)\chi _{m}(r)\right)
\end{align}$$

here $\displaystyle{\chi _{m}(r)}$ are spatial functions that are regular at center and satisfy

$$\begin{align}
\lim_{ r \to \infty } r^{\Delta}\chi _{m}(r) & =\mathrm{Const}\neq 0 \\
S[\chi _{m}] & < \infty
\end{align}$$

different $\displaystyle{m}$ modes decouple. For $\displaystyle{u_{m,i}\in\left\{\chi _{m}(r),\psi _{0m}(r),\dots\right\}}$, define

$$\begin{align}
w(r) & =\dfrac{r}{1+r^{2}}, & p(r) & =r(1+r^{2}), & V_{m}(r) & =\dfrac{m^{2}}{r}+\Delta(\Delta-2)r
\end{align}$$

plug the ansatz into the action and integrate over $\phi$ and $r$, we have

$$\begin{align}
S_{N} & =\int _{t_{i}}^{t_{f}} \mathrm{d}t\sum _{m=-\infty}^{\infty}\left(\dfrac{1}{2}\dot u_{m}^{\dagger}G_{m}\dot u_{m}-\dfrac{1}{2}u_{m}^{\dagger}K_{m}u_{m}\right) \\
G_{m,ij} & =\int _{0}^{\infty}\mathrm{d}rw(r)u_{m,i}(r)u_{m,j}(r) \\
K_{m,ij} & =\lim_{ R \to \infty } \left[\int _{0}^{R}\mathrm{d}r(p(r)u'_{m,i}(r)u'_{m,j}(r)+V_{m}(r)u_{m,i}(r)u_{m,j}(r))\right. \\
 & \left.+\Delta R\sqrt{ 1+R^{2} }u_{m,i}(R)u_{m,j}(R)\right]
\end{align}$$

for simplicity, we take

$$\begin{align}
\chi _{m} & =r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}
\end{align}$$

it can be shown that

$$\begin{align}
G_{m,ss} & =\dfrac{1}{2}\mathrm{B}(\Delta,|m|+1) \\
G_{m,sn} & =\dfrac{(1-\Delta)(2-\Delta)_{n}}{2n!(n+1-\Delta)(n+|m|+1)} \\
G_{m,nk} & =\delta _{nk} \dfrac{(n+1)_{|m|}}{2(n+2-\Delta)_{|m|}(2n+2+|m|-\Delta)} \\
K_{m,ss} & =(\Delta+|m|)^{2}G_{m,ss} \\
K_{m,sn} & =(\Delta+|m|)^{2}G_{m,sn} \\
K_{m,nk} & =\delta _{nk}(2n+2+|m|-\Delta)^{2}G_{m,nn}
\end{align}$$

consider the generalized eigenvalue problem

$$\begin{align}
K_{m}v_{m}=\omega^{2}G_{m}v_{m}
\end{align}$$

the spectrum of the generalized eigenvalue problem is determined by the roots of the secular equation

$$\begin{align}
\det(K_{m}-\omega ^{2}G_{m}) & =0
\end{align}$$

and the solutions for $\displaystyle{\omega}$ are

$$\begin{align}
\omega _{ma} & =\Delta+2a+|m|, & a\in \mathbb{N}
\end{align}$$

---

To avoid the exact lowest mode being singled out, we consider the non-eigen slow seed

$$\begin{align}
\tilde{\chi}_{m}(r) & =\chi _{m}(r)\left(1+\dfrac{1}{2(1+r^{2})}\right) \\
 & =\chi _{m}(r)+\dfrac{1}{2}h_{m}(r) \\
h_{m}(r) & =\dfrac{\chi _{m}(r)}{1+r^{2}}
\end{align}$$

we have

$$\begin{align}
G_{m,\tilde{s}n} & =G_{m,sn}+\dfrac{1}{2}G_{m,hn} \\
K_{m,\tilde{s}n} & =\lambda _{s}G_{m,sn}+\dfrac{1}{2}\lambda _{n}G_{m,hn}
\end{align}$$

for $\displaystyle{\Delta=\dfrac{3}{5}}$ and $\displaystyle{m=0}$, diagonalizing the $\displaystyle{(N+1)\times(N+1)}$ pair $\displaystyle{(K,G)}$ as before gives the following results. Here $\displaystyle{N}$ is the number of fast modes, $\displaystyle{n=0,\dots,N-1}$.

|                 $N$ | lowest four truncated frequencies           |
| ------------------: | ------------------------------------------- |
|                 $4$ | $0.600254,\ 2.603471,\ 4.621229,\ 6.687421$ |
|                 $8$ | $0.600028,\ 2.600397,\ 4.602194,\ 6.607090$ |
|                $16$ | $0.600003,\ 2.600045,\ 4.600241,\ 6.600747$ |
|                $24$ | $0.600001,\ 2.600012,\ 4.600066,\ 6.600204$ |
| field-theory target | $0.6,\ 2.6,\ 4.6,\ 6.6$                     |

As a check of the angular shift, the same non-eigen seed at $N=16$ gives

| $\ell$ | lowest two truncated frequencies | field-theory target |
|---:|---|---|
| $1$ | $1.600002,\ 3.600076$ | $1.6,\ 3.6$ |
| $2$ | $2.600001,\ 4.600109$ | $2.6,\ 4.6$ |
| $3$ | $3.600001,\ 5.600143$ | $3.6,\ 5.6$ |

Thus the fixed low eigenvalues converge to the alternative-quantization spectrum even when the slow representative is not an eigenfunction.

## Alternative to Standard Quantization by a Boundary Legendre Transform

We introduce

$$\begin{align}
S_{\mathrm{Le},R} & =\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)\phi
\end{align}$$

we have

$$\begin{align}
\delta(S_{R}+S_{\mathrm{Le},R})|_{\Gamma} & =\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\phi \delta(n^{\mu}\nabla _{\mu}\phi+\Delta \phi)
\end{align}$$

which gives the Dirichlet boundary condition. Expand

$$\begin{align}
\phi & =\sum ^{\infty}_{m=-\infty} \dfrac{e^{im\phi}}{\sqrt{ 2\pi }}\left(\sum ^{\infty}_{n=0}q_{nm}(t)\chi _{nm}(r)+q_{f,m}(t)\psi _{m}(r)\right)
\end{align}$$

here $\displaystyle{\psi _{m}}$ is regular at the center, has finite energy, and satisfies

$$\begin{align}
\lim_{ r \to \infty } r^{\Delta}\psi _{m}(r) & =\mathrm{Const}.
\end{align}$$

Again different $\displaystyle{m}$ modes decouple. For $\displaystyle{u_{m,i}\in\left\{\psi _{m},\chi _{0m},\dots\right\}}$, use the $\displaystyle{G_{m}}$ and $\displaystyle{K_{m}}$ defined above. Substituting into $\displaystyle{S_{R}+S_{\mathrm{Le},R}}$ and integrate over $\displaystyle{\phi}$ and $\displaystyle{r}$

$$\begin{align}
S^{\mathrm{Le}} & =\int _{t_{i}}^{t_{f}}\mathrm{d}t \sum ^{\infty}_{m=-\infty}\left(\dfrac{1}{2}\dot{Q}_{m}^{\dagger}G_{m}\dot{Q}_{m}-\dfrac{1}{2}Q_{m}^{\dagger}K^{\mathrm{Le}}_{m}Q_{m}\right) \\
Q_{m} & =(q_{f,m},q_{0m},\dots)^{T} \\
G_{m,ij} & =\int _{0}^{\infty}\mathrm{d}rw(r)u_{m,i}(r)u_{m,j}(r) \\
K^{\mathrm{Le}}_{m,ij} & =K_{m,ij}-\lim_{ R \to \infty } R\sqrt{ 1+R^{2} }(u_{m,i}(R)(\sqrt{ 1+R^{2} }u'_{m,j}(R)+\Delta u_{m,j}(R)) \\
 & +u_{m,j}(R)(\sqrt{ 1+R^{2} }u'_{m,i}(R)+\Delta u_{m,i}(R)))
\end{align}$$

For simplicity, first take

$$\begin{align}
\psi _{m}(r) & =\psi _{0m}(r) \\
\lambda _{f,m} & =(2-\Delta+|m|)^{2}, & \lambda _{nm} & =(\Delta+|m|+2n)^{2} \\
a_{nm} & :=\lim_{ r \to \infty } r^{\Delta}\chi _{nm}(r)=\dfrac{(\Delta)_{n}}{n!}
\end{align}$$

direct evaluation gives

$$\begin{align}
G_{m,ff} & =\dfrac{1}{2}\mathrm{B}(2-\Delta,|m|+1) \\
G_{m,fn} & =\dfrac{(\Delta-1)_{n}}{2n!}\mathrm{B}(1,|m|+n+1) \\
G_{m,nk} & =\delta _{nk}g_{nm}, & g_{nm} & =\dfrac{(n+1)_{|m|}}{2(\Delta+2n+|m|)(\Delta+n)_{|m|}} \\
K^{\mathrm{Le}}_{m,ff} & =\lambda _{f,m}G_{m,ff} \\
K^{\mathrm{Le}}_{m,fn} & =\lambda _{f,m}G_{m,fn} \\
K^{\mathrm{Le}}_{m,nk} & =\lambda _{nm}G_{m,nk}
\end{align}$$

Consider the generalized eigenvalue problem and its secular equation:

$$\begin{align}
K^{\mathrm{Le}}_{m}v_{m} & =\omega ^{2}G_{m}v_{m} \\
\implies \det(K^{\mathrm{Le}}_{m}-\omega ^{2}G_{m}) & =0
\end{align}$$

Here the determinant is defined at finite $N$: retain $\displaystyle{\psi _{m},\chi _{0m},\dots,\chi _{N-1,m}}$. Write $\displaystyle{\nu=1-\Delta}$, we have

$$\begin{align}
\det(K^{\mathrm{Le}}_{m,N}-\omega ^{2}G_{m,N}) & =\prod ^{N-1}_{n=0}g_{nm}(\lambda _{nm}-\omega ^{2})\times\left((\lambda _{f,m}-\omega ^{2})G_{m,ff}- ( \lambda _{f,m}-\omega ^{2} )^{2}  \sum ^{N-1}_{n=0} \dfrac{G_{m,fn}^{2}}{g_{nm}(\lambda _{nm}-\omega ^{2})}\right)
\end{align}$$

the bare producy has no limit since $\displaystyle{g_{nm}(\lambda _{nm}-\omega ^{2})\sim n}$. A definite normalization is

$$\begin{align}
F_{m,\infty} & =\lim_{ N \to \infty } F_{m,N} \\
 & =\lim_{ N \to \infty } \dfrac{\det(K^{\mathrm{Le}}_{m,N}-\omega ^{2}G_{m,N})}{\prod ^{N-1}_{n=0}g_{nm}\lambda _{nm}} \\
 & =-\dfrac{2\nu ^{2}\Gamma(1-\Delta)}{\Gamma(\Delta)} \dfrac{\Gamma\left( \dfrac{\Delta+|m|}{2} \right)^{2}}{\Gamma\left( \dfrac{2-\Delta+|m|-\omega}{2} \right)\Gamma\left( \dfrac{2-\Delta+|m|+\omega}{2} \right)}
\end{align}$$

its positive-frequency roots are

$$\begin{align}
\omega _{mp} & =2-\Delta+|m|+2p, & p \in \mathbb{N}
\end{align}$$

---

To avoid the exact lowest standard mode being singled out, take the non-eigen fast representative

$$\begin{align}
\tilde\psi_m(r)&=\psi_m(r)\left(1+\dfrac{1}{2(1+r^2)}\right),\\
\lim_{r\to\infty}r^\Delta\tilde\psi_m(r)&=0,&\lim_{r\to\infty}r^{2-\Delta}\tilde\psi_m(r)&=1.
\end{align}$$

Replace $\psi_m$ by $\tilde\psi_m$ in the expansion. The slow-mode diagonal blocks stay the same, and the remaining entries become

$$\begin{align}
G_{m,\tilde f n}&=\dfrac{(\Delta-1)_n\mathrm B(1,|m|+n+1) +\tfrac12(\Delta-2)_n\mathrm B(2,|m|+n+1)}{2n!},\\
G_{m,\tilde f\tilde f}&=\dfrac12\left[\mathrm B(2-\Delta,|m|+1) +\mathrm B(3-\Delta,|m|+1)+\dfrac14\mathrm B(4-\Delta,|m|+1)\right],\\
K_{m,\tilde f n}^{\mathrm{Le}}&=\lambda_{nm}G_{m,\tilde f n}+2\nu a_{nm},\\
K_{m,\tilde f\tilde f}^{\mathrm{Le}}&=\lambda_{f,m}G_{m,\tilde f\tilde f} +\dfrac12\mathrm B(3-\Delta,|m|+2).
\end{align}$$

For this non-eigen representative, the finite determinant is instead

$$\begin{align}
\det\left(K_{m,N}^{\mathrm{Le}}-\omega^2G_{m,N}\right) &=\prod_{n=0}^{N-1}\left[g_{nm}(\lambda_{nm}-\omega^2)\right]\\
&\quad\times\left[K_{m,\tilde f\tilde f}^{\mathrm{Le}}-\omega^2G_{m,\tilde f\tilde f} -\sum_{n=0}^{N-1}\dfrac{\left[(\lambda_{nm}-\omega^2)G_{m,\tilde f n}+2\nu a_{nm}\right]^2} {g_{nm}(\lambda_{nm}-\omega^2)}\right].
\end{align}$$

There is no longer an exact factor $\lambda_{f,m}-\omega^2$. With the same finite-product normalization its limit is the same Gamma-function expression above; the vanishing kinetic and form tails of the fixed representative give the same bracket limit $-4\nu^2T_m$.

For $\Delta=3/5$ and $m=0$, diagonalizing this $(N+1)\times(N+1)$ pair gives the following results. Here $N$ counts alternative modes, and $\theta_{0,N}<\cdots<\theta_{N,N}$ denote the ordered squared frequencies in this angular sector.

| $N$ | Extra eigenvalue $\theta_{0,N}$ | First four positive frequencies |
|---:|---:|---|
| 4 | $-244.016607$ | $1.4000614514,\ 3.4020977774,\ 5.4230672123,\ 7.7549073678$ |
| 8 | $-990.966143$ | $1.4000016240,\ 3.4000607034,\ 5.4005350896,\ 7.4025684299$ |
| 16 | $-4035.557206$ | $1.4000000526,\ 3.4000020099,\ 5.4000171159,\ 7.4000768836$ |
| 32 | $-16318.199653$ | $1.4000000018,\ 3.4000000697,\ 5.4000005887,\ 7.4000026084$ |
| 128 | $-263417.382807$ | $1.4000000000,\ 3.4000000001,\ 5.4000000007,\ 7.4000000033$ |
| field target | — | $1.4,\ 3.4,\ 5.4,\ 7.4$ |

For each fixed angular sector,

$$\begin{align}
\theta_{0,N}&\downarrow-\infty,& \theta_{p+1,N}&\downarrow(2-\Delta+|m|+2p)^2\qquad\text{for each fixed }p.
\end{align}$$

Thus the positive tower converges to standard quantization, but the extra mode remains a negative potential direction of the finite action with positive kinetic norm. It is not a standard-quantization state, and it gives an exponentially growing solution. Removing it from a spectral comparison does not establish stable finite-time dynamics.
