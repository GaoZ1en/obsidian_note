# Finite-$\displaystyle{\kappa}$ Gluing of a Global $\displaystyle{\mathrm{AdS}_{3}}$ Scalar

Take the global $\displaystyle{\mathrm{AdS}_{3}}$ spacetime with AdS radius one,

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\varphi ^{2}, & \varphi & \sim \varphi+2\pi,
\end{align}$$

and consider the free scalar theory

$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{-g}\left(-\dfrac{1}{2}\partial _{\mu}\Phi\partial ^{\mu}\Phi-\dfrac{1}{2}m^{2}\Phi ^{2}\right), & m^{2} & =\Delta(\Delta-2).
\end{align}$$

We take standard normalizable boundary conditions with $\displaystyle{\Delta>1}$,

$$\begin{align}
\Phi(t,r,\varphi) & =O(r^{-\Delta}), & r & \to\infty.
\end{align}$$

The $\displaystyle{\Delta=1}$ case requires a separate treatment of the logarithmic branch and will not be included below. Cut the angular circle along the radial half-lines $\displaystyle{A:\varphi=0}$ and $\displaystyle{B:\varphi=\alpha}$, where $\displaystyle{0<\alpha\leq\pi}$. Write $\displaystyle{\beta=2\pi-\alpha}$ and introduce angular coordinates oriented around the original circle,

$$\begin{align}
W_{1} & :0\leq\varphi _1\leq\alpha, & \varphi _1&=\varphi, & A&\longrightarrow B, \\
W_{2} & :0\leq\varphi _2\leq\beta, & \varphi _2&=\varphi-\alpha, & B&\longrightarrow A.
\end{align}$$

The cuts are artificial timelike interfaces, not components of the physical AdS boundary. At $\displaystyle{r=0}$ we impose finite-energy regularity, and at $\displaystyle{r=\infty}$ both wedges obey the same standard AdS boundary condition.

We now give the cut-supported actions which implement the finite-$\displaystyle{\kappa}$ interpolation. This fixes the artificial-interface variation. The usual choice of physical AdS boundary terms at $\displaystyle{r=\infty}$ is kept implicit and is not altered by the gluing construction.

## Cut Actions and Their Variation

After cutting, the bulk action is the sum of the two wedge actions,

$$\begin{align}
S_{\mathrm{bulk}} &=\sum _{i=1}^{2}\int _{W_i}\mathrm{d}^{3}x\sqrt{-g} \left(-\dfrac12\partial_\mu\Phi_i\partial^\mu\Phi_i -\dfrac12m^{2}\Phi_i^{2}\right).
\end{align}$$

The induced metric on each constant-$\displaystyle{\varphi_i}$ cut is

$$\begin{align}
\mathrm{d}s_{\Gamma}^{2} &=-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}, & \sqrt{-\gamma}&=1, & n^{\mu}\partial_\mu&=\pm\dfrac1r\partial_{\varphi_i}.
\end{align}$$

Below $\displaystyle{\partial_n:=\pm\partial_{\varphi_i}}$ denotes the signed outward coordinate derivative, so that $\displaystyle{n^\mu\partial_\mu=r^{-1}\partial_n}$.

Denote the four interface traces by

$$\begin{align}
q_{1A}(t,r)&=\Phi _1(t,r,0), & q_{1B}(t,r)&=\Phi _1(t,r,\alpha), \\
q_{2B}(t,r)&=\Phi _2(t,r,0), & q_{2A}(t,r)&=\Phi _2(t,r,\beta).
\end{align}$$

To obtain homogeneous Dirichlet conditions on all four sides of the two artificial cuts as $\displaystyle{\kappa\to0}$, add

$$\begin{align}
S_{D}^{(\kappa)} &=-\dfrac{1}{2\kappa}\int\mathrm{d}t\int _0^{\infty}\dfrac{\mathrm{d}r}{r} \left(q_{1A}^{2}+q_{2A}^{2}+q_{1B}^{2}+q_{2B}^{2}\right).
\end{align}$$

The factor $\displaystyle{1/r}$ is required because the bulk angular boundary term is $\displaystyle{\sqrt{-\gamma}\,n^\mu\partial_\mu\Phi=\pm r^{-1}\partial_{\varphi_i}\Phi}$. With this position-dependent cut coupling the boundary conditions are independent of $\displaystyle{r}$ and the angular/radial separation used below is preserved. An unweighted $\displaystyle{\int_\Gamma\sqrt{-\gamma}\,\Phi^2}$ term would instead produce an $\displaystyle{r}$-dependent Robin condition and define a different, nonseparable interface theory.

To glue the two copies of each cut, add the matching action

$$\begin{align}
S_{\mathrm{glue}}^{(\kappa)} &=-\dfrac{\kappa}{2}\int\mathrm{d}t\int _0^{\infty}\dfrac{\mathrm{d}r}{r} \left[(q_{1A}-q_{2A})^{2}+(q_{1B}-q_{2B})^{2}\right].
\end{align}$$

Thus the finite-$\displaystyle{\kappa}$ action is

$$\begin{align}
S_{\kappa} &=S_{\mathrm{bulk}}+S_{D}^{(\kappa)}+S_{\mathrm{glue}}^{(\kappa)}.
\end{align}$$

The artificial-interface part of its variation is

$$\begin{align}
\delta S_{\kappa}|_{\Gamma} &=-\int\mathrm{d}t\int _0^{\infty}\dfrac{\mathrm{d}r}{r}
\sum _{X=A,B}\Bigg[ \left(\partial_n\Phi_1+\dfrac1\kappa q_{1X} +\kappa(q_{1X}-q_{2X})\right)\delta q_{1X} \\
&\hspace{48mm} +\left(\partial_n\Phi_2+\dfrac1\kappa q_{2X} +\kappa(q_{2X}-q_{1X})\right)\delta q_{2X}
\Bigg],
\end{align}$$

where each $\displaystyle{\partial_n\Phi_i}$ is evaluated on the indicated side of $\displaystyle{X}$. Free variation of the four cut traces gives the interface boundary conditions used below.

For the two limits, the roles of the actions are now explicit:

$$\begin{align}
\kappa\to0: &\quad S_D^{(\kappa)}\ \text{dominates}, & q_{1A}=q_{2A}=q_{1B}=q_{2B}&=0, \\
\kappa\to\infty: &\quad S_{\mathrm{glue}}^{(\kappa)}\ \text{dominates}, & q_{1A}=q_{2A},\quad q_{1B}&=q_{2B}.
\end{align}$$

In the second limit, adding the two boundary equations at each paired cut gives $\displaystyle{\partial_n\Phi_1+\partial_n\Phi_2=0}$, which is derivative matching in the common oriented angular coordinate. Since the two cut actions contain no time derivatives, their Legendre transform reverses their sign. They therefore give precisely the positive interface energy appearing in $\displaystyle{H_\kappa}$ below.

## Bulk Equation and CPS Form

On each wedge the equation of motion is

$$\begin{align}
(\Box-m^{2})\Phi _i & =\left[-\dfrac{1}{1+r^{2}}\partial _t^{2} +\dfrac{1}{r}\partial _r\left(r(1+r^{2})\partial _r\right) +\dfrac{1}{r^{2}}\partial _{\varphi_i}^{2}-m^{2}\right]\Phi _i=0.
\end{align}$$

The equal-time symplectic potential and symplectic form are

$$\begin{align}
\theta & =\sum _{i=1}^{2}\int _0^{\infty}\mathrm{d}r\int _0^{\alpha_i}\mathrm{d}\varphi_i\, \dfrac{r}{1+r^{2}}\partial _t\Phi _i\,\delta\Phi_i, & (\alpha _1,\alpha _2)&=(\alpha,\beta), \\
\omega=\delta\theta & =\sum _{i=1}^{2}\int _0^{\infty}\mathrm{d}r\int _0^{\alpha_i}\mathrm{d}\varphi_i\, \dfrac{r}{1+r^{2}}\delta\partial _t\Phi _i\wedge\delta\Phi_i.
\end{align}$$

The Legendre transform of $\displaystyle{S_\kappa}$ gives the bulk Hamiltonian supplemented by the positive interface quadratic form

$$\begin{align}
H_{\kappa} &=\dfrac12\sum _{i=1}^{2}\int _0^{\infty}\mathrm{d}r\int _0^{\alpha_i}\mathrm{d}\varphi_i \left[\dfrac{1+r^{2}}{r}\Pi_i^{2} +r(1+r^{2})(\partial_r\Phi_i)^{2} +\dfrac1r(\partial_{\varphi_i}\Phi_i)^{2} +rm^{2}\Phi_i^{2}\right] \\
&\quad+\dfrac12\int _0^{\infty}\dfrac{\mathrm{d}r}{r} \left[\dfrac1\kappa\left(q_{1A}^{2}+q_{2A}^{2}+q_{1B}^{2}+q_{2B}^{2}\right) +\kappa\left((q_{1A}-q_{2A})^{2}+(q_{1B}-q_{2B})^{2}\right)\right], \\
\Pi_i&=\dfrac{r}{1+r^{2}}\partial_t\Phi_i.
\end{align}$$

Equivalently, the boundary conditions read from $\displaystyle{\delta S_\kappa|_\Gamma=0}$ can be written uniformly as

$$\begin{align}
\partial _n\Phi_i+\dfrac1\kappa\Phi_i+\kappa(\Phi_i-\Phi_j)&=0
\end{align}$$

at each paired endpoint, where $\displaystyle{\partial_n}$ is the signed outward coordinate derivative $\displaystyle{\pm\partial_{\varphi_i}}$. The common factor $\displaystyle{1/r}$ relating it to the physical unit-normal derivative cancels between the bulk angular energy and the interface quadratic form. Explicitly, at $\displaystyle{A}$,

$$\begin{align}
-\partial_{\varphi_1}\Phi_1|_{0} +\dfrac1\kappa q_{1A}+\kappa(q_{1A}-q_{2A})&=0, \\
\partial_{\varphi_2}\Phi_2|_{\beta} +\dfrac1\kappa q_{2A}+\kappa(q_{2A}-q_{1A})&=0,
\end{align}$$

and at $\displaystyle{B}$,

$$\begin{align}
\partial_{\varphi_1}\Phi_1|_{\alpha} +\dfrac1\kappa q_{1B}+\kappa(q_{1B}-q_{2B})&=0, \\
-\partial_{\varphi_2}\Phi_2|_{0} +\dfrac1\kappa q_{2B}+\kappa(q_{2B}-q_{1B})&=0.
\end{align}$$

These conditions make the angular operator self-adjoint. Together with the bulk equation they also imply conservation of $\displaystyle{H_\kappa}$ and cancellation of the symplectic flux between the two sides of each interface.

## Finite-$\displaystyle{\kappa}$ Angular Spectrum

Separate variables as

$$\begin{align}
\Phi_i(t,r,\varphi_i)&=e^{-i\omega t}R(r)\Theta_i(\varphi_i), & \Theta_i''+\lambda^{2}\Theta_i&=0.
\end{align}$$

The angular quadratic form is

$$\begin{align}
Q_{\kappa}^{\mathrm{ang}}[\Theta] &=\sum _{i=1}^{2}\int _0^{\alpha_i}\mathrm{d}\varphi_i\,|\Theta_i'|^{2} +\dfrac1\kappa\left(|q_{1A}|^{2}+|q_{2A}|^{2}+|q_{1B}|^{2}+|q_{2B}|^{2}\right) \\
&\quad+\kappa\left(|q_{1A}-q_{2A}|^{2}+|q_{1B}-q_{2B}|^{2}\right).
\end{align}$$

It defines a positive self-adjoint operator on $\displaystyle{L^{2}([0,\alpha])\oplus L^{2}([0,\beta])}$. Hence for every finite $\displaystyle{\kappa>0}$ its spectrum consists of a complete discrete set

$$\begin{align}
0<\lambda _1^{(\kappa)}\leq\lambda _2^{(\kappa)}\leq\cdots,
\end{align}$$

counted with multiplicity.

For an exact finite-$\displaystyle{\kappa}$ spectral equation, propagate the Cauchy data $\displaystyle{(q,p)^T=(\Theta,\Theta')^T}$ through an angular interval of length $\displaystyle{s}$ with

$$\begin{align}
P_{\lambda}(s)&=
\begin{pmatrix}
\cos(\lambda s)&\dfrac{\sin(\lambda s)}{\lambda}\\
-\lambda\sin(\lambda s)&\cos(\lambda s)
\end{pmatrix}.
\end{align}$$

At either interface the boundary conditions relate the data immediately before and after crossing in the positive angular direction by

$$\begin{align}
\begin{pmatrix}q_{+}\\
p_{+}\end{pmatrix}
&=J_{\kappa}\begin{pmatrix}q_{-}\\
p_{-}\end{pmatrix}, \\
J_{\kappa}
&=\begin{pmatrix}
1+\kappa^{-2}&\kappa^{-1}\\
2\kappa^{-1}+\kappa^{-3}&1+\kappa^{-2}
\end{pmatrix},
& \det J_{\kappa}&=1.
\end{align}$$

Starting immediately to the $\displaystyle{W_1}$ side of $\displaystyle{A}$ and going once around the circle gives the monodromy

$$\begin{align}
M_{\kappa}(\lambda) &=J_{\kappa}P_{\lambda}(\beta)J_{\kappa}P_{\lambda}(\alpha), & \det M_{\kappa}(\lambda)&=1.
\end{align}$$

Therefore the exact finite-$\displaystyle{\kappa}$ angular spectrum is determined by

$$\begin{align}
F_{\kappa}(\lambda) &:=\operatorname{Tr}M_{\kappa}(\lambda)-2=0, & \lambda&=\lambda_j^{(\kappa)}.
\end{align}$$

For the equal split $\displaystyle{\alpha=\beta=\pi}$, $\displaystyle{M_\kappa=(J_\kappa P_\lambda(\pi))^{2}}$. The spectrum consequently splits into two towers determined by

$$\begin{align}
2(1+\kappa^{-2})\cos(\pi\lambda) +\left[\dfrac{2\kappa^{-1}+\kappa^{-3}}{\lambda}-\dfrac{\lambda}{\kappa}\right] \sin(\pi\lambda)&=\pm2.
\end{align}$$

This is the two-interface analogue of the parity factorization in `continuous theory I.md`. For unequal wedges, the monodromy equation above replaces that parity decomposition.

At $\displaystyle{\lambda=0}$, $\displaystyle{P_\lambda(s)}$ is understood by continuity as $\displaystyle{\left(\begin{smallmatrix}1&s\\0&1\end{smallmatrix}\right)}$. Positivity of $\displaystyle{Q_{\kappa}^{\mathrm{ang}}}$ shows that $\displaystyle{\lambda=0}$ is not an eigenvalue at finite $\displaystyle{\kappa}$.

For each simple root choose a nonzero vector $\displaystyle{v_j\in\ker(M_\kappa(\lambda_j^{(\kappa)})-\mathbf1)}$. At a degenerate root, choose a basis of the kernel and orthonormalize the resulting angular functions. For a simple root the corresponding eigenfunction is obtained without further matching equations:

$$\begin{align}
\Theta_{j,1}^{(\kappa)}(\varphi_1)
&=\mathcal A_j\begin{pmatrix}1&0\end{pmatrix}
P_{\lambda_j^{(\kappa)}}(\varphi_1)v_j, \\
\Theta_{j,2}^{(\kappa)}(\varphi_2)
&=\mathcal A_j\begin{pmatrix}1&0\end{pmatrix}
P_{\lambda_j^{(\kappa)}}(\varphi_2)J_\kappa
P_{\lambda_j^{(\kappa)}}(\alpha)v_j,
\end{align}$$

where $\displaystyle{\mathcal A_j}$, together with the basis choice in a degenerate eigenspace, is fixed by

$$\begin{align}
\sum _{i=1}^{2}\int _0^{\alpha_i}\mathrm{d}\varphi_i\, \Theta_{j,i}^{(\kappa)}\Theta_{k,i}^{(\kappa)}&=\delta_{jk}.
\end{align}$$

## Radial Modes and Quantization

For any angular eigenvalue $\displaystyle{\lambda\geq0}$, the regular standard-normalizable radial equation is

$$\begin{align}
\left[\dfrac1r\partial_r\left(r(1+r^{2})\partial_r\right) +\dfrac{\omega^{2}}{1+r^{2}}-\dfrac{\lambda^{2}}{r^{2}}-m^{2}\right]R(r)&=0.
\end{align}$$

Its normalized solutions are

$$\begin{align}
\widehat R_{n,\lambda}(r) &=\left[\dfrac{2\omega_{n,\lambda}\,n!\,\Gamma(n+\lambda+\Delta)} {\Gamma(n+\lambda+1)\Gamma(n+\Delta)}\right]^{1/2} r^{\lambda}(1+r^{2})^{-\frac{\Delta+\lambda}{2}} P_n^{(\lambda,\Delta-1)}\left(\dfrac{1-r^{2}}{1+r^{2}}\right), \\
\omega_{n,\lambda}&=\Delta+2n+\lambda, & n&=0,1,2,\ldots,
\end{align}$$

with

$$\begin{align}
\int _0^{\infty}\mathrm{d}r\,\dfrac{r}{1+r^{2}} \widehat R_{n,\lambda}(r)\widehat R_{m,\lambda}(r)&=\delta_{nm}.
\end{align}$$

The complete normalized positive-frequency modes of the finite-$\displaystyle{\kappa}$ theory are

$$\begin{align}
\Phi_{n,j,i}^{(\kappa)}(t,r,\varphi_i) &=\dfrac{e^{-i\omega_{n,j}^{(\kappa)}t}} {\sqrt{2\omega_{n,j}^{(\kappa)}}} \widehat R_{n,\lambda_j^{(\kappa)}}(r) \Theta_{j,i}^{(\kappa)}(\varphi_i), \\
\omega_{n,j}^{(\kappa)}&=\Delta+2n+\lambda_j^{(\kappa)}, \\
(\Phi_{n,j}^{(\kappa)},\Phi_{m,k}^{(\kappa)}) &=iX_{m,k}^{*}\cdot X_{n,j}\cdot\omega =\delta_{nm}\delta_{jk}.
\end{align}$$

Expand the two wedge fields as

$$\begin{align}
\Phi_i(t,r,\varphi_i) &=\sum _{n=0}^{\infty}\sum _{j=1}^{\infty} \left(b_{n,j}\Phi_{n,j,i}^{(\kappa)} +b_{n,j}^{\dagger}\Phi_{n,j,i}^{(\kappa)*}\right).
\end{align}$$

Then

$$\begin{align}
\omega &=i\sum _{n=0}^{\infty}\sum _{j=1}^{\infty} \delta b_{n,j}^{\dagger}\wedge\delta b_{n,j}, \\
\{b_{n,j}^{\dagger},b_{m,k}\} &=i\delta_{nm}\delta_{jk}, \\
[b_{n,j},b_{m,k}^{\dagger}] &=\delta_{nm}\delta_{jk}, \\
H_\kappa &=\sum _{n=0}^{\infty}\sum _{j=1}^{\infty} \omega_{n,j}^{(\kappa)}\left(b_{n,j}^{\dagger}b_{n,j}+\dfrac12\right).
\end{align}$$

The vacuum $\displaystyle{\ket{\Omega_\kappa}}$ is annihilated by every $\displaystyle{b_{n,j}}$.

## The $\displaystyle{\kappa\to0}$ Limit

The term proportional to $\displaystyle{\kappa^{-1}}$ forces all four artificial-interface traces to vanish, while the difference penalties disappear. The angular operator therefore becomes the direct sum of the two wedge Dirichlet operators. The monodromy equation gives the same result:

$$\begin{align}
\lim_{\kappa\to0}\kappa^{6}F_\kappa(\lambda) &=\dfrac{\sin(\lambda\alpha)\sin(\lambda\beta)}{\lambda^{2}}.
\end{align}$$

Thus the limiting angular modes and separation constants are

$$\begin{align}
\Theta_{1,p}^{D}(\varphi_1) &=\sqrt{\dfrac2\alpha}\sin\left(\dfrac{\pi p}{\alpha}\varphi_1\right), & \lambda_{1,p}^{D}&=\dfrac{\pi p}{\alpha}, \\
\Theta_{2,p}^{D}(\varphi_2) &=\sqrt{\dfrac2\beta}\sin\left(\dfrac{\pi p}{\beta}\varphi_2\right), & \lambda_{2,p}^{D}&=\dfrac{\pi p}{\beta}, & p&=1,2,\ldots.
\end{align}$$

Each displayed function is understood to vanish on the other wedge. The frequencies, commutators, Hamiltonian, and Hilbert space become

$$\begin{align}
\omega_{i,n,p}^{D} &=\Delta+2n+\dfrac{\pi p}{\alpha_i}, \\
[a_{i,n,p},a_{j,m,q}^{\dagger}] &=\delta_{ij}\delta_{nm}\delta_{pq}, \\
H_{\kappa\to0} &=\sum _{i=1}^{2}\sum _{n=0}^{\infty}\sum _{p=1}^{\infty} \omega_{i,n,p}^{D}\left(a_{i,n,p}^{\dagger}a_{i,n,p}+\dfrac12\right), \\
\mathcal H_{\kappa\to0} &=\mathcal F_{W_1,D}\otimes\mathcal F_{W_2,D}.
\end{align}$$

This is the quantization of two decoupled angular wedges with homogeneous Dirichlet conditions on both artificial cuts.

## The $\displaystyle{\kappa\to\infty}$ Limit

The difference penalties force

$$\begin{align}
q_{1A}&=q_{2A}, & q_{1B}&=q_{2B},
\end{align}$$

and the two boundary equations at each interface then imply matching of the derivatives in the common oriented angular coordinate. Hence the two wedge fields descend to one periodic field on the full angular circle. At the level of the exact spectral equation,

$$\begin{align}
\lim_{\kappa\to\infty}F_\kappa(\lambda) &=2\left(\cos(2\pi\lambda)-1\right) =-4\sin^{2}(\pi\lambda).
\end{align}$$

The limiting angular spectrum is therefore

$$\begin{align}
\lambda&=|\ell|, & \ell&\in\mathbb Z, & \Theta_\ell^{P}(\varphi)&=\dfrac{e^{i\ell\varphi}}{\sqrt{2\pi}}.
\end{align}$$

In particular, the $\displaystyle{\ell=0}$ angular constant mode, absent from both strict wedge-Dirichlet theories, appears as the lowest finite-$\displaystyle{\kappa}$ eigenvalue tends to zero. Inside every limiting $\displaystyle{|\ell|\geq1}$ degenerate eigenspace, the real finite-$\displaystyle{\kappa}$ eigenfunctions may be rotated to the standard cosine/sine basis or to the complex basis above.

The normalized global modes and their quantization are

$$\begin{align}
\Phi_{n,\ell}^{P}(t,r,\varphi) &=\dfrac{e^{-i\omega_{n,\ell}t}}{\sqrt{2\omega_{n,\ell}}} \widehat R_{n,|\ell|}(r)\dfrac{e^{i\ell\varphi}}{\sqrt{2\pi}}, \\
\omega_{n,\ell}&=\Delta+2n+|\ell|, \\
\Phi(t,r,\varphi) &=\sum _{n=0}^{\infty}\sum _{\ell\in\mathbb Z} \left(c_{n,\ell}\Phi_{n,\ell}^{P} +c_{n,\ell}^{\dagger}\Phi_{n,\ell}^{P*}\right), \\
[c_{n,\ell},c_{m,s}^{\dagger}] &=\delta_{nm}\delta_{\ell s}, \\
H_{\kappa\to\infty} &=\sum _{n=0}^{\infty}\sum _{\ell\in\mathbb Z} \omega_{n,\ell}\left(c_{n,\ell}^{\dagger}c_{n,\ell}+\dfrac12\right).
\end{align}$$

This is precisely the standard quantization of the normalizable scalar on global $\displaystyle{\mathrm{AdS}_{3}}$.

## Scope of the Limits

The results above establish the finite-$\displaystyle{\kappa}$ self-adjoint mode problem, its canonical Fock quantization, and the mode-by-mode spectral limits. Three qualifications remain:

1. At finite $\displaystyle{\kappa}$, the artificial interfaces extend to $\displaystyle{r=0}$. The regular solution behaves as $\displaystyle{R\sim r^{\lambda_j^{(\kappa)}}}$ and has finite quadratic-form energy, but it need not be globally smooth across the interface corner. Global smoothness is recovered only in the periodic $\displaystyle{\kappa\to\infty}$ limit.
2. A quantum field has no unsmeared pointwise trace on a radial cut. The interface Hamiltonian is therefore a classical quadratic form and a formal mode definition; a literal composite boundary operator requires an angular/radial regulator or interface smearing.
3. Spectral convergence does not by itself prove convergence of the full vacua or a unitary identification of the continuum Fock representations. In particular, it does not remove the Shale--Stinespring obstruction between the strict wedge-Dirichlet product representation and the global periodic representation.
