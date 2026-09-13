---
paper id: 2609.01706v1
title: Holographic algebras at null infinity
authors:
  - Chang-Han Chen
  - Geoff Penington
  - Gautam Satishchandran
  - Elisa Tabor
publication date: 2026-09-01
abstract: |-
  The authors associate an algebra to a cut of null infinity by adjoining finite-radius, time-smeared gravitational energy operators to asymptotic matter and graviton observables. The construction yields nested Type III1 algebras and reconstructs appropriate bulk wedges under the stated operator-domain and quantum-field-net assumptions. Separate appendices establish a scalar split estimate and a conditional Hartle-Hawking weight construction.
comments: "49 pages + appendices, 10 figures"
url: https://arxiv.org/abs/2609.01706v1
summary: "A CPS-first route from regulated Bondi charges to nested regional quantum algebras, with essential self-adjoint-domain, split-property, and wedge-duality hypotheses."
tags: []
---

Daily overview: [[2026_09_03_overview]]

## Result and scope

Correct under the following precise conditions: the semiclassical representation must admit the regulated charge generators with compatible self-adjoint domains; the relevant time-slice, timelike-tube, duality, split, and representation-compatibility assumptions must hold. The paper does not establish a nonperturbative holographic dual or remove those hypotheses.

Reason codes: T1-charge, T1-Wald-CPS, T1-boundary, T2-celestial-carrollian. This is a completed monograph-mode reconstruction and bounded audit. Completion of the note does not mean independent proof of the operator-algebraic theorems.

The central distinction is between a Bondi mass at an ideal null cut and a family of regulated finite-radius charges. Smearing only in retarded time does not remove the angular divergence at null infinity. The finite-radius family, when admitted as self-adjoint generators, enlarges a thin asymptotic strip algebra enough to reconstruct a bulk wedge.

## How to read this long paper

Read §§2.1, 3.1, 3.2, and 4.2 first: these contain the charge, obstruction, regulator, and algebra definition. Read §§4.3–4.4 for the reconstruction and entropy result. Appendix A is essential technical reference for the unbounded-region split argument; Appendix B is essential for the modular crossed product. Sections 1, 2.2–2.3, and 4.1 supply representation and comparison background, while §4.5 is an extension whose localized supertranslation regulator is only proposed.

| Source section | Role and later dependency |
|---|---|
| §1, pp. 2–7 | Contrasts conserved ADM evolution with loss of accessible radiation as a null cut advances. |
| §2.1, pp. 7–13 | Einstein CPS, asymptotic conditions, boundary charge variation, shear/news and Bondi loss. Supplies §3. |
| §2.2, pp. 13–19 | Gauge-invariant smeared gravitons, CCR, GNS, radiative reconstruction, massless/massive and infrared sectors. |
| §2.3, pp. 19–22 | Explains why eternal Hartle-Hawking and Unruh states are unsuitable for the simultaneous Bondi/ADM construction; constructs vacuum-at-infinity representations by spacetime deformation. |
| §3.1, pp. 22–26 | Second-order ADM energy and divergent finite-cut Bondi fluctuations. |
| §3.2, pp. 26–33 | Finite-sphere charge, time smearing, surface dressing, black-hole split argument, and explicit domain assumption. |
| §4.1, pp. 34–38 | Spatial-infinity algebra: Type I without a hole; modular crossed product and Type II with a hole. |
| §4.2, pp. 38–40 | Thin-strip intersection, finite-charge evolution and strict nesting. |
| §4.3, pp. 40–43 | Minkowski wedge, commutant and early-cut limit. |
| §4.4, pp. 43–48 | Black-hole wedge, left-exterior/radiation commutant, Type III classification and Type II regulator. |
| §4.5, pp. 48–49 | Angular partial cuts and proposed ultralocal future-tail reconstruction. |
| A.1, pp. 50–53 | Static wormhole deformation and separated unbounded ends. |
| A.2, pp. 53–56 | Gaussian covariance and sufficient quasiequivalence criteria. |
| A.3, pp. 56–73 | Preliminary inequalities; A.3.1 equivalent norms; A.3.2 radial resolvents, rank-one kernels and uniform bounds; A.3.3 trace-class conclusion. |
| A.4, p. 73 | Shifted collars and proposed higher-dimensional, Maxwell and graviton extensions. |
| B, pp. 74–80 | Six structural assumptions; B.1 collar/tail factorization; B.2 inner comparison, continuous cocycle and converse Connes theorem. |

## Conventions and global notation

The background is vacuum, asymptotically flat, and stationary in the main reconstruction examples. Matter background fields vanish. Spatial falloff is $g_{\mu\nu}-\eta_{\mu\nu}=O(\rho^{-(d-3)})$, with corresponding derivative falloff; in four dimensions Regge–Teitelboim parity conditions are imposed. Null falloff is described in affine Bondi-like coordinates, explicitly distinct from the usual determinant-fixed Bondi gauge.

| Symbol | Meaning and normalization |
|---|---|
| $\gamma_{ab}$ | Linearized metric perturbation; small diffeomorphisms are quotiented. |
| $W_\Sigma$ | Paper's Einstein symplectic form, with the minus sign below. |
| $\mathcal Q_X$ | Charge variation form $\delta Q_X-i_X\theta$; not necessarily an integrable charge at a finite cut. |
| $\sigma_{AB},N_{AB}$ | $\sigma=-C^{\rm TF}/2$, $N=2\partial_u\sigma$. |
| $\delta^2M$ | Taylor coefficient, one half of the second derivative, rather than an unscaled second variation. |
| $M_B^{(2)}(f;u,r)$ | Smeared finite-radius second-order charge; not an asserted unique quasi-local mass. |
| $\mathcal H$ | Vacuum-at-infinity matter/graviton representation, with infrared-sector qualifications. |
| $\widetilde{\mathcal A}$ | Black-hole algebra on $\mathcal H\otimes L^2(\mathbb R)_{\rm L}$; fields dressed to the right boundary. |
| $\mathcal W_u$ | Bulk spacelike wedge associated with the cut; $\mathcal R,\mathcal L$ are black-hole exteriors. |
| $H$ in Appendix A | Positive spatial scalar operator, not the many-body ADM Hamiltonian. |
| $T$ in Appendix A | Relative covariance operator, not stress-energy. |

For a future unit normal $n^a$,

$$
W_\Sigma(\delta_1g,\delta_2g)
=-\int_\Sigma\sqrt h\,n_a\omega^a,\qquad
\omega^a=\frac{P^{abcdef}}{16\pi G_N}
(\delta_2g_{bc}\nabla_d\delta_1g_{ef}
-\delta_1g_{bc}\nabla_d\delta_2g_{ef}).
$$

Here

$$
P^{abcdef}=g^{ae}g^{fb}g^{cd}
-\tfrac12g^{ad}g^{be}g^{fc}
-\tfrac12g^{ab}g^{cd}g^{ef}
-\tfrac12g^{bc}g^{ae}g^{fd}
+\tfrac12g^{bc}g^{ad}g^{ef}.
$$

With $p^{ab}=\sqrt h(K^{ab}-h^{ab}K)$ this becomes

$$
W_\Sigma=-\frac1{16\pi G_N}
\int_\Sigma(\delta_1h_{ab}\delta_2p^{ab}
-\delta_2h_{ab}\delta_1p^{ab}).
$$

Do not identify this sign with a vault symplectic form before comparing slot order, boundary orientation, and Hamiltonian contraction convention. Appendix A separately writes the scalar form as $\Omega^{\rm KG}(\phi_1,\phi_2)=\int N^{-1}\sqrt h(\phi_1\dot\phi_2-\phi_2\dot\phi_1)$.

## From Einstein CPS to Bondi loss

Source-derived: the off-shell identity for field-independent $X$ is

$$
\omega(\delta g,\mathcal L_Xg)
=i_X(E\cdot\delta g)+\delta C_X
+d(\delta Q_X-i_X\theta).
$$

Only after imposing the background and linearized equations does it reduce to a boundary integral. A small diffeomorphism is a degeneracy when its boundary pairing vanishes for every allowed variation; merely being nonzero at the boundary is not a sufficient test for a nonzero physical charge.

At spatial infinity, the prescribed asymptotic conditions give

$$
\delta H_X=\int_{i^0}\mathcal Q_X
=W_\Sigma(\delta g,\mathcal L_Xg),\qquad H_t=M_{i^0}.
$$

At null infinity the angular metric is

$$
g_{AB}=r^2(q_{AB}+r^{1-d/2}C_{AB}+\cdots).
$$

The radiative symplectic form on the past of a cut is

$$
W_{\mathscr I^+_{<u}}=
-\frac1{16\pi G_N}\int_{-\infty}^u
(\delta_1\sigma_{AB}\delta_2N^{AB}
-\delta_1N_{AB}\delta_2\sigma^{AB})\,du\,d\Omega.
$$

Insert $\delta_2=\mathcal L_t$ and integrate by parts. The bulk term is $\delta\int N^2/(32\pi G_N)$, but the endpoint term remains:

$$
B(u)=\frac1{16\pi G_N}\int_{S^{d-2}}
N^{AB}\delta\sigma_{AB},\qquad
\delta M_B(u)=\int_{\mathcal C(u)}\mathcal Q_t-B(u).
$$

Vanishing early news and matching to the ADM charge then yield

$$
M_B(u)=M_{i^0}
-\frac1{32\pi G_N}\int_{\mathscr I^+_{<u}}N^{AB}N_{AB}
-\int_{\mathscr I^+_{<u}}T_{uu}^{(d-2)}.
$$

The matter contribution is nonnegative as radiated energy under the stated classical energy condition. That positivity does not extend pointwise to the renormalized quantum stress tensor.

## Quantization starts from smeared observables

For compactly supported symmetric divergence-free $f^{ab}$,

$$
\widehat\gamma(f)=\int_M\sqrt{-g}\,\widehat\gamma_{ab}f^{ab},
\qquad
[\widehat\gamma(f),\widehat\gamma(f')]=iE(f,f')\mathbf1.
$$

$E$ is advanced-minus-retarded in the paper. Its unsmeared metric representative is gauge dependent; the divergence-free pairing removes this ambiguity. With complete scattering data and the required falloff,

$$
\widehat\gamma(f)=W_\Sigma(\widehat\gamma,Ef)
=\frac1{8\pi G_N}\delta\widehat N(F),
$$

where $F$ is the trace-free radiative limit of $Ef$, including the same $-1/2$ shear convention.

The news commutator and vacuum two-point function are

$$
[\delta\widehat N_{AB}(u,x),\delta\widehat N_{CD}(u',x')]
=16\pi iG_N Q_{ABCD}\delta'(u-u')\delta_S(x,x'),
$$

$$
\langle\delta\widehat N_{AB}(u,x)\delta\widehat N_{CD}(u',x')\rangle
=-\frac{8G_NQ_{ABCD}\delta_S(x,x')}
{(u-u'-i0)^2},\quad
Q_{ABCD}=q_{A(C}q_{D)B}-\frac{q_{AB}q_{CD}}{d-2}.
$$

This is a representation choice after the algebraic construction. For interacting four-dimensional massless gauge fields the ordinary Fock scattering picture can fail; the paper invokes fixed large-charge/Faddeev–Kulish sectors and assumes the appropriate extension beyond QED. Massive data at $i^+$ also have to be retained. A one-sided null presentation must not be substituted for complete Cauchy data without the scattering/reconstruction assumptions.

## Why the ideal Bondi operator fails

In a stationary no-hole background, $\delta M_{i^0}=0$ and

$$
\delta^2M_{i^0}
=\tfrac12W_\Sigma^{\rm GR}(\gamma,\mathcal L_t\gamma)
+\tfrac12W_\Sigma^{\rm matt}(\delta\phi,\mathcal L_t\delta\phi).
$$

The factor $1/2$ follows from the Taylor-coefficient convention. With a two-sided hole the corresponding constraint is

$$
\delta^2\widehat M^{\rm R}_{i^0}
-\delta^2\widehat M^{\rm L}_{i^0}=\widehat H.
$$

The semiclassical limit keeps the horizon radius fixed and removes order-$G_N^{-1/2}$ mass fluctuations; the remaining mass variable is order one.

Formally, subtracting the early-time normal-ordered flux from ADM gives a Bondi sesquilinear form. It translates future radiation and commutes with past radiation. This formal commutator does not license exponentiation.

Wick contraction of the news two-point function produces

$$
\langle\mathcal E_{<u}^2\rangle
\supset\frac{d(d-3)}{16\pi^2}N_L
\int_{-\infty}^u du_1du_2\,
(u_1-u_2-i0)^{-4},
\qquad N_L\sim L^{d-2}.
$$

There are two separate singularities: the sharp temporal endpoint and the angular mode sum. Time smoothing addresses the first, not the second. In $d=4$, $N_L=\sum_{\ell=0}^L(2\ell+1)=(L+1)^2$. The full infinite-time flux involves a different order of limits and can be an operator even when finite-cut flux is not.

## The finite-radius generator and its boundary dressing

For a sphere $S(u_0,r_0)$ and an exterior partial Cauchy surface,

$$
M_B^{(2)}(u_0,r_0)=
\frac12\int_{S(u_0,r_0)}
\left.\frac d{d\lambda}\mathcal Q_t
(g(\lambda);g'(\lambda))\right|_{\lambda=0}.
$$

Second variation of the CPS identity gives

$$
\widehat M_B^{(2)}
=\delta^2\widehat M_{i^0}
-\widehat E_{\rm out}^{\rm GR}
-\widehat E_{\rm out}^{\rm QFT}.
$$

It is not generally the second variation of a unique integrable finite-surface mass. An additional boundary improvement could produce an integrable charge; the paper deliberately uses the simpler second-order observable.

The gravitational energy on a partial slice changes under small diffeomorphisms nonzero at its boundary. Its change is a sphere-local charge combination involving $\mathcal Q_\xi$, $\mathcal Q_{[t,\xi]}$, $\gamma$ and $\mathcal L_\xi g$. The sphere therefore needs a complete gauge choice or relational anchoring by intersecting null hypersurfaces. This dressing is part of the definition.

Let $f$ be real, smooth and normalized, with time support inside the chosen strip. After time smearing at fixed finite radius,

$$
\widehat M_B^{(2)}(f;u_0,r_0)
=\delta^2\widehat M_{i^0}
-\widehat E_{\rm out}^{\rm GR}[f]
-\widehat E_{\rm out}^{\rm QFT}[f].
$$

For operators spacelike to the whole smearing region its commutator is $-i\mathcal L_t$ on the inward side, and zero on the outward side. It is not asserted to have this simple action through the sphere's causal future/past. In four-dimensional flat space the quoted regulated variance scales as $r_0^2/\delta u^4$; keeping $\delta u$ fixed while sending $r_0$ to infinity restores the divergence.

For a no-hole spacetime the exterior integral equals total energy minus a compact interior integral. With two asymptotic ends only the sum of the left/right energies is obtained immediately. The split inclusion is then used to separate their implementations. Neither this argument nor time smearing supplies the missing common-domain/self-adjoint-extension theorem: §3.2 explicitly assumes it.

## Algebra construction and what it reconstructs

Write the strip as

$$
\mathfrak R[u_0,\delta u,r_{\min}]
=\{u_0<u<u_0+\delta u,\ r>r_{\min}\}.
$$

The strip algebra is generated by bounded functions of all smeared matter, graviton and regulated-mass observables supported there, followed by double commutant. Then

$$
\mathcal A(u_0)=\bigcap_{\delta u>0,r_{\min}}
\mathcal A_{\delta u,r_{\min}}(u_0).
$$

The order of reasoning matters: finite generators first, algebra closure second, intersection last. This is not a strong operator limit of the divergent sharp Bondi mass.

The source's derivation is:

1. A regulated charge on a sufficiently large sphere translates smaller-radius observables while they remain spacelike to its support.
2. Conjugation brings later observables into the strip and back; differences of regulated masses are smeared field-energy integrals.
3. The timelike-tube theorem expands the accessible region.
4. Cauchy time-slice evolution or an additional charge conjugation supplies the wedge.
5. The early-radiation commutant gives the reverse inclusion and makes nesting strict.

Without a hole,

$$
\mathcal A(u_0)=\mathcal A(\mathcal W_{u_0})
\cong\mathcal A(\mathscr I^+_{>u_0})
\overline\otimes\mathcal A(i^+),\qquad
\mathcal A(u_0)'=\mathcal A(\mathscr I^+_{<u_0}).
$$

The finite-cut algebra is Type III$_1$ when massless radiation is included. Its increasing early-cut limit is $(\bigcup_u\mathcal A(u))''=\mathcal B(\mathcal H)$, Type I$_\infty$.

With a hole, adjoin an independent left mass on $L^2(\mathbb R)_{\rm L}$ and set $\delta^2\widehat M^{\rm R}=\widehat H+\delta^2\widehat M^{\rm L}$. Right dressing makes the left mass commute with right fields. Under the stated reconstruction and relative-duality assumptions,

$$
\widetilde{\mathcal A}(u_0)
=\widetilde{\mathcal A}(\mathcal R\cap\mathcal W_{u_0}),
$$

$$
\widetilde{\mathcal A}(u_0)'
\cong\widetilde{\mathcal A}(\mathcal L)
\overline\otimes\mathcal A(\mathscr I^+_{<u_0}).
$$

The left factor is Type II$_\infty$; early radiation is Type III$_1$; thus the finite-cut algebra and its commutant are Type III$_1$. The early-cut limit recovers the Type II$_\infty$ spatial-infinity algebra. Kerr additionally needs regulated angular momentum to generate the horizon Killing flow in the ergoregion.

## Appendix A: the actual scalar split mechanism

The detailed proof treats a free, minimally coupled massless scalar in four dimensions. It deforms Schwarzschild to a static horizonless two-ended geometry

$$
ds^2=-N(s)^2dt^2+ds^2+r(s)^2d\Omega^2,\quad
(r_s)^2=1-r_{\rm BH}/r,\quad
r_{ss}=r_{\rm BH}/(2r^2).
$$

$N>0$ is constant on a collar and agrees with Schwarzschild outside a compact region. Left/right data are separated by that collar.

For $F=(q,p)$,

$$
\mu_0(F_1,F_2)=\tfrac12
\big(\langle q_1,H^{1/2}q_2\rangle+
\langle p_1,H^{-1/2}p_2\rangle\big).
$$

Deleting the left/right cross terms gives $\mu_{\rm split}$. Positivity follows from symplectic orthogonality plus Cauchy–Schwarz. Normality in the vacuum representation is a separate question. The sufficient criteria are

$$
c\mu_{\rm split}\leq\mu_0\leq C\mu_{\rm split},
\quad
\mu_0-\mu_{\rm split}=\mu_{\rm split}(\cdot,T\cdot),
\quad \operatorname{Tr}|T|<\infty.
$$

A.3.1 proves the norm comparison using a smooth collar cutoff, the homogeneous three-dimensional Sobolev inequality, interpolation to $H^{1/4}$, and duality for $H^{-1/4}$. Compactness of the cutoff-gradient support, positivity of the lapse, and its lower bound are necessary. This is stronger than observing that each individual cross correlation decays.

For A.3.2 introduce $dz/ds=N^{-1}$ and $\psi=r^{-1}\sum u_{\ell m}Y_{\ell m}$. The spatial operator reduces to

$$
H_\ell=-\partial_z^2+U_\ell,\qquad
U_\ell=\frac{r''}{r}+\ell(\ell+1)\frac{N^2}{r^2}.
$$

It factorizes as $D^\dagger D+\ell(\ell+1)N^2/r^2$ with $D=\partial_z-r'/r$. The relative covariance has off-diagonal $q$ and $p$ blocks, so

$$
\operatorname{Tr}|T|=
2\sum_{\ell\geq0}(2\ell+1)
\big(\|T_{q,\ell}\|_1+\|T_{p,\ell}\|_1\big).
$$

The fractional powers are handled through resolvents:

$$
H_\ell^{-1/2}=\frac2\pi\int_0^\infty
(H_\ell+\lambda^2)^{-1}d\lambda.
$$

For disjoint left/right supports, the $H_\ell^{1/2}$ matrix element instead contains $-(2/\pi)\int\lambda^2(H_\ell+\lambda^2)^{-1}d\lambda$: the identity term vanishes only because of disjoint support.

The one-dimensional Green kernel is

$$
G_\ell(\lambda;z,z')=
\frac{u^-_{\ell,\lambda}(z_<)
u^+_{\ell,\lambda}(z_>)}{W_{\ell,\lambda}},
$$

with $W=u^{-\,\prime}u^+-u^-u^{+\,\prime}$ and endpoint normalizations $u^-(a)=u^+(b)=1$. Across the collar it is rank one at fixed $\lambda$. The growing halves of $u^\pm$ must be replaced by collar-truncated extensions $v^\pm$ before taking global $L^2$ norms.

Trial ramps of width $\min(\delta_0,[1+\ell(\ell+1)+\lambda^2]^{-1/2})$, tail comparison and Sobolev duality give

$$
\|H_\ell^{1/2}v^\pm\|^2\lesssim1+\ell+\lambda,\quad
\|v^\pm\|\lesssim1+\lambda^{-1/2},\quad
\|H_\ell^{-1/2}v^\pm\|\lesssim1+\lambda^{-3/2}.
$$

The last bound follows from an $L^{6/5}$ tail integral scaling as $\lambda^{-9/5}$ before taking its $5/6$ power. The zero-frequency $\ell=0$ Green function is finite because $\int dz/r^2$ converges. Comparison across the angular barrier gives $G_\ell(\lambda;a,b)\lesssim e^{-\gamma(\ell+\lambda)}$.

A.3.3 then obtains

$$
\|T_{q,\ell}\|_1\lesssim e^{-\gamma\ell},\qquad
\|T_{p,\ell}\|_1\lesssim(1+\ell)^{1/2}e^{-\gamma\ell}.
$$

The $\lambda^2$ numerator removes the dangerous $q$-sector infrared power; the $p$ sector has only integrable $\lambda^{-1/2}$. The angular exponential beats the $(2\ell+1)$ degeneracy. Quasiequivalence gives the normal product state and hence a Type I factor between the separated algebras. Unitary Cauchy evolution transports the inclusion back to Schwarzschild.

A.4 proposes higher-dimensional and Maxwell/graviton adaptations. Their full constrained one-particle analysis is not supplied by the scalar calculation and was not independently established here.

## Appendix B: from a collar comparison to a weight

The six assumptions are time-slice, factoriality and wedge/collar Haag duality, compatible local quasiequivalence preserving wedge intersections, two-sided split inclusions, continuous geometric covariance, and a normal faithful Hartle-Hawking state in its own representation. The vacuum-at-infinity and thermal representations are globally different; a local identification does not identify their asymptotic states.

B.1 uses split factors to obtain

$$
\mathcal A(\mathcal R)=\mathcal C\overline\otimes
\mathcal B(\mathcal H_{\rm R}),\qquad
\mathcal A_{\rm HH}(\mathcal R)=
\theta(\mathcal C)\overline\otimes\mathcal Q_{\rm HH}.
$$

The common collar is bounded; $\mathcal Q_{\rm HH}$ need not be Type I. B.2 enlarges the collar for each fixed time, chooses compatible product reference states, and transfers the thermal modular comparison using a normal unital embedding. The remaining automorphism fixes the collar and acts on a Type I tail, so it is inner.

This yields pointwise innerness relative to one fixed faithful normal reference state $\rho$. It is not yet a continuous cocycle. Writing $U_t=\widetilde w_t\Delta_\rho^{it}$, factoriality makes the group-law defect a phase. Measurable selection and the projective one-parameter-group theorem permit phases giving strong continuity, then

$$
\widehat w_{s+t}=\widehat w_s
\sigma_s^\rho(\widehat w_t).
$$

The converse Connes cocycle theorem supplies a faithful normal semifinite weight with

$$
\sigma_t^{\Psi_{\rm HH}}=\alpha_{-t}^{(0)}
$$

at the appendix's $\beta=1$ normalization. With physical Schwarzschild time the inverse-temperature rescaling must be restored. Factoriality makes the weight unique only up to a positive scalar. The paper explicitly leaves some vacuum-representation wedge-compatibility assumptions unproved.

## Entropy, partial cuts, and local reuse

The exact finite-cut algebra is Type III and has no intrinsic density-matrix entropy. Replace the early-radiation factor by a Type I split factor separated by a nonzero collar. Tensoring it with the left Type II factor, and taking the commutant, gives a Type II$_\infty$ regulator.

For the specified semiclassical product states, with a slowly varying mass wavefunction, its renormalized entropy is related to

$$
\frac{\langle A_{\rm BH}\rangle}{4G_N}
+S_{\rm vN}^{\mathcal R\cap\mathcal W_{u_0}},
$$

up to trace normalization and mass-wavefunction terms. The horizon area renormalization does not cancel the separate cut divergence at null infinity.

For partial angular cuts, the paper expects localized regulated supertranslation generators and argues for reconstruction only of the future tail on those generators, with no open bulk wedge. This extension is conditional on the localized charge construction.

For the vault, the reusable sequence is: action and CPS → allowed boundary variations → finite charge with dressing → representation and domain → generated regional algebra → theorem-dependent reconstruction. It supplies no automatic equivalence between spacelike, double-null, and one-sided phase spaces. The scalar split theorem concerns separated regions and a positive collar; it does not prove exact gluing at a common boundary. A characteristic time-slice axiom must not be inferred from ordinary Cauchy time-slice.

## Equation ledger and dependency boundary

| Construction | Source location | Dependency |
|---|---|---|
| Off-shell charge identity and $\mathcal Q_X$ | §2.1, Eqs. (2.7)–(2.12) | Field-independent generator and Einstein action conventions. |
| Bondi loss and endpoint correction | §2.1, source labels symptranslation2, MB, BondimassN2Tuu | Early-time falloff and fixed asymptotic structure. |
| Bulk/news map and CCR | §2.2, gammaN, scricomm, News2pt | Gauge-invariant tests and complete scattering data. |
| Finite-cut fluctuation divergence | §3.1, fluxscrilessu | Vacuum ultraviolet singularity and angular cutoff. |
| Finite-radius smeared mass | §3.2, regMB2, MBreg | Surface dressing and common-domain assumption. |
| Intersections and wedge reconstruction | §§4.2–4.4, intersect, entwedgeflat, Au0BH | Exponentiable generators, tube theorem and duality. |
| Trace-class covariance | A.3, TclassTqTplm, TrTqell, TrTpell | Scalar radial operator and uniform infrared/collar bounds. |
| Hartle-Hawking weight | B.2, Eq. (B.32) onward, HHcocycle | All six Appendix B assumptions and cocycle theorem. |

## Verification log

Source-derived: the section-by-section reconstruction, operator-algebra classification, entropy relation, and global analytic proof above. Official TeX and PDF were retrieved; PDF pages 9, 26, 32, 73, and 79 were visually inspected. Text extraction issued a font-type warning; the displayed formulas and relevant qualification paragraphs were readable in the renders.

Checked: Mathematica reproduced the news integration-by-parts boundary identity, the Taylor-coefficient factor, the STF/Wick coefficient in dimensions 4–9, the exact $S^2$ angular count, radial conjugation, $D^\dagger D$, both scalar resolvent integrals, ramp and exponential-tail norms, the infrared exponent, the zero-frequency radial solution, and the final $q$-sector integral. The latter initially remained unsimplified; an explicit FullSimplify returned zero. The convergent polynomial majorant for the $p$ integral and angular sum was also evaluated. These are finite algebraic/integral checks of the proof ingredients, not a machine proof of quasiequivalence or reconstruction.

Assumptions: positive lapse and radial function; positive spectral/resolvent parameters; smooth test data with the stated decay and support; positive collar width; the paper's sign and second-variation conventions.

Verified: the named Mathematica identities and integral reductions only. An xAct/xPert comparison of the linearized Ricci formula was attempted with the core profile plus xPert; the runtime returned “Process execution timed out after 120000 ms.” No tensor verification is claimed from that call.

Blocked: the full self-adjoint-domain proof is absent in §3.2; Appendix B's vacuum-representation wedge assumptions are not established there; the scalar split proof has not been completed for constrained gravitons or general interactions. These are specific mathematical gaps/assumptions, not a failure to retrieve the paper.

Not independently verified: the complete uniform PDE estimates, applicability of every operator-algebra theorem to the gravitational net, the Type II entropy approximation, and the nonperturbative and partial-cut extensions.

Not verified: no continuum gravitational sewing theorem or characteristic time-slice equivalence follows from the executed computations.
