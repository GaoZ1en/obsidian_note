# Positive-energy extrapolation, Euclidean contacts and the two-loop spectral tower

## Abstract

We continue the standard conformal $\mathrm{AdS}_4$ scalar two-point function, including its on-shell order-$\lambda^2$ sunset tower, to the Poincaré positive-energy vacuum. The boundary Wightman density is $2\ell^2\sqrt{\omega^2-|\mathbf p|^2}$ on the future timelike cone. It is positive although the corresponding locally subtracted Euclidean multiplier is $-\ell^2|k_E|$. We prove arbitrary unequal-radius Wightman limits without contact subtraction. The sunset tower vanishes strongly as a tempered distribution at the sharp rate $(zz')^4$, and its first rescaled limit has dimension six. We also derive the previously missing unequal-radius Euclidean contact subtraction, including its exact radius-ratio dependence, and prove the subtracted limit without requiring comparable radii. Reflection positivity and an auxiliary generalized-free operator construction clarify what these two-point results establish. They do not prove positivity or operator convergence of the full interacting higher-point theory.

## 1. Continued conventions and perturbative input

The Euclidean normalization is fixed by [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>):

$$
\Omega=z/\ell,\qquad
G^{E,(\nu)}(z,z';k_E)=\ell^{-2}(zz')^{3/2}
I_\nu(k_Ez_<)K_\nu(k_Ez_>),
\qquad\mathcal O_z=\Omega^{-2}\varphi.
\tag{1.1}
$$

We distinguish the Bessel-order label from the dimension label: $G_D^E:=G^{E,(D-3/2)}$, with $m_D^2\ell^2=D(D-3)$. In particular $G_2^E=G^{E,(1/2)}$ is the conformal scalar. The slice source uses the conformal measure. We continue Euclidean time $\tau$ to Lorentzian $t$ and use

$$
g_L=\frac{\ell^2}{z^2}(dz^2-dt^2+d\mathbf x^2),\qquad
\mathbf x\in\mathbb R^2,
$$

$$
W(t,\mathbf x)=\int\frac{d\omega\,d^2p}{(2\pi)^3}
 e^{-i\omega t+i\mathbf p\cdot\mathbf x}\widetilde W(\omega,\mathbf p).
\tag{1.2}
$$

Write $s=\omega^2-|\mathbf p|^2$, $q=\sqrt s$ on $s\ge0$, and $\theta_+=\theta(\omega)\theta(s)$. The boundary condition remains the fast standard one; the continued state is the Poincaré positive-energy vacuum, not an arbitrary Lorentzian state.

The input from [the sunset report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/two_loop_sunset.md>) is the on-shell two-point coefficient

$$
G^E=G_2^E+\eta\sum_{n\ge0}w_nG_{6+2n}^E+O(\lambda^3),
\qquad\eta=\frac{\lambda^2}{6\pi^4},
\tag{1.3}
$$

$$
w_n=\frac{(n+1)(2n+7)(4n+9)}{128(2n+4)^2(2n+5)^2}>0,
\qquad\nu_n=2n+\frac92.
\tag{1.4}
$$

Physical dimension two and elementary residue one have been imposed through this order. The earlier Euclidean Wick construction supplies this perturbative coefficient, but does not establish nonperturbative positivity. We will separately regard the displayed positive sum as an exact auxiliary two-point kernel; this distinction matters in §7.

## 2. Normalized positive-energy kernel

The Bessel resolvent identity is

$$
I_\nu(kz_<)K_\nu(kz_>)
=\int_0^\infty dq\,\frac{qJ_\nu(qz)J_\nu(qz')}{q^2+k^2}.
\tag{2.1}
$$

A three-dimensional Euclidean resolvent $(k_E^2+q^2)^{-1}$ has positive-frequency continuation $2\pi\theta(\omega)\delta(s-q^2)$. Integrating $q\,dq$ therefore gives

$$
\widetilde W_\varphi^{(\nu)}
=\frac{\pi(zz')^{3/2}}{\ell^2}
 J_\nu(qz)J_\nu(qz')\theta_+,
\qquad
\boxed{\widetilde W_{zz'}^{(\nu)}
=\frac{\pi\ell^2}{\sqrt{zz'}}J_\nu(qz)J_\nu(qz')\theta_+.}
\tag{2.2}
$$

The second expression is for the specified $\Omega^{-2}$ insertion, irrespective of $\nu$. At each timelike momentum the radius-indexed matrix is an outer product. It is positive semidefinite; an individual unequal-radius entry may change sign and need not itself be a positive measure.

For $\nu=1/2$, define $j_0(x)=\sin x/x$, continuously at zero. Then

$$
\boxed{\widetilde W_{zz'}^{(0)}
=2\ell^2q\,j_0(qz)j_0(qz')\theta_+,\qquad
\widetilde W_\partial=2\ell^2q\theta_+.}
\tag{2.3}
$$

The bound $|j_0|\le1$ proves arbitrary unequal-radius convergence against Schwartz tests. More quantitatively, $|1-j_0(x)|\le x^2/6$ gives an $O(z^2+z'^2)$ distribution estimate with a $q^3$ weighted test seminorm. Sending only $z\to0$ gives the mixed kernel $2\ell^2\sin(qz')\theta_+/z'$.

The position-space free result, with a common positive imaginary-time regulator, is

$$
W_{zz'}^{(0)}(t,\mathbf x)
=\frac{\ell^2}{\pi^2
[\sigma_++(z-z')^2][\sigma_++(z+z')^2]},
\qquad\sigma_+=|\mathbf x|^2-(t-i0)^2,
\tag{2.4}
$$

$$
W_\partial(t,\mathbf x)=\frac{\ell^2}{\pi^2\sigma_+^2}.
\tag{2.5}
$$

These are boundary values of the regulated analytic expressions, not arbitrary products or extensions of light-cone singularities. They have the normalization inherited from (1.1).

## 3. A sharp Lorentzian limit for the sunset tower

Set $l_n=2n+4$ and use $J_{l+1/2}(x)=\sqrt{2x/\pi}\,j_l(x)$. The full displayed two-point kernel is

$$
\widetilde W_{zz'}=2\ell^2q\theta_+
\left[j_0(qz)j_0(qz')+
\eta\sum_{n\ge0}w_nj_{l_n}(qz)j_{l_n}(qz')\right].
\tag{3.1}
$$

Introduce the already determined finite sum

$$
A_*:=\sum_{n\ge0}\frac{w_n}{2l_n+1}
=\frac{19-\pi^2-13\log2}{256}.
\tag{3.2}
$$

A useful uniform estimate is

$$
\boxed{|j_l(x)|\le\frac{\min(x^4,1)}{\sqrt{2l+1}},
\qquad l\in\mathbb Z,\quad l\ge4,\quad x\ge0.}
\tag{3.3}
$$

Indeed, $j_l(x)=(2i^l)^{-1}\int_{-1}^1e^{ixt}P_l(t)dt$ and Legendre orthogonality give $|j_l|\le(2l+1)^{-1/2}$. For $x\le1$, the Poisson integral gives $|j_l(x)|\le x^l/(2l+1)!!$, and $\sqrt{2l+1}/(2l+1)!!\le1$ for $l\ge4$. The two bounds prove (3.3) without summing a nonconvergent series of weights $w_n$ alone.

It follows that the correction satisfies, for every pair of positive radii,

$$
\boxed{
|\delta\widetilde W_{zz'}|
\le2\eta\ell^2A_*\theta_+q
\min((qz)^4,1)\min((qz')^4,1)
\le2\eta\ell^2A_*\theta_+q^9(zz')^4.
}
\tag{3.4}
$$

Absolute convergence and radius-matrix positivity also follow. For $h\in\mathcal S(\mathbb R^3)$, pairing (3.4) with $|h|$ proves a strong $\mathcal S'$ limit with rate $(zz')^4$, uniformly on bounded Schwartz sets. There is no comparable-radius assumption. Sending one radius to zero while the other is arbitrary is also controlled, since the first bound is at most $2\eta\ell^2A_*q^5z^4\theta_+$.

These estimates also justify the reference's paired radial thin-layer restriction: for layers in a compact positive-radius neighborhood the multipliers have a uniform polynomial $q$ bound, and radial continuity passes through Schwartz smearing. No Lorentzian contact term is inserted in either the thin-layer or boundary limit.

### 3.1 The first nonzero subleading distribution

To exhibit information that the leading extrapolation removes, define

$$
K_{zz'}(q)=\sum_n w_n
\frac{J_{\nu_n}(qz)J_{\nu_n}(qz')}{\sqrt{zz'}},
\qquad c_0=\frac1{362880000\pi}.
$$

The $n=0$ coefficient gives

$$
(zz')^{-4}\theta_+K_{zz'}\longrightarrow c_0\theta_+q^9
\quad\text{strongly in }\mathcal S'.
\tag{3.5}
$$

For example, a global remainder estimate is

$$
\left|K_{zz'}-c_0q^9(zz')^4\right|
\le\frac{c_0}{22}q^{11}(zz')^4(z^2+z'^2)
+\frac{2A_*}{\pi}q^{13}(zz')^6.
\tag{3.6}
$$

The first term follows from the Poisson-integral remainder for $J_{9/2}$; the remaining tower starts at $l=6$ and satisfies the analogue of (3.3) with $x^6$. Thus the leading rate is sharp. Including the prefactor $\eta\pi\ell^2$, the first rescaled Wightman correction has the dimension-six spectral shape. Equivalently, at the calculated order,

$$
(zz')^{-4}\delta W_{zz'}(t,\mathbf x)
\longrightarrow
\frac{\lambda^2\ell^2}{2400\pi^6}\,\sigma_+^{-6}
\tag{3.7}
$$

as a positive-energy boundary-value distribution. This extends the previous separated-point asymptotic to a Lorentzian distribution statement. It is a statement about the known order-$\lambda^2$ coefficient, not about higher-order terms after the same rescaling.

## 4. Why the Euclidean subtraction is different

The diagonal Lorentzian spectral density, in the convention $\widetilde W=2\pi\theta(\omega)\rho(s)$, is

$$
\rho_z(s)=\frac{\ell^2\sqrt s}{\pi}
\left[j_0(\sqrt s\,z)^2+
\eta\sum_nw_nj_{l_n}(\sqrt s\,z)^2\right]\mathbf1_{s\ge0}.
\tag{4.1}
$$

Its boundary limit is

$$
\boxed{\rho_\partial(s)=\frac{\ell^2}{\pi}\sqrt s\,\mathbf1_{s\ge0}.}
\tag{4.2}
$$

The unsubtracted Euclidean Stieltjes integral of this limiting density diverges. The reference's contact prescription instead gives

$$
\boxed{
C_\partial^E(k)=\int_0^\infty ds\,\rho_\partial(s)
\left[\frac1{s+k^2}-\frac1s\right]
=-\ell^2k.}
\tag{4.3}
$$

For a spectral mass cutoff $\Lambda$ the raw integral is $2\ell^2[\Lambda-k\arctan(\Lambda/k)]/\pi$, explicitly separating the local divergence from the finite nonlocal term.

At finite equal radius the convergent inverse first moment is

$$
\int_0^\infty\frac{\rho_z(s)}s\,ds
=\frac{\ell^2}{z}(1+\eta A_*).
\tag{4.4}
$$

For the tower alone the Wightman distributions tend to zero, but this moment grows as $\eta\ell^2A_*/z$. There is no contradiction: the inverse moment is not a Schwartz test in spectral energy. High-frequency spectral weight prevents the unsubtracted Euclidean reconstruction at coincidence from commuting with the boundary limit. With the stated local subtraction, both constructions agree.

### 4.1 Exact contact term for arbitrary unequal radii

Let $a=\min(z,z')$, $b=\max(z,z')$ and $r=a/b$. The free Euclidean kernel is

$$
C_{zz'}^{E,(0)}(k)=\frac{\ell^2}{b}e^{-kb}\frac{\sinh(ka)}{ka}
=\frac{\ell^2}{b}-\ell^2k+O(\ell^2k^2b).
\tag{4.5}
$$

The expansion is uniform in $r\in[0,1]$. The identity $e^{-kb}\sinh(ka)/(ka)=\frac12\int_{-1}^1e^{-k(b-at)}dt$ also proves $-\ell^2k\le C_{zz'}^{E,(0)}-\ell^2/b\le0$, sufficient for Schwartz convergence.

For the full displayed kernel, its zero-Euclidean-momentum value is the exact local subtraction

$$
\boxed{
P_{zz'}=\frac{\ell^2}{b}[1+\eta A(r)],
\qquad
A(r)=\sum_{n\ge0}\frac{w_n}{2\nu_n}r^{2n+4}.
}
\tag{4.6}
$$

It follows either from the $k\to0$ Bessel kernel or from the inverse spectral moment. The ratio function has the closed form

$$
\boxed{
A(r)=\frac1{512}\left[
38-13\log(1-r^2)-\frac{26\operatorname{atanh}r}{r}
-3\operatorname{Li}_2(r^2)
-\frac6r\bigl(\operatorname{Li}_2(r)-\operatorname{Li}_2(-r)\bigr)
\right],\quad0<r<1.
}
\tag{4.7}
$$

Its continuous endpoints are $A(0)=0$ and $A(1)=A_*$; near zero, $A(r)=7r^4/51200+O(r^6)$. For example the coefficient of $r^{2m}$ in (4.7) is $(m-1)(2m+3)/[512m^2(2m+1)^2]$, yielding (4.6) at $m=n+2$. At $r=1$ the logarithms must be combined by a limit rather than evaluated separately. Although $A$ is continuous, its first derivative diverges logarithmically there; no interchange of radial differentiation and the spectral sum is asserted.

### 4.2 Unequal-radius Euclidean distribution theorem

Let $\rho^{\rm tower}_{zz'}(s)$ be the radius-matrix spectral density from (2.2) and (1.3). It is positive semidefinite. The matrix

$$
R_{zz'}(k):=\delta P_{zz'}-\delta C^E_{zz'}(k)
=\int_0^\infty ds\,\rho^{\rm tower}_{zz'}(s)
\frac{k^2}{s(s+k^2)}
\tag{4.8}
$$

is therefore positive semidefinite as well. The diagonal bound established from the Bessel resolvent is

$$
0\le R_{zz}(k)\le\eta\ell^2B_*zk^2,
\qquad B_*:=\frac{-40+3\pi^2+15\log2}{1152}.
$$

Cauchy–Schwarz in this positive matrix gives the new unequal-radius estimate

$$
\boxed{
|\delta C^E_{zz'}(k)-\delta P_{zz'}|
\le\eta\ell^2B_*k^2\sqrt{zz'}.
}
\tag{4.9}
$$

Consequently $C^E_{zz'}-P_{zz'}\to-\ell^2k$ in $\mathcal S'$ for every unequal approach $z,z'\to0$. This supplies the unequal-cutoff contact bookkeeping not covered by the previous equal-radius proof. The subtraction is boundary-local but genuinely depends on the radius ratio. The Wightman limit in §3 needs no counterpart of (4.6).

## 5. Reflection positivity is not ordinary covariance positivity

For a nonzero Euclidean Schwartz source, $\int_k|j(k)|^2(-\ell^2|k|)<0$. Thus the subtracted boundary distribution cannot be the covariance of an ordinary real Euclidean Gaussian random field with unrestricted sources.

Reflection positivity is a different assertion. Let $f(\tau,\mathbf x)$ have support strictly in $\tau>0$, and Fourier transform only the two spatial coordinates. The reflected quadratic form is

$$
\boxed{
Q[f]=\int\frac{d^2p}{(2\pi)^2}\int_{|p|}^\infty d\omega\,
\frac{\ell^2\sqrt{\omega^2-|p|^2}}\pi
\left|\int_0^\infty d\tau\,e^{-\omega\tau}
\widehat f(\tau,\mathbf p)\right|^2\ge0.
}
\tag{5.1}
$$

This follows directly from (4.2). Local Euclidean contact polynomials have support at reflected coincidence $\tau+\tau'=0$ and do not contribute for such tests. The same argument, with the positive radius-matrix spectral measure, proves two-point reflection positivity of the full auxiliary kernel at finite radius, before or after the local subtraction.

For an explicit positive example, consider zero spatial momentum and two reflected time sheets at $\tau=a>0$. Per unit spatial volume, the free form is

$$
Q_z(a,\mathbf p=0)=\frac{\ell^2}{4\pi z^2}
\log\left(1+\frac{z^2}{a^2}\right)
\longrightarrow\frac{\ell^2}{4\pi a^2}>0.
\tag{5.2}
$$

The time sheets are distributional probes understood by approximation with smooth positive-time tests; their reflected separation is nonzero. Formula (5.2) is an explicit check on the normalization, not a replacement for the full spectral proof.

These two-point reflection-positive forms do not prove the reflection-positivity inequalities involving arbitrary polynomials in the actual interacting field. Its connected four- and higher-point functions must also enter those inequalities.

## 6. Analytic continuation and contact ambiguity

With the square-root branch positive on the Euclidean axis, define

$$
\mathcal A(\omega,\mathbf p)
=-\ell^2\sqrt{|\mathbf p|^2-(\omega+i0)^2}.
$$

The Wightman measure is its positive-frequency discontinuity,

$$
\boxed{\widetilde W_\partial
=2\theta(\omega)\operatorname{Im}\mathcal A
=2\ell^2\sqrt{s}\,\theta_+.}
\tag{6.1}
$$

The analytically continued Euclidean multiplier itself is not the Wightman function. More generally, $I_\nu(-ix)K_\nu(-ix)$ has imaginary part $\pi J_\nu(x)^2/2$, reproducing (2.2) at equal radii.

Real local Euclidean contact polynomials continue to analytic polynomials and have no spectral discontinuity. They affect Euclidean/time-ordered contact prescriptions, not the positive-energy measure obtained here. Conversely, directly adding a spacetime-local contact term to a Wightman two-point distribution gives a Fourier polynomial with both energy signs; a nonzero polynomial cannot have support only on the future cone. Thus the Euclidean contact freedom must not be carried over as an arbitrary local Wightman addition.

At tangential spacelike separation, causality of each boundary mass-$q$ component proves commutativity at the two-point/generalized-free level. Full bulk-spacelike commutativity of the auxiliary field follows instead from the original sum of causal fixed-$D$ AdS fields: each AdS commutator has the requisite support, and the distributionally convergent sum preserves it. These are distinct support arguments; neither computes the actual interacting higher-point commutator algebra.

## 7. A precise operator consequence—and its limitation

There is an exact auxiliary generalized-free realization of the displayed positive two-point sum for $\eta\ge0$. For a real Lorentzian Schwartz test $f$, define a one-particle vector on the future cone with components

$$
h_z(f;p)=\sqrt{2\ell^2q}\,\widehat f(p)
\left(j_0(qz),\sqrt{\eta w_0}\,j_4(qz),
\sqrt{\eta w_1}\,j_6(qz),\ldots\right).
\tag{7.1}
$$

The Hilbert measure is $d\omega\,d^2p/(2\pi)^3$ on the cone, with the ordinary component sum. The limiting vector has components $(1,0,0,\ldots)$ in the same formula. Put

$$
M_r(f)=\int\frac{d\omega\,d^2p}{(2\pi)^3}\theta_+q^r|\widehat f(p)|^2.
$$

The earlier estimates give

$$
\boxed{
\|h_z(f)-h_0(f)\|^2
\le\frac{\ell^2z^4}{18}M_5(f)
+2\eta\ell^2A_*z^8M_9(f).
}
\tag{7.2}
$$

The light-sector vacuum-vector rate is $O(z^2)$ and the tower rate is $O(\sqrt\eta\,z^4)$. On the symmetric Fock space define the real smeared auxiliary field by $a(h_z)+a^\dagger(h_z)$; complex tests follow by linear extension. The creation/annihilation estimate then proves strong convergence on the common domain $D((N+1)^{1/2})$, in particular on its finite-particle core. This is convergence of unbounded fields on a common domain, not a bounded-operator strong-topology statement.

This auxiliary construction must not be identified with the interacting scalar theory. Its connected correlators above degree two vanish. In contrast, the actual Euclidean reduced connected four-point function already contains $-\lambda\ell^4/(\sum_i|k_i|)$ at tree level. Equal two-point data therefore do not determine the interacting operator algebra. Even exact two-point control for an actual common-Hilbert-space field would imply vacuum-vector Cauchy limits only; convergence on excited states requires higher Wightman functions. The present physical input is perturbative through $\lambda^2$, so it supplies neither an exact all-order vacuum-vector estimate nor an interacting dense-domain operator limit.

There is nevertheless a concrete information-loss statement at the two-point level: arbitrary positive towers on the same dimension sequence satisfying the weighted bound used in §3 can change finite-radius correlators while leaving the same leading boundary two-point function. The map from such bulk two-point kernels to their leading extrapolate limit is not injective. The rescaled limit (3.5) recovers the first omitted spectral component. Whether higher boundary correlators reconstruct that information in a genuine dual theory is a separate question, not answered by this auxiliary realization.

## 8. Verification and scope

The [Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/wightman_checks.wl>) checks the half-order normalization, position image formula, subtracted and cutoff dispersion integrals, unequal free-radius expansion, the explicit reflection-positive example, position/spectral constants, the sharp tower coefficient, the ratio-dependent contact series and endpoints, and a reflected dimension-six normalization. Its [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/wightman_checks_results.txt>) records fourteen exact zero residuals, twenty numerical spherical-Bessel bound samples, unequal-radius tower comparisons and contact-series comparisons with analytic omitted-tail bounds.

For example, at $(q,z,z')=(1,0.1,0.2),(2,0.01,0.03),(3,0.001,0.01)$, the ratio of the tower kernel to $c_0q^9(zz')^4$ is approximately $0.9977296002$, $0.9998181963$, $0.9999586825$. These finite checks support the independently proved asymptotic estimate; they do not establish it by extrapolation from samples. Two independent fresh derivations checked the Lorentzian normalization and the tower estimate, followed by reviews of the unequal Euclidean subtraction and the auxiliary operator scope.

**Established:** the normalized positive-energy two-point continuation; reflection positivity at the two-point level; arbitrary unequal-radius Wightman limits with no contact subtraction; the sharp sunset-tower subleading distribution; a closed unequal-radius Euclidean contact prescription and its distributional limit; and a common-domain boundary operator limit in the explicit auxiliary generalized-free model.

**Not established:** positivity of all interacting Schwinger functions; continuation and limits of the interacting higher-point Wightman functions; an actual interacting operator algebra; alternate vacua/boundary conditions; or an independent holographic-dual reconstruction. All interacting boundary-limit claims in this report refer to the known two-point coefficients through $\lambda^2$ in the stated on-shell scheme.
