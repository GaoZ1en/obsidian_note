see 2310.08522 for a general discussion.

## Covariant Heat Kernel

Consider a real Euclidean scalar with

$$\begin{align}
S_{E}[\phi] & =\frac{1}{2}\int _{M}\mathrm{d}^{d}X\sqrt{g}\,\phi\mathcal{O}\phi, & \mathcal{O} & =-\nabla ^{2}+\mu ^{2}.
\end{align}$$

Assume boundary conditions for which $\mathcal O$ is positive and self-adjoint, with zero modes treated separately. Its heat kernel is defined by

$$\begin{align}
(\partial _{s}+\mathcal{O}_{X})K_{\mathcal O}(s;X,Y) & =0, \\
K_{\mathcal O}(0;X,Y) & =\delta _{g}(X,Y) =\frac{\delta ^{(d)}(X-Y)}{\sqrt{g(X)}}.
\end{align}$$

If $\mathcal{O}\psi _A=\lambda _A\psi _A$ and the modes are orthonormal in $L^{2}(M,\sqrt g\,\mathrm d^dX)$, then

$$\begin{align}
K_{\mathcal O}(s;X,Y) & =\sum _A e^{-s\lambda _A}\psi _A(X)\psi _A^{*}(Y), \\
\log Z_{\mathrm{cov}} & =-\frac{1}{2}\log\det _g\mathcal O =\frac{1}{2}\int _{0^{+}}^{\infty}\frac{\mathrm{d}s}{s}\operatorname{Tr}_{g}e^{-s\mathcal O}.
\end{align}$$

## Static Slicing and the Canonical Spatial Operator

Take a static Euclidean metric (shifts are set to 0)

$$\begin{align}
\mathrm{d}s^{2}=N^{2}(x)\mathrm{d}\tau ^{2}+\sigma _{ab}(x)\mathrm{d}x^{a}\mathrm{d}x^{b}, \qquad \sqrt g=N\sqrt\sigma .
\end{align}$$

The scalar Laplacian is

$$\begin{align}
\nabla ^{2}\phi =\frac{1}{N^{2}}\partial _{\tau}^{2}\phi +\frac{1}{N\sqrt\sigma}\partial _a\!\left(N\sqrt\sigma\,\sigma ^{ab}\partial _b\phi\right).
\end{align}$$

Define

$$\begin{align}
H & :=-\frac{N}{\sqrt\sigma}\partial _a\!\left(N\sqrt\sigma\,\sigma ^{ab}\partial _b\right)+N^{2}\mu ^{2}, \\
\mathcal D & :=-\partial _\tau^{2}+H.
\end{align}$$

Then

$$\begin{align}
\mathcal O=N^{-2}\mathcal D, \qquad S_E=\frac{1}{2}\int \mathrm d\tau\,\mathrm d^{d-1}x\,\dfrac{\sqrt{ \sigma }}{N}\,\phi\mathcal D\phi.
\end{align}$$

After the boundary term is set to zero, $H$ is self-adjoint with respect to the weighted spatial inner product:

$$\begin{align}
\langle u,Hv\rangle _w =\int _\Sigma \mathrm d^{d-1}x\,N\sqrt\sigma \left(\sigma ^{ab}\partial _a u^{*}\partial _b v+\mu ^2u^{*}v\right).
\end{align}$$

Choose a complete spatial basis

$$\begin{align}
Hu_j & =\omega _j^{2}u_j, \\
\int _\Sigma\mathrm d^{d-1}x\,w(x)u_j(x)u_k^{*}(x) & =\delta _{jk}, \\
\sum _j u_j(x)u_j^{*}(y) & =\delta _w(x,y) =\frac{N(x)}{\sqrt{\sigma(x)}}\delta ^{(d-1)}(x-y).
\end{align}$$

The genuinely off-shell expansion is

$$\begin{align}
\phi(\tau,x)=\sum _j q_j(\tau)u_j(x),
\end{align}$$

where each $q_j(\tau)$ remains an arbitrary function. Substitution into the action gives

$$\begin{align}
S_E=\frac{1}{2}\sum _j\int \mathrm d\tau\, q_j^{*}(\tau)\left(-\partial _\tau^{2}+\omega _j^{2}\right)q_j(\tau).
\end{align}$$

For a real scalar one may either use a real spatial basis or impose the usual reality relation between complex-conjugate modes.

On a thermal circle $\tau\sim\tau+\beta$, introduce the Matsubara frequencies $\nu _k=2\pi k/\beta$. The heat kernel naturally produced by this decomposition is

$$\begin{align}
\mathcal K_{\mathcal D}(s;\tau,x;\tau',y) =\frac{1}{\beta}\sum _{k\in\mathbb Z}\sum _j e^{-s(\nu _k^{2}+\omega _j^{2})} e^{i\nu _k(\tau-\tau')}u_j(x)u_j^{*}(y).
\end{align}$$

It satisfies

$$\begin{align}
(\partial _s+\mathcal D)\mathcal K_{\mathcal D} & =0, \\
\mathcal K_{\mathcal D}(0;\tau,x;\tau',y) & =\delta(\tau-\tau')\delta _w(x,y) \\
& =\frac{N(x)}{\sqrt{\sigma(x)}} \delta(\tau-\tau')\delta ^{(d-1)}(x-y).
\end{align}$$

## Why the Kernels Differ but the Partition Functions Agree

$\displaystyle{\mathcal{O}}$ and $\displaystyle{\mathcal{D}}$ represent the same quadratic form:

$$\begin{align}
\langle\phi,\mathcal O\phi\rangle _g =\langle\phi,\mathcal D\phi\rangle _w.
\end{align}$$

The remaining difference is the functional measure. The two field-space norms obey

$$\begin{align}
\lVert\delta\phi\rVert _g^{2} =\langle\delta\phi,N^{2}\delta\phi\rangle _w.
\end{align}$$

In a common finite-mode or lattice regulator this gives

$$\begin{align}
\mathcal D\mu_g[\phi] & =J_N\,\mathcal D\mu_w[\phi], \\
J_N & =\left[\det _w(N^{2})\right]^{1/2}, \\
Z_{\mathrm{cov}} & =\left[\det _g\mathcal O\right]^{-1/2} =J_N\left[\det _w\mathcal D\right]^{-1/2}.
\end{align}$$

$J_N$ is the determinant of a multiplication operator. In the continuum it is regulator dependent and local; possible multiplicative-anomaly terms are local as well. They belong to the normalization of the functional measure and to local counterterms. Thus a canonical calculation that retains the induced Jacobian gives the same partition function as the covariant calculation. If $J_N$ is omitted, the two answers can differ in their local vacuum term, but not in the finite nonlocal thermal contribution.

## Check on Thermal AdS$_3$

Set the AdS radius to one and use global Euclidean AdS$_3$,

$$\begin{align}
\mathrm ds^{2}=(1+r^{2})\mathrm d\tau^{2} +\frac{\mathrm dr^{2}}{1+r^{2}}+r^{2}\mathrm d\phi^{2}, \qquad \phi\sim\phi+2\pi.
\end{align}$$

The thermal quotient is implemented by the identification

$$\begin{align}
(\tau,\phi)\sim(\tau+\beta,\phi+\vartheta).
\end{align}$$

Here

$$\begin{align}
N=\sqrt{1+r^{2}}, \qquad \sqrt\sigma=\frac{r}{\sqrt{1+r^{2}}}, \qquad w(r)=\frac{r}{1+r^{2}}.
\end{align}$$

The canonical spatial operator is

$$\begin{align}
H=-(1+r^{2})\left[ (1+r^{2})\partial _r^{2} +\frac{1+3r^{2}}{r}\partial _r +\frac{1}{r^{2}}\partial _\phi^{2} -\mu ^{2} \right].
\end{align}$$

For $\mu^{2}>-1$ and standard boundary conditions, define

$$\begin{align}
\Delta=1+\sqrt{1+\mu ^2}.
\end{align}$$

A convenient basis is

$$\begin{align}
u_{n\ell}(r,\phi) =C_{n\ell}e^{i\ell\phi}r^{|\ell|} (1+r^{2})^{-(\Delta+|\ell|)/2} P_n^{(\Delta-1,|\ell|)}\!\left(\frac{r^{2}-1}{r^{2}+1}\right),
\end{align}$$

where Jacobi orthogonality fixes the normalization in the measure $r\,\mathrm dr\,\mathrm d\phi/(1+r^{2})$ to be

$$\begin{align}
|C_{n\ell}|^{2} & =\frac{(\Delta+2n+|\ell|)n!\,\Gamma(n+\Delta+|\ell|)} {\pi\,\Gamma(n+\Delta)\Gamma(n+|\ell|+1)}.
\end{align}$$

These modes obey

$$\begin{align}
Hu_{n\ell}=\omega _{n\ell}^{2}u_{n\ell}, \qquad \omega _{n\ell}=\Delta+2n+|\ell|, \qquad n\in\mathbb N_0,\qquad \ell\in\mathbb Z.
\end{align}$$

### Explicit Canonical Heat Kernel

On the rotating thermal quotient, a separated mode must be invariant under $(\tau,\phi)\mapsto(\tau+\beta,\phi+\vartheta)$. Hence

$$\begin{align}
\Psi _{kn\ell}(\tau,r,\phi) & =\frac{1}{\sqrt\beta}e^{i\nu _{k\ell}\tau}u_{n\ell}(r,\phi), & \nu _{k\ell}&=\frac{2\pi k-\ell\vartheta}{\beta},
\end{align}$$

with $k,\ell\in\mathbb Z$ and $n\in\mathbb N_0$. Define

$$\begin{align}
z(r):=\frac{r^{2}-1}{r^{2}+1}.
\end{align}$$

The scalar canonical heat kernel is therefore the following explicit convergent spectral sum for $s>0$:

$$\begin{aligned}
\mathcal K_{\mathcal D}^{(\beta,\vartheta)} &(s;\tau,r,\phi;\tau',r',\phi') \\
&=\frac{1}{\beta}\sum_{k\in\mathbb Z}\sum_{n=0}^{\infty}\sum_{\ell\in\mathbb Z}
|C_{n\ell}|^{2}
\exp\!\left[-s\left(\nu _{k\ell}^{2}+\omega _{n\ell}^{2}\right) +i\nu _{k\ell}(\tau-\tau')+i\ell(\phi-\phi')\right] \\
&\quad\times (rr')^{|\ell|}
\big[(1+r^{2})(1+r'^{2})\big]^{-(\Delta+|\ell|)/2}
P_n^{(\Delta-1,|\ell|)}\!\big(z(r)\big)
P_n^{(\Delta-1,|\ell|)}\!\big(z(r')\big).
\end{aligned}$$

It obeys $(\partial_s+\mathcal D)\mathcal K_{\mathcal D}^{(\beta,\vartheta)}=0$ and tends to the delta distribution appropriate to the thermal quotient as $s\to0^+$. To display the quotient geometrically, define the unquotiented spatial kernel

$$\begin{align}
K_H(s;r,\phi;r',\phi') &:=\sum_{n=0}^{\infty}\sum_{\ell\in\mathbb Z} e^{-s\omega _{n\ell}^{2}}u_{n\ell}(r,\phi)u_{n\ell}^{*}(r',\phi').
\end{align}$$

Poisson resummation of $k$ gives the equivalent image form

$$\begin{align}
\mathcal K_{\mathcal D}^{(\beta,\vartheta)} &=\frac{1}{\sqrt{4\pi s}}\sum_{m\in\mathbb Z} e^{-(\tau-\tau'+m\beta)^{2}/(4s)} K_H\!\left(s;r,\phi;r',\phi'-m\vartheta\right).
\end{align}$$

Unlike the covariant $\mathbb H_3$ kernel, this pointwise spatial kernel is not determined only by the three-dimensional geodesic distance: $H=N^{2}\mathcal O+\partial_\tau^{2}$ depends on the chosen static slicing. Its integrated trace does simplify. Using

$$\begin{align}
N=p+\bar p=2n+|\ell|,\qquad \ell=p-\bar p,
\end{align}$$

one obtains

$$\begin{aligned}
\operatorname{Tr}_{w}e^{-s\mathcal D} &=\frac{\beta}{\sqrt{4\pi s}}\sum_{m\in\mathbb Z} e^{-m^{2}\beta^{2}/(4s)}
\sum_{N=0}^{\infty}e^{-s(\Delta+N)^{2}}\Xi _N(m\vartheta), \\
\Xi _N(\alpha) &:=\sum_{p=0}^{N}e^{i\alpha(2p-N)} =\frac{\sin((N+1)\alpha)}{\sin\alpha}, \qquad \Xi _N(0)=N+1.
\end{aligned}$$

The ratio of sines is understood by continuity at its removable singularities. The $m=0$ term is the canonical vacuum contribution. Removing it and using

$$\begin{align}
\int_0^\infty \mathrm ds\,s^{-3/2} e^{-a^{2}/(4s)-b^{2}s}=\frac{2\sqrt\pi}{a}e^{-ab}, \qquad a,b>0,
\end{align}$$

gives

$$\begin{align}
\frac{1}{2}\int_0^\infty\frac{\mathrm ds}{s} \left.\operatorname{Tr}_{w}e^{-s\mathcal D}\right|_{m\ne0} &=\sum_{m=1}^{\infty}\frac{e^{-m\beta\Delta}}{m}
\sum_{N=0}^{\infty}e^{-m\beta N}\Xi _N(m\vartheta) \\
&=\sum_{m=1}^{\infty} \frac{e^{-m\beta\Delta}} {m(1-e^{-m\beta+im\vartheta})(1-e^{-m\beta-im\vartheta})}.
\end{align}$$

Equivalently, the determinant is

$$\begin{align}
Z_{\mathrm{can}} \propto\prod _{n=0}^{\infty}\prod _{\ell\in\mathbb Z}
\prod _{k\in\mathbb Z} \left(\nu_{k\ell}^{2}+\omega _{n\ell}^{2}\right)^{-1/2}.
\end{align}$$

For $\vartheta=0$, each oscillator gives

$$\begin{align}
\left[\det(-\partial _\tau^{2}+\omega^{2})\right]^{-1/2} =\frac{e^{-\beta\omega/2}}{1-e^{-\beta\omega}}.
\end{align}$$

The product of $e^{-\beta\omega/2}$ is the regularization-dependent vacuum contribution. The finite thermal part is

$$\begin{align}
Z_{\mathrm{can,th}}(\beta,\vartheta) =\prod _{n=0}^{\infty}\prod _{\ell\in\mathbb Z} \frac{1}{1-e^{-\beta\omega_{n\ell}+i\vartheta\ell}}.
\end{align}$$

Let

$$\begin{align}
q=e^{-\beta+i\vartheta}, \qquad \bar q=e^{-\beta-i\vartheta}, \qquad h=\bar h=\frac{\Delta}{2}.
\end{align}$$

The bijection

$$
(p,\bar p)=
\begin{cases}
(n+\ell,n), & \ell\geq 0, \\
(n,n+|\ell|), & \ell<0
\end{cases}
$$

turns the canonical product into

$$\begin{align}
Z_{\mathrm{can,th}} & =\prod _{p,\bar p=0}^{\infty} \frac{1}{1-q^{h+p}\bar q^{h+\bar p}}, \\
\log Z_{\mathrm{can,th}} & =\sum _{k=1}^{\infty} \frac{|q|^{k\Delta}}{k|1-q^{k}|^{2}}.
\end{align}$$

Now use the covariant heat kernel on $\mathbb H_3$,

$$\begin{align}
K_{\mathcal O}^{\mathbb H_3}(s;\chi) =\frac{e^{-(\mu ^2+1)s-\chi^{2}/(4s)}}{(4\pi s)^{3/2}} \frac{\chi}{\sinh\chi},
\end{align}$$

where $\chi$ is the geodesic distance. The method of images on thermal AdS$_3=\mathbb H_3/\mathbb Z$ gives, after removing the identity image and hence the local vacuum term,

$$\begin{align}
\log Z_{\mathrm{cov,th}} =\frac{1}{2}\int _0^{\infty}\frac{\mathrm ds}{s} \sum _{\gamma\neq 1}\int _{\mathbb H_3/\mathbb Z}\mathrm d^{3}X\sqrt g\, K_{\mathcal O}^{\mathbb H_3}(s;X,\gamma X) =\sum _{k=1}^{\infty}\frac{|q|^{k\Delta}}{k|1-q^{k}|^{2}}.
\end{align}$$

Therefore

$$\begin{align}
\boxed{Z_{\mathrm{cov,th}}=Z_{\mathrm{can,th}}.}
\end{align}$$
