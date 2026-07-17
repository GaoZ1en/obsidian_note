# Two different approaches to the heat kernel

## Verdict

The two constructions give the same physical one-loop partition function only after the operator, Hilbert-space measure, functional measure, boundary conditions, and local counterterms are matched. They do **not** define the same heat kernel when the lapse depends on space.

The standard covariant heat kernel is the heat kernel of

$$\begin{align}
\mathcal{O}=-\nabla ^{2}+\mu ^{2}
\end{align}$$

with respect to the covariant measure $\sqrt{g}\,\mathrm{d}^{d}X$. The canonical mode expansion naturally produces instead the heat kernel of

$$\begin{align}
\mathcal{D}=N^{2}\mathcal{O}=-\partial _{\tau}^{2}+H
\end{align}$$

with respect to the static-slice measure $\sqrt{\sigma}\,\mathrm{d}^{d-1}x/N$. For an ultrastatic metric, $N=1$, these are the same operator and the two kernels coincide. For a spatially varying lapse, $K_{\mathcal O}\neq \mathcal{K}_{\mathcal D}$, although their determinants differ only by the local functional-measure factor described below. In particular, their finite nonlocal thermal contributions agree.

Throughout this note, the shift is set to zero. A nonzero stationary shift produces mixed temporal-spatial derivatives and cannot be hidden in the operator used below.

## Covariant heat kernel

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

For a continuous spectrum, the sum is replaced by the corresponding spectral integral. Ultraviolet divergences in the proper-time integral are removed by a specified local renormalization scheme.

## Static slicing and the canonical spatial operator

Take a static Euclidean metric

$$\begin{align}
\mathrm{d}s^{2}=N^{2}(x)\mathrm{d}\tau ^{2}+\sigma _{ab}(x)\mathrm{d}x^{a}\mathrm{d}x^{b}, \qquad \sqrt g=N\sqrt\sigma .
\end{align}$$

The scalar Laplacian is

$$\begin{align}
\nabla ^{2}\phi =\frac{1}{N^{2}}\partial _{\tau}^{2}\phi +\frac{1}{N\sqrt\sigma}\partial _a\!\left(N\sqrt\sigma\,\sigma ^{ab}\partial _b\phi\right).
\end{align}$$

Define

$$\begin{align}
w(x) & :=\frac{\sqrt\sigma}{N}, \\
H & :=-\frac{N}{\sqrt\sigma}\partial _a\!\left(N\sqrt\sigma\,\sigma ^{ab}\partial _b\right)+N^{2}\mu ^{2}, \\
\mathcal D & :=-\partial _\tau^{2}+H.
\end{align}$$

Then

$$\begin{align}
\mathcal O=N^{-2}\mathcal D, \qquad S_E=\frac{1}{2}\int \mathrm d\tau\,\mathrm d^{d-1}x\,w(x)\,\phi\mathcal D\phi.
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

This is the first decisive correction to the proposed alternative construction: $\delta^{(d)}(X-Y)/(N\sqrt\sigma)$ is the identity kernel for $\mathcal O$ in the covariant measure, whereas $\mathcal D$ requires the identity kernel shown above. The two initial conditions differ by $N^{2}$.

The normalization

$$\begin{align}
\int _\Sigma\mathrm d^{d-1}x\,w(x)u_j u_k^{*} =\frac{\delta _{jk}}{2\omega_j}
\end{align}$$

is instead the conventional Lorentzian Klein--Gordon normalization of positive-frequency modes $e^{-i\omega_jt}u_j(x)$. It is useful in canonical quantization but is not the Euclidean $L^{2}$ normalization needed in the spectral definition of a heat kernel. The two conventions are related simply by $\widehat u_j=\sqrt{2\omega_j}\,u_j$.

## Why the kernels differ but the partition functions agree

When $N$ varies over the slice,

$$\begin{align}
\mathcal O\big(e^{i\nu_k\tau}u_j(x)\big) =N^{-2}(x)(\nu_k^{2}+\omega_j^{2})e^{i\nu_k\tau}u_j(x),
\end{align}$$

so $e^{i\nu_k\tau}u_j(x)$ is generally not an eigenfunction of $\mathcal O$. Equivalently,

$$\begin{align}
e^{-sN^{-2}\mathcal D}\neq e^{-s\mathcal D}.
\end{align}$$

Therefore one must not insert $\operatorname{Tr}_{w}e^{-s\mathcal D}$ directly into the formula for $\det _g\mathcal O$ and claim that the two heat kernels are identical.

Nevertheless, they represent the same quadratic form:

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

For $N=1$, $J_N=1$, $\mathcal O=\mathcal D$, and the equality holds already at the level of the heat kernels. A constant lapse can be reduced to this case by using proper Euclidean time and rescaling $\beta$.

## Check with a scalar on thermal AdS$_3$

Set the AdS radius to one and use global Euclidean AdS$_3$,

$$\begin{align}
\mathrm ds^{2}=(1+r^{2})\mathrm d\tau^{2} +\frac{\mathrm dr^{2}}{1+r^{2}}+r^{2}\mathrm d\phi^{2}, \qquad \phi\sim\phi+2\pi.
\end{align}$$

The nonrotating thermal quotient has $\tau\sim\tau+\beta$. More generally, the angular potential used below is implemented by the identification

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

with $C_{n\ell}$ chosen to make the modes orthonormal in the measure $r\,\mathrm dr\,\mathrm d\phi/(1+r^{2})$. They obey

$$\begin{align}
Hu_{n\ell}=\omega _{n\ell}^{2}u_{n\ell}, \qquad \omega _{n\ell}=\Delta+2n+|\ell|, \qquad n\in\mathbb N_0,\qquad \ell\in\mathbb Z.
\end{align}$$

Consequently,

$$\begin{align}
Z_{\mathrm{can}} \propto\prod _{n=0}^{\infty}\prod _{\ell\in\mathbb Z}
\prod _{k\in\mathbb Z} \left(\nu_k^{2}+\omega _{n\ell}^{2}\right)^{-1/2}.
\end{align}$$

For each oscillator,

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

The discarded identity-image term in the covariant calculation corresponds to the vacuum-energy factor in the oscillator calculation. Their finite values agree only after the same functional measure and local renormalization prescription are chosen.

## Exact diagnosis of the proposed alternative construction

The proposed $\mathcal K$ does not yet define a valid alternative heat kernel because:

1. Time-dependent functions were normalized by integrating only over the spatial slice.
2. The Lorentzian factor $1/(2\omega_j)$ was used as though it were a Euclidean $L^{2}$ normalization.
3. The Matsubara label needed to complete the Euclidean spacetime basis was absent.
4. The heat equation used $\mathcal D$, but the initial condition was the identity kernel appropriate to $\mathcal O$.
5. The local Jacobian relating the covariant and canonical functional measures was omitted.

After these points are corrected, the second construction is the canonical mode decomposition of the same Gaussian path integral. It reproduces the covariant thermal determinant, but its heat kernel is generally the heat kernel of $\mathcal D=N^{2}\mathcal O$, not the covariant heat kernel of $\mathcal O$.
