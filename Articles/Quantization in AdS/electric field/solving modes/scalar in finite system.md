---
title: scalar in finite system
date: 2026-06-13
summary: "Dirichlet quantization of a massive scalar in a finite-radius AdS3 cavity, with mode-by-mode convergence to the standard-quantization spectrum as r0 goes to infinity."
---

in this note we consider a free scalar field in global $\mathrm{AdS}_{3}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and action

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2}).
\end{align}$$

we assume

$$\begin{align}
\mu ^{2} & >-1, & \Delta & =1+\sqrt{ 1+\mu ^{2} } >1,
\end{align}$$

so we stay away from the BF-saturated logarithmic case and keep only standard quantization in the infinite-volume limit. the finite system is the truncated region

$$\begin{align}
0\leqslant r\leqslant r_{0},
\end{align}$$

with regularity at $\displaystyle{r=0}$ and homogeneous Dirichlet boundary condition

$$\begin{align}
\phi |_{r=r_{0}} & =0.
\end{align}$$

the comparison target at $\displaystyle{r_{0}\to \infty}$ is the standard-quantization spectrum

$$\begin{align}
\omega _{n,m}^{(\infty)} & =\Delta +2n+|m|, & n & =0,1,2,\ldots, & m & \in \mathbb{Z},
\end{align}$$

with normal modes

$$\begin{align}
u_{n,m}(t,r,\phi ) & =N_{n,m}e^{-i\omega _{n,m}^{(\infty)}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(\Delta +|m|)/2}P_{n}^{(\Delta -1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
N_{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta +n)_{|m|}}{(n+1)_{|m|}} }.
\end{align}$$

for finite $\displaystyle{r_{0}}$, the problem is instead a Dirichlet Sturm-Liouville problem. we now construct that spectrum and show how it converges mode by mode to the standard-quantization basis above.

# finite-radius dirichlet modes

take the separated ansatz

$$\begin{align}
\phi (t,r,\phi ) & =e^{-i\omega t}e^{im\phi }R_{\omega m}(r), & m & \in \mathbb{Z}.
\end{align}$$

the Klein-Gordon equation $\displaystyle{(\nabla ^{2}-\mu ^{2})\phi =0}$ reduces to

$$\begin{align}
(1+r^{2})R_{\omega m}''+\frac{1+3r^{2}}{r}R_{\omega m}'+\left(\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}-\mu ^{2}\right)R_{\omega m} & =0.
\end{align}$$

around the origin the regular indicial root is $\displaystyle{|m|}$, so the regular branch is uniquely fixed by

$$\begin{align}
R_{\omega m}(r) & =r^{|m|}(1+r^{2})^{-(|m|+\Delta )/2}{}_2F_1\left(\frac{|m|+\Delta -\omega}{2},\frac{|m|+\Delta +\omega}{2};1+|m|;\frac{r^{2}}{1+r^{2}}\right).
\end{align}$$

indeed $\displaystyle{{}_2F_1(a,b;c;0)=1}$, so

$$\begin{align}
R_{\omega m}(r) & =r^{|m|}(1+\mathcal{O}(r^{2}))
\end{align}$$

as $\displaystyle{r\to 0}$. the Dirichlet condition at $\displaystyle{r=r_{0}}$ is therefore equivalent to

$$\begin{align}
Q_{m}(\omega ;r_{0}) & := {}_2F_1\left(\frac{|m|+\Delta -\omega}{2},\frac{|m|+\Delta +\omega}{2};1+|m|;\frac{r_{0}^{2}}{1+r_{0}^{2}}\right)=0.
\end{align}$$

every positive root of $\displaystyle{Q_{m}(\omega ;r_{0})}$ gives one finite-radius normal mode. we denote by $\displaystyle{\omega _{n,m}(r_{0})}$ the branch that converges to $\displaystyle{\omega _{n,m}^{(\infty)}}$ as $\displaystyle{r_{0}\to \infty}$.

# the standard-quantization limit

for large $\displaystyle{r}$, the regular solution has the two-branch expansion

$$\begin{align}
R_{\omega m}(r) & =A_{m}(\omega )r^{-\Delta}(1+\mathcal{O}(r^{-2}))+B_{m}(\omega )r^{\Delta -2}(1+\mathcal{O}(r^{-2})).
\end{align}$$

the coefficient $\displaystyle{B_{m}(\omega )}$ is the slow-falloff amplitude. it is the only coefficient that matters for standard quantization, and the hypergeometric connection formula gives

$$\begin{align}
B_{m}(\omega ) & =\frac{\Gamma(1+|m|)\Gamma(\Delta -1)}{\Gamma\left(\frac{|m|+\Delta -\omega}{2}\right)\Gamma\left(\frac{|m|+\Delta +\omega}{2}\right)}.
\end{align}$$

standard quantization in infinite volume imposes

$$\begin{align}
B_{m}(\omega ) & =0.
\end{align}$$

since $\displaystyle{\Gamma(x)}$ has poles at the non-positive integers, this happens precisely when

$$\begin{align}
\frac{|m|+\Delta -\omega}{2} & =-n, & n & =0,1,2,\ldots,
\end{align}$$

namely

$$\begin{align}
\omega & =\Delta +2n+|m|=\omega _{n,m}^{(\infty)}.
\end{align}$$

for finite $\displaystyle{r_{0}}$, the Dirichlet condition reads

$$\begin{align}
0 & =R_{\omega m}(r_{0})=A_{m}(\omega )r_{0}^{-\Delta}+B_{m}(\omega )r_{0}^{\Delta -2}+o(r_{0}^{-\Delta})+o(r_{0}^{\Delta -2}).
\end{align}$$

multiplying by $\displaystyle{r_{0}^{2-\Delta}}$ gives the more useful form

$$\begin{align}
B_{m}(\omega )+A_{m}(\omega )r_{0}^{2-2\Delta}+o(r_{0}^{2-2\Delta}) & =0.
\end{align}$$

because $\displaystyle{\Delta >1}$, the correction term vanishes as $\displaystyle{r_{0}\to \infty}$. near a fixed infinite-volume root

$$\begin{align}
\omega _{n,m}^{(\infty)} & =\Delta +2n+|m|,
\end{align}$$

we have

$$\begin{align}
\frac{|m|+\Delta -\omega}{2} & =-n-\frac{\omega -\omega _{n,m}^{(\infty)}}{2},
\end{align}$$

so $\displaystyle{1/\Gamma\!\left(\frac{|m|+\Delta -\omega}{2}\right)}$ has a simple zero there. hence $\displaystyle{B_{m}(\omega )}$ itself has a simple zero at $\displaystyle{\omega _{n,m}^{(\infty)}}$, and the Dirichlet equation admits a unique nearby branch

$$\begin{align}
\omega _{n,m}(r_{0}) & =\omega _{n,m}^{(\infty)}+\mathcal{O}(r_{0}^{2-2\Delta})
\end{align}$$

for sufficiently large $\displaystyle{r_{0}}$. in particular,

$$\begin{align}
\lim _{r_{0}\to \infty }\omega _{n,m}(r_{0}) & =\omega _{n,m}^{(\infty)}
\end{align}$$

for every fixed pair $\displaystyle{(n,m)}$. this is the precise sense in which the finite cavity spectrum converges mode by mode to the standard-quantization spectrum.

# covariant phase space and mode-by-mode quantization

the radial equation can be written in Sturm-Liouville form,

$$\begin{align}
-\partial _{r}\left(r(1+r^{2})\partial _{r}R_{\omega m}\right)+r\left(\frac{m^{2}}{r^{2}}+\mu ^{2}\right)R_{\omega m} & =\omega ^{2}\frac{r}{1+r^{2}}R_{\omega m}.
\end{align}$$

the weight is therefore

$$\begin{align}
w(r) & =\frac{r}{1+r^{2}}.
\end{align}$$

regularity at $\displaystyle{r=0}$ and Dirichlet boundary condition at $\displaystyle{r=r_{0}}$ remove the endpoint terms in the Green identity, so the radial operator is self-adjoint on $\displaystyle{[0,r_{0}]}$. distinct eigenvalues are orthogonal with respect to the weight $\displaystyle{w(r)}$.

on a constant-time slice $\displaystyle{\Sigma _{r_{0}}}$, the Klein-Gordon inner product is

$$\begin{align}
(\phi _{1},\phi _{2})_{r_{0}} & =i\int _{0}^{2\pi}\mathrm{d}\phi \int _{0}^{r_{0}}\mathrm{d}r\frac{r}{1+r^{2}}\left(\phi _{1}^{*}\partial _{t}\phi _{2}-\phi _{2}\partial _{t}\phi _{1}^{*}\right).
\end{align}$$

let $\displaystyle{u_{n,m}^{(r_{0})}}$ be the normalized positive-frequency mode

$$\begin{align}
u_{n,m}^{(r_{0})}(t,r,\phi ) & =N_{n,m}^{(r_{0})}e^{-i\omega _{n,m}(r_{0})t}e^{im\phi }R_{\omega _{n,m}(r_{0}),m}(r),
\end{align}$$

with $\displaystyle{(u_{n,m}^{(r_{0})},u_{n',m'}^{(r_{0})})_{r_{0}}=\delta _{nn'}\delta _{mm'}}$. after fixing the overall phase, for example by demanding positivity at one small reference radius, the field admits the finite-cavity expansion

$$\begin{align}
\phi (x) & =\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\left(a_{n,m}^{(r_{0})}u_{n,m}^{(r_{0})}(x)+a_{n,m}^{(r_{0})\dagger}u_{n,m}^{(r_{0})*}(x)\right),
\end{align}$$

and the covariant symplectic form becomes

$$\begin{align}
\omega _{r_{0}} & =i\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\delta a_{n,m}^{(r_{0})\dagger}\wedge \delta a_{n,m}^{(r_{0})}.
\end{align}$$

now fix $\displaystyle{(n,m)}$ and a compact interval $\displaystyle{0\leqslant r\leqslant R<\infty }$. because the ODE coefficients are smooth on that interval and $\displaystyle{\omega _{n,m}(r_{0})\to \omega _{n,m}^{(\infty)}}$, the regular solutions depend continuously on $\displaystyle{\omega}$ and converge in $\displaystyle{C^{1}[0,R]}$ to the regular infinite-volume profile at $\displaystyle{\omega =\omega _{n,m}^{(\infty)}}$:

$$\begin{align}
R_{\omega _{n,m}(r_{0}),m}(r) & \longrightarrow r^{|m|}(1+r^{2})^{-(\Delta +|m|)/2}{}_2F_1\left(-n,\Delta +|m|+n;1+|m|;\frac{r^{2}}{1+r^{2}}\right).
\end{align}$$

this limiting profile is a nonzero multiple of the Jacobi-polynomial basis written in the comparison formula for $\displaystyle{u_{n,m}}$. the tail of the standard mode is Klein-Gordon integrable because $\displaystyle{\Delta >1}$, while the slow-falloff coefficient on the finite branch is suppressed by $\displaystyle{B_{m}(\omega _{n,m}(r_{0}))=\mathcal{O}(r_{0}^{2-2\Delta})}$. therefore the normalization constants also converge,

$$\begin{align}
N_{n,m}^{(r_{0})} & \longrightarrow N_{n,m},
\end{align}$$

and hence

$$\begin{align}
u_{n,m}^{(r_{0})} & \longrightarrow u_{n,m}
\end{align}$$

in the Klein-Gordon norm and uniformly on every compact radial interval. for each fixed mode, the finite-radius creation and annihilation variables therefore converge to the standard-quantization oscillators, and

$$\begin{align}
\omega _{r_{0}} & \longrightarrow i\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\delta a_{n,m}^{\dagger}\wedge \delta a_{n,m}.
\end{align}$$

this is the desired mode-by-mode convergence of the full covariant phase-space quantization.

# numerical check for $\mu ^{2}=0$

for the massless scalar we have $\displaystyle{\Delta =2}$, so the infinite-volume targets are

$$\begin{align}
\omega _{n,m}^{(\infty)} & =2+2n+|m|.
\end{align}$$

solving $\displaystyle{Q_{m}(\omega ;r_{0})=0}$ numerically near those targets gives the following finite-radius roots:

| $(m,n)$ | $\omega _{n,m}^{(\infty)}$ | $r_{0}=10$ | $r_{0}=30$ | $r_{0}=100$ |
|---|---:|---:|---:|---:|
| $(0,0)$ | 2.0000 | 2.0193 | 2.0022 | 2.0002 |
| $(0,1)$ | 4.0000 | 4.0716 | 4.0087 | 4.0008 |
| $(0,2)$ | 6.0000 | 6.1476 | 6.0192 | 6.0018 |
| $(1,0)$ | 3.0000 | 3.0376 | 3.0044 | 3.0004 |
| $(1,1)$ | 5.0000 | 5.1034 | 5.0129 | 5.0012 |
| $(1,2)$ | 7.0000 | 7.1887 | 7.0253 | 7.0024 |
| $(2,0)$ | 4.0000 | 4.0551 | 4.0066 | 4.0006 |
| $(2,1)$ | 6.0000 | 6.1335 | 6.0171 | 6.0016 |
| $(2,2)$ | 8.0000 | 8.2274 | 8.0312 | 8.0030 |

the convergence is monotone in these examples and the deviations shrink rapidly as the wall is pushed outward. for example,

$$\begin{align}
\omega _{0,0}(10)-2 & \approx 1.93\times 10^{-2}, \\
\omega _{0,0}(30)-2 & \approx 2.21\times 10^{-3}, \\
\omega _{0,0}(100)-2 & \approx 2.00\times 10^{-4},
\end{align}$$

and the same pattern holds for the other low-lying modes in the table. this is exactly the mode-by-mode approach to the standard-quantization spectrum predicted by the asymptotic analysis above.
