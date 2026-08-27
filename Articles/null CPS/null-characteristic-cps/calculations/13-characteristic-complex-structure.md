# Intrinsic Characteristic Profiles, Mode Transform and Complex Structure

## 1. Purpose

This note removes the circular phrase “complete on the characteristic energy
image.”  For one fixed radiative master mass \(\mu^2=\lambda_\ell>0\), it
defines an explicit analysis map \(T_\mu\), synthesis map \(S_\mu\), and
projector \(P_\mu=S_\mu T_\mu\) directly on the two half-ray profiles.  The
intrinsic global profile space is the fixed-point space of this projector with
the displayed spectral integrability condition.

Set

$$
\omega_k=\sqrt{k^2+\mu^2},
\qquad
N_k=(4\pi\omega_k)^{-1/2},
$$

$$
\alpha_k=\frac{\omega_k+k}{\sqrt2},
\qquad
\beta_k=\frac{\omega_k-k}{\sqrt2},
\qquad
\alpha_k\beta_k=\frac{\mu^2}{2}.
\tag{1.1}
$$

Write \(h_-:=f\), \(h_+:=g\),
\(\gamma_-(k):=\alpha_k\), and \(\gamma_+(k):=\beta_k\).

## 2. Two-Sheet Analysis Transform

On the dense core obtained from Schwartz stationary coefficients, define

$$
\boxed{
\begin{aligned}
a_k[f,g]=-iN_k\bigg[&
\int_0^\infty du\,e^{i\alpha_ku}
\left(i\alpha_k f(u)-f'(u)\right)\\
&+\int_0^\infty dv\,e^{i\beta_kv}
\left(i\beta_k g(v)-g'(v)\right)
\bigg].
\end{aligned}}
\tag{2.1}
$$

Indeed, after changing from \(k\) to \(\alpha\), the positive-frequency
amplitude on the first sheet is

$$
A_-(\alpha)
=a(k(\alpha))N_{k(\alpha)}\frac{dk}{d\alpha}
=\frac{a(k(\alpha))\sqrt{\omega_{k(\alpha)}}}
{\sqrt{4\pi}\,\alpha},
\tag{2.2}
$$

and similarly with \(\beta\) on the other sheet.  If
\(a\in\mathcal S(\mathbb R_k)\), these amplitudes are smooth and vanish to all orders at both
light-front endpoints \(0,\infty\); hence the synthesized half-ray profiles
and their derivatives are rapidly decreasing.  This is the ordinary-integral
core used in (2.1).

Both sheets are essential.  Keeping only the first or second line leaves the
principal-value part of the half-line Fourier transform and does not extract a
global on-shell coefficient.

For \(H^1\) profiles, (2.1) is read as the half-line Fourier transform of the
zero extensions of \(f,f',g,g'\).  The precise minimal closure, graph domain,
and density proof are Theorem 2.1 of calculation 15.  This specifies the
distributional meaning without replacing the closed domain by an unproved
maximal domain.

## 3. Synthesis and the Intrinsic Range

For a spectral coefficient \(a(k)\), define

$$
(S_\mu a)_-(u)
=\int_{\mathbb R}dk\,N_k
\left[a(k)e^{-i\alpha_ku}+\overline{a(k)}e^{i\alpha_ku}\right],
\tag{3.1}
$$

$$
(S_\mu a)_+(v)
=\int_{\mathbb R}dk\,N_k
\left[a(k)e^{-i\beta_kv}+\overline{a(k)}e^{i\beta_kv}\right].
\tag{3.2}
$$

The same \(a(k)\) occurs on the two sheets.  In particular the common corner
value is not duplicated.

Let \(T_\mu\) be the closed analysis operator of calculation 15 and define on
its graph domain

$$
P_\mu:=S_\mu T_\mu.
\tag{3.3}
$$

The intrinsic finite-energy characteristic profile space is the graph-closed
fixed-point space

$$
\boxed{
\mathfrak X_{E,\mu}
:=\ker_{\mathcal D_E(T_\mu)}(1-P_\mu)
=\{h\in\mathcal D_E(T_\mu):P_\mu h=h\}.}
\tag{3.4}
$$

Equality is in the graph Hilbert space.  Formula (3.4) is not the circular definition
\(\operatorname{Ran}R_X\): every condition is expressed through the explicit
half-line transforms (2.1), (3.1), and (3.2).  Equivalently,
\(\mathfrak X_{E,\mu}=S_\mu L^2(\omega dk)\).  The operator \(P_\mu\) is a
bounded idempotent in the graph topology.  No ambient
\(H^1\oplus H^1\)-bounded projector is claimed.

The fixed-point condition is the nonlocal compatibility missing from the
finite Goursat condition \(f(0)=g(0)\).  A generic matched pair on two
half-rays is valid local characteristic data but need not be the restriction
of a global finite-energy solution.

## 4. Analysis--Synthesis and Plancherel Theorem

### Proposition 4.1 — core calculation and closed extension

On the Schwartz spectral/profile cores,

$$
T_\mu S_\mu=1,
\qquad
P_\mu^2=P_\mu.
\tag{4.1}
$$

Moreover, if \(h_i=(f_i,g_i)\in\mathfrak X_{E,\mu}\) and
\(a_i=T_\mu h_i\), then

$$
\boxed{
\Omega_X(h_1,h_2)
=i\int_{\mathbb R}dk\,
\left(\overline{a_1(k)}a_2(k)
-\overline{a_2(k)}a_1(k)\right).}
\tag{4.2}
$$

### Proof

Substitute (3.1)--(3.2) into (2.1).  The two half-line distributions are

$$
\int_0^\infty e^{ixs}ds
=\pi\delta(x)+i\operatorname{PV}\frac1x.
$$

For the conjugate-mode pairing, the principal-value coefficient is

$$
\frac{\alpha+\alpha'}{\alpha'-\alpha}
+\frac{\beta+\beta'}{\beta'-\beta}=0,
\qquad
\beta=\frac{\mu^2}{2\alpha}.
\tag{4.3}
$$

The two delta terms combine with

$$
\delta(\alpha'-\alpha)=\frac{\omega}{\alpha}\delta(k'-k),
\qquad
\delta(\beta'-\beta)=\frac{\alpha}{\beta}
\delta(\alpha'-\alpha),
\tag{4.4}
$$

and \(N_k^2=(4\pi\omega_k)^{-1}\) to give exactly one
\(\delta(k-k')\).  The positive--positive principal values cancel by the
analogous identity with \((\alpha-\alpha')/(\alpha+\alpha')\).  Hence
\(T_\mu S_\mu=1\).  Equation (4.2) follows by expanding the two real profiles
and using \(\Omega_X(U_k,U_{k'}^*)=-i\delta(k-k')\).  The identities extend to
the energy domain by the closed-operator argument in calculation 15:
\(S_\mu:L^2(\omega dk)\to H_{\rm match}\) is bounded,
\(T_\mu S_\mu=1\), and \(P_\mu\) is graph-bounded.  \(\square\)

This proves both injectivity of the two-sheet transform and an explicit
inverse.  It also proves mode completeness without defining the range to be
the range of restriction.

## 5. Characteristic One-Particle and Energy Norms

Define

$$
\boxed{
\|(f,g)\|_{1,X}^2
:=\int_{\mathbb R}dk\,|a_k[f,g]|^2,}
\tag{5.1}
$$

and on the finite-energy subspace

$$
\boxed{
\|(f,g)\|_{E,X}^2
:=\int_{\mathbb R}dk\,\omega_k|a_k[f,g]|^2.}
\tag{5.2}
$$

If \(J_X\) is defined below, then

$$
\frac12\Omega_X(h,J_Xh)=\|h\|_{1,X}^2.
\tag{5.3}
$$

Equations (5.1)--(5.2) are exact isometries with the global stationary
one-particle norm and the conserved global energy of
`12-global-characteristic-completion.md`; they are not merely equivalent
norms.  The one-particle completion only requires \(a\in L^2(dk)\) and can
contain distributional profiles without a pointwise corner trace.  The
classical finite-energy theorem uses the stronger
\(a\in L^2(\omega dk)\), for which the \(H^1\) half-ray traces and common
corner value are well defined.

## 6. Explicit Characteristic Complex Structure

On the classical energy fixed-point space, the stationary complex structure
is multiplication by \(-i\) on \(a(k)\):

$$
\boxed{
T_\mu(J_Xh)(k)=-i\,T_\mu h(k),
\qquad
J_X=S_\mu(-i)T_\mu.}
\tag{6.1}
$$

Thus

$$
(J_Xh)_r(s)
=\int_{\mathbb R}dk\,N_k
\left[-ia(k)e^{-i\gamma_r(k)s}
+i\overline{a(k)}e^{i\gamma_r(k)s}\right],
\qquad r\in\{-,+\}.
\tag{6.2}
$$

Substituting (2.1) gives the explicit profile-space kernel

$$
\boxed{
\begin{aligned}
(J_Xh)_r(s)
=\sum_{q=\pm}\int_0^\infty dy\int_{\mathbb R}
\frac{dk}{2\pi\omega_k}\big[&
\gamma_q(k)\sin\!\big(\gamma_q(k)y-\gamma_r(k)s\big)h_q(y)\\
&+\cos\!\big(\gamma_q(k)y-\gamma_r(k)s\big)\partial_yh_q(y)
\big].
\end{aligned}}
\tag{6.3}
$$

The \(k\)-integral is an oscillatory distribution on the Schwartz core and is
extended by (5.1) to the one-particle completion.  Formula (6.3) deliberately
leaves the derivative on the profile.  If it is integrated by parts on the
decaying core, the retained boundary term is
\(-\cos(\gamma_r(k)s)h_q(0)\) for each sheet \(q\), as displayed explicitly in
equation (7.1) of calculation 15.  The off-diagonal terms \(q\neq r\) are nonzero and show
explicitly that \(J_X\) mixes the two sheets.  From (4.1),

$$
J_X^2=-1,
\qquad
\Omega_X(J_Xh_1,J_Xh_2)=\Omega_X(h_1,h_2),
\qquad
\Omega_X(h,J_Xh)>0
$$

for nonzero real one-particle data.

## 7. Consequences for Completeness, CCR and Wightman Functions

For the full Maxwell radiative tower, take the orthogonal direct sum of
\(T_{\sqrt{\lambda_\ell}}\), \(S_{\sqrt{\lambda_\ell}}\), and \(J_X\) over
\((P,\ell,m)\).  Proposition 4.1 then gives, without circular image language:

1. the restricted stationary modes form a complete generalized basis of the
   one-particle completion of (3.4);
2. \(\Omega_X(U_I,U_J^*)=-i\delta(I,J)\) gives
   \([a_I,a_J^\dagger]=\delta(I,J)\);
3. the quasifree two-point function is the pullback of the global stationary
   kernel because \(J_X\) is (6.1), not because a finite cross chose a vacuum;
4. both sheet profiles are restrictions of one oscillator coefficient, so no
   sheetwise Hilbert tensor factorization is introduced.

The main representation takes \(Q_E=n=0\).  Fixed nonzero background sectors
may carry the same fluctuation transform only after their infinite background
energy is subtracted and the sector is named separately.

## 8. Verification Status

**Proved analytically:** the closable two-sheet transform and its closed
energy-domain realization, bounded synthesis, graph projector/fixed-point
characterization, Plancherel form, exact one-particle and energy isometries,
and the profile kernel for \(J_X\).  The closed-domain proof is calculation
15.

**Checked symbolically:** the mass-shell Jacobians, both principal-value
cancellations, the delta normalization, the sign in (2.1), and the algebraic
substitution leading to (6.3).

**Not claimed:** that an arbitrary matched pair of half-ray profiles belongs
to (3.4), that \(P_\mu\) is bounded on ambient \(H^1\oplus H^1\), that a
finite rectangle determines (2.1), that one-particle distributions have
pointwise corner traces, or that \(J_X\) is local on either sheet.
