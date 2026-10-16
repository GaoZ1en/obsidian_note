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

Keep the Lorentzian action $S_R$ above, the outward normal, and $0<\Delta<1$. Set $\nu=1-\Delta$. The boundary measure is $\sqrt{-\gamma}$, and the metric is held fixed in the variation. At the regulator surface define

$$\begin{align}
\Pi_R&=(n^\mu\nabla_\mu+\Delta)\phi, &
\delta S_R\big|_{\Gamma_R}&=-\int_{\Gamma_R}\mathrm d^2x\sqrt{-\gamma}\,\Pi_R\delta\phi.
\end{align}$$

The Legendre term that exchanges these boundary variables has a **positive** sign in these conventions:

$$\begin{align}
S_{\mathrm L,R}^{(+)}&=+\int_{\Gamma_R}\mathrm d^2x\sqrt{-\gamma}\,\phi\Pi_R,\\
\delta(S_R+S_{\mathrm L,R}^{(+)})\big|_{\Gamma_R}
&=\int_{\Gamma_R}\mathrm d^2x\sqrt{-\gamma}\,\phi\delta\Pi_R.
\end{align}$$

Indeed, for differentiated asymptotics $\phi=\alpha r^{-\Delta}+\beta r^{\Delta-2}+\cdots$,

$$\begin{align}
S_{\mathrm L}^{(+)}&=-2\nu\int\mathrm dt\mathrm d\phi\,\alpha\beta,\\
\delta S\big|_\Gamma&=2\nu\int\mathrm dt\mathrm d\phi\,\beta\delta\alpha,\\
\delta(S+S_{\mathrm L}^{(+)})\big|_\Gamma
&=-2\nu\int\mathrm dt\mathrm d\phi\,\alpha\delta\beta.
\end{align}$$

Allowing $\delta\beta$ to vary freely therefore selects the standard zero-source condition $\alpha=0$, with frequencies $2-\Delta+|m|+2p$. Merely keeping $\beta=0$ fixed on every trial history does not perform this reversal: then $\delta\beta=0$, and the transformed variation cannot select $\alpha=0$.

With the proposed negative sign instead, the boundary variation is

$$\begin{align}
\delta(S_R-S_{\mathrm L,R}^{(+)})\big|_{\Gamma_R}
&=-\int_{\Gamma_R}\sqrt{-\gamma}\,(2\Pi_R\delta\phi+\phi\delta\Pi_R),\\
\delta(S-S_{\mathrm L}^{(+)})\big|_\Gamma
&=2\nu\int\mathrm dt\mathrm d\phi\,(2\beta\delta\alpha+\alpha\delta\beta).
\end{align}$$

Thus the negative sign does not exchange the polarization; independent boundary variations would impose both coefficients to vanish.

### Direct Reverse Mode Expansion

Fix a real angular harmonic of unit norm and put $\ell=|m|$. Normalize the alternative radial modes by the kinetic pairing:

$$\begin{align}
z&=(1+r^2)^{-1},&
s_\ell&=r^\ell(1+r^2)^{-(\Delta+\ell)/2},\\
e_n&=\frac{s_\ell P_n^{(\Delta-1,\ell)}(1-2z)}{\sqrt{g_n^-}},&
g_n^-&=\frac{(n+1)_\ell}{2(2n+\Delta+\ell)(n+\Delta)_\ell},\\
\lambda_n^-&=(\Delta+\ell+2n)^2,&
a_n:=\alpha[e_n]&=\frac{(\Delta)_n}{n!\sqrt{g_n^-}},&\beta[e_n]&=0.
\end{align}$$

On a finite span of only the $e_n$, the Legendre term vanishes identically. To admit a varying response, add a fast representative. Use a non-eigen seed:

$$\begin{align}
h_\ell&=s_\ell z^\nu(1+\eta z),&\eta&=\tfrac12,&
\alpha[h_\ell]&=0,&\beta[h_\ell]&=1,\\
\Phi_N&=q_h(t)h_\ell+\sum_{n=0}^{N-1}q_n(t)e_n.
\end{align}$$

For real profiles with defined boundary coefficients, the transformed stiffness is

$$\begin{align}
K_{\mathrm L}[u,v]&=K[u,v]+2\nu\bigl(\alpha[u]\beta[v]+\beta[u]\alpha[v]\bigr),\\
S_N^{\mathrm L}&=\frac12\int\mathrm dt\left(\dot Q^TG\dot Q-Q^TK_{\mathrm L}Q\right).
\end{align}$$

The kinetic matrix is unchanged. Let $b_n=G[h_\ell,e_n]$, $g=G[h_\ell,h_\ell]$, and $k=K[h_\ell,h_\ell]$. Direct substitution gives

$$\begin{align}
G&=\begin{pmatrix}g&b^T\\b&I\end{pmatrix},&
K_{\mathrm L}&=\begin{pmatrix}
k&(\lambda^- b+2\nu a)^T\\
\lambda^- b+2\nu a&\operatorname{diag}(\lambda_n^-)
\end{pmatrix},\\
b_n&=\frac{(\Delta-1)_n B(1,\ell+n+1)+\eta(\Delta-2)_n B(2,\ell+n+1)}{2n!\sqrt{g_n^-}},\\
g&=\tfrac12\left[B(2-\Delta,\ell+1)+2\eta B(3-\Delta,\ell+1)+\eta^2B(4-\Delta,\ell+1)\right],\\
k&=(2-\Delta+\ell)^2g+2\eta^2B(3-\Delta,\ell+2).
\end{align}$$

Here $(\lambda^-b)_n=\lambda_n^-b_n$. The mixed entry before the Legendre term is $K[h_\ell,e_n]=\lambda_n^-b_n$ because $e_n$ is an alternative eigenmode. The added $2\nu a_n$ must be retained.

The reverse construction recovers the fixed physical levels, but its entire finite spectrum is not positive. Write the ordered generalized eigenvalues as $\theta_{0,N}<\cdots<\theta_{N,N}$, where $\theta=\omega^2$. At $\Delta=3/5$, $\ell=0$:

| $N$ | Extra eigenvalue $\theta_{0,N}$ | First four positive frequencies |
|---:|---:|---|
| 4 | $-244.016607$ | $1.4000614514,\ 3.4020977774,\ 5.4230672123,\ 7.7549073678$ |
| 8 | $-990.966143$ | $1.4000016240,\ 3.4000607034,\ 5.4005350896,\ 7.4025684299$ |
| 16 | $-4035.557206$ | $1.4000000526,\ 3.4000020099,\ 5.4000171159,\ 7.4000768836$ |
| 32 | $-16318.199653$ | $1.4000000018,\ 3.4000000697,\ 5.4000005887,\ 7.4000026084$ |
| 128 | $-263417.382807$ | $1.4000000000,\ 3.4000000001,\ 5.4000000007,\ 7.4000000033$ |
| field target | — | $1.4,\ 3.4,\ 5.4,\ 7.4$ |

The proof in [Slow Representatives and Galerkin Convergence](<Slow representatives and Galerkin convergence.md>) establishes, for this construction and the broader class of fixed fast seeds specified there,

$$\begin{align}
\theta_{0,N}&\downarrow-\infty,&
\theta_{p+1,N}&\downarrow(2-\Delta+\ell+2p)^2\quad\text{for each fixed }p.
\end{align}$$

Thus the extra mode is not a standard-quantization state. It is a negative potential direction of the finite action, with positive kinetic norm; the finite system has an exponentially growing solution. Removing it from a spectral comparison does not turn the unmodified finite action into a stable dynamical approximation. Unlike the forward construction, this is not a sequence of positive closed-form Ritz restrictions. The reason is that $\beta$ is not continuous in the original form norm.

### A Positive Reverse Construction

To obtain a positive finite system, impose the continuous slow-trace constraint on alternative modes. Take $e_0,\ldots,e_N$ and introduce an independent boundary multiplier $b(t)$:

$$\begin{align}
L_N^{\mathrm{mix}}&=\frac12\sum_{n=0}^N(\dot q_n^2-\lambda_n^-q_n^2)
 -2\nu b\sum_{n=0}^Na_nq_n,\\
\sum_{n=0}^Na_nq_n&=0,\\
(\lambda_n^--\omega^2)q_n+2\nu a_nb&=0.
\end{align}$$

This is a mixed boundary formulation: $b$ is independent off shell and becomes the response $\beta$ in the continuum weak equation. It is not the finite substitution $b=\beta[\Phi_N]$, which would be zero on this slow-mode span.

Eliminate one coefficient by using $v_j=e_j-(a_j/a_0)e_0$, $j=1,\ldots,N$. Then

$$\begin{align}
G^{(0)}_{ij}&=\delta_{ij}+\frac{a_ia_j}{a_0^2},&
K^{(0)}_{ij}&=\lambda_i^-\delta_{ij}+\lambda_0^-\frac{a_ia_j}{a_0^2},\\
\sum_{n=0}^N\frac{a_n^2}{\lambda_n^--\omega^2}&=0.
\end{align}$$

There are $N$ positive frequencies. At $\Delta=3/5$, $\ell=0$:

| $N$ | Lowest four frequencies of the positive constrained system |
|---:|---|
| 8 | $1.46762160,\ 3.53642201,\ 5.60266502,\ 7.66966956$ |
| 32 | $1.42261283,\ 3.44473080,\ 5.46497823,\ 7.48417074$ |
| 128 | $1.40745683,\ 3.41466072,\ 5.42117309,\ 7.42727117$ |
| field target | $1.4,\ 3.4,\ 5.4,\ 7.4$ |

These spaces are form-dense in $\alpha=0$, and their fixed eigenvalues decrease to the standard tower without an extra negative mode. Their convergence is slower in this example. Although every finite trial profile still has $\beta=0$, its form limit can have $\beta\ne0$; continuity is required of $\alpha$, not of $\beta$.

**Verified:** The boundary variation and sign were checked with xAct/xTras; Mathematica checked the boundary limit, seed integrals, mixed entries, finite Schur determinant and derivative, numerical spectra through $N=128$, and an 80/100-digit comparison at $N=64$. Reproduce with [scalar_reverse_legendre.wl](scalar_reverse_legendre.wl); it writes `scalar_reverse_legendre_results.json`.

**Assumptions:** Fixed metric and outward normal, $0<\Delta<1$, unit AdS radius, regular centre, the stated counterterm, differentiated asymptotics, and a freely variable response for the transformed variational problem. The proofs and the finite numerical checks are distinguished in the companion note.

**Not verified:** Uniform endpoint/rate estimates or stable time evolution of the raw Legendre-truncated system; its negative squared frequency is an actual obstruction to such a stability claim.


### Boundary Response and the Asymmetry of the Two Directions

The extra negative mode carries a nonzero boundary response $\beta$ coupled to an opposite-sign slow trace $\alpha$. It has positive kinetic norm and negative potential energy, so it is not a negative-norm ghost. It is also not an additional physical boundary oscillator of standard quantization, whose fields obey $\alpha=0$.

To exhibit the response coordinate explicitly, subtract the retained alternative modes from the fast seed:

$$\begin{align}
\rho_N&=h_\ell-\sum_{n=0}^{N-1}b_ne_n,&b_n&=G[h_\ell,e_n],\\
G[\rho_N,\rho_N]&\longrightarrow0,&K[\rho_N,\rho_N]&\longrightarrow0,\\
\alpha[\rho_N]&\longrightarrow0,&\beta[\rho_N]&=1.
\end{align}$$

The first two limits follow from alternative-mode completeness in the kinetic and form norms. Thus the residual has vanishing bulk norm and energy while retaining unit response. This is possible because $\beta$ is not a continuous functional of the form norm.

Make an exact finite-dimensional change of coefficient variables:

$$\begin{align}
b(t)&=q_h(t),&x_n&=q_n+b_nb,\\
\Phi_N&=\sum_{n=0}^{N-1}x_ne_n+b\rho_N,&\beta[\Phi_N]&=b,\\
\alpha[\Phi_N]&=\sum_{n=0}^{N-1}a_nx_n+b\alpha[\rho_N].
\end{align}$$

The action then reads

$$\begin{align}
L_N^{\mathrm L}
&=\frac12\sum_{n=0}^{N-1}(\dot x_n^2-\lambda_n^-x_n^2)
 +\frac{g_N^{\mathrm{tail}}}{2}\dot b^2-\frac{d_N}{2}b^2
 -2\nu b\sum_{n=0}^{N-1}a_nx_n,\\
g_N^{\mathrm{tail}}&=G[\rho_N,\rho_N]>0,&
d_N&=K[\rho_N,\rho_N]+4\nu\alpha[\rho_N],\\
g_N^{\mathrm{tail}}&\longrightarrow0,&d_N&\longrightarrow0.
\end{align}$$

For bounded response histories with controlled time derivatives, the $b$ equation formally reduces to $\sum_n a_nx_n=0$, hence $\alpha=0$. The surviving term $-2\nu b\alpha$ gives $b$ the role of a boundary multiplier. At finite cutoff, however, $b$ retains a small positive kinetic coefficient and a finite coupling to the slow trace. This produces a negative potential direction. The negative eigenvector is a mixture of this response coordinate and slow-mode coefficients, not the response coordinate alone.

The multiplier interpretation is a singular variational limit. It does not assert that the diverging negative-frequency eigenmode becomes a physical boundary state, or that the full finite-time dynamics converges. The independent multiplier in the preceding positive construction implements the constraint from the outset and has no such kinetic term.

The forward construction has a different relation to the form domain. The fast-mode closure is $\ker\alpha$, and $\alpha$ is continuous in the positive form norm. A slow representative with $\alpha=1$ therefore stays a nonzero form-norm distance from every fast combination. Adding it supplies the missing trace direction, while every finite action remains a restriction of the same positive $K$.

In the reverse construction, the alternative modes already form a core of the entire original form domain. The added fast seed can be approximated away in that norm, leaving the residual $\rho_N$ above. Nevertheless, the Legendre term still detects its nonzero $\beta$ through the indefinite coupling $4\nu\alpha\beta$. This difference in trace continuity, rather than a sign ambiguity remaining in the Legendre transform, explains why the forward enlargement is positive and the raw reverse enlargement is not.

**Verified:** The finite change of variables, response equation and negative potential block were checked symbolically with Mathematica; their general derivation is given in the companion note's “Boundary Response Coordinate and Multiplier Limit” section.

**Assumptions:** The same fixed fast representative, $0<\Delta<1$, boundary conventions and form domain as above. The multiplier limit additionally requires bounded response histories and the stated control of time derivatives.

**Not verified:** Convergence of the full Hamiltonian flow or of normalized negative eigenvectors to a continuum boundary state. The response-variable interpretation does not supply either claim.
