# Global Half-Cross Completion and Characteristic Representation

## 1. Statement Boundary

This note concerns the complete stationary product background

$$
M=\mathbb R_t\times\mathbb R_z\times S^2_R
$$

and only the radiative Maxwell sectors \(\ell\geq1\).  The finite rectangle
\(D_{U,V}\) of `07-characteristic-mode-reconstruction.md` is a local Goursat
patch: its profiles coordinatize the restriction of a global solution to that
patch, but they do not select a global extension, a vacuum, or global
annihilation coefficients.  The global result instead uses the complete
characteristic cross

$$
X=N_-\cup_{S_0}N_+,
\qquad
N_-:=\{v=0, u\geq0\},
\qquad
N_+:=\{u=0, v\geq0\}.
\tag{1.1}
$$

The main Fock theorem is restricted throughout to

$$
\boxed{Q_E=0,\qquad n=0.}
\tag{1.2}
$$

Nonzero constant electric and magnetic backgrounds are discussed separately
in `zero-modes-and-superselection.md`; they are not elements of the global
finite-energy radiative space.

## 2. Global Finite-Energy Solution Space

Fix one master mass

$$
\mu^2=\lambda_\ell>0,
\qquad
K_\mu:=\partial_t^2-\partial_z^2+\mu^2.
$$

Let \(\mathcal S_{E,\mu}\) be the real solution space of \(K_\mu\Phi=0\)
whose Cauchy data on one, hence every, constant-\(t\) line obey

$$
(\Phi,\partial_t\Phi)|_{t=0}
\in H^1(\mathbb R_z)\oplus L^2(\mathbb R_z).
\tag{2.1}
$$

Its conserved energy is

$$
E_\mu[\Phi]
=\frac12\int_{\mathbb R}dz\,
\left[(\partial_t\Phi)^2+(\partial_z\Phi)^2+\mu^2\Phi^2\right].
\tag{2.2}
$$

With

$$
U_k(t,z)=\frac{e^{-i\omega_kt+ikz}}{\sqrt{4\pi\omega_k}},
\qquad
\omega_k=\sqrt{k^2+\mu^2},
\tag{2.3}
$$

every \(\Phi\in\mathcal S_{E,\mu}\) has the unique real expansion

$$
\Phi=\int_{\mathbb R}dk\,
\left[a(k)U_k+\overline{a(k)}U_k^*\right],
\qquad
E_\mu[\Phi]=\int_{\mathbb R}dk\,\omega_k|a(k)|^2.
\tag{2.4}
$$

Thus \(a\in L^2(\mathbb R,\omega_kdk)\).  The Schwartz spectral core
\(a\in\mathcal S(\mathbb R)\) is dense in this norm.

The full radiative Maxwell energy space in the zero sector is the real Hilbert
direct sum

$$
\mathcal S_E^{\mathrm{rad}}
=\widehat\bigoplus_{P=E,B}\widehat\bigoplus_{\ell\geq1,m}
\mathcal S_{E,\sqrt{\lambda_\ell}},
\qquad
\sum_{P,\ell,m}\int dk\,\omega_{k\ell}|a^P_{k\ell m}|^2<\infty.
\tag{2.5}
$$

The harmonic reconstruction of `06-s2-harmonic-master-reduction.md` turns
(2.5) into the global proper-gauge Maxwell quotient.  No gauge fixing is used
to define this quotient.

## 3. Massive Null-Trace Estimate

Put

$$
\alpha_k=\frac{\omega_k+k}{\sqrt2},
\qquad
\beta_k=\frac{\omega_k-k}{\sqrt2},
\qquad
\alpha_k\beta_k=\frac{\mu^2}{2}.
\tag{3.1}
$$

For \(\Phi\in\mathcal S_{E,\mu}\), define the two profiles

$$
f(u):=\Phi(u,0),
\qquad
g(v):=\Phi(0,v).
\tag{3.2}
$$

The maps \(k\mapsto\alpha_k\) and \(k\mapsto\beta_k\) are bijections from
\(\mathbb R\) to \((0,\infty)\), with

$$
\frac{d\alpha}{dk}=\frac{\alpha}{\omega},
\qquad
\left|\frac{d\beta}{dk}\right|=\frac{\beta}{\omega}.
\tag{3.3}
$$

Applying ordinary Fourier Plancherel after these changes of variables gives
the exact full-line identities

$$
\begin{aligned}
\|f\|_{L^2(\mathbb R_u)}^2
&=\int_{\mathbb R}\frac{|a(k)|^2}{\alpha_k}\,dk,
&
\|\partial_uf\|_{L^2(\mathbb R_u)}^2
&=\int_{\mathbb R}\alpha_k|a(k)|^2\,dk,\\
\|g\|_{L^2(\mathbb R_v)}^2
&=\int_{\mathbb R}\frac{|a(k)|^2}{\beta_k}\,dk,
&
\|\partial_vg\|_{L^2(\mathbb R_v)}^2
&=\int_{\mathbb R}\beta_k|a(k)|^2\,dk.
\end{aligned}
\tag{3.4}
$$

Since

$$
\alpha_k+\beta_k=\sqrt2\,\omega_k,
\qquad
\frac1{\alpha_k}+\frac1{\beta_k}
=\frac{2\sqrt2\,\omega_k}{\mu^2},
\tag{3.5}
$$

restriction to the half-rays obeys

$$
\boxed{
\|f\|_{H^1(\mathbb R_+)}^2+\|g\|_{H^1(\mathbb R_+)}^2
\leq
\sqrt2\left(1+\frac2{\mu^2}\right)
\int_{\mathbb R}\omega_k|a(k)|^2dk.}
\tag{3.6}
$$

The factor \(\mu^{-2}\) is essential.  There is no uniform \(\mu\to0\)
version of this estimate, which is exactly where massless null radiation and
zero-frequency sectors can survive.

## 4. Half-Cross Tail and Null-Infinity Lemma

### Lemma 4.1 — vanishing massive symplectic tails

Let \(\Phi_1,\Phi_2\in\mathcal S_{E,\mu}\), \(\mu>0\), and let
\((f_i,g_i)\) be their profiles.  Then the two improper integrals

$$
\Omega_X(\Phi_1,\Phi_2)
=\int_0^\infty du\,(f_1'f_2-f_2'f_1)
+\int_0^\infty dv\,(g_1'g_2-g_2'g_1)
\tag{4.1}
$$

converge, and

$$
\begin{aligned}
\lim_{U\to\infty}
\int_U^\infty du\,(f_1'f_2-f_2'f_1)&=0,\\
\lim_{V\to\infty}
\int_V^\infty dv\,(g_1'g_2-g_2'g_1)&=0.
\end{aligned}
\tag{4.2}
$$

For the Schwartz spectral core one also has, for every \(N\),

$$
|\partial_t^r\partial_z^s\Phi(t,z)|
\leq C_{N,r,s}(1+t+|z|)^{-N},
\qquad t\geq1,\quad |z|\geq t.
\tag{4.3}
$$

Consequently the missing exterior Cauchy symplectic flux vanishes,

$$
\lim_{T\to\infty}
\int_{|z|>T}dz\,
\left(\partial_t\Phi_1\,\Phi_2
-\partial_t\Phi_2\,\Phi_1\right)_{t=T}=0.
\tag{4.4}
$$

The same conclusion extends from the Schwartz core to all of
\(\mathcal S_{E,\mu}\).

### Proof

Equation (3.6) puts \(f_i,g_i\) and their tangential derivatives in
\(L^2(\mathbb R_+)\).  Cauchy--Schwarz therefore gives, for example,

$$
\begin{aligned}
\left|\int_U^\infty(f_1'f_2-f_2'f_1)du\right|
\leq{}&
\|f_1'\|_{L^2(U,\infty)}\|f_2\|_{L^2(U,\infty)}\\
&+\|f_2'\|_{L^2(U,\infty)}\|f_1\|_{L^2(U,\infty)},
\end{aligned}
\tag{4.5}
$$

and every factor on the right has a vanishing tail.  This proves (4.1)--(4.2)
without a pointwise-decay assumption.

For Schwartz \(a(k)\), (4.3) follows directly from the oscillatory phases
\(\varphi_\pm(k)=kz\mp\omega_kt\).  Put \(\rho=t+|z|\).  For any desired
decay power, choose \(\delta>0\) sufficiently small.  If \(|z|\geq2t\), then
\(|\partial_k\varphi_\pm|\geq |z|-t\geq\rho/3\).  In the remaining strip
\(t\leq|z|\leq2t\), on \(|k|\leq\rho^\delta\),

$$
|\partial_k\varphi_\pm|
\geq t\left(1-\frac{|k|}{\omega_k}\right)
=\frac{t\mu^2}{\omega_k(\omega_k+|k|)}
\geq c_\mu\rho^{1-2\delta}.
\tag{4.6}
$$

Repeated integration by parts with
\((i\partial_k\varphi_\pm)^{-1}\partial_k\) therefore gives an arbitrary
power of \(\rho^{-1}\) on this low-momentum part after taking sufficiently
many iterations.  More explicitly, derivatives of
\((\partial_k\varphi_\pm)^{-1}\) cost only fixed powers of \(\rho\) and
\(\rho^\delta\); for a target power \(N\), choose \(\delta\) first small
enough and then choose the integration-by-parts order large enough.  On
\(|k|>\rho^\delta\), every differentiated amplitude is Schwartz, so choosing
its weight sufficiently high gives the same target power.  The argument also
absorbs the polynomial \(k,\omega_k\) factors produced by
\(\partial_t^r\partial_z^s\).  This proves (4.3) uniformly up to the null
directions and hence (4.4) on the core.

For general finite-energy data, approximate both solutions in
\(L^2(\omega dk)\) by Schwartz wave packets.  The exterior symplectic integral
is uniformly bounded by the global energies:

$$
|\Omega_{|z|>T}(\Phi_1,\Phi_2)|
\leq C_\mu E_\mu[\Phi_1]^{1/2}E_\mu[\Phi_2]^{1/2},
\tag{4.7}
$$

with the usable choice \(C_\mu=4/\mu\), using
\(\|\partial_t\Phi\|_{L^2}\leq(2E_\mu)^{1/2}\) and
\(\|\Phi\|_{L^2}\leq\mu^{-1}(2E_\mu)^{1/2}\).

Density, (4.3), and (4.7) give (4.4) for the full energy space.  \(\square\)

The rapid-decay part is consistent with the general massive-wave analysis of
[Sussman, *Massive wave propagation near null infinity*](https://arxiv.org/abs/2305.01119),
while the use of intersecting null data is classical; see
[Adler--Jacob, *Null Surfaces, Initial Values and Evolution Operators for Scalar Fields*](https://arxiv.org/abs/hep-th/9510049)
and the finite-energy characteristic framework in
[Nicolas, *On Lars Hörmander's remark on the characteristic Cauchy problem*](https://arxiv.org/abs/math/0504481).
The estimates (3.4)--(4.7), rather than those references, are the proof used in
this benchmark.

## 5. Finite-Cross Limit and the Global Symplectic Form

Let

$$
X_T=\{v=0,0\leq u\leq\sqrt2T\}
\cup
\{u=0,0\leq v\leq\sqrt2T\},
$$

and

$$
\Sigma_T^{\mathrm{int}}
=\{t=T,-T\leq z\leq T\}.
$$

These three pieces bound the compact triangle
\(u,v\geq0\), \(u+v\leq\sqrt2T\).  Conservation of the master symplectic
current and the incoming orientation give the exact finite identity

$$
\Omega_{X_T}=\Omega_{\Sigma_T^{\mathrm{int}}}.
\tag{5.1}
$$

There are no omitted sides in (5.1).  Lemma 4.1 controls the two distinct
limits: (4.2) completes the finite cross, and (4.4) completes the truncated
Cauchy interval.  Therefore

$$
\boxed{
\Omega_X(\Phi_1,\Phi_2)
=\lim_{T\to\infty}\Omega_{X_T}(\Phi_1,\Phi_2)
=\Omega_\Sigma(\Phi_1,\Phi_2).}
\tag{5.2}
$$

This proves the half-cross completion rather than assuming a
“no-null-infinity-flux policy.”

## 6. Theorem II — Global Characteristic Representation

For every \(\mu^2=\lambda_\ell>0\), restriction to (1.1) defines

$$
R_X:\mathcal S_{E,\mu}\longrightarrow\mathfrak X_{E,\mu},
\qquad
R_X\Phi=(f,g),
\tag{6.1}
$$

where the intrinsic profile space \(\mathfrak X_{E,\mu}\) is the fixed-point
space of the explicit analysis--synthesis projector defined in
`13-characteristic-complex-structure.md`, with
\(\int\omega_k|a_k[f,g]|^2dk<\infty\).  Then:

1. \(R_X\) is onto \(\mathfrak X_{E,\mu}\) by the explicit synthesis formula;
2. \(R_X\) is injective;
3. \(R_X\) is symplectic, with (5.2);
4. the characteristic energy norm is exactly the global energy norm,
   \(\|(f,g)\|_{E,X}^2=\int\omega_k|a_k[f,g]|^2dk=E_\mu[\Phi]\);
5. the characteristic one-particle norm is
   \(\|(f,g)\|_{1,X}^2=\int|a_k[f,g]|^2dk\), exactly the stationary
   one-particle norm.

### Proof of injectivity

If \(R_X\Phi=0\), then (5.2) gives

$$
\Omega_\Sigma(\Phi,\Psi)
=\Omega_X(R_X\Phi,R_X\Psi)=0
$$

for every \(\Psi\in\mathcal S_{E,\mu}\).  The Cauchy symplectic form on
\(H^1\oplus L^2\) is weakly nondegenerate, so \(\Phi=0\).  The remaining
claims follow from (5.2) and the explicit Plancherel theorem in the next note.
\(\square\)

Taking the Hilbert direct sum in (2.5) proves the same theorem for the full
zero-sector radiative Maxwell quotient.  This is a global theorem on the
boundaryless ultrastatic background.  It is not a theorem that a finite
rectangle is an autonomous gauge subsystem.

## 7. Verified and Conditional Boundaries

**Proved analytically:** the trace estimate, symplectic-tail convergence,
vanishing exterior flux by Schwartz density, finite-cross/Cauchy limit,
global restriction injectivity, and symplecticity.

**Independently checked:** the Jacobians and weights in (3.3)--(3.5), the
two-sheet distributional normalization, and the analysis--synthesis signs in
the Wolfram regressions.

**Still conditional/out of scope:** a uniform massless limit, nonzero massive
radiation prescribed at null infinity, arbitrary curved backgrounds, and a
single same-order Sobolev estimate uniform in the full angular tower.
