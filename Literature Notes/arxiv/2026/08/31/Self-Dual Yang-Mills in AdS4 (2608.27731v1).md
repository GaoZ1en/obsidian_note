---
paper id: 2608.27731v1
title: Self-Dual Yang-Mills in AdS4
authors:
  - Simon Heuveline
  - Romain Ruzziconi
  - Ahmed Sheta
  - Andrew Strominger
publication date: 2026-08-27T21:42:45
abstract: |-
  Quantum Yang-Mills theory on Euclidean AdS4 is continued to a self-dual limit with one chiral coupling fixed. The Neumann variational problem has a smooth first-order BF formulation with a mixed boundary condition. Tree-level current correlators are computed through four points and at arbitrary multiplicity in the double-plus sector; total-energy singularities connect to flat-space single-minus amplitudes.
comments: "30 pages + 6 appendices, 6 figures; source PDF includes references"
url: https://arxiv.org/abs/2608.27731v1
summary: "An action-first example where a topological bulk term changes the boundary polarization, propagators, and a genuine perturbative coupling; quantum equivalence remains formal."
tags: []
---

# Result and scope

This is a substantive boundary-condition and first-order-action paper, not a derivation of a new CPS charge algebra. Its reusable result is the matched Neumann/BF formulation of a chiral limit of Yang-Mills on Euclidean AdS. The tree-level diagram sums checked below are consistent. An all-loop equivalence, a nonperturbative definition, a unitary boundary CFT, and a general Lorentzian initial-boundary-value theorem are not established.

Reason codes: T1-boundary, T2-model, T2-spectral, T2-celestial-carrollian; independently, A-rising-star for Ruzziconi and A-big-name for Strominger. Today's overview: [[2026_08_31_overview]].

Source provenance: [official v1 abstract](https://arxiv.org/abs/2608.27731v1), [official PDF](https://arxiv.org/pdf/2608.27731v1), [official TeX](https://arxiv.org/src/2608.27731v1). The following reconstruction is Source-derived unless a check is explicitly identified. Publication timestamp is UTC.

# Source map and reading guide

The printed page number is one less than the PDF page number.

| Source cluster | Content and dependency |
|---|---|
| §1, pp. 2-5 | Defines the chiral limit; distinguishes explicit tree tests from the quantum conjecture and leaves instantons/confinement aside. |
| §2.1-2.2, pp. 5-9 | Action, boundary variation, Dirichlet versus Neumann, formal delta-functional limit and boundary Chern-Simons factor. Essential before any propagator. |
| §2.3, pp. 10-13 | Radial gauge, longitudinal/helicity projectors, image propagators, Yang-Mills and boundary vertices. |
| §2.4-2.5, pp. 14-18 | Linear current correlators through four points, then the different nonlinear field-strength operator. |
| §3.1-3.2, pp. 19-23 | Auxiliary anti-self-dual B, matched boundary condition, Gaussian elimination, smooth BF propagators and vertices. |
| §3.3-3.4, pp. 23-25 | Tree equivalence, helicity counting, adjacent-double-plus ladder and nonlinear completion. |
| §3.5, pp. 26-27 | Full Euclidean flat-space propagator is not the AdS propagator restricted to a half-space. |
| §4.1-4.2, pp. 28-29 | Three-point energy pole; generic four-point cancellation versus half-collinear distribution. |
| A.1-A.3, pp. 30-34 | Second-order four-point diagrams: all plus, one minus, alternating two minus; cancellation and finite remainders. |
| B, pp. 35-36 | Inverts the BF kinetic operator; fixes image coefficients by reciprocity and boundary conditions. |
| C.1-C.4, pp. 37-39 | Direct BF four-point computation, including adjacent and mostly-minus sectors. |
| D.1-D.4, pp. 40-46 | Composite Q insertions, finite-coupling and BF computations, all-multiplicity replacement, alternative radial operator. |
| E, pp. 46-47 | Spinor conventions, reference-spinor polarizations, radial gauge transformation. |
| F.1-F.2, pp. 48-50 | Schouten cancellation, iε prescription and delta-function Jacobians on the half-collinear locus. |

How to read this long paper: read §2.1-2.2 then §3.1-3.4 first; return to §2.3-2.5 and A-C for the explicit equivalence test. D is essential if using the actual field strength rather than its linear part. E-F are technical reference for amplitude extraction. §1 and §3.5 supply conceptual context but do not replace the boundary calculation.

# Euclidean action, chiral couplings, and boundary polarization

Use radius one, coordinates $(z,x^i)$ with $z>0$, metric

$$
ds^2=z^{-2}(dz^2+d\vec x^{\,2}),\qquad A_z=0,\qquad
F^a_{\mu\nu}=\partial_\mu A^a_\nu-\partial_\nu A^a_\mu+f^{abc}A^b_\mu A^c_\nu .
$$

The orientation is $\epsilon_{zijk}=\epsilon_{ijk}$; on two-forms $\star^2=+1$. Thus

$$
F^\pm=\frac12(F\pm\star F),\qquad
\frac1{g_\pm^2}=\frac1{g^2}\mp\frac{i\theta}{8\pi^2},\qquad
g^2=\frac{2g_+^2g_-^2}{g_+^2+g_-^2}.
$$

Equations (2.1)-(2.4) become

$$
S=\int\sqrt g\left[\frac{F^2}{4g^2}-\frac{i\theta}{32\pi^2}F\star F\right]
=\int\sqrt g\left[\frac{(F^+)^2}{4g_+^2}+\frac{(F^-)^2}{4g_-^2}\right].
$$

The boundary variation, (2.5), is

$$
\delta S_{\rm os}
=\int_{\partial M}\sqrt\gamma\,n_\mu\delta A_\nu^a
\left(\frac{F^{+,a\mu\nu}}{g_+^2}+\frac{F^{-,a\mu\nu}}{g_-^2}\right).
$$

Therefore the Neumann zero-source condition is

$$
n_\mu(g_-^2F^{+,a\mu\nu}+g_+^2F^{-,a\mu\nu})=0.
$$

The specified Dirichlet vacuum boundary value is pure gauge, so its tangential curvature vanishes. Together with self-duality and the regular first-order radial-extension assumption used by the authors, this leaves only the trivial configuration. This argument is not a theorem about arbitrary nonzero Dirichlet sources, arbitrary bundles or singular instantons.

The limit is $g_-\to0$ at fixed $g_+$, along an analytically continued complex-coupling family; it is not the real-$\theta$ weak-coupling limit. The Neumann condition then allows $F^-=0$. Dirichlet data held fixed while varying θ do not define this limit.

The formal Gaussian localization in (2.12)-(2.18) gives

$$
Z_{\rm sd}=\int DA\,\delta[F^-]\,
\exp\left[-\frac1{4g_+^2}\int\sqrt g\,(F^+)^2\right]
=\int Da\,e^{-k_{\rm CS}S_{\rm CS}[a]}\Psi_{\rm SD}[a],
\qquad k_{\rm CS}=\frac{4\pi i}{g_+^2},
$$

with the paper's $S_{\rm CS}=\frac{i}{8\pi}\int\sqrt\gamma\,\epsilon^{ijk}
(A_i^a\partial_jA_k^a+\frac13f^{abc}A_i^aA_j^bA_k^c)$.
The nontrivial $\Psi_{\rm SD}[a]$ is supported on boundary fields admitting a self-dual extension. The result is not pure boundary Chern-Simons theory. Functional measures, contours, ghosts and possible loop anomalies remain part of the formal argument.

# Radial Green functions and the operator dictionary

Set $k=|\vec k|>0$ and suppress the color delta and the overall momentum-conservation delta where indicated:

$$
L_{ij}=\frac{k_i k_j}{k^2},\quad \Pi_{ij}=\delta_{ij}-L_{ij},\quad
h_{ij}=\frac{i}{k}\epsilon_{ijm}k^m,\quad \Pi^\pm=\frac12(\Pi\pm h).
$$

The transverse scalar Green functions satisfy

$$
(\partial_z^2-k^2)G^\pm=-\delta(z-z'),\qquad
G^\pm=\frac{e^{-k|z-z'|}+r_\pm e^{-k(z+z')}}{2k},
\quad r_\pm=(g_+/g_-)^{\pm2},
$$

while $G^L=l(k)-\max(z,z')$. The arbitrary $l(k)$ is the residual radial-gauge choice, not a new physical coupling. The full propagator is $g^2(G^LL+G^+\Pi^++G^-\Pi^-)$.

Two different boundary operators must be retained:

$$
\mathcal J_i^a=-\frac12\epsilon_{ijk}F_{jk}^a\big|_{z=0}
=J_i^a+Q_i^a,\qquad
J_i^a=-i\epsilon_{ijk}k_j A_k^a,
$$

$$
Q_i^a(\vec k)=-\frac12f^{abc}\epsilon_{ijk}
\int\frac{d^3p}{(2\pi)^3}A_j^b(\vec p)A_k^c(\vec k-\vec p).
$$

Only the linear operator is ordinarily conserved by $k^iJ_i=0$; the nonlinear one obeys the gauge-covariant Bianchi identity. Neither a colored gauge field nor its colored field strength is a gauge-invariant observable in the Neumann theory.

The useful propagator and two-point kernel are

$$
\langle JA\rangle=e^{-kz'}(g_+^2\Pi^+-g_-^2\Pi^-),\qquad
\langle JJ\rangle=k(g_+^2\Pi^++g_-^2\Pi^-).
$$

The limit selects the plus projector but does not eliminate all negative-helicity external correlators: vertices can compensate powers of $g_-$. In the second-order description both cubic vertices and the quartic vertex diverge as $g_-^{-2}$. One must sum before taking the limit.

# BF action and the smooth perturbative limit

Equations (3.1)-(3.6) introduce an anti-self-dual two-form B:

$$
S_{\rm BF}=\int\sqrt g\left[
B_{\mu\nu}^aF^{-,a\mu\nu}
-\frac{g_+^2g_-^2}{g_+^2+g_-^2}B^2
+\frac1{4g_+^2}F\star F\right].
$$

Its algebraic stationary value is $B=F^-/g^2$. Substitution recovers the second-order action, with an appropriate Gaussian contour required at the functional-integral level. Its boundary condition is

$$
n^\mu\left(B_{\mu\nu}+\frac1{2g_+^2}\star F_{\mu\nu}\right)=0.
$$

The coefficient is important: the BF boundary momentum is $2B+\star F/g_+^2$, which matches $F^+/g_+^2+F^-/g_-^2$ after eliminating B. Dividing this zero-source condition by two yields the displayed equation; it does not change the symplectic-potential normalization.

Let $b_i=B_{zi}$, so $B_{ij}=-\epsilon_{ijk}b_k$. In the self-dual limit:

$$
\langle AA\rangle=\frac{g_+^2}{k}\Pi^+e^{-k(z+z')},
\qquad
\langle bb\rangle=\frac{k}{4g_+^2}\Pi^-e^{-k(z+z')},
$$

$$
\langle Ab\rangle=\frac12e^{-k|z-z'|}
\big[\Pi^+\Theta(z-z')-\Pi^-\Theta(z'-z)\big]
-\frac12L\Theta(z'-z).
$$

Also $\langle Jb\rangle=\frac{k}{2}\Pi^-e^{-kz'}$, whereas $\langle JA\rangle=g_+^2\Pi^+e^{-kz'}$. These identify the external minus/plus helicities with b/A legs. The vertices are $2\epsilon_{ijk}f^{abc}\int_0^\infty dz$ for bAA and $g_+^{-2}\epsilon_{ijk}f^{abc}$ for boundary AAA. There is no quartic BF vertex.

The Schwinger-Dyson identity includes the local subtraction

$$
\langle b_i^a b_j^b\rangle
=g^{-4}\langle F_{zi}^{-,a}F_{zj}^{-,b}\rangle
-\frac{\delta^{ab}\delta_{ij}}{4g^2}\delta(z-z').
$$

Consequently BF exchange can correspond to exchange plus contact in second-order variables. Naive on-shell substitution inside coincident correlators would miss this term.

Rescaling $B=g_+^{-2}\widetilde B$ puts an overall $g_+^{-2}$ in the SD action. Canonically normalized boundary n-point tree correlators scale as $g_+^{n-2}$; the unnormalized J correlators below scale as $g_+^{2n-2}$. This is the loop-counting argument, not an actual loop calculation.

# Three and four points: what cancels and what does not

Write $[1^{\sigma_1}2^{\sigma_2}3^{\sigma_3}]
=\epsilon_{ijk}\epsilon_i^{\sigma_1}(\vec k_1)
\epsilon_j^{\sigma_2}(\vec k_2)\epsilon_k^{\sigma_3}(\vec k_3)$.
At self-duality, (2.52) gives

$$
\langle J^+J^+J^+\rangle=g_+^4[1^+2^+3^+],\qquad
\langle J^-J^+J^+\rangle=g_+^4\frac{k_1}{E}[1^-2^+3^+],
$$

with the other two sectors zero and $E=k_1+k_2+k_3$. For the nonlinear operator, (2.57),

$$
\langle\mathcal J^+\mathcal J^+\mathcal J^+\rangle=-2g_+^4[1^+2^+3^+],
\qquad
\langle\mathcal J^-\mathcal J^+\mathcal J^+\rangle
=-g_+^4\frac{k_2+k_3}{E}[1^-2^+3^+].
$$

The differences are tree-level boundary Wick contractions, not loop corrections. The second pair has identical total-energy residues because the difference is regular at $E=0$.

For four points define $\vec q=\vec k_1+\vec k_2$, $q=|\vec q|$,
$k_{ab}=k_a+k_b$, $E=\sum_a k_a$, $E_L=k_{12}+q$, $E_R=k_{34}+q$.
Factor out $g_+^6\epsilon_i^{\sigma_1}\epsilon_j^{\sigma_2}
\epsilon_k^{\sigma_3}\epsilon_l^{\sigma_4}\epsilon_{ijm}\epsilon_{kln}$.
The remaining s-channel kernels from (2.53) are

$$
K^{++++}=\frac{\Pi^+}{q}-\frac{E+q}{E_LE_R}\Pi^-
-\frac{E}{k_{12}k_{34}}L,
$$

$$
K^{-+++}=k_1\left[
\frac{\Pi^+}{E_L}\left(\frac1q+\frac1E\right)
-\frac{\Pi^-}{EE_R}-\frac{L}{Ek_{34}}\right],
\qquad
K^{-+-+}=\frac{k_1k_3}{qE_LE_R}\Pi^+.
$$

Add the full $(2\leftrightarrow4)$ permutation for these sectors. For $-++-$ only the displayed s-channel survives, with $k_1k_3$ replaced by $k_1k_4$; three-minus and all-minus vanish. The permutation changes q, both partial energies and the polarization contractions.

Appendix A sums YM-YM, the two mixed exchanges, CS-CS and the quartic contact term. The all-plus terms separately reach $g_-^{-4}$, so discarding subleading propagator pieces loses finite information. Appendix C obtains the same kernels directly from finite BF diagrams. The ordered radial integrals underlying this match are

$$
\int_{z>z'}e^{-k_{12}z-k_{34}z'-q(z-z')}dz\,dz'=\frac1{EE_L},
\qquad
\int_{z<z'}e^{-k_{12}z-k_{34}z'-q(z'-z)}dz\,dz'=\frac1{EE_R}.
$$

For the full operator, D adds $\Delta_{1Q}+\Delta_{2Q}$. For example

$$
\mathcal K^{-+-+}=\frac{(k_2+q)(k_4+q)}{qE_LE_R}\Pi^+,
$$

and the all-plus $\Pi^-$ coefficient becomes $(E+3q)/(E_LE_R)$ while the L coefficient becomes $+E/(k_{12}k_{34})$. These are not interchangeable with linear-J correlators. D.4 relates $\mathcal J$ to $-\partial_zA$ in radial gauge, keeping the boundary-localized contributions in the propagators.

# All-multiplicity ladder and helicity counting

For the cyclic ordering $(1^+,2^-,\ldots,(n-1)^-,n^+)$, put
$\vec Q_j=\sum_{i=1}^j\vec k_i$, $Q_j=|\vec Q_j|$.
Let $\mathcal T_n$ denote the ordered contraction of the n external polarizations with the chain

$$
\epsilon_{i_1i_2a_2}\Pi^+_{a_2b_2}(\vec Q_2)
\epsilon_{b_2i_3a_3}\Pi^+_{a_3b_3}(\vec Q_3)\cdots
\Pi^+_{a_{n-2}b_{n-2}}(\vec Q_{n-2})
\epsilon_{b_{n-2}i_{n-1}i_n}.
$$

For $n=3$ the chain is just one epsilon tensor. Equation (3.18) is

$$
C_n=g_+^{2n-2}\mathcal T_n
\prod_{j=2}^{n-2}\frac1{Q_j}
\prod_{j=2}^{n-1}\frac{k_j}{k_j+Q_{j-1}+Q_j}.
$$

There are $n-2$ bAA vertices and $n-3$ AA internal lines. Every external minus consumes one b leg; an n-point cubic tree has only $n-2$ vertices. This excludes zero-plus and one-plus trees. In the displayed adjacent-plus ordering the saturated planar tree is the ladder. This counting does not assert a single diagram for arbitrary helicity orderings.

D.3 replaces each minus-leg factor by

$$
\frac{k_j}{k_j+Q_{j-1}+Q_j}\longmapsto
\frac{k_j}{k_j+Q_{j-1}+Q_j}-1
=-\frac{Q_{j-1}+Q_j}{k_j+Q_{j-1}+Q_j}.
$$

The replacement accounts for all allowed Q insertions. For $n>3$ the generic correlator has partial-energy poles but no total-energy pole; $n=3$ is the explicit exception.

# Flat-space continuation is not a half-space restriction

For full Euclidean flat space, regularity is imposed at both radial infinities. At self-duality its AA and bb propagators vanish, unlike the nonzero AdS image terms. A conformal map of local equations therefore does not identify the two boundary problems.

In §4 the lift $k_a^\mu=(ik_a,\vec k_a)$ is null. Boundary momentum conservation plus $E=0$ supplies four-dimensional momentum conservation. This requires complex continuation or a suitable real Klein-signature slice; it is not attained by nonzero positive Euclidean $k_a$.

At three points the single-minus correlator has the required pole. At four points, F.1 derives a Schouten identity which forces the summed residue to vanish at generic kinematics. The algebra divides by a prefactor, so it cannot settle the half-collinear locus where that prefactor vanishes.

F.2 uses $1/(s+i\epsilon)$ and the convention $\int dx\,\delta(x)=2\pi$. With real nonzero square brackets on the chosen slice, $\mathrm{sg}_{ij}=\mathrm{sign}([ij])$, the claimed four-point distribution has the structure

$$
\mathcal A_4^{-+++}\ \propto\
-(\mathrm{sg}_{12}\mathrm{sg}_{34}+\mathrm{sg}_{23}\mathrm{sg}_{41})
\frac{\langle r1\rangle^5}{\langle r2\rangle\langle r3\rangle\langle r4\rangle}
\delta(\langle12\rangle)\delta(\langle13\rangle)\delta(\langle14\rangle)
\delta^2\!\left(\sum_i\langle ri\rangle\widetilde\kappa_i\right).
$$

The source displays a coefficient $1/2$ in (4.12); the proportionality here deliberately leaves external-wavefunction normalization and the complete distributional Jacobian chain Source-derived. A numerical check away from the singular locus cannot validate this distribution.

# Translation to the vault's action-first questions

The concrete reusable datum is the pair (bulk BF action, mixed boundary momentum), not merely the equation $F^-=0$. At fixed metric and fixed couplings the boundary potential has the form

$$
\Theta_{\partial M}=\int_{\partial M}\sqrt\gamma\,n^\mu
\left(2B_{\mu\nu}+\frac1{g_+^2}\star F_{\mu\nu}\right)\delta A^\nu.
$$

Its antisymmetrized field-space variation identifies the corresponding boundary flux. Restriction to the homogeneous mixed boundary condition and tangent variations annihilates this flux formally. This local consequence is not a proof that arbitrary boundary data possess extensions or that the reduced global symplectic form is nondegenerate.

For regional sewing, this example explains why a topological term changes the boundary momentum to be matched even when it leaves the bulk equations unchanged. The paper does not perform regional gauge reduction, supply interface transition functions, or prove an onto trace map. Do not import colored Neumann correlators as gauge-invariant sewing observables.

For quantization, preserve Euclidean Hodge signs and the distinction between bare, linearized and composite boundary operators. A Lorentzian continuation changes the Hodge decomposition and requires a new reality/contour prescription. The fixed-metric Euclidean boundary potential above is a local translation, not a Lorentzian CPS construction supplied by the authors.

# Verification log

Verified:

- Checked with xAct, four-dimensional Euclidean metric and antisymmetric F: Hodge square, decomposition of the two-form norm and orthogonality of the two chiral parts. All three residuals zero with the full canonical/metric-contraction pipeline.
- Checked with Mathematica, 30 labelled scalar/matrix targets: BF Gaussian elimination and boundary-momentum match; general helicity-projector algebra; both transverse helicity blocks of the finite-coupling BF inverse on each side of $z=z'$; their delta-function jumps and mixed boundary condition.
- Checked: the three-point divergence cancellation; all three projector coefficients of the complete finite-coupling all-plus four-point sum; its self-dual limit; all projector coefficients of the single-minus finite sum; alternating-helicity factorization; the BF all-plus sum.
- Checked: three ordered radial integrals, the displayed nonlinear three-/four-point kernel additions, ladder replacement and n=3 reduction, coupling-power counting and the general three-dimensional Schouten identity.
- Visually confirmed PDF pages 7, 26 and 50: chiral action/variation, all-multiplicity product structure, and the half-collinear delta convention/Jacobian statements. Remaining navigation used extracted text and TeX; not every PDF page was rendered.

Assumptions:

- Algebraic tests take $g_+^2=p>0$, $g_-^2=m>0$ in the continued chiral parametrization before the limit, with nonzero denominators and $k>0$. These are a convenient check domain, not a real-θ assertion.
- Integrals were evaluated first in convergent positive-energy subdomains; their rational forms extend where analytic continuation is legitimate. They do not justify a singular-locus exchange of limits.
- The BF inverse checks treat the two transverse helicity blocks; the residual longitudinal gauge function is retained in diagram sums. No zero-mode gauge fixing is inferred.
- Diagram-sum checks start from the explicit source diagram coefficients; they independently test their cancellation and finite results, not every original vertex contraction.

Source-derived / Not independently verified:

- The formal functional delta measure, Gaussian contour, ghost determinant, all-loop equivalence and absence of anomalies; the authors themselves leave the latter unresolved.
- A complete independent all-n diagram enumeration, full four-point tensor derivation from the action, and the normalized half-collinear distributional amplitude.
- The interacting Lorentzian theory, nonperturbative sectors, positivity/unitarity, and a globally complete CPS are outside this calculation.

Blocked: no remaining PDF/source retrieval blocker. Full quantum-equivalence verification lacks a regulated measure, contour and loop calculation; these are not supplied as a completed construction. There is no author computation notebook in the downloaded source archive.

Failed: no source equation was contradicted by the completed checks. Initial check-script errors in a boundary factor and nested-integral order were corrected and rerun; these were not paper defects. Mathematica's limit-assumption warning was reviewed: it drops assumptions involving the limiting m only. The zero residual is also supported by the exact rational diagram sum.

Artifacts: /tmp/arxiv-daily-20260831.tFD0aV/2608.27731/ contains the official PDF/TeX, three renders, checks.wl and checks.json. No attachment was added to the vault.
