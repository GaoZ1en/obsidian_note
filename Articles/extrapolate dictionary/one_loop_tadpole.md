# The first quantum correction: tadpole renormalization and the extrapolate dimension

## Abstract

We compute the complete order-$\lambda$ correction to the two-point insertion functional of the standard conformally coupled scalar with interaction $\lambda\varphi^4/4!$ on Euclidean $\mathrm{AdS}_4$. An AdS-invariant subtraction makes the tadpole a constant mass insertion. We evaluate three explicit coincident-point prescriptions and show how their finite curvature terms must be matched to describe the same physical mass. The finite-radius two-point correction is obtained exactly in terms of an order derivative of $I_\nu K_\nu$, with an elementary integral and exponential-integral representation. The original external power produces a nonlocal $k\log z$ term that no local source counterterm can remove. Rescaling with the shifted physical dimension and including a distinct local logarithmic subtraction gives a well-defined boundary distribution. Together with the previously computed contact graph, this yields the renormalized generating functional through order $\lambda$. The numerical dimension shift is fixed only after a mass/curvature-coupling renormalization condition is specified; it is not an invariant consequence of the tree mass alone.

## 1. Model, quantum state and perturbative order

We retain the formalism of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>):

$$
g=\frac{\ell^2}{z^2}(dz^2+d\mathbf x^2),\qquad
\Omega=z/\ell,\qquad \epsilon=\Omega^{-4}dz\,d^3x,
\qquad \int_k=\int\frac{d^3k}{(2\pi)^3}.
\tag{1.1}
$$

The source appears as $-\int\epsilon J\varphi$ in the Euclidean action, so $(\nabla^2-m^2)\varphi=-J$ and $W_0[J]=\frac12\int JGJ$ with the bulk measures understood. Take

$$
m_0^2\ell^2=-2,\quad \nu_0=\tfrac12,\quad\Delta_0=2,
\qquad S_{\rm int}=\frac\lambda{4!}\int\epsilon\,\varphi^4.
\tag{1.2}
$$

The state is the standard/fast Poincaré Euclidean vacuum, regular at the interior endpoint. Coordinates and $\ell$ have length units; $[\varphi]=L^{-1}$ and $\lambda$ is dimensionless. The reference's fast boundary completion and conformal slice measure $d^3x$ remain in force. We first consider the original slice insertion

$$
\mathcal O_{z,0}=(z/\ell)^{-2}\varphi(z,x).
\tag{1.3}
$$

Bulk ultraviolet renormalization is performed at fixed nonzero insertion radius and fixed radial smearing. The paired thin-layer limit follows, then the boundary limit. These operations are not replaced by taking a pointwise boundary limit inside a bare loop integral.

At order $\lambda$ the normalized source functional contains a connected quartic tree graph and a quadratic one-loop tadpole. The vacuum graph cancels. The quartic graph was constructed in [the contact-diagram report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree.md>). We now compute the missing quadratic term; there is no coupling or wavefunction ultraviolet counterterm needed at this perturbative order beyond mass/curvature renormalization for this contribution.

## 2. An explicit invariant coincident subtraction

Let $\rho(X,Y)$ be the geodesic distance and $r=\rho/\ell$. The reference's Bessel kernel reduces to

$$
G_0(z,u;k)=\frac{zu}{2\ell^2k}
 \left[e^{-k|z-u|}-e^{-k(z+u)}\right].
\tag{2.1}
$$

In position space, with $R=|x-y|$,

$$
G_0(X,Y)=\frac{zu}{4\pi^2\ell^2}
 \left[\frac1{(z-u)^2+R^2}-\frac1{(z+u)^2+R^2}\right]
=\frac1{4\pi^2\ell^2\sinh^2r}.
\tag{2.2}
$$

The equality follows from $\cosh r=1+[(z-u)^2+R^2]/(2zu)$. The local expansion is

$$
G_0=\frac1{4\pi^2\rho^2}-\frac1{12\pi^2\ell^2}+O(\rho^2/\ell^4).
\tag{2.3}
$$

Subtracting only the first term is not the same prescription as subtracting the geometric Hadamard coefficient. On hyperbolic four-space,

$$
U(X,Y)=\Delta_{\rm VM}(X,Y)^{1/2}
 =\left(\frac r{\sinh r}\right)^{3/2}
 =1-\frac{r^2}{4}+O(r^4).
\tag{2.4}
$$

For this mass, $G_0-U/(4\pi^2\rho^2)$ is locally smooth. No logarithmic singular term contributes to the coincident limit. Define $C_{\mathsf s}=\lim_{Y\to X}(G_0-H_{\mathsf s})$ using one of the following invariant prescriptions:

| Prescription $\mathsf s$ | Subtraction $H_{\mathsf s}(\rho)$ | $C_{\mathsf s}$ |
|---|---|---|
| $\mathsf L$: leading geodesic singularity | $1/(4\pi^2\rho^2)$ | $-1/(12\pi^2\ell^2)$ |
| $\mathsf H$: Hadamard $U$ subtraction | $U/(4\pi^2\rho^2)$ | $-1/(48\pi^2\ell^2)$ |
| $\mathsf C$: conformally transported direct term | $1/[8\pi^2\ell^2(\cosh r-1)]$ | $-1/(16\pi^2\ell^2)$ |

The last prescription is the direct, rather than image, term of (2.2). Although its original expression uses Poincaré coordinates, the displayed form proves that it is AdS invariant. It is also independently checked by integrating the image part of (2.1):

$$
-\frac{z^2}{2\ell^2}\int_k\frac{e^{-2kz}}k
=-\frac1{16\pi^2\ell^2}.
\tag{2.5}
$$

The finite differences are local curvature renormalizations of the Wick square. With scalar curvature $\mathcal R=-12/\ell^2$,

$$
C_{\mathsf L}=C_{\mathsf H}+\frac{\mathcal R}{192\pi^2},\qquad
C_{\mathsf C}=C_{\mathsf H}+\frac{\mathcal R}{288\pi^2}.
\tag{2.6}
$$

General locally covariant finite freedom in a dimension-two Wick square includes constants times $m^2$ and $\mathcal R$; on the fixed background (1.2) this reduces to an arbitrary multiple of $\ell^{-2}$. Thus AdS invariance alone does not select one of the three constants. All vanish in the flat-radius limit, so demanding vanishing curvature corrections as $\ell\to\infty$ does not fix this freedom either.

## 3. Mass insertion, sign and scheme matching

At fixed regulator the Wick expansion gives the quadratic correction

$$
\delta W^{[2]}[J]=-\frac\lambda4\int\epsilon(Y)\,
G_0(Y,Y)\,\Phi[J](Y)^2,
\qquad \Phi[J]=G_0J.
\tag{3.1}
$$

The coefficient is $6/4!=1/4$. Including a quadratic counterterm replaces it, after renormalization, by

$$
\delta W^{[2]}[J]=-\frac{\tau}{2}\int\epsilon\,\Phi[J]^2,
\qquad
\tau=\delta m_{\rm input}^2+\delta m_{\rm fin}^2+\frac\lambda2 C_{\mathsf s}.
\tag{3.2}
$$

Here $\tau=O(\lambda)$ is the total mass-squared displacement from $m_0^2$ in the chosen convention. Any chosen $O(\lambda)$ displacement of the renormalized input mass or finite curvature counterterm is included explicitly. The associated self-energy and propagator correction are

$$
\Sigma(X,Y)=\tau\delta_g(X,Y),\qquad
\delta G(X,X')=-\tau\int\epsilon(Y)G_0(X,Y)G_0(Y,X').
\tag{3.3}
$$

The self-energy sign is $+\lambda C_{\mathsf s}/2$; the propagator insertion has the minus sign. The fact that the displayed $C_{\mathsf s}$ happen to be negative must not reverse this diagrammatic convention.

For clarity, absorb finite counterterms into a renormalized mass parameter $m_{\mathsf s}^2$. The physical AdS mass parameter, inferred from the decay exponent at this order, is

$$
M^2=m_{\mathsf s}^2+\frac\lambda2 C_{\mathsf s}+O(\lambda^2).
\tag{3.4}
$$

Two subtraction prescriptions describe the same theory only if

$$
m_{\mathsf t}^2=m_{\mathsf s}^2+\frac\lambda2(C_{\mathsf s}-C_{\mathsf t})+O(\lambda^2).
\tag{3.5}
$$

For example $m_{\mathsf C}^2-m_{\mathsf H}^2=\lambda/(48\pi^2\ell^2)$. The physical standard dimension follows from $\Delta_M(\Delta_M-3)=M^2\ell^2$. Put

$$
\gamma:=\Delta_M-2=\ell^2\tau+O(\lambda^2).
\tag{3.6}
$$

Holding the numerical input mass at $m_0^2$ separately in each scheme and adding no extra finite counterterm gives

$$
\gamma_{\mathsf L}=-\frac\lambda{24\pi^2},\qquad
\gamma_{\mathsf H}=-\frac\lambda{96\pi^2},\qquad
\gamma_{\mathsf C}=-\frac\lambda{32\pi^2}.
\tag{3.7}
$$

These are different mass matchings, not three predictions for one fixed theory. In what follows one may use, for example, $\mathsf H$ with that specified input convention, or keep $\gamma$ expressed in terms of the measured physical mass. Imposing $M^2\ell^2=-2$ instead tunes $\gamma=0$ at this order; it does not establish that the tadpole was zero.

Normal ordering must be interpreted in the same way. The identity $:\varphi^4:_C=\varphi^4-6C\varphi^2+3C^2$ shows that replacing the interaction by its normal-ordered version at unchanged input mass adds $\delta m^2=-\lambda C/2$ and a vacuum constant. To express the original theory in normal-ordered variables instead, the input mass must be shifted by $+\lambda C/2$. A tadpole cannot be removed while silently holding both descriptions' mass parameters fixed.

## 4. Resolvent identity and the complete finite-radius correction

For the standard family,

$$
G_\nu(z,u;k)=\ell^{-2}(zu)^{3/2}I_\nu(kz_<)K_\nu(kz_>),
\qquad \nu^2=\frac94+m^2\ell^2.
\tag{4.1}
$$

The operator $P_m=-\nabla^2+m^2$ on $L^2(\mathbb H^4,\epsilon)$ has lower spectral bound $\nu^2/\ell^2$ and a common self-adjoint domain near $m_0^2$. Differentiating its inverse therefore gives

$$
\partial_{m^2}G_\nu(X,X')
=-\int\epsilon(Y)G_\nu(X,Y)G_\nu(Y,X'),\qquad
\partial_{m^2}=\frac{\ell^2}{2\nu}\partial_\nu.
\tag{4.2}
$$

The Neumann expansion is controlled, for example, for $|\tau|<1/(4\ell^2)$ around the conformal mass. The identity is an operator/distribution identity; it does not assign an unrenormalized coincident spacetime value to its left side. In boundary Fourier space with positive fixed external radii, its radial integral converges: near $u=0$ the measure times the product behaves as $u^{2\nu-1}$, at infinity as $u^{-2}e^{-2ku}$ for $k>0$, or as $u^{-1-2\nu}$ at $k=0$. These estimates and their logarithmic order derivatives are locally uniform for $\nu>0$.

Since $\gamma=\ell^2\tau$ to this order, define $x=kz$ and

$$
F(x)=I_{1/2}(x)K_{1/2}(x)=\frac{1-e^{-2x}}{2x},\qquad
D(x)=\left.\partial_\nu[I_\nu(x)K_\nu(x)]\right|_{\nu=1/2}.
\tag{4.3}
$$

With the original external power (1.3), the complete tadpole-corrected slice covariance is

$$
\boxed{
C_{z,\rm bare\ power}(k)=\frac{\ell^2}{z}\bigl[F(kz)+\gamma D(kz)\bigr]+O(\lambda^2).
}
\tag{4.4}
$$

Here “bare power” labels only the unshifted external exponent; the bulk tadpole in (4.4) is already renormalized.

To evaluate $D$, (4.2) gives for general $\nu>0$

$$
\partial_\nu[I_\nu(x)K_\nu(x)]
=-2\nu\left[
 K_\nu(x)^2\int_0^x\frac{dv}{v}I_\nu(v)^2
 +I_\nu(x)^2\int_x^\infty\frac{dv}{v}K_\nu(v)^2\right].
\tag{4.5}
$$

In particular $D(x)<0$. Substituting the half-order functions and integrating by parts gives

$$
\boxed{
D(x)=\frac{2\sinh^2x\,E_1(2x)-e^{-2x}\operatorname{Shi}(2x)}x,
}
\tag{4.6}
$$

where $E_1(t)=\int_t^\infty e^{-v}dv/v$ and $\operatorname{Shi}(t)=\int_0^t\sinh(v)dv/v$. This is an explicit finite-radial loop result, not only a boundary scaling argument. For large positive $x$, the integral representation (4.5) is numerically safer than subtracting the two large-function contributions in (4.6).

At small $x$,

$$
D(x)=-2-2x[\log(2x)+\gamma_E-2]-\frac49x^2
 +O(x^3[1+|\log x|]).
\tag{4.7}
$$

As a distinct check, the conformal subtraction $\mathsf C$ maps to the flat-half-space self-energy $-\lambda/(32\pi^2u^2)$. The corrected flat indicial equation is $a(a-1)=-\lambda/(32\pi^2)$, so the standard AdS exponent $1+a$ equals $2-\lambda/(32\pi^2)+O(\lambda^2)$, agreeing with (3.7) in that convention.

## 5. Two different logarithms and the renormalized insertion

Subtracting the leading local term from (4.4) gives

$$
P_{z,\rm bare\ power}=\frac{\ell^2}{z}(1-2\gamma),
\tag{5.1}
$$

$$
C_{z,\rm bare\ power}-P_{z,\rm bare\ power}
=-\ell^2k\left\{1+2\gamma[\log(kz)+\gamma_E+\log2-2]\right\}+o(1)
\tag{5.2}
$$

at this perturbative order and fixed $k>0$. The remaining $k\log z$ term is nonlocal: $k=|\mathbf k|$ is not a polynomial in the boundary derivatives. No local source counterterm can remove it. It records the mismatch between the chosen external power and the shifted dimension.

The canonical physical insertion instead is

$$
\boxed{
\mathcal O_z^{\rm ren}
=\Omega^{-\Delta_M}\varphi_{\rm ren}
=\left[1-\gamma\log(z/\ell)\right]\mathcal O_{z,0}+O(\lambda^2).
}
\tag{5.3}
$$

The factor in brackets is an extrapolate rescaling, not a bulk wavefunction counterterm. Before taking the thin-layer limit, its $u$ dependence is retained inside the duality kernel: the physical adjoint source is $J_\eta=\Omega^{4-\Delta_M}\rho_\eta j$. This preserves the reference's source pairing and conformal measure.

The corresponding finite-radius covariance is

$$
C_{z,\rm phys}(k)=\frac{\ell^2}{z}\left[
F(kz)+\gamma\left(D(kz)+2\log\frac\ell z\,F(kz)\right)\right]+O(\lambda^2).
\tag{5.4}
$$

The reference's local subtraction must be differentiated as well:

$$
\boxed{
P_{z,\rm phys}=\frac{\ell^2}{z}\left[1+2\gamma\left(\log\frac\ell z-1\right)\right]+O(\lambda^2).
}
\tag{5.5}
$$

This local $z^{-1}\log z$ term is distinct from the nonlocal logarithm in (5.2). Subtracting only the original free $\ell^2/z$ term would therefore fail even after correcting the external exponent.

### 5.1 Why the subtracted order derivative commutes with the boundary limit

The reference supplies, for $0<\nu<1$ and the same finite contact prescription,

$$
C_{z,\nu}=\ell^{1+2\nu}z^{-2\nu}I_\nu(kz)K_\nu(kz),\qquad
P_{z,\nu}=\frac{\ell^{1+2\nu}}{2\nu}z^{-2\nu}.
\tag{5.6}
$$

For $t=kz$ define

$$
H_\nu(t)=t^{-2\nu}\left[I_\nu(t)K_\nu(t)-\frac1{2\nu}\right].
\tag{5.7}
$$

On a compact order interval $[\nu_-,\nu_+]\subset(0,1)$, the convergent small-$t$ Bessel series gives $H_\nu(t)=c_\nu+O(t^{2-2\nu})+O(t^2)$, with $c_\nu=\Gamma(-\nu)/[2^{2\nu+1}\Gamma(1+\nu)]$. Its order derivative has only additional logarithms multiplied by those positive powers and is uniformly bounded. The uniform large-$t$ expansion gives $H_\nu(t)=-(2\nu)^{-1}t^{-2\nu}+O(t^{-2\nu-1})$, and again its order derivative is bounded. Continuity controls the intervening compact range.

It follows that $H_\nu$ and $\partial_\nu H_\nu$ are bounded uniformly for $t>0$ and $\nu$ in this interval. Since

$$
C_{z,\nu}-P_{z,\nu}=\ell^{1+2\nu}k^{2\nu}H_\nu(kz),
\tag{5.8}
$$

its order derivative is bounded by an integrable Schwartz-weighted majorant proportional to

$$
\bigl(k^{2\nu_-}+k^{2\nu_+}\bigr)
\bigl[1+|\log(k\ell)|\bigr].
\tag{5.9}
$$

Dominated convergence therefore permits the order derivative to pass through the subtracted boundary limit as a tempered distribution, not merely for each fixed momentum. The same argument with a second order derivative controls the perturbative remainder on compact order intervals. The construction is not being extended through $\nu=0$ or $\nu=1$ by this estimate.

Without the physical rescaling, the exact shifted-mass expression instead contains $(z/\ell)^{2(\nu_M-1/2)}$ times the physical boundary multiplier. For a fixed positive shift it tends to zero; for a negative shift it grows. Expanding that factor first produces the nonlocal logarithm (5.2). Thus the unrenormalized perturbative expansion and boundary limit are not interchangeable.

## 6. Boundary two-point function and the order-$\lambda$ generating functional

Using (5.4)–(5.9), the renormalized momentum covariance is

$$
\boxed{
C_\partial(k)=-\ell^2k\left\{1+2\gamma
 [\log(k\ell)+\gamma_E+\log2-2]\right\}+O(\lambda^2).
}
\tag{6.1}
$$

Equivalently, this is the first variation of the reference's exact boundary multiplier

$$
C_\nu(k)=\frac{\ell^{1+2\nu}\Gamma(-\nu)}
 {2^{2\nu+1}\Gamma(1+\nu)}k^{2\nu}
\tag{6.2}
$$

at $\nu=1/2$. At separated boundary points, $R=|x-y|>0$,

$$
\boxed{
\langle\mathcal O(x)\mathcal O(y)\rangle
=\frac{\ell^2}{\pi^2R^4}
 \left[1+\gamma\left(2\log\frac{2\ell}{R}-1\right)\right]
+O(\lambda^2).
}
\tag{6.3}
$$

The two representations follow from differentiating the same normalized family, so their finite constants are fixed, not independently fitted. The coefficient of $-2\gamma\log R$ is the shift of the standard dimension. Finite multiplicative renormalization of the boundary operator can change the constant term, while finite local source counterterms change only contact terms. A change of the physical mass changes $\gamma$; a mere change of bulk subtraction prescription with the matched mass (3.5) does not.

As a fully specified example, in scheme $\mathsf H$ with input $m_0^2$ and zero additional finite counterterm,

$$
\gamma=-\frac\lambda{96\pi^2},\qquad
\langle\mathcal O(x)\mathcal O(y)\rangle
=\frac{\ell^2}{\pi^2R^4}
 \left[1-\frac\lambda{96\pi^2}
 \left(2\log\frac{2\ell}{R}-1\right)\right]+O(\lambda^2).
\tag{6.4}
$$

This statement includes its mass prescription. It is not a universal anomalous-dimension number for an unspecified renormalized theory.

Let $\mathcal V_4[j]$ denote the already normalized contact functional

$$
\mathcal V_4[j]=\int\prod_{i=1}^4\frac{d^3k_i}{(2\pi)^3}
(2\pi)^3\delta^{(3)}\left(\sum_i\mathbf k_i\right)
\frac{\prod_i j(k_i)}{\sum_i|k_i|}.
\tag{6.5}
$$

The complete normalized boundary generating functional through order $\lambda$, excluding only the canceled vacuum term, is therefore

$$
\boxed{
W_\partial[j]=\frac12\int_k|j(k)|^2 C_\partial(k)
-\frac{\lambda\ell^4}{24}\mathcal V_4[j]+O(\lambda^2).
}
\tag{6.6}
$$

At finite radius its quadratic part is (5.4), and its quartic part uses the exact $F_z$ of the contact-diagram report. The change of the four external powers by $\gamma=O(\lambda)$ affects that already order-$\lambda$ graph only at order $\lambda^2$ in formal perturbative counting. The remainder in (6.6) is coefficientwise renormalized perturbation theory, not a $z$-uniform bound on the unresummed finite-radius functional at fixed nonzero coupling. Indeed shifting only the external powers while keeping free internal legs produces a factor $(z/\ell)^{-4\gamma}$, whose exact fixed-coupling limit cannot be discarded by this counting. The quadratic subtraction is (5.5); there is no new quartic subtraction in this conformal $\mathrm{AdS}_4$ example. Consequently (6.6) is a genuine quantum extension of the tree construction, rather than an isolated claim about an exponent.

## 7. What has and has not been renormalized

The bulk tadpole is ultraviolet divergent and was renormalized before the radial limits. The remaining radial mass-insertion integral is convergent at every fixed nonzero slice after tangential smearing, and its complete expression is (4.6). Nevertheless its boundary limit cannot be obtained by prematurely replacing both external legs by $K_{\rm ext}(u;k)=u e^{-ku}$: the resulting integral is proportional to $\int_0^\infty du\,u^{-2}e^{-2ku}$ and diverges. The exact slice profile, operator rescaling and source subtraction retain the information needed for the correct finite result.

At this order the self-energy is constant and has no momentum-dependent pole residue. Accordingly no bulk $Z_\varphi$ counterterm is required for this graph. No composite-operator mixing is needed to renormalize the linear insertion's two-point contribution at order $\lambda$. This does not establish the absence of mixing for other observables or at higher orders. The logarithmic factor in (5.3) is a change of extrapolate weight induced by the physical dimension, not evidence of a nonzero one-loop bulk wavefunction divergence.

Treating the shifted-mass propagator with its full exponent can resum the mass-insertion logarithms, but it does not include the other order-$\lambda^2$ quantum diagrams. In particular the fish correction to four points, coupling renormalization, and the two-loop momentum-dependent two-point self-energy remain outside this report. No Lorentzian operator-topology or independent dual-CFT computation has been supplied.

## 8. Reproducible checks and evidence

The [Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/tadpole_checks.wl>) verifies the three coincident constants, matching of schemes at fixed physical mass, momentum and position logarithmic coefficients, radial primitives, small-argument mass insertion and physical local subtraction. It compares the special-function answer with high-precision central differences in the Bessel order and tests convergence of the renormalized finite-radius correction. The [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/tadpole_checks_results.txt>) records all residuals, precision and messages: all ten symbolic residuals vanish and no Wolfram messages occurred. At $x=0.01,0.1,1,5$, 80-digit evaluations with order step $10^{-12}$ agree with (4.6) to absolute error below $5.6\times10^{-24}$. The displayed finite-radius derivative approaches its boundary target with errors $1.4154$, $0.04104$, $8.166\times10^{-5}$ at $z=10^{-1},10^{-3},10^{-6}$ respectively; these are convergence samples, not an error bound. Run with `wolframscript -file tadpole_checks.wl` from this directory.

Two independent fresh derivations were supplied only the reference model and conventions: one for the invariant tadpole subtraction and mass matching, and one for the finite-radius mass derivative and extrapolate logarithms. Their results agree with the constants, signs and normalizations above. The analytically proved uniform-order estimate, not the finite numerical samples, justifies interchanging the subtracted boundary limit and the order derivative.

**Verified analytically:** the renormalized tadpole and its mass-matching ambiguity; exact finite-radius quadratic kernel; physical external rescaling; local subtraction; distributional boundary limit; momentum/position normalization; complete nonvacuum generating functional through order $\lambda$ in the specified model and scheme.

**Scope:** fixed Poincaré Euclidean $\mathrm{AdS}_4$, standard fast branch, small mass displacement around $\nu=1/2$, one-loop order-$\lambda$ tadpole plus the order-$\lambda$ contact tree, and the reference's no-extra-finite-contact boundary prescription. All numerical values of $\gamma$ are accompanied by their bulk mass-renormalization condition.
