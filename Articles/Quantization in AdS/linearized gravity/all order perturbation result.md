The unperturbed normal modes in [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]] can be written, after the canonical rescaling used below, as

$$\begin{align}
h^{[0]}_{\mu \nu} & =\mathcal{L}_{\zeta}g^{(0)}_{\mu \nu}
\end{align}$$

with

$$\begin{align}
\zeta[a] & =\sum _{A=L,R}\sum ^{\infty}_{n=0}(a_{A,n}\zeta _{A,n}+a^{\dagger}_{A,n}\zeta ^{*}_{A,n})
\end{align}$$

with

$$\begin{align}
\zeta _{L,n} & =\sqrt{ \dfrac{6}{n!(n+3)!} }\mathcal{L}_{\xi _{-1}}^{n}\zeta _{L,0} \qquad\zeta _{R,n} =\sqrt{ \dfrac{6}{n!(n+3)!} }\mathcal{L}_{\bar{\xi}_{-1}}^{n}\zeta _{R,0} \\
\zeta _{L,0} & =\left( i \dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{r^{4}}{(1+r^{2})^{2}},-\dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{r(3+2r^{2})}{1+r^{2}}, -i \dfrac{e^{-2i(t-\phi)}}{4\sqrt{ 3\pi }} \dfrac{3+r^{2}}{1+r^{2}}\right) \\
\zeta _{R,0} & =\left(i \dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{r^{4}}{(1+r^{2})^{2}},-\dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{r(3+2r^{2})}{1+r^{2}},i \dfrac{e^{-2i(t+\phi)}}{4\sqrt{ 3\pi }} \dfrac{3+r^{2}}{1+r^{2}}\right)
\end{align}$$

here we choose $\displaystyle{\kappa ^{2}=16\pi G}$. A general solution around the vacuum $\displaystyle{g^{(0)}}$ can be written as

$$\begin{align}
g[a] & =e^{\kappa \mathcal{L}_{\zeta[a]}}g^{(0)}
\end{align}$$

Here $\displaystyle{a}$ may get $\displaystyle{\kappa}$ corrections.

## A Simple Argument

For the bulk action and its Einstein equation, write

$$\begin{align}
S_{\mathrm{bulk}} & =\dfrac{1}{\kappa^2}\int_M\mathrm{d}^3x\sqrt{-g}(R+2), & \kappa^2&=16\pi G,\\
\mathcal E_{\mu\nu}[g] & :=R_{\mu\nu}[g]-\dfrac12g_{\mu\nu}R[g]-g_{\mu\nu}=0.
\end{align}$$

Diffeomorphism covariance gives

$$\begin{align}
\mathcal E[e^{\kappa\mathcal L_\zeta}g^{(0)}] &=e^{\kappa\mathcal L_\zeta}\mathcal E[g^{(0)}]=0.
\end{align}$$

Thus the exponential supplies a nonlinear solution for every allowed generator $\displaystyle{\zeta[a]}$. To see how it includes the homogeneous data arising at successive perturbative orders. First consider

$$\begin{align}
g & =g^{(0)}+\kappa \mathcal{L}_{\zeta[a^{(0)}]}g^{(0)}+\kappa ^{2}u_{1}+\mathcal{O}(\kappa ^{3})
\end{align}$$

at $\displaystyle{\kappa ^{2}}$-order, the eom is

$$\begin{align}
\mathcal{E}^{(1)}[u_{1}]+\mathcal{E}^{(2)}[\mathcal{L}_{\zeta[a^{(0)}]}g^{(0)},\mathcal{L}_{\zeta[a^{(0)}]}g^{(0)}]=0
\end{align}$$

the general solution for $\displaystyle{u_{1}}$ is

$$\begin{align}
u_{1} & =\dfrac{1}{2}\mathcal{L}_{\zeta[a^{(0)}]}^{2}g^{(0)}+\mathcal{L}_{\zeta[a^{(1)}]}g^{(0)}+\mathcal{L}_{\xi _{1}}g^{(0)}
\end{align}$$

where $\displaystyle{\xi_{1}}$ is proper gauge. Remove its contribution by a proper diffeomorphism generated at order $\displaystyle{\kappa ^{2}}$ and set

$$\begin{align}
a(\kappa) & =a^{(0)}+\kappa a^{(1)}+\mathcal{O}(\kappa ^{2})
\end{align}$$

then $\displaystyle{g=g[a(\kappa)]+\mathcal{O}(\kappa ^{3})}$ in this gauge. The additional BH data have been absorbed into $\displaystyle{a}$. The same argument works inductively.

For the calculations below, $\displaystyle{a}$ denotes the complete coordinate after the absorption. At fixed $\displaystyle{a}$, define

$$\begin{align}
g[a]&=g^{(0)}+\kappa h[a],\\
h[a]&=\sum_{n=0}^{\infty}\kappa^n h^{[n]}[a],& h^{[n]}[a]&=\dfrac{1}{(n+1)!}\mathcal L_{\zeta[a]}^{n+1}g^{(0)}.
\end{align}$$

In particular, $\displaystyle{h^{[0]}[a]=\mathcal L_{\zeta[a]}g^{(0)}}$ and $\displaystyle{h^{[1]}[a]=\frac12\mathcal L_{\zeta[a]}^2g^{(0)}}$, with all multimode cross terms included. Along a chosen family $\displaystyle{a(\kappa)}$, its Taylor coefficients contribute to the expansion of the metric as above.

## Exact Symplectic Form

The nonlinear solution is a finite diffeomorphism of the vacuum. Relabel the descendant number by $\displaystyle{N=n+2\geqslant 2}$. Modulo proper vectors, the normalized generators are

$$\begin{align}
\zeta _{L,N-2} & =q_{N}\xi _{-N}, & \zeta _{R,N-2} & =q_{N}\bar{\xi}_{-N} \\
q_{N} & =-\dfrac{(-i)^{N-1}}{\sqrt{ D_{N} }}, & D_{N} & =2\pi N(N^{2}-1)
\end{align}$$

where asymptotic Killing vectors $\displaystyle{\xi _{m}}$ and $\displaystyle{\bar{\xi}_{m}}$ satisfies

$$\begin{align}
[\xi _{m},\xi _{n}] & =-i(m-n)\xi _{m+n}, & [\bar{\xi}_{m},\bar{\xi}_{n}] & =-i(m-n)\bar{\xi}_{m+n}, & [\xi _{m},\bar{\xi}_{n}] & =0
\end{align}$$

for two vectors $\displaystyle{u}$ and $\displaystyle{v}$, define the symplectic pair

$$\begin{align}
B(u,v) & =\kappa ^{2}\omega _{g^{(0)}}(\mathcal{L}_{u}g^{(0)},\mathcal{L}_{v}g^{(0)}) \\
B(\xi _{m},\xi _{n}) & =iD_{m}\delta _{m+n,0}
\end{align}$$

which obeys the Jacobi identity

$$\begin{align}
B([u,v],w)+B([v,w],u)+B([w,u],v)=0
\end{align}$$

write $\displaystyle{\phi _{a}^{*}=e^{\kappa \mathcal{L}_{\zeta[a]}}}$, so that $\displaystyle{g[a]=\phi _{a}^{*}g^{(0)}}$. Covariance of the symplectic form gives

$$\begin{align}
\omega _{\phi ^{*}_{a}g^{(0)},\Sigma}(\delta_{1}g,\delta_{2}g) & =\omega _{g^{(0)},\phi _{a}\Sigma}\left((\phi _{a}^{*})^{-1}\delta _{1}g,(\phi _{a}^{*})^{-1}\delta _{2}g\right) \\
 & =\omega _{g^{(0)},\Sigma}((\phi ^{*}_{a})^{-1}\delta _{1}g,(\phi _{a}^{*})^{-1}\delta _{2}g)
\end{align}$$

where

$$\begin{align}
(\phi _{a}^{*})^{-1}\delta g[a] & =e^{-\kappa \mathcal{L}_{\zeta}}\delta e^{\kappa \mathcal{L}_{\zeta}}g^{(0)} \\
 & =\kappa \mathcal{L}_{\Theta}g^{(0)} \\
\Theta & =F(\kappa \mathrm{ad}_{\zeta})\delta \zeta, & F(w) & =\dfrac{1-e^{-w}}{w}
\end{align}$$

substituting the transported variations into the symplectic form, we have

$$\begin{align}
\omega(\delta_{1}a,\delta_{2}a) & =B(\Theta(\delta_{1}a),\Theta(\delta_{2}a))
\end{align}$$

expand $\displaystyle{\Theta=\sum _{k}\Theta _{k}\xi _{k}+\bar{\Theta}_{k}\bar{\xi}_{k}}$, we have

$$\begin{align}
\omega & =\dfrac{i}{2}\sum _{|k|\geqslant2}D_{k}(\Theta _{k}\wedge \Theta _{-k}+\bar{\Theta}_{k}\wedge \bar{\Theta}_{-k})
\end{align}$$

at the vacuum, $\displaystyle{\Theta=\delta \zeta}$, and the normalization gives

$$\begin{align}
\omega ^{(0)} & =i\sum _{A=L,R}\sum _{N\geqslant 2}\delta a^{\dagger}_{A,N}\wedge \delta a_{A,N}
\end{align}$$

Equivalently, if $\displaystyle{\Theta=\sum_k\Theta_k\xi_k}$, then

$$\begin{align}
\omega&=\dfrac{i}{2}\sum_{|k|\geqslant2}D_k\Theta_k\wedge\Theta_{-k}.
\end{align}$$

At the vacuum, $\displaystyle{\Theta=\delta\zeta}$, and the chosen normalization gives $\displaystyle{\omega|_{a=0}=i\sum_{N\geqslant2}\delta a_N^\dagger\wedge\delta a_N}$.

## Exact Noether Charges and Poisson Brackets

Consider the vacuum-subtracted Noether charge corresponding to the diffeomorphism generated by a asymptotic Killing vector (including exact Killing vectors $\displaystyle{\xi _{-1,0,1}}$ and $\displaystyle{\bar{\xi}_{-1,0,1}}$)

$$\begin{align}
H_{\xi}[g] & =\mathcal{Q}_{\xi}[g]-\mathcal{Q}_{\xi}[g^{(0)}] \\
\mathcal{Q}_{\xi}[g] & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =-\dfrac{2}{\kappa ^{2}}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau ^{\alpha}\xi ^{\beta}\left(-K_{\alpha \beta}+K\gamma _{\alpha \beta}-\gamma _{\alpha \beta}\right) \\
X_{\xi} & =\int _{M}\mathrm{d}^{3}x\mathcal{L}_{\xi}g_{\mu \nu} \dfrac{\delta}{\delta g_{\mu \nu}}
\end{align}$$

which satisfies

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

then

$$\begin{align}
(\phi ^{*}_{a})^{-1}\mathcal{L}_{\xi}g[a] & =\mathcal{L}_{e^{-\kappa \mathrm{ad}_{\zeta}}\xi}g^{(0)} \\
\implies \delta H_{\xi} & =-\dfrac{1}{\kappa}B(e^{-\kappa \mathrm{ad}_{\zeta}}\xi,\Theta) \\
\implies H_{\xi} & =\dfrac{1}{\kappa}B(\zeta,F(\kappa \mathrm{ad}_{\zeta})\xi)
\end{align}$$

write $\displaystyle{A=\mathrm{ad}_{\zeta}}$. The cocycle identity implies

$$\begin{align}
\dfrac{\mathrm{d}}{\mathrm{d}t}B(e^{-t\kappa A}\xi,e^{-t\kappa A}\eta) & =-\kappa B(\zeta,e^{-t\kappa A}[\xi,\eta])
\end{align}$$

consequently,

$$\begin{align}
B(e^{-\kappa A}\xi,e^{-\kappa A}\eta) & =B(\xi,\eta)-\kappa ^{2}H_{[\xi,\eta]}
\end{align}$$

then the Poisson bracket between $\displaystyle{H_{\xi}}$ and $\displaystyle{H_{\eta}}$ gives

$$\begin{align}
\left\{H_{\xi},H_{\eta}\right\} & =H_{[\xi,\eta]}-\dfrac{1}{\kappa ^{2}}B(\xi,\eta) \\
\implies\left\{H_{p},H_{q}\right\} & =-i(p-q)H_{p+q}-\dfrac{i}{\kappa ^{2}}D_{p}\delta _{p+q,0} \\
\left\{\bar{H}_{p},\bar{H}_{q}\right\} & =-i(p-q)\bar{H}_{p+q}-\dfrac{i}{\kappa ^{2}}D_{p}\delta _{p+q,0}, & \left\{H_{p},\bar{H}_{q}\right\} & =0
\end{align}$$

these are two copies of Virasoro algebra with central charge $\displaystyle{c=\dfrac{24\pi}{\kappa ^{2}}=\dfrac{3}{2G}}$.

## Quantization

Upon quantization, the quantized algebra becomes

$$\begin{align}
[H_{m},H_{n}] & =(m-n)H_{m+n}+\dfrac{c}{12}m(m^{2}-1)\delta _{m+n,0}, & H^{\dagger}_{n}=H_{-n}
\end{align}$$

and the same algebra for the barred algebra. The vacuum $\displaystyle{\ket{0}}$ is chosen to be satisfy

$$\begin{align}
H_{n}\ket{0} & =0, & n & \geqslant -1, & \braket{ 0|0 }  & =1
\end{align}$$

positive-frequency charges annihilate the ground state, and the three global generators $\displaystyle{H_{-1,0,1}}$ annihilate it because the vacuum is invariant under AdS3 isometries. The Hilbert space is then spanned by

$$\begin{align}
\ket{n_{1},\dots,n_{r}}  & =H_{-n_{1}}\dots H_{-n_{r}}\ket{0} , & n_{1}\geqslant \dots\geqslant n_{r}\geqslant 2
\end{align}$$

and then tensor product with the barred sector.
