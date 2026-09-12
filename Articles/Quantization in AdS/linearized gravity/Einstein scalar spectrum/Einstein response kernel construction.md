# Explicit Einstein Response Kernel

This calculation supplies explicit coefficient functions for an auxiliary Euclidean AdS$_3$ kernel and its Lorentzian retarded continuation. It uses classical Green functions; no path integral or change of quantization prescription is involved. The compact solution-space notation and homogeneous-data convention remain in [Einstein response in de Donder gauge](Einstein%20response%20in%20de%20Donder%20gauge.md).

The kernel is normalized by $\mathcal E^{(1)}G=1$ on conserved sources. Thus the scalar backreaction is $q=\tfrac12GT$. The Euclidean construction below first acts on smooth compactly supported conserved test sources. The [scalar-source prescription](Einstein%20scalar%20response%20prescription.md) supplies the additional construction on finite scalar-mode source spaces, including time prescriptions, no-log matching, and constraint-compatible initial data. Those results do not follow merely from the separated-point coefficients below.

## Separating the Conserved Source

Let $\mathscr D_3,\mathscr D_4$ denote scalar inverses of $\Box_0-3,\Box_0-4$ with consistent boundary and time prescriptions. Define the transverse scalar tensor operator

$$\begin{align}
(\mathcal P\chi)_{\mu\nu} &=\nabla_\mu\nabla_\nu\chi-g^{(0)}_{\mu\nu}(\Box_0-2)\chi,\\
\nabla^\mu(\mathcal P\chi)_{\mu\nu}&=0,& g^{(0)\mu\nu}(\mathcal P\chi)_{\mu\nu}&=-2(\Box_0-3)\chi.
\end{align}$$

For $\nabla^\mu S_{\mu\nu}=0$, write $S=g^{(0)\mu\nu}S_{\mu\nu}$ and

$$\begin{align}
S_{\mu\nu}^{\mathrm{TT}} &=S_{\mu\nu}+\frac12(\mathcal P\mathscr D_3S)_{\mu\nu}.
\end{align}$$

This source is transverse and traceless. Let $\mathscr H_2$ be the transverse-traceless inverse normalized by $-(\Box_0+2)\mathscr H_2=1_{\mathrm{TT}}$. The harmonic-gauge response to $S_{\mu\nu}$ is

$$\begin{align}
(GS)_{\mu\nu} &=2(\mathscr H_2S^{\mathrm{TT}})_{\mu\nu} +\left[\nabla_\mu\nabla_\nu +g^{(0)}_{\mu\nu}(\Box_0-4)\right]\mathscr D_4\mathscr D_3 S.
\end{align}$$

To verify the scalar part, the exact identities are

$$\begin{align}
C\!\left[\nabla\nabla\chi+g^{(0)}(\Box_0-4)\chi\right]&=0,\\
\mathcal E^{(1)}\!\left[\nabla\nabla\chi+g^{(0)}(\Box_0-4)\chi\right] &=-\frac12\mathcal P(\Box_0-4)\chi.
\end{align}$$

The tensor term supplies $S^{\mathrm{TT}}$ and the scalar term supplies $-\mathcal P\mathscr D_3S/2$. Their sum is $S_{\mu\nu}$. This also fixes the factor $2$ in front of the spin-2 kernel.

## Explicit Scalar Coefficients

On $H^3$, let $\ell>0$ be geodesic distance. The decaying scalar kernels are

$$\begin{align}
F_3(\ell)&=-\frac{e^{-2\ell}}{4\pi\sinh\ell},& F_4(\ell)&=-\frac{e^{-\sqrt5\,\ell}}{4\pi\sinh\ell}.
\end{align}$$

They solve $(\Box_E-m^2)F_{m^2}=\delta_E$ for $m^2=3,4$. The sign follows from the short-distance flux
$\lim_{\ell\to0}4\pi\sinh^2\ell\,\partial_\ell F_{m^2}=1$.

The resolvent identity gives $\mathscr D_4\mathscr D_3=\mathscr D_4-\mathscr D_3$. Put

$$\begin{align}
F_{43}(\ell)&=F_4(\ell)-F_3(\ell) =\frac{e^{-2\ell}-e^{-\sqrt5\,\ell}}{4\pi\sinh\ell}.
\end{align}$$

Since the spin-2 kernel is traceless and transverse in its source indices, it annihilates $\mathcal P\chi$ after integration by parts on the test-source domain. The Euclidean kernel can therefore be written directly as

$$\begin{align}
G^E_{\mu\nu;\rho'\sigma'}(x,x') &=2H_{\mu\nu;\rho'\sigma'}(x,x')\\
&\quad+\left[\nabla_\mu\nabla_\nu F_{43}(\ell) +g^E_{\mu\nu}F_3(\ell)\right]g^E_{\rho'\sigma'}.
\end{align}$$

Here all four indices are covariant; raise the primed pair before contracting with $S_{\rho'\sigma'}$. As a normalization check,
$g_E^{\mu\nu}G^E_{\mu\nu;\rho'\sigma'}=4F_4g^E_{\rho'\sigma'}$.

## Explicit Spin-2 Kernel

Let $n_\mu=\nabla_\mu\ell$, $n_{\rho'}=\nabla_{\rho'}\ell$, and let $I_{\mu\rho'}$ be parallel transport along the geodesic, with $I_\mu{}^{\rho'}n_{\rho'}=-n_\mu$. Define

$$\begin{align}
t_{\mu\nu}&=g^E_{\mu\nu}-n_\mu n_\nu,& t'_{\rho'\sigma'}&=g^E_{\rho'\sigma'}-n_{\rho'}n_{\sigma'},& I^\perp_{\mu\rho'}&=I_{\mu\rho'}+n_\mu n_{\rho'}.
\end{align}$$

The three rotationally invariant maps between symmetric traceless tensors are

$$\begin{align}
\Pi_0&=\frac32 \left(n_\mu n_\nu-\frac13g^E_{\mu\nu}\right) \left(n_{\rho'}n_{\sigma'}-\frac13g^E_{\rho'\sigma'}\right),\\
\Pi_1&=-\frac12\left( n_\mu n_{\rho'}I^\perp_{\nu\sigma'} +n_\nu n_{\rho'}I^\perp_{\mu\sigma'} +n_\mu n_{\sigma'}I^\perp_{\nu\rho'} +n_\nu n_{\sigma'}I^\perp_{\mu\rho'}\right),\\
\Pi_2&=\frac12\left( I^\perp_{\mu\rho'}I^\perp_{\nu\sigma'} +I^\perp_{\mu\sigma'}I^\perp_{\nu\rho'} -t_{\mu\nu}t'_{\rho'\sigma'}\right).
\end{align}$$

The common indices on $\Pi_i$ are suppressed on the left. The spin-2 kernel is

$$\begin{align}
H_{\mu\nu;\rho'\sigma'}(\ell) &=c_0(\ell)\Pi_0+c_1(\ell)\Pi_1+c_2(\ell)\Pi_2.
\end{align}$$

Here are explicit quadratures for all three coefficients, with no undetermined homogeneous functions. Set $s=e^\ell>1$, and define

$$\begin{align}
(p_0,p_1,p_2)(u;s) &=\frac{\left(8s^2u^2,\ 2su(s^2+u^2),\ (s^4+u^4)/2\right)} {(s^2+u)^2(1+u)^2},\\
(c_0,c_1,c_2)(\ell) &=\frac{(3/2,\,2,\,2)}{4\pi}\,\odot \left[ \frac{2s}{s^2-1}(p_0,p_1,p_2)(s;s) +6\int_0^sdu\,\frac{s^2(p_0,p_1,p_2)(u;s)}{(s^2+u)^2} \right].
\end{align}$$

The symbol $\odot$ denotes componentwise multiplication. These are finite integrals of rational functions; they can be evaluated directly or reduced to rational functions of $s$ and $\log s=\ell$. The exact reduced expressions are implemented and checked in [the kernel script](scripts/einstein_kernel_checks.wl).

For completeness, write $c_0=\tfrac32h_0$, $c_1=2h_1$, $c_2=2h_2$, with $D=(s^2-1)^5$. The closed coefficients are

$$\begin{align}
h_0&=\frac{4s^2}{\pi D}\left[ (s-1)(1-3s+13s^2-3s^3+4s^4)-6s^2(1+s^2)\ell \right],\\
h_1&=\frac{s}{2\pi D}\left[ (s-1)(1+s-26s^2+22s^3-47s^4+s^5) +6s^2(1+6s^2+s^4)\ell \right],\\
h_2&=\frac{ -1+6s^2-42s^4+48s^5-14s^6+3s^8-12s^4(1+s^2)\ell
}{4\pi D}.
\end{align}$$

The apparent powers of $D^{-1}$ must be evaluated with their numerator cancellations intact near coincidence.

## Derivation and Normalization of the Tensor Coefficients

The analytic input is spin-2 harmonic completeness on Euclidean AdS, with the bulk-to-boundary normalization and split representation of [Costa–Gonçalves–Penedones, equations (67), (83), (86), and (93)](https://arxiv.org/html/1404.5625#S4.SS1). In ordinary boundary tensor components the normalized harmonic kernel has the $d=2$ form

$$\begin{align}
\Omega_{\nu,2}(X,X') &=\frac{\nu^2}{\pi}\int_{\mathbb R^2}d^2y\, K_{1+i\nu,2}(X;y)K_{1-i\nu,2}(X';y),\\
H&=\int_{-\infty}^{\infty}\frac{d\nu}{\nu^2+1}\,\Omega_{\nu,2}.
\end{align}$$

Boundary indices are contracted with the ordinary two-dimensional symmetric-traceless projector. This avoids inserting $d=2$ directly into a polarization-derivative formula whose normalization separately vanishes there. Harmonic completeness supplies the distributional normalization of $H$; pointwise differential residuals alone do not supply it.

To evaluate the integrals independently in three dimensions, use Poincaré coordinates $(z,\mathbf x)$ and an orthonormal bulk frame. Set
$a=z/(z^2+|\mathbf x-\mathbf y|^2)$ and
$J_{\hat\mu i}=\delta_{\hat\mu i}-2v_{\hat\mu}v_i/v^2$, where $v=(z,\mathbf x-\mathbf y)$. Then

$$\begin{align}
K_{\alpha,2;\hat\mu\hat\nu,ij} &=\frac{\alpha+1}{2\pi(\alpha-1)}a^\alpha J_{\hat\mu k}J_{\hat\nu l} \left(\frac{\delta_{ki}\delta_{lj}+\delta_{kj}\delta_{li}}2 -\frac{\delta_{kl}\delta_{ij}}2\right).
\end{align}$$

The coordinate-covariant output has an additional factor $z^{-2}$. Direct xCoba checks give zero trace and divergence and the eigenvalue
$\Box_EK_{\alpha,2}=[\alpha(\alpha-2)-2]K_{\alpha,2}$.

The product of the two normalization constants cancels the $\nu^2$ factor, giving $(\nu^2+4)/(4\pi^3)$. The spectral integral is elementary as a distribution:

$$\begin{align}
\int_{-\infty}^{\infty}d\nu\, \frac{\nu^2+4}{\nu^2+1}e^{i\nu w} &=2\pi\delta(w)+3\pi e^{-|w|}.
\end{align}$$

Use an isometry to place the points at $(z,\mathbf x)=(s,0)$ and $(1,0)$. With $u=|\mathbf y|^2$, the delta function is supported at $u=s$. The angular averages of the $zz;zz$, $zx;zx$, and $xy;xy$ tensor components are exactly $p_0,p_1,p_2$ above. The substitution $u\mapsto s^2/u$ makes the two exponential-integral ranges equal. This gives the displayed one-dimensional quadratures and their closed evaluations.

## Global Lorentzian Continuation and Its Domain

In global Euclidean coordinates,

$$\begin{align}
Z=\cosh\ell &=\sqrt{1+r^2}\sqrt{1+r'^2}\cosh(\tau-\tau') -rr'\cos(\varphi-\varphi'),\\
I_{\mu\rho'} &=-\nabla_\mu\nabla_{\rho'}Z +\frac{\nabla_\mu Z\,\nabla_{\rho'}Z}{Z+1}.
\end{align}$$

These formulas determine the geometric tensors without selecting Poincaré coordinates. A retarded boundary-value prescription is

$$\begin{align}
G^R(x,x') &=-2\theta(t-t')\,\operatorname{Im} \left[ G^E\bigl(\tau-\tau'=\epsilon+i(t-t')\bigr) \right]_{\epsilon\downarrow0}.
\end{align}$$

Perform the tensor Wick pullback as well as the time substitution: $d\tau=i\,dt$ on each covariant time index, then raise the primed indices with the Lorentzian metric. Continue $\ell$ and the closed coefficients continuously from $\epsilon>0$ on the universal global-time cover; resetting $\operatorname{arcosh}$ or $\log s$ to a principal branch after each time period would lose the required winding information. The expression is a distribution at null separation and reflected null singularities.

The sign can be checked mode by mode: a Euclidean oscillator inverse $e^{-\omega|\tau|}/(2\omega)$ continues by this rule to $\theta(t)\sin(\omega t)/\omega$. For the scalar inverse of $\Box-m^2$, whose Euclidean sign is negative, the continued kernel has the required derivative jump $-1$.

This determines a retarded continuation of the explicit auxiliary kernel. Its right-inverse and gauge statements require the conserved test-source domain and absence of boundary terms in the integrations by parts. An eternal free-scalar stress tensor is not past compact, so its response is not obtained by an unqualified integral from $-\infty$. For a finite-time problem, compatible gravitational initial data must be supplied; truncating the stress tensor by a time step does not preserve conservation.

The distance-dependent coefficients contain $\ell=\log s$. This is not by itself a proof that the metric response has, or lacks, radial logarithmic terms. The no-log requirement applies to the assembled metric and permitted gauge vectors. For finite scalar-mode sums, the separate scalar-source prescription gives the matching argument and fixes a kernel $G_{\mathcal V}$ on the finite source span. The auxiliary $G^R$ is used in its conserved positive-positive Abel construction; the completed $G_{\mathcal V}$ is a solution-space kernel and should not be identified with an unqualified retarded convolution on eternal sources.

## Verification Status

- **Verified:** covariant scalar/TT decomposition identities; scalar Green-function equations and short-distance flux; spin-2 bulk-to-boundary trace, divergence, and eigenvalue; angular coefficient extraction; rational-integral evaluations; the spectral Fourier jump and scalar retarded jump.
- **Analytic input:** Euclidean spin-2 harmonic completeness and normalization from the cited source. The Lorentzian prescription is an analytic continuation with a specified sheet; no finite symbolic test proves the full global distributional boundary-value theorem.
- **Assumptions:** unit radius, the decaying Euclidean realization and its chosen retarded continuation, smooth conserved test sources, and integrations by parts with vanishing boundary terms.
- **Finite scalar application:** the static seed, opposite-frequency recursion, conserved Abel continuation, and finite Gram kernel are given in the scalar-source prescription note, with their boundary/constraint argument and verification scope.
- **Not established:** a universal distributional extension on arbitrary eternal conserved sources or convergence on infinite scalar-mode sums. The interacting spectrum is not calculated here.

These formulas determine the auxiliary kernel coefficients explicitly. Its test-source realization and the completed finite scalar-source prescription have distinct domains.
