---
paper id: 2610.41240v1
title: Longitudinal electric corner modes in continuum quantum gauge theory with matter
authors:
  - Gonçalo Araújo-Regado
  - Philipp A. Höhn
  - Alok Laddha
  - Bilyana Tomova
publication date: 2026-10-30
abstract: |-
  The authors propose an externally sourced longitudinal electric mode as a centre of a fixed regional scalar-QED slice algebra. They construct bulk and corner extensions of equal-time correlation distributions and investigate positivity and smearing completions. Positivity on the full polynomial algebra remains an assumption in the body and Appendix F.
comments: "70 pages (50 + appendix)"
url: https://arxiv.org/abs/2610.41240v1
summary: "A concrete Gauss-law-to-corner-kernel construction, with unresolved full-state positivity and explicit failures in the printed algebra, kernel normalization and spherical positivity chain."
tags: []
---

# Externally sourced Coulomb data and the positivity obstruction

**Not proven by the source: a positive GNS state on the entire enlarged interacting slice algebra.** Section 4.4 and Appendix F explicitly leave this open. The useful construction is the split of a longitudinal electric observable into internally and externally sourced pieces, followed by the identification of new corner singularities. Several printed intermediate equations fail the checks below, so the literal kernels are not ready for reuse.

Immediate use: distinguish a classical regional charge or harmonic boundary datum from a quantum operator in a positive representation. This distinction is directly relevant to regional sewing: neither an elliptic reconstruction nor a finite two-point function proves the quantum algebra, a common representation for all cuts, or a factorization theorem.

Evidence is **Source-derived** unless a calculation is explicitly labelled **Checked**. This note reconstructs the whole argument and all appendices; it is a completed source reconstruction with a conditional conclusion, not a proof of the proposed quantization.

## Source map and how to read this long paper

Page references below are printed pages; the PDF viewer page is one larger. Official [abstract](https://arxiv.org/abs/2610.41240v1), [PDF](https://arxiv.org/pdf/2610.41240v1) and [TeX source](https://arxiv.org/src/2610.41240v1) were read. No attachment was added.

| Source cluster | Contents and later dependency | Reading role |
|---|---|---|
| §1, including §1.1, pp2–10 | Continuum smearing obstruction; new longitudinal centre; summary of the two renormalizations | Background and claim map |
| §§2.1–2.2, pp10–15 | Extrinsic/intrinsic frames, regional symplectic pair; Coulomb split and harmonic reconstruction | Essential classical input |
| §§3.1–3.4, pp15–21 | Kinematical algebra, Gauss ideal, global quotient, regional nonlocality, sharp inner/outer split | Essential; printed signs/brackets require correction |
| §4.1, pp21–24 | Restrict Fock distributions to a slice first for separated matter smearings | Essential domain distinction |
| §§4.2.1–4.2.2, pp25–29 | Finite time thickness, spectral density and differential renormalization | Technical core |
| §§4.3–4.4, pp29–34 | Positive diagonal covariance via higher derivative counterterms; connected density cycles; unresolved full positivity | Essential obstruction |
| §§5.1–5.3, pp34–41 | Harmonic integration by parts, planar reduction, boundary counterterms, scale dependence | Technical core; failed literal identities are isolated below |
| §5.4, pp41–42 | Weighted completion of boundary test functions | Useful conditional functional analysis |
| §6, pp42–50 | Physical-defect versus reduced-state interpretations; speculative commutants and gravity extension | Interpretation, not an established sewing theorem |
| App A, pp51–52 | Fourier conventions and radial/logarithmic transforms | Reference; inconsistent normalizations |
| App B.1–B.2, pp52–55 | EG extensions and differential renormalization | Reference; retain finite cutoff before distributional limit |
| App C, pp55–58 | Three spherical contributions and claimed all-mode positivity | Necessary audit of planar claims; fails as printed |
| App D.1–D.2, pp58–63 | Pure-Maxwell normal-flux comparison, negative renormalized covariance and fourth-order repair | Distinct centre construction |
| App E, p63 | Logarithmic Sobolev spaces | Reference |
| App F, pp63–65 | Mixed Cauchy–Schwarz condition and higher-polynomial positivity left open | Read before accepting the abstract |

Essential route: §§2–3 → time-smeared §4.2.1 → §§4.2.2–4.4 → §5 → App F. Consult Apps A–D during the kernel calculation. The speculative representation discussion in §6 can be postponed.

## Conventions and objects

The background is Minkowski spacetime, with a flat slice \(\Sigma\simeq\mathbb R^3\), a bounded fixed open region \(\mathcal O\), and smooth closed corner \(S=\partial\mathcal O\). The detailed kernel calculation specializes to \(S_R^2\), then a planar short-distance limit. The scalar mass is \(m>0\), electric coupling is \(e\), and \(D_\mu=\partial_\mu-ieA_\mu\). The paper uses

$$
\rho=i(\psi\pi-\psi^\dagger\pi^\dagger),\qquad
N=|\psi|^2,\qquad
J_i=i\{\psi(D_i\psi)^\dagger-\psi^\dagger D_i\psi\}.
$$

Normal ordering is with respect to free elementary fields. Composite generators are not Gaussian variables merely because the elementary-field vacuum is quasi-free.

| Symbol | Meaning and required domain |
|---|---|
| \(E_T,B\) | Transverse electric and magnetic fields; free covariance can be restricted to the slice |
| \(E_L\) | Gauss-law-dependent Coulomb field; \(E=E_T+E_L\) |
| \(f,V\) | Smooth scalar/vector smearings; compactly supported for regional operators |
| \(\Psi_V=\Delta^{-1}\nabla\cdot V\) | Decaying Coulomb smearing, harmonic outside the support of \(V\) |
| \(F_V=\mathbf1_{\mathcal O^c}\Psi_V\) | Sharp, nonsmooth charge-density smearing; not an original global test function |
| \(\Phi,\widetilde\Phi,\varphi\) | Extrinsic frame, intrinsic frame, and difference \(\varphi=\Phi-\widetilde\Phi\) |
| \(\omega_F,\omega_F^R,\omega_0\) | Covariant free vacuum, bulk-renormalized slice functional, corner-extended functional |
| \(\epsilon,\Lambda,\mu\) | Time-smearing width, UV cutoff, renormalization scale; distinct parameters |
| \(k,l,R\) | Planar corner momentum, spherical harmonic degree, sphere radius |

For independent canonical checks below, use \(\{A_i(x),E^j(y)\}=\delta_i^j\delta^3(x-y)\), \(\{\psi,\pi\}=\{\psi^\dagger,\pi^\dagger\}=\delta^3\), and \([\, ,\,]=i\{\, ,\,\}\). Spatial \(\Delta=\sum_i\partial_i^2\), so its Fourier multiplier is \(-|k|^2\). These choices fix signs rather than silently absorbing discrepancies into \(E\) or \(\rho\).

## From the regional symplectic form to the harmonic mode

### Frames and the classical corner pair

Section 2 starts with the regional presymplectic form and an extrinsic frame contribution

$$
\Omega^{\rm phys}=\Omega-\int_S\delta\Phi^b\curlywedge\delta\star F.
$$

With \(A^{\rm dr}=A-d\Phi\), \(\psi^{\rm dr}=e^{-ie\Phi}\psi\), a gauge transformation shifts \(A\mapsto A+d\lambda\), \(\Phi\mapsto\Phi+\lambda\), leaving dressed fields invariant. Reexpressing in the intrinsic frame produces the source's corner pair

$$
\Omega^{\rm phys}
=\Omega_{\rm intrinsic}+\int_S\delta\varphi\curlywedge\delta\star F,
\qquad Q[\alpha]=\int_S\alpha\star F.
$$

The pair belongs to an extended, framed phase space. Dropping its frame coordinate changes the observable algebra. It is not a derivation of a quantum centre on every arbitrary continuum cut.

The displayed Coulomb-frame equation has \(\Delta\Phi=-\nabla^iA_i\), while the following dressing condition says \(\nabla^i(A_i-\partial_i\Phi)=0\). With the ordinary positive-coordinate Laplacian these require opposite signs. This is a local convention mismatch, additional to the algebra audit below.

### Gauss law and the two complementary sources

The reliable classical starting point is

$$
\nabla\cdot E=e\rho,\qquad
E_L(x)=-\frac{e}{4\pi}\int_\Sigma d^3y\,
\nabla_x\frac1{|x-y|}\rho(y).
$$

Split the integration region:

$$
E_L=E_L^{\rm in}+E_L^{\rm out},\qquad
E_L^{\rm out}(x)=-\frac{e}{4\pi}
\int_{\mathcal O^c}d^3y\,\nabla_x\frac1{|x-y|}\rho(y).
$$

For \(x\) strictly inside \(\mathcal O\), the external charge produces a harmonic potential. Green's identity reconstructs it from compatible boundary value and normal derivative; these are constrained Cauchy data of a harmonic function, not two freely independent functions. If one uses the decaying exterior Dirichlet problem, boundary values and the Dirichlet-to-Neumann map determine the exterior field.

The pointwise exterior-sourced electric field is \(O(e)\); its covariance starts at \(O(e^2)\). It disappears at zero coupling. It is different from the ordinary \(O(e^0)\) normal Maxwell flux centre.

Smearing by \(V\) gives, with the canonical conventions above,

$$
\Psi_V(x)=-\frac1{4\pi}\int_\Sigma
\frac{\nabla\cdot V(y)}{|x-y|}\,d^3y,\quad
\Delta\Psi_V=\nabla\cdot V,\quad
E_L(V)=-e\rho(\Psi_V).
$$

The source writes a plus sign in the last equation. The minus follows both by integrating \(\nabla\cdot E=e\rho\) against a test function and by integrating the displayed Coulomb formula against \(V\). The same sign affects the two separate modes, but cancels in their diagonal two-point covariance.

## The algebra extension and its limits

### The intended sequence in §§3.1–3.4

The source starts with local gauge-invariant generators

$$
\mathcal A_{\rm kin}(\mathcal O)
=\langle E(V),B(V),\rho(f),J(V),N(f)\rangle.
$$

For the global algebra it extends \(f\) to \(O(r^{-1})\) and \(V\) to \(O(r^{-2})\), in order to include Coulomb smearings and small Gauss constraints. One then wishes to quotient by the two-sided Gauss ideal. This is meaningful only with mutually consistent brackets and constraints.

After the quotient, \(E_L\) is dependent on \(\rho\), but its regional measurement depends on charge outside the region. Regional algebras containing \(E_T\) and \(E_L\) separately are not automatically a microcausal local net: the Hodge split itself is nonlocal. The source explicitly distinguishes its local transverse algebra from the enlarged regional physical algebra.

For one fixed region, introduce

$$
E_L^{\rm out}(V)=-e\rho(\mathbf1_{\mathcal O^c}\Psi_V),
\qquad
\mathcal A_C(\mathcal O)
=\mathcal A_{\rm phys}(\mathcal O)\vee
\langle E_L^{\rm out}(V)\rangle .
$$

The sharp split is new: neither characteristic-function smearing is an original smooth global test function. Exterior charge operators commute with interior compactly supported generators. Thus the external part is central relative to this chosen regional algebra, while it need not commute with exterior currents. It is not the shared normal-flux centre of the two complementary regions.

### Literal commutators do not implement the stated Gauss ideal

**Failed — Eq (3.7), printed p16.** In real canonical coordinates

$$
\psi=(q_1+iq_2)/\sqrt2,\quad
\rho=q_1p_2-q_2p_1,\quad
N=(q_1^2+q_2^2)/2,\quad
J_i=q_1\partial_iq_2-q_2\partial_iq_1-2eA_iN,
$$

Mathematica reproduces

$$
[\rho(f),J(V)]=-2iN(V\cdot\nabla f),\qquad
[E(V),J(W)]=2ieN(V\cdot W).
$$

The source instead has \(-2iN(f\nabla\cdot V)\) and \(-2iN(V\cdot W)\). Moving the derivative by parts also differentiates \(N\), so these cannot be identified for arbitrary matter fields. The missing coupling fails the \(e\to0\) test independently of the sign convention.

With the consistent brackets,

$$
\mathcal G(f)=-E(\nabla f)-e\rho(f),\qquad
[\mathcal G(f),J(V)]=0.
$$

With the printed brackets this cancellation is absent. Consequently the exact quotient and all later claims using that literal algebra require repair. The exterior-support mechanism for regional centrality can still be studied using the corrected canonical algebra; it does not validate the source's printed presentation.

## Slice restriction, temporal regulator and bulk extensions

### Separated smearings and elementary kernels

For disjoint compact matter supports, the source defines the functional using ordinary free-field Wick contractions. Singular coincidences are avoided; higher connected cycles have bounded kernels on such separated supports. For overlapping supports, normal ordering at each insertion does not remove the remaining equal-time composite singularities.

The stated elementary scalar transform is

$$
G_+(r)=\int\frac{d^3p}{(2\pi)^3}
\frac{e^{ip\cdot x}}{\omega_p}
=\frac{m}{2\pi^2r}K_1(mr),
\qquad \omega_p=\sqrt{p^2+m^2}.
$$

**Checked**, for \(m,r>0\),

$$
(-\Delta+m^2)G_+(r)
=-\frac{m^2}{2\pi^2r^2}K_2(mr).
$$

The printed \(G_-\) in Eq (4.6) has \(2\pi\) rather than \(2\pi^2\). The subsequent covariance normalizations also disagree with their own products: the later \(C_{\rho\rho}\) is one half of \(2G_+G_-\) using the printed \(G_-\); the later \(C_{NN}\) is \(\pi^2\) times \(\tfrac14G_+^2\). These are failures of the printed chain, not a choice of local counterterms.

### Keep the time smearing until after the spectral integral

Section 4.2.1 uses \(F(t,x)=\kappa_\epsilon(t)f(x)\), with a normalized smooth bump of width \(\epsilon>0\). With the source's electric-charge normalization, the positive regulated density kernel is

$$
C_{\rho\rho}^{\epsilon}(k)
=\frac{e^2}{48\pi^2}|k|^2
\int_{\sqrt{|k|^2+4m^2}}^\infty dx\,
|\widetilde\kappa(\epsilon x)|^2
\left(1-\frac{4m^2}{x^2-|k|^2}\right)^{3/2}.
$$

The angular delta function fixes the two-particle threshold and the interval

$$
\omega_\pm=\frac x2\pm\frac{|k|}{2}
\sqrt{1-\frac{4m^2}{x^2-|k|^2}}.
$$

**Checked:** if \(d=\omega_+-\omega_-\), then
\(\int_{\omega_-}^{\omega_+}(2\omega-x)^2d\omega=d^3/3\), reproducing the prefactor. The extra \(e^2\) must be tracked separately from the earlier definition of number-charge density.

Change variables to \(y=\epsilon x\) before taking \(\epsilon\downarrow0\). The leading divergence is

$$
\frac{e^2|k|^2}{48\pi^2\epsilon}
\int_0^\infty |\widetilde\kappa(y)|^2dy.
$$

Subtracting it leaves a nonpolynomial negative UV contribution of order \(-|k|^3\). This does not mean the regulated vacuum had negative norm: it means the proposed finite-part prescription need not remain a positive covariance after removing the regulator.

### Differential renormalization and diagonal positivity

For \(r>0\),

$$
\Delta r^{-2}=2r^{-4},\qquad
\Delta^2r^{-2}=24r^{-6}.
$$

The source subtracts the singular small-\(r\) expansion and replaces it by derivatives of locally integrable distributions. Pairings are defined by putting the derivatives on smooth test functions. Delta-function ambiguities remain.

The intended density prescription is schematically

$$
C_{\rho\rho}^{R}
=C_{\rho\rho}-C_{\rho\rho}^{\rm sing}
-\frac{m^3}{4\pi^3}
\left[
\frac{\Delta^2r^{-2}}{12m^3}
+\frac{\Delta(\ln(mr)/r^2)}{2m}
+\frac{\gamma-\ln2+1/2}{2m}\Delta r^{-2}
\right]
+\text{local counterterms}.
$$

This records the source chain without certifying its overall scalar normalization. For compact smooth smearings the derivative distributions are finite. A local \(c_1\Delta\delta^3\) gives a quadratic polynomial in momentum and cannot dominate a negative cubic UV tail; a positive fourth-order term \(c_2\Delta^2\delta^3\) can dominate that tail. Similarly the current tensor requires control of all its eigenvalues, not a scalar inequality applied to an unindexed expression.

UV domination alone is not a proof of global positivity at every momentum. One still needs the finite-momentum kernel and appropriate lower-order terms. Nor does a covariance determine a unique dynamical Hamiltonian; the source's EFT interpretation does not independently derive a local Hamiltonian from an inverse covariance.

### Connected moments and the missing GNS step

Section 4.4 writes density moments as disconnected products plus connected cyclic traces. Charge conjugation removes odd density moments. For even moments the proposed matrices are

$$
\mathcal Q=\begin{pmatrix}Q_+&Q_-\\-Q_-&-Q_+\end{pmatrix},
\quad
Q_\pm=\frac{2(\omega_p\pm\omega_{p+k})}
{\sqrt{\omega_p\omega_{p+k}}},
\quad
\Pi_R=\operatorname{diag}(1,0),\quad
\Pi_L=\operatorname{diag}(0,1).
$$

**Checked:** \(Q_+\to4\), not 1 as written later; \(Q_-=O(|p|^{-1})\). Matrix multiplication reproduces the alternating four-cycle terms and cancellations in the fixed-labelled matrix expression, but several displayed nonalternating traces do not equal the preceding trace definition. For example the literal fixed-labelled cycle \((1,2,4,3)\) gives \(a_2a_3b_1b_4\), rather than the printed \(b_1a_2b_3a_4\), with \(a_i=Q_{+,i},b_i=Q_{-,i}\). Momentum routing in a repaired loop argument must be specified before using the claimed general convergence.

Even if the density loops converge, current connected moments need further extensions; the source explicitly does not supply them. Most decisively, §4.4 assumes positivity on the entire polynomial algebra after checking only selected quadratic forms. Positive diagonal covariances do not establish positivity of mixed moments or all moment matrices.

## Harmonic integration by parts and the corner kernel

### The origin of the new surface singularity

Write \(F_V=\mathbf1_{\mathcal O^c}\Psi_V\). The interior of the exterior region is harmonic, but \(F_V\) is not globally harmonic as a distribution: the sharp jump creates boundary terms. Keep an exterior collar regulator \(\eta>0\), as well as the coincidence regulator, while integrating by parts.

The source introduces

$$
\widetilde C(r)=
-\frac1{12m^3r^2}
-\frac{-1+2\gamma-\ln4}{4m}\ln r
-\frac1{4m}\ln^2(mr).
$$

**Checked:** its three-dimensional bi-Laplacian equals the derivative combination used in §4.2.2 away from the diagonal. Applying Green's identity in each variable gives the four boundary structures

$$
\int_{S^2}dS_xdS_y
\left[
F_xF_y\partial_{n_x}\partial_{n_y}\widetilde C
-(\partial_{n_x}F_x)F_y\partial_{n_y}\widetilde C
-F_x(\partial_{n_y}F_y)\partial_{n_x}\widetilde C
+(\partial_{n_x}F_x)(\partial_{n_y}F_y)\widetilde C
\right],
$$

plus a finite bulk remainder and an overall \(m^3e^2/(4\pi^3)\). Here \(n\) must be used consistently: the exterior-domain outward normal points into \(\mathcal O\). Simultaneously reversing both normals leaves the displayed bilinear structure invariant.

The source discards bulk contact counterterms because the exterior test functions are harmonic. This needs a collar/extension prescription: it is valid for open-domain harmonic pairings with boundary terms separately assigned, not a direct evaluation of \(\Delta\mathbf1_{\mathcal O^c}\Psi_V=0\) on all of \(\Sigma\).

### Spherical geometry before the planar limit

For actual chord length \(s\),

$$
s^2=2R^2(1-\cos\theta)=4R^2\sin^2(\theta/2).
$$

The source Eq (5.9) misses the factor 4. For any radial kernel \(c(s)\),

$$
\partial_{r_x}\partial_{r_y}c(s)\big|_{r_x=r_y=R}
=c''(s)\frac{s^2}{4R^2}
+c'(s)\left(-\frac1s+\frac{s}{4R^2}\right).
$$

**Checked** directly using the squared distance; Eq (5.10) instead has \(s/(2R)\) multiplying \(c''\). Also

$$
\partial_r(R/r)^{l+1}\big|_R=-\frac{l+1}{R},\qquad
\partial_r^2(R/r)^{l+1}\big|_R=\frac{(l+1)(l+2)}{R^2},
$$

not \(l(l+1)/R^2\). The leading large-\(l\) planar approximation may still agree after these subleading repairs; the exact finite-\(l\) formulas do not.

### Planar reduction and the failed extension identity

At large \(R,l\) with \(k=(l+1)/R\) fixed, the mixed first-normal terms vanish at leading order and the exterior Dirichlet-to-Neumann operator becomes \(-|k|\). The surviving kernel is

$$
C_{SS}(r)=-\Delta_{\mathbb R^3}\widetilde C(r)
=\frac1{6m^3r^4}
+\frac{2\gamma-\ln4+1}{4mr^2}
+\frac{\ln(mr)}{2mr^2}.
$$

**Checked:** this reduction agrees with the displayed \(\widetilde C\) for \(r>0\).

The next proposed differential extension, Eq (5.14), is

$$
\frac1{48m^3}\Delta_2^2\ln^2(mr)
+\frac{2\gamma-\ln4+1}{8m}\Delta_2\ln^2(mr)
+\frac1{24m}\Delta_2\ln^3(mr)
+\text{contact terms}.
$$

**Failed:** subtracting Eq (5.13) gives

$$
-\frac{\ln(mr)}{4mr^2}\ne0\qquad(r>0).
$$

A local counterterm cannot repair a discrepancy away from coincidence. Replacing \(1/(24m)\) by \(1/(12m)\) in the cubic-log term repairs this particular off-diagonal identity, since \(\Delta_2\ln^3(mr)=6\ln(mr)/r^2\). This local algebraic repair does not certify the subsequent Fourier coefficients or positivity.

For the transform convention \(\widetilde f(k)=\int d^2x\,e^{ikx}f(x)\), a Gamma-function analytic continuation gives, away from \(k=0\),

$$
\mathcal F_2[\ln^2(mr)]
=\frac{4\pi}{k^2}\left(\ln\frac{k}{2m}+\gamma\right),
\quad
\mathcal F_2[\ln^3(mr)]
=-\frac{6\pi}{k^2}\left(\ln\frac{k}{2m}+\gamma\right)^2.
$$

**Checked:** these follow by differentiating
\(2^{2+s}\pi m^s k^{-2-s}\Gamma(1+s/2)/\Gamma(-s/2)\).
Appendix A uses coefficients smaller by \(4\pi^2\), inconsistent with its unnormalized forward transform. Its radial three-dimensional formula and ball characteristic transform also use mutually inconsistent prefactors; the latter should be \(4\pi(\sin kR-kR\cos kR)/k^3\) in that convention.

### Positivity does not follow from the printed planar or spherical formulas

Eq (5.15) gives

$$
K_m(k)=\frac{k^2}{48m^3\pi}\ln\frac{k}{2m}
+\frac3{4m\pi}\ln^2\frac{k}{2m}
+\frac{-1+10\gamma+\ln4}{8m\pi}\ln\frac{k}{2m}
+c_0+c_1k^2 .
$$

The universal assertion \(K_m(k)+k^2>0\) requires a parameter and scheme specification. With the printed choice \(c_0=c_1=0\), \(m=0.01,k=0.01\), Mathematica gives **−5.97425586994**. A finite sample at \(m=1\) passes the tested points, but is not an all-\(k\) proof. Moreover the planar formula is a UV approximation and cannot alone prove its global extension.

Appendix C is more decisive. With \(m=R=1\), its own Eqs (C.4)–(C.6) plus the proposed \(l(l+1)\) counterterm give

$$
K_{l=10000}=-2.80959198033\times10^7,\qquad
K_{l=10^6}=-8.84000636908\times10^{11}.
$$

Its leading term is
\(-\pi l(l-1)\widetilde H_l/24\sim-\pi l^2\ln l/24\), while the proposed counterterm is only quadratic. It cannot dominate the negative logarithm for all \(l\). Eq (C.7) is therefore **Failed as printed**. This is an internal inconsistency with the claimed positive planar leading sign; it does not prove that no repaired positive state can exist.

The spherical input series are also not a reliable independent rescue. For example
\(\int_{-1}^1P_1(z)\ln^2(1-z)\,dz=3-\ln4>0\);
the corresponding coefficient in (C.2) has the opposite sign. This integral is convergent and cannot be changed arbitrarily as a divergent extension.

## What can be retained about completion and the comparison appendices

### Conditional logarithmic Sobolev completion

If a repaired positive kernel has UV weight comparable to \(k^2\ln k\), and the finite modes are controlled, the associated square norm is equivalent to

$$
\sum_{l,m}\left[1+l(l+1)\ln(1+l)\right]|f_{lm}|^2.
$$

This defines \(H^{1,1/2}(S^2)\), strictly between smooth functions and \(L^2\) in the sense of dense inclusions. It is a conditional consequence of a positive elliptic weight, not a cure for the negative spherical modes just found. The low modes need the positive 1; \(k^2\ln k\) alone is only a UV asymptotic, not a positive global norm.

### App B: extension versus a positive state

EG subtracts the local Taylor jet of test functions to extend distributions through coincidence. Differential renormalization implements the same local ambiguity through derivatives of integrable kernels. Keep \(r>\eta\) first and take \(\eta\downarrow0\) only after subtraction. Rotational invariance restricts allowable contact terms. Distributional finiteness and positivity are separate requirements; App B does not establish the latter.

### App D: normal Maxwell centre

The pure-Maxwell comparison introduces a thin normal profile of width \(\delta\), takes its sharp-surface limit, and extends the induced surface covariance. The source's off-diagonal identity

$$
\frac1{(1-z)^2}
=\frac18\Delta_{S^2}^2\ln^2(1-z)
+\frac14\Delta_{S^2}\ln(1-z)
$$

is **Checked** with \(\Delta_{S^2}f=\partial_z[(1-z^2)\partial_zf]\).
Its negative large-\(l\) spectrum grows like \(-l^2\ln l\), so a positive fourth-order surface counterterm can dominate the UV tail, unlike the second-order proposal of App C.

Two normalization details remain important: the half-Gaussian supported at \(r\le R\) has radial integral \(\sqrt\pi/2\), not the full-line \(\sqrt\pi\); and
\(\int_{-1}^1\ln(1-z)\,dz=2(\ln2-1)\), not the App D value \(-2\ln2\).
The \(l=0\) normal electric flux is null in charge-free Maxwell theory. This different construction must not be substituted for the matter-dependent external mode.

### App F: the exact missing positivity condition

For \(X=E_L^{\rm out}(V)\) and \(Q\in\mathcal A_{\rm phys}\), positivity of all \(\lambda X+Q\) requires

$$
|\omega_0(Q^\dagger X)|^2
\le \omega_0(Q^\dagger Q)\,\omega_0(X^\dagger X).
$$

The appendix only handles special vanishing mixed correlators, using matter/Maxwell factorization and charge conjugation. General mixed correlators remain open. Even this entire family of inequalities would not suffice for arbitrary polynomials in several \(X\)'s and \(Q\)'s. The missing inputs are a consistent complete mixed-moment prescription and positivity of every finite moment matrix.

## Translation into the regional sewing programme

The reusable classical object is the Coulomb map from exterior charge density to an interior harmonic field, with an explicit Dirichlet-to-Neumann boundary description. Its corner value is a dependent field datum. An independent canonical pair requires the framed symplectic construction and its allowed transformations.

The sharp split changes the test-function domain and requires a chosen corner extension. A vacuum state on the original global algebra cannot be declared a state on this enlarged algebra just by restricting attention to a region. The physical-defect and reduced-state interpretations in §6 are alternative proposals, not equivalent results.

The paper does not establish isotony for arbitrary corners, a joint two-region centre, a cutoff-independent entropy, a type classification, or a unitary equivalence theorem. The formal commutant equalities in §6 require a represented bounded algebra and domain/control information that the source does not construct. Their discussion of logarithmic dressed matter and a gravity analogue remains speculative.

## Equation ledger and derivation dependency

| Link | Reusable result | Status |
|---|---|---|
| Gauss law → external harmonic potential | Boundary reconstruction of an exterior-sourced electric field | Checked local geometry; global charge/operator domain Source-derived |
| Canonical generators → Gauss quotient | Requires corrected brackets and smearing sign | Printed chain Failed |
| Time thickness → spectral density → \(1/\epsilon\) divergence | Explicit order of limits and pair threshold | Integral reduction Checked; full interacting vacuum not verified |
| Differential bulk extension → finite distributions | Local counterterm freedom, negative finite-part UV tail | Source-derived with normalization failures isolated |
| Harmonic Green identities → four surface structures | Mechanism of corner singularity | Radial primitive Checked; contact/collar prescription still required |
| Planar extension → Fourier kernel | Eq (5.14) fails off the diagonal; App A convention mismatch | Failed literal chain |
| Spherical kernel → positivity | Eq (C.7) contradicted by high-\(l\) modes | Failed |
| Positive covariance → full GNS | Mixed moments and all polynomial positivity missing | Blocked by missing proof/data |
| Positive \(k^2\ln k\) weight → test-function completion | Logarithmic Sobolev space | Conditional; not a verification of the proposed state |

## Verification log

**Verified:** Mathematica canonical charge-current variation; massive Bessel radial identity; spectral-shell polynomial integral; bulk bi-Laplacian and planar reduction; explicit boundary-extension residual; exterior harmonic derivatives; matrix-cycle traces and \(Q_+\) limit; planar/spherical numeric counterexamples; analytic-continuation logarithmic transforms; ball transform; low Legendre integrals; half-Gaussian normalization; Maxwell sphere identity. xCoba independently produces \(\Delta h(r)=h''+2h'/r\) and zero curvature for Euclidean spherical coordinates.

**Assumptions:** \(m>0\), \(r>0\) for off-diagonal identities; canonical brackets specified above; smooth compact regional smearings; finite time/collar/UV regulators before their indicated limits; \(m=R=1\) only for the stated spherical counterexamples; standard unnormalized forward Fourier transforms; no interchange of the exact spherical and planar UV problems.

**Failed:** literal Gauss-compatible bracket/sign chain; scalar covariance normalizations; cubic-log differential extension; several exact spherical factors; the normalization of App A transforms; all-\(m\) planar positivity for the displayed counterterms; all-mode positivity of App C; fixed-labelled cycle equalities as printed. None is hidden by replacing a source equation silently.

**Blocked:** full positive bulk/corner GNS construction, all mixed and higher current moments, operator-domain/commutant completion, and a uniform multi-cut construction. Exact missing evidence is stated in the relevant sections. A combined Mathematica batch hit the service's 30-second timeout; splitting it into smaller checks resolved the computational obstruction. An initial derivative-syntax error was corrected and is not evidence against the paper.

**Not verified:** nonperturbative interacting state, unitary inequivalence, translation-breaking representation theorem, von Neumann type, entropy/anomaly identification, covariant continuation and gravitational extension.

PDF text was used for navigation; TeX was used for formulas; PDF viewer pages 17, 38, 39, 58 and 65 were rendered and visually inspected for the decisive printed statements. All raw sources, renders and computation logs remain outside the vault in the run artifact directory. No pre-existing note was edited.
