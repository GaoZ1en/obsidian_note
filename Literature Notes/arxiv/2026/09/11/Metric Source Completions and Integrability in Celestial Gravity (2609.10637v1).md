---
paper id: 2609.10637v1
title: Metric Source Completions and Integrability in Celestial Gravity
authors:
  - Yingnan Xu
  - Shuangshuang Chu
publication date: 2026-09-09T10:56
abstract: |-
  The paper studies metric-source response of celestial Einstein scattering in Weyl--Beltrami variables. It constructs a distributional local same-chirality response on compact graviton packets, separates nonlinear coordinate response from the Ward anticommutator, analyzes opposite-helicity consecutive-soft and modified-shadow data, formulates integrability and contour-domain conditions for a mixed metric Hessian, and treats the independent Weyl-anomaly sector through relative determinants and fixed-area harmonic response.
comments: "79 pages"
url: https://arxiv.org/abs/2609.10637v1
summary: "A detailed local metric-response benchmark whose same-chirality calculation closes, while the global mixed-helicity and gravitational completion remains conditional on additional matching data."
tags: []
---

Return to [[2026_09_11_overview|the 11 September 2026 arXiv overview]].

# Verdict

The local same-chirality result is correct under the paper's explicitly selected packet, source-transport, and contour-domain conditions. It supplies a nonzero reference metric response and isolates its nonlinear Beltrami-coordinate term.

The paper does **not** construct or prove a unique global celestial metric functional. Its mixed-helicity metric Hessian is a criterion: closure follows only after imposing a common meromorphic two-leg family, global homogeneous Ward identities, coefficientwise puncture-contact matching, compatible relative inverses, fixed-rank transport, exchange-covariant extensions, and a no-relevant-mixed-pole condition. The vacuum metric block and any gravitational Hamilton--Jacobi completion remain independent boundary data.

# How to read this long paper

- Essential calculation: sections 2, 4, 5, and 7. These define the source functional, BP stress representative, local packet response, and radial integrability completion.
- Essential limitations: sections 8--10 and 12. These state exactly what has to be added before the mixed and Weyl--Beltrami responses are genuine commuting metric derivatives.
- Vacuum/anomaly sector: sections 11 and 13. Keep this sector separate from the marked scattering response.
- Interpretation: section 14 and the discussion. The cut metric is a source; promotion to dynamical boundary gravity is not performed.
- Appendices: use the Beltrami, homotopy, same-chirality, determinant, KLT, and packet appendices as the derivation ledger for the formulas below.

# Complete section tree

1. **Celestial source data and the complete metric functional**
   - cut geometry and Weyl--Beltrami coordinates;
   - distributional hard generating functional;
   - Carrollian source functional and adjoint transform;
   - full metric chain rule.
2. **Normalized hard and soft sectors**
   - pointwise hard normalization;
   - energy-regulated marked amplitudes;
   - classical supertranslation saddle;
   - quantum soft determinant.
3. **Modified-shadow Ward data**
   - soft graviton and BP modified shadow;
   - single and same-chirality double response;
   - Hessian symmetry;
   - relation to a metric stress tensor;
   - generic-weight maps and relative domains.
4. **Physical packets and local metric-source response**
   - KLT hard coefficient and real normal chart;
   - compact packets and analytic recoil;
   - normalized quasiconformal transport and its flat source connection;
   - double Ward identity and nonlinear Beltrami response;
   - quadratic Einstein response, energy corner, and BP endpoint residue.
5. **Ordered mixed-soft distributions and real-channel examples**
   - angular operators;
   - consecutive-soft six-graviton distribution;
   - real configuration and compact-packet pairing;
   - mixed Mellin divisor of the contact term;
   - loop-data boundary.
6. **Weyl response and fixed-background ambiguity**
   - Wess--Zumino normalization;
   - augmented source data;
   - hierarchy of completions.
7. **Metric-source integrability**
   - response one-form and curvature;
   - radial homotopy completion;
   - symmetric quadratic and higher responses.
8. **Mixed Beltrami obstruction criteria**
   - two-leg BP family and ordered residues;
   - standard-shadow, inverse, endpoint, monodromy, projector, and pinch remainders;
   - normalized transport and mixed closure criterion;
   - pre-shadow diagnostic and memory variables.
9. **Full Weyl--Beltrami integrability**
   - trace Ward operator;
   - ordered response and derivative contact;
   - symmetric completed Hessian;
   - anomaly compatibility.
10. **Covariant completion data and inverse domains**
    - smooth elliptic comparison and moving projectors;
    - locally covariant completion class;
    - vacuum functional selected by boundary data.
11. **Weyl--Virasoro consistency**
    - chiral central terms;
    - centerless consequence;
    - loopwise organization.
12. **Determinants, scalar response, and mixed ensembles**
    - relative scalar determinant;
    - local-counterterm ambiguity and harmonic extraction;
    - gravitational normalization;
    - fixed- and variable-area Weyl ensembles.
13. **Carrollian, phase-space, and holographic interpretation.**
14. **Discussion.** Separates the evaluated reference data from the remaining global matching problem.
15. **Appendices.** Conventions; distributional cumulants; Weyl cohomology; Beltrami metric contacts; radial homotopy; same-chirality algebra; mixed-soft evaluation; contour inverses; determinant/zero modes; KLT reduction; Carrollian source frames.

# Source geometry and generating functional

Near future null infinity the Bondi expansion is organized as

$$
ds^2=-du^2-2du\,dr+r^2q_{AB}(x)dx^Adx^B
+rC_{AB}(u,x)dx^Adx^B+\cdots,
\qquad q^{AB}C_{AB}=0.
$$

The cut metric $q_{AB}$ is a Carrollian geometric source. The radiative shear $C_{AB}$ is separate dynamical data. The paper does not identify a metric-source variation with radiative evolution at fixed source.

A local cut metric is written

$$
ds_g^2=e^{2\phi}\rho_{\widehat g}
\frac{|dz+\mu d\bar z|^2}{1-|\mu|^2},
\qquad \|\mu\|_\infty<1.
$$

On the complexified source space, $\mu$ and $\bar\mu$ vary independently. The source coordinates are $s^A=(\phi,\mu,\bar\mu)$, with variation

$$
\delta W
=\int\sqrt g\,\Theta\,\delta\phi
-\frac1\pi\int T^{\rm met}\delta\mu
-\frac1\pi\int\bar T^{\rm met}\delta\bar\mu
+\delta_JW.
$$

The complete transformed functional is schematically

$$
W_{\rm cel}[g,J]
=\lim_{\epsilon\to0,L\to\infty}
\left(
W_{\rm Carr}^{\epsilon,L}[\mathcal G_{\rm Carr}[g],F_{\epsilon,L}[g,J]]
+W_{\rm meas}^{\epsilon,L}+W_{\rm ct}^{\epsilon,L}
\right)+W_{\rm bare}[g].
$$

This formula is crucial: reference scattering, source transport, measure, counterterms, and a bare metric functional are independent inputs. The full Hessian contains both products of first derivatives of the source map and its second derivative; retaining only the transformed operator two-point function is incomplete.

# Distributional hard and soft data

The reference hard functional is a formal distributional series

$$
Z_{\widehat g}[J]
=1+\sum_{n\ge1}\frac1{n!}
\langle\widetilde{\mathcal A}_n,J^{\otimes n}\rangle,
\qquad
W_{\widehat g}=\log Z_{\widehat g}.
$$

Hard sources include compact energy and angle packets. Connected amplitudes are cumulants; products are only formed on disjoint source blocks. On the selected four-graviton real patch, no proper hard subset conserves momentum, so disconnected two-leg products have zero pairing and the connected tree coefficient equals the KLT amplitude times the total momentum-conservation distribution.

The source-free sector splits into a classical soft saddle and a one-loop determinant. Under the stated zero-source and stationary conditions the classical Schur complement does not generate a pure metric functional. A covariantly integrated soft determinant can nevertheless generate an independent Euler/Weyl response.

# BP modified shadow and same-chirality Ward data

For the positive-helicity subleading conformally soft graviton,

$$
S_+(w,\bar w)=\operatorname*{Res}_{\Delta=0}
\mathcal O_{\Delta,+2}(w,\bar w),
$$

the soft theorem acts on hard primaries as

$$
\langle S_+(w,\bar w)X\rangle
=-\sum_i\frac{(\bar z_i-\bar w)^2\bar\partial_i
+2\bar h_i(\bar z_i-\bar w)}{w-z_i}A_X.
$$

The standard shadow is supplemented by the Banerjee--Pasterski open-contour primitive,

$$
\bar T_{\rm mod}^{\rm BP}
=\bar T^{\rm sh}+\frac12\bar\partial^3
\int_{z_0}^{z}du\,S_+(u,\bar z).
$$

The base point, contour, branch, monodromy, kernel/cokernel, and finite-part rule are part of the operator. They cannot be discarded when the metric is varied.

At separated points, the one-leg response is the ordinary antiholomorphic Ward operator

$$
\langle\bar T_{\rm mod}^{\rm BP}(\bar z)X\rangle_{\rm sep}
=\bar D_{\bar z}A_X,
$$

and the centerless double response is

$$
G^X_{\bar z\bar w}
=\bar{\mathcal V}_{\bar z\bar w}\bar D_{\bar w}A_X
+\bar D_{\bar z}\bar D_{\bar w}A_X.
$$

For one hard leg,

$$
d_i(z)=\frac{1}{z-z_i}\partial_i+
\frac{h_i}{(z-z_i)^2},
$$

and the identity

$$
[D_z,D_w]=\mathcal V_{wz}D_z-\mathcal V_{zw}D_w
$$

makes the full same-chirality kernel symmetric. The stress-on-stress term is part of this full Ward kernel and must not be reclassified as an optional contact.

# Quasiconformal transport and the nonlinear coordinate term

The normalized uniformization is

$$
g=e^{2\sigma_g}F_g^*\widehat g,
\qquad
\bar\partial F_g=\mu\partial F_g,
$$

with the residual $PSL(2,\mathbb C)$ freedom fixed. Primary sources are transported by equality of source pairings. Under source-independent measure Jacobian and local covariance assumptions,

$$
W_{\rm trn}[g,J]
=W_{\widehat g}^{\rm norm}[U_gJ],
\qquad
W_{\rm trn}[g,0]=0.
$$

The induced source connection

$$
\mathcal A=U_g^{-1}\delta_sU_g
$$

is flat by the Maurer--Cartan equation. This flatness fixes the antisymmetric puncture contact required for mixed Hessian symmetry.

Along $\mu_\epsilon=\epsilon\mu_1$,

$$
F_\epsilon=z+\epsilon v+\epsilon^2w+O(\epsilon^3),
\qquad
\bar\partial v=\mu_1,
\qquad
\bar\partial w=\mu_1\partial v.
$$

For a primary coefficient,

$$
\left.\frac{d^2A_{X,\rm trn}}{d\epsilon^2}\right|_0
=D_v^2A_X+D_{\zeta_v}A_X,
\qquad
\zeta_v=2w-v\partial v.
$$

Thus a straight line in Beltrami-source space is not generally a coordinate flow. The second term is a genuine nonlinear coordinate response and is nonlocal in $\mu$ because $v$ and $w$ use the Cauchy inverse.

The paper's polynomial check uses

$$
v=\bar z+z\bar z^2,
\quad
w=\frac13\bar z^3+\frac12z\bar z^4,
\quad
\zeta_v=-\frac13\bar z^3,
$$

and a weight-two $a(z)=z^3$. Both direct uniformization and the Ward decomposition give

$$
\bar z^2z\left(25\bar z^2z^2+26\bar z z+6\right).
$$

# Physical same-chirality reference response

The physical test uses four hard gravitons with helicities $(--++)$, compact hard support in a real momentum chart, and two disjoint radial Beltrami profiles supported away from all hard directions. Their Cauchy inverses reduce on the hard neighborhood to

$$
v_a(z)=\frac1{z-a},
\qquad
v_b(z)=\frac1{z-b}.
$$

The energy-resolved generator is

$$
\overline{\mathsf D}_v
=\sum_i\left[
v(\bar z_i)\bar\partial_i
-\frac12v'(\bar z_i)(E_i+J_i)
\right],
\qquad E_i=\omega_i\partial_{\omega_i}.
$$

The marked reference comparison is

$$
\frac1{\pi^2}\int\mu_a\mu_b
\langle\mathcal K^{\rm BP,ref}_{\mu\mu},\Psi\rangle
=\left\langle
\left[\frac12\{\mathsf D_{v_a},\mathsf D_{v_b}\}
+\mathsf D_{\zeta_{ab}}\right]\mathcal F_4,
\Psi\right\rangle.
$$

At the stated real KLT configuration, the coefficient of
$\partial_{P^0}^2\delta^{(4)}(P)$ is

$$
\frac{C^{00}_{ab}}{\rho_*E^4}
=\frac{5378301}{77272208}
+i\frac{1430127}{4829513}
\simeq0.069602010+0.296122404i.
$$

A quadratic normal packet kills lower normal jets and detects this nonzero total response. Subtracting the complete anticommutator leaves

$$
\mathcal R^{\rm ref}_{ab}
=\overline{\mathsf D}_{\zeta_{ab}}\mathcal F_4.
$$

Its $\partial_{P^0}\delta^{(4)}(P)$ coefficient is

$$
\frac{A^0_\zeta}{\rho_*E^3}
=-\frac{147575102973}{82372173728}
-i\frac{453706165357}{164744347456},
$$

which a linear normal packet detects. These are two distinct tests: the first detects the total quadratic response; the second detects only the nonlinear Beltrami-coordinate contribution.

This result is local to the selected reference source prescription. It does not determine the finite-metric BP map or the mixed-helicity completion.

# Opposite helicities and the mixed Mellin divisor

Consecutive leading/subleading soft theorems act on the full momentum distribution, not only on a stripped amplitude. The energy Euler operators therefore differentiate both the conservation delta distribution and the compact energy profiles. The paper evaluates a real momentum-conserving channel and exhibits a nonzero normal coefficient.

The gravitational contact term produces a joint Mellin germ with a mixed divisor in the two soft weights. This matters because nested residues need not commute when the polar set includes a component such as

$$
a\Delta_++b\Delta_-=0.
$$

The existence of a mixed divisor alone does not prove a nonzero ordering defect; its coefficient and local degree must be evaluated. The paper evaluates one contact residue but does not evaluate the complete globally continued two-leg BP family.

# Metric-source integrability

The response one-form is

$$
\boldsymbol\omega
=\int\omega_A\delta s^A,
\qquad
\omega_\phi=\sqrt g\,\Theta,
\quad
\omega_\mu=-\frac1\pi T^{\rm met},
\quad
\omega_{\bar\mu}=-\frac1\pi\bar T^{\rm met}.
$$

Its source-space curvature is

$$
\mathcal F_{AB}(x,y)
=\frac{\delta\omega_B(y)}{\delta s^A(x)}
-\frac{\delta\omega_A(x)}{\delta s^B(y)}.
$$

A twice differentiable metric functional requires $\mathcal F=0$. On a star-shaped source neighborhood, the radial homotopy gives the closed completion

$$
\boldsymbol\omega_{\rm intc}
=\boldsymbol\omega_{\rm seed}
-\mathsf h\,\delta_s\boldsymbol\omega_{\rm seed},
$$

with primitive

$$
W_{\rm intc}[s,J]
=W_0[J]+
\int_0^1dt\int s^A\omega_{{\rm seed},A}(ts,J).
$$

At quadratic order this retains only the symmetric part,

$$
H^{\rm intc}_{AB}
=\frac12\left(K_{A|B}+K_{B|A}\right),
$$

and at order $n$ it retains the complete symmetrization of the ordered seed coefficient. This is a formal or local-source-space construction. It does not by itself establish locality, unitarity, factorization, or agreement with a gravitational boundary problem.

# Mixed Beltrami closure: exact conditions

The two modified-shadow maps must act before the soft residues are taken. The two orderings are nested residue cycles of one jointly meromorphic family. Their source curvature includes:

- the standard-shadow ordered-kernel difference;
- metric variations of both shadow maps;
- nonlinear source-map and covariant-delta contacts;
- diagonal-extension, puncture, pinch, monodromy, projector, and rank-change remainders;
- a possible smooth regular remainder not fixed by the local OPE.

The smooth regular remainder vanishes only if it extends globally and obeys the homogeneous Ward equations. Endpoint-normalized contour domains remove the relative projectors only while the puncture divisor, endpoints, contour homotopy, and ranks stay fixed. Exchange-covariant diagonal extension removes the diagonal remainder, and the Ward descendant kills the stated monodromy term.

After these reductions, the selected mixed curvature is

$$
\left.\Delta^{\rm trn}_{\bar\mu\mu}\right|_{\rm sel}
=\left.(\mathcal R_{\rm punct}+\mathcal R_{\rm pinch})\right|_{\rm sel}.
$$

It vanishes if puncture contacts match coefficientwise and if the common analytic family has only coordinate poles near $(\Delta_+,\Delta_-)=(0,0)$. This is a sufficient closure criterion, not a result that the physical six-point family satisfies it globally.

# Weyl--Beltrami closure

The Weyl Ward operator on hard primaries is

$$
M_\sigma=\sum_i\Delta_i\sigma(z_i,\bar z_i).
$$

The two ordered actions differ by

$$
[D_w,M_\sigma]A_X
=\sum_i\frac{\Delta_i\partial_i\sigma(z_i,\bar z_i)}{w-z_i}A_X.
$$

The radial prescription assigns half this derivative contact to each ordering, producing the symmetric Hessian

$$
K^{\rm intc}_{\mu|\phi}
=K^{\rm intc}_{\phi|\mu}
=\frac12\{D_w,M_\sigma\}A_X.
$$

Metric-measure, covariant-delta, and nonlinear Beltrami contacts must be included for the local functional identity. A Wess--Zumino-consistent anomaly adds symmetric response and does not reintroduce source curvature.

# Completion data and nonuniqueness

A general locally covariant completion in the paper's class is

$$
W_{\rm class}[g,J]
=W_{\widehat g}^{\rm norm}[U_gJ]
+\Gamma_{\rm anom}[g,J]
+I_{\rm inv}[g,J]
+C_{\rm loc}[g,J].
$$

Equal reference scattering and same-chirality data do not fix the last three terms. The BP open-contour inverse is also distinct from the smooth Moore--Penrose inverse on the closed sphere; moving kernel and cokernel projectors enter the latter's metric variation.

A gravitational Dirichlet functional can select the vacuum block,

$$
W_{\rm HJ}[g,J]
=W_{\rm trn}[g,J]
-\left(\Gamma_D^E[g]-\Gamma_D^E[\widehat g]\right),
$$

but $\Gamma_D^E$ is input from a specified bulk state and boundary polarization. The paper does not evaluate it.

# Weyl anomaly, determinants, and harmonic extraction

For a common locally covariant parity-even metric functional,

$$
\mathcal W=\frac{c_L+c_R}{2},
\qquad
c_L=c_R=c_{\rm met}
\Longrightarrow \mathcal W=c_{\rm met}.
$$

Therefore a centerless metric stress tensor implies zero Euler anomaly. This statement applies only after the Ward representative has been identified with derivatives of one common metric functional. A centerless restricted soft Ward sector alone does not establish it.

For $\nu$ real scalar determinants,

$$
Z_{\det}[g]
=\left[\det{}'(-\nabla_g^2/\mu^2)\right]^{-\nu/2},
$$

the relative Polyakov--Alvarez functional shifts

$$
\Delta\mathcal W=\Delta c_L=\Delta c_R=\nu.
$$

On a unit sphere, along an exactly fixed-area Weyl path with harmonic eigenvalue $\lambda=\ell(\ell+1)$,

$$
\Gamma_{\rm rel}
=\frac{\epsilon^2}{24\pi}(\lambda-2)+O(\epsilon^3).
$$

Local curvature counterterms change the harmonic Hessian without changing the Euler cocycle. With local derivative order bounded by $N$,

$$
h_\ell^{\rm A}
=\mathcal W(\lambda_\ell-2)
+(\lambda_\ell-2)^2p_N(\lambda_\ell),
\qquad \deg p_N\le N.
$$

For curvature-squared order, two modes extract the Euler coefficient:

$$
\mathcal W=\frac5{12}h_2^{\rm A}-\frac1{15}h_3^{\rm A}.
$$

Without the derivative-order bound, any finite list of mode responses can be reproduced while changing $\mathcal W$. Finite spectral data therefore do not prove the anomaly coefficient.

# Equation and claim ledger

| Claim | Evidence | Status |
|---|---|---|
| Same-chirality double Ward kernel is symmetric | explicit Ward commutator | Checked |
| Nonlinear Beltrami term is required | direct uniformization versus Ward decomposition | Checked |
| Selected reference response is nonzero | source's exact KLT normal coefficients and compact normal packets | Source-derived; rendered-page coefficients visually confirmed |
| Radial homotopy yields a closed formal response | homotopy identity and Taylor symmetrization | Source-derived, algebraically transparent |
| Global mixed BP curvature vanishes | only after Ward, contact, inverse-domain, exchange, and pole conditions | Conditional |
| Centerless metric branch has zero Euler anomaly | common covariant functional plus parity and no gravitational anomaly | Conditional |
| Fixed-area determinant response is $\lambda-2$ | Polyakov--Alvarez and zero-mode bookkeeping | Source-derived |
| Finite modes determine $\mathcal W$ | only with a declared derivative-order bound | Correct under the stated bound |
| Boundary gravity is obtained | no gravitational symplectic form, constraints, or bulk HJ functional is constructed | Not proven |

# Translation into the vault's programme

The most useful structural decomposition is

$$
\text{reference scattering}
+\text{source transport}
+\text{integrability correction}
+\text{anomaly/invariant vacuum functional}.
$$

This parallels the vault's insistence that reference local response does not determine a global or sewn theory. In particular:

- a symmetric response is not obtained from an ordered consecutive-soft limit without the map/contact terms;
- inverse domains, endpoints, and projectors are part of the data, much like a section or release map in regional sewing;
- finite local response does not fix the source-free metric functional;
- a formal radial primitive does not prove a gravitational phase space, Peierls bracket, or observable-algebra gluing theorem.

The paper is valuable as a response-completion template, but it should not be cited as a completion of arbitrary-interface or radiative sewing.

# Verification log

## Checked

- Mathematica reproduced the one-leg differential-operator identity
  $$
  [D_z,D_w]=\mathcal V_{wz}D_z-\mathcal V_{zw}D_w
  $$
  with an exact zero residual for a symbolic hard-leg function and weight.
- Mathematica independently differentiated the polynomial Beltrami map and reproduced
  $$
  \bar z^2z(25\bar z^2z^2+26\bar z z+6).
  $$
- The Ward decomposition $D_v^2a+D_{\zeta_v}a$ gives the same polynomial with zero residual; the $27\to26$ shift is exactly the nonlinear coordinate term.
- Mathematica reproduced the soft expansion
  $$
  \frac{K(\Delta)r(\Delta)}{2\pi}
  =-3\Delta+
  \left[3i\pi-3\left(2\gamma_E-\frac{11}{6}\right)\right]\Delta^2
  +O(\Delta^3).
  $$
- The two-mode and three-mode interpolation formulas for $\mathcal W$ annihilate the allowed local counterterm polynomials exactly.
- The official TeX and rendered PDF page 23 agree on the rational and decimal normal coefficient in the physical same-chirality example.

## Assumptions

- Complexified $\mu,\bar\mu$ source coordinates with Euclidean reality imposed only after differentiation.
- Compact hard packets, positive-energy real channel, separated hard directions, and disjoint metric-source supports.
- The normalized quasiconformal transport, common primary frame, and source-independent measure Jacobian stipulated by the paper.
- Fixed contour chamber, endpoints, logarithm branches, relative inverse domain, and constant kernel/cokernel rank.
- Local covariance and a common functional before identifying Ward central terms with metric anomaly coefficients.

## Blocked

- The source does not provide machine-readable hard-packet data or a standalone notebook for the large rational KLT normal coefficients; those exact coefficients were inspected in TeX/PDF but not recomputed from the full six-graviton distribution.
- The complete opposite-helicity two-leg BP family is not evaluated, so its puncture mismatch and mixed-pole residue remain unknown.
- The gravitational Dirichlet/Hamilton--Jacobi functional selecting the vacuum block is not supplied.
- No independent construction of the Carrollian measure, regulator, or metric-dependent soft determinant is provided.

## Not independently verified

- Global homogeneous Ward extension and smoothness across every removed locus.
- Uniform analytic continuation and exchange covariance of the full two-leg family.
- Absence of rank changes or contour pinches outside the selected local chamber.
- Any loopwise celestial-gravity metric functional, unitarity statement, or radiative phase-space completion.

# Bottom line

Retain the paper's local same-chirality response and its explicit nonlinear coordinate term as checked benchmarks. Treat the global mixed Hessian, anomaly sector, and gravitational realization as separately specified completion data. The paper gives a disciplined criterion for completion; it does not complete the physical celestial metric functional itself.
