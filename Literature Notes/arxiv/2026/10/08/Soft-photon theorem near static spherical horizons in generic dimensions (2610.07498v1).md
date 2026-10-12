---
paper id: 2610.07498v1
title: Soft-photon theorem near static spherical horizons in generic dimensions
authors:
  - Kai-Yu Zhang
publication date: 2026-10-05T23:02
abstract: |-
  Maxwell theory on a fixed nonextremal bifurcate spherical Killing horizon admits regular radiative and Coulombic data in every dimension D>3. The paper constructs the horizon phase space, endpoint extension and large-U(1) charge, then derives a conditional horizon soft relation and compares it with the flat-space theorem in the same spherical-mode normalization.
comments: "28 pages, 1 figure"
url: https://arxiv.org/abs/2610.07498v1
summary: "A concrete horizon Maxwell phase space with an explicit endpoint canonical pair, and a normalization-sensitive comparison of horizon and null-infinity soft relations."
tags: []
---

# Scope and source map

The reusable result is the horizon phase space and its endpoint completion. The soft relation additionally assumes a symmetry-preserving scattering map between the two horizon branches and no charge leakage through other boundaries. It is not a construction of that scattering map, or an identification with the asymptotically flat S-matrix.

This note reconstructs [v1](https://arxiv.org/abs/2610.07498v1) from its complete TeX and PDF. `Source-derived` applies to the reconstruction unless an item is identified as `Checked` in the verification log. PDF pages 9 and 24 (printed pages 8 and 23) were visually checked for the symplectic/charge signs and the Appendix A angular coefficient.

| Source cluster | Purpose and dependencies |
|---|---|
| 1. Introduction | Distinguish finite-radius horizon regularity from the dimension-dependent expansion at null infinity. |
| 2.1. Near-horizon U(1) fall-off | Fixed background, orientation, action, radial gauge, smoothness and leading data. |
| 2.2. Solution space | Maxwell hypersurface/evolution/supplementary hierarchy; news and electric aspect. |
| 2.3. Horizon phase space and large-U(1) charge | Cut charge, endpoint conditions, missing half of the gauge action, charged scalar hard sector. |
| 3.1. Radiative falloffs at null infinity | Retarded Green function, Cartesian-to-angular conversion, radiative versus Coulomb powers. |
| 3.2. Regular radiative falloffs at the horizon | Scalar/vector harmonic masters, rescaling, Taylor recursion and bifurcation regularity. |
| 4.1. Mode expansion | Killing-frequency radial solution, symplectic normalization and one-particle states. |
| 4.2. Ward identity and soft theorem | Scalar-harmonic soft charge, diagonal matching, conditional Ward identity and position-space form. |
| 5. Conclusion | Scope and proposed gravitational extension; no new gravitational calculation. |
| Appendix A | Plane-wave/spherical basis map, stationary phase, Funk–Hecke integral and flat-space comparison. |

## How to read this long paper

Read §§2.1–2.3 first for the boundary phase-space problem. Read §3.2 and §4 for the master-field-to-charge chain. Appendix A is essential if comparing normalizations or dimensions; §3.1 explains why the two radial expansions differ. The introductory survey and conclusion are background. Although the paper is under 30 pages, its linked normalization chain merits monograph-style tracking.

# Geometry, theory and conventions

The background is fixed, static and spherically symmetric. Let $D>3$, $B\simeq S^{D-2}$ be a bifurcation sphere, and use the regular chart $(v,r,x^A)$ on the future branch:

$$
ds^2=-F(r)dv^2+2H(r)dv\,dr+r^2q_{AB}dx^A dx^B.
$$

Here $q_{AB}$ is the unit-sphere metric; all displayed angular contractions use $q$, not $r^2q$. The assumptions are

$$
F(r_H)=0,\qquad H_H\ne0,\qquad F'(r_H)\ne0,
\qquad \kappa=\frac{F'(r_H)}{2H_H}>0.
$$

For the black-hole orientation $H_H,F'(r_H)>0$; for a future de Sitter cosmological horizon both are negative. The integration orientation absorbs $\operatorname{sgn}H_H$ where stated below. Spherical symmetry alone does not imply the staticity used here.

The inverse metric and density are

$$
g^{vv}=0,\quad g^{vr}=H^{-1},\quad g^{rr}=FH^{-2},\quad
 g^{AB}=r^{-2}q^{AB},\quad \sqrt{-g}=|H|r^{D-2}\sqrt q.
$$

Put $\rho=r-r_H$, $K=F/H=2\kappa\rho+O(\rho^2)$. With $dr_*/dr=H/F$, $t=v-r_*$ and $u=t-r_*$, the past chart has cross term $-2Hdu\,dr$. The static reflection interchanges branches by $v\mapsto-u$.

The Maxwell coupling remains explicit:

$$
S[A;J]= -\frac{1}{4g_D^2}\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}
-\int\sqrt{-g}\,A_\mu J^\mu,
\qquad \nabla_\mu F^{\mu\nu}=g_D^2J^\nu,
\qquad \nabla_\mu J^\mu=0.
$$

The same letter $F$ denotes the metric function and the field strength; indices distinguish them. The source first treats $J$ as prescribed, then supplies a dynamical charged scalar for the hard charge.

| Object | Definition / role |
|---|---|
| $a_A,b_A$ | $A_A=a_A+\rho b_A+O(\rho^2)$; leading radiation and first transverse datum. |
| $e,e_{(1)}$ | $A_v=\rho e+\rho^2e_{(1)}/2+O(\rho^3)$, so $e=F_{rv}|_H$. |
| $N_A$ | $F_{vA}|_H=\partial_va_A$, Maxwell news. |
| $\mathcal E$ | $r_H^{D-2}e/H_H$, electric charge aspect. |
| $\varphi,\mathcal N$ | Average endpoint potential and its difference. |
| $\Psi^{S,V},\widehat\Psi^{S,V}$ | Gauge-invariant harmonic masters and radially rescaled masters. |
| $\mathcal A^{S,V}$ | Horizon Fourier coefficients, with commutator fixed by $\Omega_H$. |
| $a^I,\mathcal B^I$ | Flat-space spherical photon operators and boundary coefficients; these are different normalizations. |

# Smooth horizon data and the characteristic hierarchy

Impose

$$
A_r=0,\qquad A_v|_H=0,\qquad A_v=O(\rho),\qquad A_A=O(1).
$$

Preservation gives $\partial_r\varepsilon=\partial_v\varepsilon=0$, hence $\varepsilon=\varepsilon(x)$. These conditions permit $e\ne0$ and $N_A\ne0$. Smoothness yields

$$
F_{rv}=e+\rho e_{(1)}+\cdots,\quad F_{rA}=b_A+\cdots,
\quad F_{vA}=\partial_va_A+\rho(\partial_vb_A-D_Ae)+\cdots.
$$

The horizon stress density is finite:

$$
T^{\rm M}_{vv}|_H=\frac{1}{g_D^2r_H^2}N_AN^A.
$$

This is a local density statement. Finiteness of its integral over an infinite horizon needs time-decay/integrability conditions beyond smoothness at finite $v$.

The three independent Maxwell equations in §2.2 are

$$
-\partial_r\left(\frac{r^{D-2}}H F_{rv}\right)-r^{D-4}D_AF_r{}^A
=g_D^2Hr^{D-2}J^v,
$$

$$
\partial_v(r^{D-4}F_{rA})+
\partial_r\left[r^{D-4}(F_{vA}+KF_{rA})\right]
+Hr^{D-6}D^BF_{BA}=g_D^2Hr^{D-2}q_{AB}J^B,
$$

$$
\partial_v\left(\frac{r^{D-2}}H F_{rv}\right)
-r^{D-4}D_A(F_v{}^A+KF_r{}^A)=g_D^2Hr^{D-2}J^r.
$$

The first fixes radial electric data, the second evolves angular transverse data, and the third is supplementary. Current conservation and antisymmetry imply

$$
\partial_r\left[\sqrt{-g}\left(g_D^2J^r-\nabla_\mu F^{\mu r}\right)\right]=0
$$

once the other components hold. Thus one radial order of the supplementary equation suffices. At leading order:

$$
e_{(1)}=-\left(\frac{D-2}{r_H}-\frac{H'_H}{H_H}\right)e
-\frac{H_H}{r_H^2}D_Ab^A-g_D^2H_H^2J^v_{(0)},
$$

$$
(2\partial_v+2\kappa)b_A=D_Ae-\frac{D-4}{r_H}\partial_va_A
-\frac{H_H}{r_H^2}D^B(D_Ba_A-D_Aa_B)
+g_D^2H_Hr_H^2q_{AB}J^B_{(0)},
$$

$$
\partial_v\mathcal E=r_H^{D-4}D^AN_A+g_D^2H_Hr_H^{D-2}J^r_{(0)}.
$$

The last equation is the horizon Gauss law. The free datum is $a_A(v,x)$; one also needs transverse initial data. The hierarchy does not mean arbitrary horizon data determine a unique global Maxwell solution.

# Cut charge, endpoint extension and the hard sector

Variation of the Maxwell action gives

$$
\Theta_{\rm M}(\delta A)=-\frac1{g_D^2}\delta A\wedge *F.
$$

With the source orientation and $\delta A_v|_H=0$,

$$
\Omega_H^{\rm M}=C_H\int dv\,d\Omega_{D-2}
\left(\delta_1N^A\delta_2a_A-\delta_2N^A\delta_1a_A\right),
\qquad C_H=\frac{r_H^{D-4}}{g_D^2}.
$$

The cut charge and its bifurcation value are

$$
Q_\varepsilon(v)=-\frac1{g_D^2}\int d\Omega\,\varepsilon\mathcal E(v,x),
\qquad Q^B_\varepsilon=Q_\varepsilon(-\infty).
$$

The source selects the topologically trivial magnetic sector and imposes

$$
F_{AB}|_{v\to\pm\infty}=0,\qquad \mathcal E(+\infty)=0.
$$

Then $a_A^\pm=D_A\varphi_\pm$ and $\int dv\,N_A=D_A\mathcal N$, where $\mathcal N=\varphi_+-\varphi_-$. Integrating Gauss law and integrating by parts on the sphere gives the sign-sensitive relation

$$
-Q^B_\varepsilon=Q^{\rm S}_\varepsilon+Q^{\rm H}_\varepsilon,
$$

$$
Q^{\rm S}_\varepsilon=C_H\int dv\,d\Omega\,D^A\varepsilon N_A
=-C_H\int d\Omega\,\varepsilon D^2\mathcal N,
\qquad
Q^{\rm H}_\varepsilon=-H_Hr_H^{D-2}\int dv\,d\Omega\,\varepsilon J^r.
$$

A nonzero future electric aspect would add an endpoint cut charge. It cannot be dropped for a generic charged final state.

Removing the $v$-independent mode when inverting $\partial_v$ gives only

$$
\{N_A(v,x),a_B(v',x')\}_{\rm rad}
=-\frac1{2C_H}q_{AB}\delta(v-v')\delta_{D-2}(x,x'),
\qquad
\{a_A,Q^{\rm S}_\varepsilon\}_{\rm rad}=\frac12D_A\varepsilon.
$$

The factor of two is tied to the two antisymmetrized terms after integration by parts. It is not a reason to double the physical charge. Define

$$
\varphi=\frac12(\varphi_++\varphi_-),\qquad
a_A=\bar a_A+D_A\varphi,\qquad
\bar a_A^\pm=\pm\frac12D_A\mathcal N.
$$

Keeping endpoint variations yields source Eq. (2.46):

$$
\Omega_{\rm ext}^{\rm M}=C_H\left[
\int dv\,d\Omega\,\delta\partial_v\bar a^A\wedge\delta\bar a_A
+\int d\Omega\,D^A\delta\mathcal N\wedge D_A\delta\varphi\right].
$$

Under $\delta_\varepsilon\varphi=\varepsilon$, $\delta_\varepsilon\bar a_A=0$, the second-slot contraction is $\Omega(\delta,\delta_\varepsilon)=\delta Q^{\rm S}_\varepsilon$. Thus the full bracket gives $\{a_A,Q^{\rm S}_\varepsilon\}=D_A\varepsilon$. In a nonconstant scalar harmonic this endpoint block is $C_H\lambda_\ell^S\delta\mathcal N_{\ell m}\wedge\delta\varphi_{\ell m}$; its inverse gives $\{\varphi_{\ell m},\mathcal N_{\ell m}\}=1/(C_H\lambda_\ell^S)$. The constant harmonic has no Maxwell gradient and is handled by the hard total charge.

For the dynamical matter example,

$$
S_\Phi=-\int\sqrt{-g}\,(\mathcal D_\mu\Phi)^*\mathcal D^\mu\Phi,
\quad\mathcal D_\mu=\nabla_\mu-iqA_\mu,
\quad J^\mu=iq[\Phi^*\mathcal D^\mu\Phi-(\mathcal D^\mu\Phi)^*\Phi].
$$

Writing $\Phi=\phi(v,x)+O(\rho)$ gives $H_HJ^r=iq(\phi^*\partial_v\phi-\partial_v\phi^*\phi)$. The horizon matter form is

$$
\Omega_H^\Phi=-r_H^{D-2}\int dv\,d\Omega
\left[\delta_1\phi^*\partial_v\delta_2\phi+
\delta_1\phi\partial_v\delta_2\phi^*-(1\leftrightarrow2)\right].
$$

It generates $\{\phi,Q^{\rm H}_\varepsilon\}=iq\varepsilon\phi$ and the conjugate transformation. These formulas assume the source's horizon orientation and charge convention throughout.

# Why infinity and a finite-radius horizon have different powers

Section 3.1 starts in Lorenz gauge with

$$
G_\omega(R)=\frac i4\left(\frac\omega{2\pi R}\right)^{(D-3)/2}
H^{(1)}_{(D-3)/2}(\omega R).
$$

At fixed nonzero $\omega$ the outgoing Hankel asymptotic gives

$$
G_\omega(R)\sim
\frac{i e^{-i\pi(D-2)/4}}{2(2\pi)^{(D-2)/2}}
\omega^{(D-4)/2}R^{-(D-2)/2}e^{i\omega R}.
$$

The Cauchy-data representation uses $G_{\rm ret}\Pi-A^{(0)}\partial_{t'}G_{\rm ret}$, leading to Cartesian radiation $A_\alpha\sim r^{-(D-2)/2}a_\alpha(u,x)$. Lorenz gauge enforces $a_t+\hat x^ia_i=0$ for nonzero frequency. Since $A_A=rA_i\partial_A\hat x^i$,

$$
A_A^{\rm rad},F_{uA}^{\rm rad}=O(r^{-(D-4)/2}),\quad
A_r^{\rm rad},F_{ur}^{\rm rad}=O(r^{-D/2}),\quad
T_{uu}^{\rm M}=O(r^{-(D-2)}).
$$

A radial-gauge transformation with $\varepsilon_{\rm rg}=\int_r^\infty A_rdr'$ is subleading in $A_A$ and preserves its leading power. The Coulomb field instead has

$$
F_{ur}^{\rm C}=\frac{g_D^2Q}{\Omega_{D-2}}r^{-(D-2)}.
$$

Consequently integer powers alone miss the leading radiation at null infinity in odd $D$. This argument first takes large $r$ at fixed frequency; it is not a uniform interchange with the soft limit. Near $r_H>0$, the radial equations have a smooth characteristic expansion instead.

# Scalar and vector masters at the horizon

Use real scalar and transverse one-form harmonics:

$$
-D^2Y_{\ell m}=\lambda_\ell^SY_{\ell m},\quad
\lambda_\ell^S=\ell(\ell+D-3),\quad
D^AV_A^{\ell p}=0,
$$

$$
D_B(D^BV_A-D_AV^B)=-\lambda_\ell^VV_A,\qquad
\lambda_\ell^V=(\ell+1)(\ell+D-4).
$$

The $\ell=0$ scalar mode obeys $r^{D-2}F_{rv,00}/H=Q_0$, constant in $r,v$. There is no monopole angular photon.

For $\ell\ge1$, define $\Psi^S=r^{D-2}F^S_{rv}/H$. The hypersurface and supplementary equations reconstruct

$$
F^S_{rA}=\frac{r^{4-D}}{\lambda_\ell^S}\partial_r\Psi^S D_AY,
\qquad
F^S_{vA}=-\frac{r^{4-D}}{\lambda_\ell^S}(\partial_v\Psi^S+K\partial_r\Psi^S)D_AY.
$$

Substituting into $\partial_rF_{vA}=\partial_vF_{rA}-D_AF_{rv}$ gives

$$
2\partial_v\partial_r\Psi^I+\frac{n_I}{r}\partial_v\Psi^I
+K\partial_r^2\Psi^I+left(K'+\frac{n_IK}{r}\right)\partial_r\Psi^I
-\frac{H\lambda_\ell^I}{r^2}\Psi^I=0,
\qquad n_S=4-D,\quad n_V=D-4.
$$

For the vector sector the same equation follows from $A_A^V=\Psi^VV_A$ in the angular Maxwell equation. The rescaling $\widehat\Psi^I=r^{n_I/2}\Psi^I$ removes the first-order $\partial_v$ term:

$$
2\partial_v\partial_r\widehat\Psi^I+\partial_r(K\partial_r\widehat\Psi^I)
-\mathcal V_\ell^I\widehat\Psi^I=0,
$$

$$
\mathcal V_\ell^I=
\frac{H\lambda_\ell^I}{r^2}+\frac{n_IK'}{2r}+
\frac{n_I(n_I-2)K}{4r^2}.
$$

Thus the scalar last term is $(D-2)(D-4)K/(4r^2)$, while the vector term is $(D-4)(D-6)K/(4r^2)$. For $H=1$, static-time reduction has effective potential $K\mathcal V^I$.

Expand $K=\sum_{j\ge1}K_j\rho^j$, $\mathcal V=\sum_{j\ge0}V_j\rho^j$ and $\widehat\Psi=\sum_k\rho^k\widehat\Psi_k(v)$, with $K_1=2\kappa$. Coefficient matching gives

$$
2(k+1)[\partial_v+(k+1)\kappa]\widehat\Psi_{k+1}
=\sum_{j=0}^kV_j\widehat\Psi_{k-j}
-(k+1)\sum_{j=2}^{k+1}(k+2-j)K_j\widehat\Psi_{k+2-j}.
$$

This is a finite-order smooth Taylor construction, not a convergence theorem for the infinite series. Extension to $B$ needs regularity in $V=e^{\kappa v}$ at $V=0$, additional to regularity at finite $v$.

# Radial modes and symplectic normalization

For $\widehat\Psi=e^{-i\omega v}\mathcal R_{\omega\ell}$, $\omega>0$,

$$
K\mathcal R''+(K'-2i\omega)\mathcal R'-\mathcal V\mathcal R=0,
\qquad \mathcal R(r_H)=1,
\qquad \mathcal R=1+\frac{V_0}{2(\kappa-i\omega)}\rho+O(\rho^2).
$$

If only $K=2\kappa\rho$ and $\mathcal V=V_0$ are retained, the regular solution is

$$
\mathcal R={}_0F_1\left(;1-\frac{i\omega}{\kappa};\frac{V_0\rho}{2\kappa}\right).
$$

It is an exact solution of the truncated radial equation; higher coefficients of the actual background alter its higher radial terms.

The angular field reconstructed on the horizon is

$$
a_A=r_H^{-(D-4)/2}\int_0^\infty d\omega\left[
\sum_{\ell p}\mathcal A^V_{\omega\ell p}V_A^{\ell p}
-\sum_{\ell m}\frac{\mathcal A^S_{\omega\ell m}}{\lambda_\ell^S}D_AY_{\ell m}
\right]e^{-i\omega v}+\mathrm{c.c.}
$$

With $\int YY'=\delta$ and $\int V_AV'^A=\delta$, integration by parts gives $\int DY\cdot DY'=\lambda_\ell^S\delta$. Substitution into the horizon form yields

$$
\Omega_H^{\rm M}=\frac{4\pi i}{g_D^2}\int_0^\infty d\omega\,\omega
\left[\sum_{\ell p}\delta\mathcal A^{V*}\wedge\delta\mathcal A^V
+\sum_{\ell m}\frac1{\lambda_\ell^S}\delta\mathcal A^{S*}\wedge\delta\mathcal A^S\right].
$$

The $r_H$ factors cancel. With $c_\ell^S=\lambda_\ell^S$, $c_\ell^V=1$,

$$
[\widehat{\mathcal A}^I_{\omega\ell\sigma},
\widehat{\mathcal A}^{J\dagger}_{\omega'\ell'\sigma'}]
=\frac{g_D^2c_\ell^I}{4\pi\omega}\delta^{IJ}\delta(\omega-\omega')
\delta_{\ell\ell'}\delta_{\sigma\sigma'}.
$$

The delta-normalized one-particle state is $\sqrt{4\pi\omega/(g_D^2c_\ell^I)}\,\widehat{\mathcal A}^{I\dagger}|0\rangle_H$. This defines a positive-Killing-frequency vacuum. An individual $e^{-i\omega v}=V^{-i\omega/\kappa}$ mode is not smooth at $B$; the mode basis is distributional on the branch, and globally regular classical data require appropriate wave packets. No identification of this vacuum with a globally regular thermal/Hartle–Hawking state is established.

# Ward identity and its precise assumptions

Only scalar harmonics survive the projection in $Q^{\rm S}$ because $D^AV_A=0$. Expanding $\varepsilon=\varepsilon_0+\sum\varepsilon_{\ell m}Y_{\ell m}$ and taking the symmetric time-integral limit gives

$$
\widehat Q_\varepsilon^{\rm S}=\frac{i\pi r_H^{(D-4)/2}}{g_D^2}
\sum_{\ell m}\varepsilon_{\ell m}
\lim_{\omega\to0^+}\omega(\widehat{\mathcal A}^S_{\omega\ell m}
-\widehat{\mathcal A}^{S\dagger}_{\omega\ell m}).
$$

The $\pi$, rather than $2\pi$, is the half-line Fourier endpoint factor. For example a damping regulator gives $2\int_0^\infty e^{-a\omega}\sin(T\omega)d\omega/\omega=2\arctan(T/a)\to\pi$.

At the bifurcation sphere the source matches $F_{ru}^{(-)}/H_H=F_{rv}^{(+)}/H_H$ and $\varepsilon^- =\varepsilon^+$. It imposes the time-reversed electric endpoint condition on the past branch. Assume in addition a scattering operator $\mathcal S$ preserves this diagonal large U(1), with no charge flux through other boundaries. Then

$$
\langle\mathrm{out}|(Q^{\rm out}\mathcal S-\mathcal SQ^{\rm in})|\mathrm{in}\rangle=0,
\qquad Q=Q^{\rm S}+Q^{\rm H}.
$$

The hard charges act by the sum of $q\varepsilon(x)$ on incoming/outgoing particles. Therefore, for $\mathcal M=\langle\mathrm{out}|\mathcal S|\mathrm{in}\rangle$ and $\ell\ge1$,

$$
\lim_{\omega\to0^+}\omega\langle\mathrm{out}|(
\widehat{\mathcal A}^{S,\mathrm{out}}_{\omega\ell m}\mathcal S
+\mathcal S\widehat{\mathcal A}^{S,\mathrm{in}\dagger}_{\omega\ell m})|\mathrm{in}\rangle
=\frac{ig_D^2}{\pi r_H^{(D-4)/2}}
\left[\sum_{j\in\mathrm{out}}q_jY_{\ell m}(x_j)
-\sum_{k\in\mathrm{in}}q_kY_{\ell m}(x_k)\right]\mathcal M.
$$

The constant mode enforces total charge conservation. Using $\sum_{\ell\ge1,m}Y_{\ell m}(x)Y_{\ell m}(y)=\delta(x,y)-1/\Omega_{D-2}$ then replaces the harmonic factors by sphere delta functions; the constant subtraction cancels only by charge conservation. Neither local Maxwell recursion nor the phase-space calculation proves existence, unitarity, or infrared completeness of the assumed scattering map.

# Appendix A: equal commutators do not imply equal soft weights

In flat space, radiation gauge has $A_0=0$, $\partial^iA_i=0$ and plane-wave commutator $2\omega(2\pi)^{D-1}\delta^{D-1}(\mathbf q-\mathbf q')$. Project polarizations onto the orthonormal one-form basis $D_AY_{\ell m}/\sqrt{\lambda_\ell^S}$ and $V_A^{\ell p}$ to obtain $a^I_{\omega\ell\sigma}$. This is a unitary angular basis change at fixed positive frequency; it preserves the Minkowski vacuum.

Stationary phase at fixed $\omega>0$, $r\to\infty$, gives the boundary coefficients

$$
\mathcal B^S=-\frac{g_De^{-i\pi(D-2)/4}}{2(2\pi)^{D/2}}
\omega^{(D-4)/2}\sqrt{\lambda_\ell^S}\,a^S,
\qquad
\mathcal B^V=\frac{g_De^{-i\pi(D-2)/4}}{2(2\pi)^{D/2}}
\omega^{(D-4)/2}a^V.
$$

The Jacobian in $\delta^{D-1}(\mathbf q-\mathbf q')$ gives $[a^I,a^{J\dagger}]=2(2\pi)^{D-1}\omega^{3-D}\delta^{IJ}\delta(\omega-\omega')\cdots$. Hence $\mathcal B$ has the same $g_D^2c_\ell^I/(4\pi\omega)$ commutator as $\mathcal A$.

For massless hard legs, the plane-wave soft factor is a sphere gradient of $\log(1-\hat x\cdot\hat y)$. Its transverse-vector projection vanishes. The scalar projection uses source Eq. (A.23):

$$
\int d\Omega_{D-2}(x)Y_{\ell m}(x)\log(1-\hat x\cdot\hat y)
=-\Omega_{D-2}\Gamma(D-2)\frac{\Gamma(\ell)}{\Gamma(\ell+D-2)}Y_{\ell m}(y).
$$

Together with $\lambda_\ell^S$, this gives Eq. (A.24):

$$
\lim_{\omega\to0^+}\omega^{(6-D)/2}
\langle\mathrm{out}|(\mathcal B^{S,\mathrm{out}}\mathcal S+
\mathcal S\mathcal B^{S,\mathrm{in}\dagger})|\mathrm{in}\rangle
=-\frac{g_D^2e^{-i\pi(D-2)/4}2^{D/2-2}\Gamma((D-2)/2)\Gamma(\ell+1)}
{\pi\Gamma(\ell+D-3)}\left[\sum_{\rm out}q_jY_{\ell m}(x_j)-\sum_{\rm in}q_kY_{\ell m}(x_k)\right]\mathcal M.
$$

The incoming antipodal identification and phase are part of this crossed convention. At $D=4$, the prefactor is $ig_D^2/\pi$, the angular Gamma ratio is one, and the frequency weight is $\omega$. At $D>4$, the frequency weight and $\ell$-dependent ratio differ from the horizon relation, despite the equal commutators. The underlying plane-wave theorem still has its usual $1/\omega$ pole. This comparison does not equate scattering amplitudes between different boundaries.

# Equation ledger and reuse in regional CPS

| Input → intermediate → output | Conditions that must survive reuse |
|---|---|
| Action → $\Theta_{\rm M}$ → $\Omega_H$ | Fixed metric, horizon orientation and $\delta A_v|_H=0$. |
| Maxwell hierarchy → $\partial_v\mathcal E$ → cut-charge balance | Conserved current; transverse initial data for radial extension. |
| Magnetic endpoints + $\mathcal E(+\infty)=0$ → exact memory → $Q^{\rm S}+Q^{\rm H}=-Q^B$ | Topologically trivial sector and no omitted electric endpoint. |
| $\partial_v$ inverse → half action → endpoint pair | Nonconstant sphere modes; keep endpoint variations. |
| Harmonic masters → rescaling → recursion → local radial modes | $r_H>0$, $\kappa\ne0$; no infinite Taylor convergence claim. |
| $\Omega_H$ → mode commutator → soft-charge coefficient | Killing-frequency basis and distributional soft limit. |
| Branch matching + no other flux → Ward identity | Additional scattering hypothesis, not a local field-equation consequence. |
| Plane waves → stationary phase → Funk–Hecke projection | Flat background, massless hard particles and matched phase convention. |

For the vault's sign convention $\delta H_\xi=-\iota_{X_\xi}\Omega$, note that $-\iota_X\Omega(\delta)=\Omega(\delta,X)$. This agrees with the contraction used above. The directly reusable corner pair is the angularly differentiated $(\varphi,\mathcal N)$ pair, not a prescription to declare every residual gauge transformation pure gauge. To sew adjacent horizon regions one must specify common cut orientation, matching of the electric aspect, and the retained endpoint sector. The paper does not establish an observable-algebra sewing theorem or a state on the sewn algebra.

# Verification log and remaining boundary

- **Checked — variation and current:** xAct `core` reproduced the Maxwell bulk-plus-divergence variation and the divergence of the antisymmetrized linearized current; both canonical residuals are exactly zero. Fixed metric and commuting variations are assumed.
- **Checked — geometry and flux:** xAct `components` reproduced seven independent non-angular Christoffel entries for the general four-dimensional $F(r),H(r)$ metric, residuals all zero. Mathematica checked inverse-metric algebra and the local angular-frame $T_{vv}|_H=N^2/(g_D^2r_H^2)$ contraction. This is an explicit component benchmark, not a machine proof for arbitrary-dimensional sphere geometry.
- **Checked — master chain:** symbolic substitution into scalar Bianchi reconstruction gives zero residual for symbolic $D$; the generic $n_I$ rescaling gives exactly the potential above.
- **Checked — finite radial orders:** coefficient extraction independently gives the displayed recursion at $k=0,\ldots,6$; the truncated ${}_0F_1$ series solves the leading radial equation through the corresponding seven tested powers. The general recursion also follows directly by collecting the two products; no convergence assertion is inferred.
- **Checked — endpoint and mode factors:** the inverse $2\times2$ endpoint symplectic block sends $dQ^{\rm S}$ to $\delta\varphi=\varepsilon$; the flat boundary-coefficient commutator and $D=4$ soft prefactor reduce exactly to their horizon values. The half-line regulator tends to $\pi$.
- **Checked — angular integral:** exact Beta-function moment reduction verifies the Funk–Hecke coefficient for $D=4,5,6,7,8$ and $\ell=1,2,3,4$ (20 zero residuals). The all-$D$, all-$\ell$ theorem remains based on the Funk–Hecke argument in the source; the finite test is not its proof.
- **Source-derived:** full source map, higher-dimensional harmonic completeness, characteristic local existence, scalar hard-sector quantization and conditional Ward argument. The log records only the independent checks actually performed.
- **Blocked (recovered tool attempt):** direct Mathematica integration of the 20-case angular table exceeded the service's 30000 ms timeout. Replacing it with exact Beta moments completed all 20 cases. No residual access or CAS blocker remains for these targets.
- **Failed:** no source equation was contradicted by these checks.
- **Not independently verified:** global scattering construction, no-leakage hypothesis in a specified black-hole exterior, quantum infrared domain/dressing, global regularity of the Killing vacuum, and general algebra/state sewing. Smooth finite-$v$ fields alone do not supply them.

**Verified:** the explicitly listed algebraic, component and finite-series targets. **Assumptions:** fixed smooth static spherical background, $D>3$, nonextremal bifurcation, source endpoint/matching conditions, massless hard legs only in Appendix A. **Not verified:** the global and quantum existence statements above.
