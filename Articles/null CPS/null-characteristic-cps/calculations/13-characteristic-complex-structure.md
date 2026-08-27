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

On the classical energy profile space, with \(J_{X,E}\) defined below,

$$
\frac12\Omega_X(h,J_{X,E}h)=\|h\|_{1,X}^2.
\tag{5.3}
$$

Equations (5.1)--(5.2) are exact isometries with the global stationary
one-particle norm and the conserved global energy of
`12-global-characteristic-completion.md`; they are not merely equivalent
norms.  Here (5.1) is first defined on the Schwartz/classical energy core and
then completed in the norm transported from \(L^2(dk)\).  This transported
one-particle Hilbert space is an abstract completion: a generic vector need
not admit its two individual sheet representatives even as ordinary
distributions.  In particular, a pointwise condition such as \(f(0)=g(0)\)
is not a statement on the full one-particle completion.  The classical
finite-energy theorem instead uses \(a\in L^2(\omega dk)\), for which both
half-ray profiles lie in \(H^1(\mathbb R_+)\) and have a well-defined common
corner trace.

### Remark 5.1 — why ordinary sheet distributions need not exist

For a concrete warning, take

$$
a(k)=\frac{\mathbf 1_{\{k<-e\}}}{\sqrt{|k|}\log|k|}.
\tag{5.4}
$$

Then \(a\in L^2(dk)\), since
\(\int_e^\infty dx/(x\log^2x)<\infty\).  On the first sheet, as
\(k=-x\to-\infty\),

$$
\alpha_k\sim\frac{\mu^2}{2\sqrt2\,x},
\qquad
N_k\sim(4\pi x)^{-1/2}.
\tag{5.5}
$$

For real \(a\) and a real half-ray test function \(\varphi\) with
\(\widehat\varphi(0)\ne0\), pairing the full real synthesis (3.1) gives twice
the real part of the positive-frequency pairing and therefore has the tail

$$
2\operatorname{Re}\int_e^\infty
dx\,N_{-x}a(-x)\widehat\varphi(\alpha_{-x})
\sim C\widehat\varphi(0)\int_e^\infty\frac{dx}{x\log x},
\tag{5.6}
$$

which diverges.  Thus \(L^2(dk)\) synthesis cannot in general be interpreted
sheet by sheet as an ordinary distribution.  By contrast,
tangential derivatives and the gauge-invariant radiative/field-strength
profiles carry an additional \(\alpha_k\) or \(\beta_k\) on the sheet where
the corresponding null frequency tends to zero.  This improves precisely
the bad low-null-frequency tail and is consistent with using \(p_A,r_A\) or
field-strength observables in the quantum theory.  No new one-particle
Sobolev theorem is asserted here.

## 6. Classical Explicit and One-Particle Abstract Complex Structures

On the classical energy fixed-point space, the stationary complex structure
is the literal profile-space operator obtained from multiplication by \(-i\)
on \(a(k)\):

$$
\boxed{
T_\mu(J_{X,E}h)(k)=-i\,T_\mu h(k),
\qquad
J_{X,E}=S_\mu(-i)T_\mu.}
\tag{6.1}
$$

Thus

$$
(J_{X,E}h)_r(s)
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
(J_{X,E}h)_r(s)
=\sum_{q=\pm}\int_0^\infty dy\int_{\mathbb R}
\frac{dk}{2\pi\omega_k}\big[&
\gamma_q(k)\sin\!\big(\gamma_q(k)y-\gamma_r(k)s\big)h_q(y)\\
&+\cos\!\big(\gamma_q(k)y-\gamma_r(k)s\big)\partial_yh_q(y)
\big].
\end{aligned}}
\tag{6.3}
$$

The \(k\)-integral is an oscillatory kernel acting first on the Schwartz or
classical energy core.  Formula (6.3) deliberately leaves the derivative on
the profile.  If it is integrated by parts on the decaying core, the retained boundary term is
\(-\cos(\gamma_r(k)s)h_q(0)\) for each sheet \(q\), as displayed explicitly in
equation (7.1) of calculation 15.  The off-diagonal terms \(q\neq r\) are nonzero and show
explicitly that \(J_{X,E}\) mixes the two sheets.  From (4.1),

$$
J_{X,E}^2=-1,
\qquad
\Omega_X(J_{X,E}h_1,J_{X,E}h_2)=\Omega_X(h_1,h_2),
\qquad
\Omega_X(h,J_{X,E}h)>0
$$

for nonzero real classical energy data.

Let \(U_{\mu,1}:L^2(dk)\to X_{1,\mu}\) denote the unitary identification
defined by completing the core synthesis map in the one-particle norm.  The
one-particle complex structure is the abstract bounded operator

$$
\boxed{J_{X,1}:=U_{\mu,1}(-i)U_{\mu,1}^{-1}.}
\tag{6.4}
$$

Equation (6.3) determines (6.4) by one-particle-norm continuity from the core;
it is not asserted to act pointwise, or distributionally sheet by sheet, on
an arbitrary element of \(X_{1,\mu}\).

## 7. Consequences for Completeness, CCR and Wightman Functions

For the full Maxwell radiative tower, take the orthogonal direct sum of
\(T_{\sqrt{\lambda_\ell}}\), \(S_{\sqrt{\lambda_\ell}}\), and the appropriate
\(J_{X,E}\) or \(J_{X,1}\) over
\((P,\ell,m)\).  Proposition 4.1 then gives, without circular image language:

1. the restricted stationary modes define the spectral core whose abstract
   one-particle-norm completion is unitarily identified with the direct sum
   of the stationary \(L^2(dk)\) coefficient spaces;
2. \(\Omega_X(U_I,U_J^*)=-i\delta(I,J)\) gives
   \([a_I,a_J^\dagger]=\delta(I,J)\);
3. the quasifree two-point function is the pullback of the global stationary
   kernel because the complex structure is transported from stationary
   multiplication by \(-i\), not because a finite cross chose a vacuum;
4. both sheet profiles are restrictions of one oscillator coefficient, so no
   sheetwise Hilbert tensor factorization is introduced.

The main representation takes \(Q_E=n=0\).  Fixed nonzero background sectors
may carry the same fluctuation transform only after their infinite background
energy is subtracted and the sector is named separately.

## 8. Verification Status

**Proved analytically:** the closable two-sheet transform and its closed
energy-domain realization, bounded synthesis, graph projector/fixed-point
characterization, Plancherel form, exact one-particle and energy isometries,
the classical profile kernel for \(J_{X,E}\), and its abstract bounded
one-particle extension.  The closed-domain proof is calculation
15.

**Checked symbolically:** the mass-shell Jacobians, both principal-value
cancellations, the delta normalization, the sign in (2.1), and the algebraic
substitution leading to (6.3).

**Not claimed:** that an arbitrary matched pair of half-ray profiles belongs
to (3.4), that \(P_\mu\) is bounded on ambient \(H^1\oplus H^1\), that a
finite rectangle determines (2.1), that generic one-particle vectors have
ordinary distribution-valued individual sheet representatives or corner
traces, or that \(J_{X,E}\) is local on either sheet.  Formula (6.3) is not an
unconditional sheetwise kernel formula on all of \(X_{1,\mu}\).
