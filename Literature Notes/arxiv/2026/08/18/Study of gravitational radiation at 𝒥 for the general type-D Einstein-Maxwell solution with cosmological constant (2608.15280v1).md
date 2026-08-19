---
paper id: 2608.15280v1
title: Study of gravitational radiation at $\mathscr{J}$ for the general type-D Einstein-Maxwell solution with cosmological constant
authors:
  - Francisco Fernández-Álvarez
  - José M. M. Senovilla
publication date: 2026-08-15T15:24
abstract: |-
  We characterize the gravitational radiation present in the general Plebański-Demiański type D solution with cosmological constant $\Lambda$ of any sign. We show that radiation escapes towards infinity if and only if the acceleration parameter is non-zero. We calculate the Cotton-York tensor and the boundary stress-energy tensor at infinity for negative $\Lambda$, and for positive $\Lambda$ the $D$ tensor that complements initial or final data at $\mathscr{J}$. In addition, we recast a recent parametrization of this family of metrics into a new form by a simple homothety, correctly identifying $\Lambda$, and study the existence and regularity of the possible axes of symmetry, searching for a relation between deficit angles and radiation.
comments: "26 pages"
url: https://arxiv.org/abs/2608.15280v1
summary: "The conformal-boundary electric/magnetic Weyl data diagnose radiation in the non-conformally-flat Plebański--Demiański family: acceleration is the global radiation switch, while the causal character of $\mathscr J$ changes the local flux criterion for de Sitter versus AdS infinity."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** for a non-conformally-flat member of the displayed Plebański--Demiański family, on a regular connected portion of conformal infinity with $P>0$, $Q\neq0$, and nonzero rescaled Weyl tensor, the spacetime carries asymptotic gravitational radiation somewhere on that component if and only if the acceleration parameter $\alpha$ is nonzero. The statement is global/non-identical, not a claim that the local super-Poynting vector is nonzero at every point.

The unconditional wording in the abstract is too strong for degenerate type-O subcases: if $m=e=g=l=a=0$, the displayed $\phi_2$ vanishes even when $\alpha\neq0$, so the metric is conformally flat and there is no gravitational radiation. The manuscript recognizes this “Petrov type 0” escape in parts of the $\Lambda<0$ analysis but does not state it in the headline theorem.

Relevance: **high** (`T1-boundary`, `T2-celestial-carrollian`, `T2-dS-BH-holography`).

# Geometric and conformal setup

The physical metric is written as

$$
d\hat s^2=\Omega^{-2}ds^2,
\qquad
\Omega=q-\alpha x,
$$

where $ds^2$ is the conformal metric. The two quartics $Q(q)$ and $P(x)$ encode the radial and angular sectors. The allowed physical region obeys

$$
\Omega>0,
\qquad
P(x)>0,
$$

while conformal infinity is

$$
\mathscr J:\quad \Omega=0
\quad\Longleftrightarrow\quad
q=\alpha x.
$$

The normal is

$$
N_\beta=\nabla_\beta\Omega
=
\partial_\beta q-\alpha\partial_\beta x,
$$

with contravariant form

$$
N^\alpha
=
\frac{1}{\rho^2}
\left(Q\,\delta_q^\alpha-\alpha P\,\delta_x^\alpha\right).
$$

At $\mathscr J$, the conformal Einstein equation gives

$$
N_\mu N^\mu
=
\frac{Q+\alpha^2P}{\rho^2}
=-
\frac{\Lambda}{3}.
$$

Therefore:

- $\Lambda>0$: $\mathscr J$ is spacelike and $N$ is timelike;
- $\Lambda=0$: $\mathscr J$ is null;
- $\Lambda<0$: $\mathscr J$ is timelike and $N$ is spacelike.

For $\Lambda\neq0$ the paper uses

$$
n^\alpha=\sqrt{\frac{3}{|\Lambda|}}N^\alpha.
$$

# Corrected metric parameters and conicity

The paper starts from a recent compact form of the general type-D Einstein--Maxwell solution and corrects the identification of the cosmological constant. A homothety

$$
g=\frac{1}{C_f}g'
$$

is accompanied by the corresponding rescaling of $\Lambda$. The resulting $C_f>0$ is retained as a physical conicity parameter rather than being fixed as a gauge normalization.

The angular polynomial is

$$
P(x)=1+c_1x+c_2x^2+c_3x^3+c_4x^4,
$$

with

$$
c_1=-2\alpha m,
$$

$$
c_2=\alpha^2(a^2+e^2+g^2-l^2)-1-\Lambda l^2,
$$

$$
c_3=2\alpha m-\frac43\Lambda al,
$$

$$
c_4=-\alpha^2(a^2+e^2+g^2-l^2)
-\frac{\Lambda}{3}
\left[a^2+\alpha^2(a^2-l^2)^2\right].
$$

The allowed $x$-ranges are the connected intervals with $P>0$. Possible axes occur at simple roots $x_i$ of $P$ for a Killing field

$$
\partial_\varphi+\tau_{x_i}\partial_t,
\qquad
\tau_{x_i}=\frac{B(x_i)}{A(x_i)}.
$$

The deficit/excess angle obeys

$$
\left.
\frac{P'(x)^2}{4C_fA(x)^2}
\right|_{x=x_i}
=
\left(1-\frac{\Delta_{x_i}}{2\pi}\right)^2.
$$

A higher-multiplicity root cannot be a regular axis. At a single simple root, $C_f$ can always remove the deficit. For a finite interval $(x_i,x_j)$, regularity at both ends requires the same axial Killing field and compatible slopes:

$$
\frac{A(x_i)}{A(x_j)}
=
\frac{B(x_i)}{B(x_j)}
=
\epsilon\frac{P'(x_i)}{P'(x_j)},
\qquad
\epsilon^2=1.
$$

The paper's radiation/deficit equivalence is consequently conditional: it concerns the subcase with a unique well-defined axial Killing vector and two relevant simple-root components. It is not a theorem that every accelerating coordinate patch must possess a conical defect.

# Boundary metric and conformal stationarity

Using coordinates $(\bar t,\bar x,\bar\varphi)$ on $\mathscr J$, the boundary representative is

$$
h
=
\frac{\bar P}{C_f\bar\rho^2}(\omega^1)^2
-\frac{\bar Q}{C_f\bar\rho^2}(\omega^2)^2
-\frac{\Lambda}{3}
\frac{\bar\rho^4}{\bar P\bar Q}(\omega^3)^2,
$$

where

$$
\omega^1=\bar A,d\bar\varphi+\alpha^2\bar B,d\bar t,
\quad
\omega^2=\bar A,d\bar t-\bar B,d\bar\varphi,
\quad
\omega^3=d\bar x.
$$

For $\Lambda<0$, the causal character of boundary conformal Killing fields depends on $Q|_{\mathscr J}$:

- $Q<0$: no timelike conformal Killing field of the displayed two-parameter family exists; the region is non-conformally-stationary;
- $Q>0$: timelike conformal Killing fields may exist;
- sufficiently negative $\Lambda$ can make a bounded $P>0$ interval globally conformally stationary even when $\alpha\neq0$ and radiation reaches $\mathscr J$.

Thus conformal stationarity and the paper's radiation criterion are not opposites. A timelike boundary CKVF can coexist with nonzero transverse superenergy flux.

# Principal null directions and rescaled Weyl field

The principal null directions $k^\alpha,l^\alpha$ are completed by a complex vector $m^\alpha$. Only the Newman--Penrose type-D scalar survives:

$$
\psi_0=\psi_1=\psi_3=\psi_4=0,
\qquad
\psi_2\neq0.
$$

Since the physical Weyl tensor vanishes at the conformal boundary, the finite radiative datum is extracted from

$$
d_{\alpha\beta\gamma}{}^\delta
=
\Omega^{-1}C_{\alpha\beta\gamma}{}^\delta.
$$

The associated rescaled scalar $\phi_2|_{\mathscr J}$ contains separate mass, charge, and cosmological/NUT terms. Its explicit denominator is built from

$$
A-i\alpha B.
$$

This scalar matters for the logical scope of the headline result: the super-Poynting flux is proportional to $|\phi_2|^2$. Acceleration supplies the non-coplanarity that permits radiation, while a nonzero rescaled Weyl field supplies the actual curvature being transported.

# Radiation for positive cosmological constant

For $\Lambda>0$, $\mathscr J$ is spacelike. The normal and the two principal null directions are coplanar exactly when

$$
\alpha P=0.
$$

Inside the regular angular domain $P>0$, this is equivalent to $\alpha=0$. The determinant of the three directions in the natural $(T,q,x)$ basis is proportional to $2\alpha P$.

The asymptotic super-Poynting vector is tangent to $\mathscr J$ and has the form

$$
\overline{\mathcal P}^{\alpha}
=
18\alpha
\left(\frac{3}{\Lambda}\right)^{5/2}
\frac{PQ}{\rho^6}
(Q-\alpha^2P)
|\phi_2|^2
(\delta_x^\alpha+\alpha\delta_q^\alpha).
$$

The intrinsic flux has only an $\bar x$ component. Hence:

- $\alpha=0$ makes the flux identically zero;
- for a genuinely type-D member with $\phi_2\not\equiv0$, $\alpha\neq0$ makes the flux non-identically zero;
- the local expression can still vanish at special points because of $P$, $Q$, $Q-\alpha^2P$, or $\phi_2$.

This pointwise/global distinction is absent from the abstract's wording.

# Radiation for negative cosmological constant

For $\Lambda<0$, $\mathscr J$ is timelike and the relevant flux is the component normal to the boundary as measured by every timelike boundary observer. Write

$$
u^\alpha
=
a k^\alpha+b l^\alpha+d m^\alpha+\bar d\bar m^\alpha,
$$

with

$$
ab-d\bar d=\frac12,
\qquad
aB_1+bB_2+dE+\bar d\bar E=0.
$$

For $Q>0$,

$$
B_1=-B_2
=-
\sqrt{\frac{3}{-\Lambda}}
\frac{\sqrt Q}{\sqrt2\rho},
\qquad
E=i\alpha
\sqrt{\frac{3}{-\Lambda}}
\frac{\sqrt P}{\sqrt2\rho}.
$$

The observer-dependent normal flux is

$$
\overline{\mathcal P}^{\mu}(u)n_\mu
=
-36
\sqrt{\frac{3}{-\Lambda}}
\frac{\sqrt Q}{\sqrt2\rho}
|\phi_2|^2
(ab+d\bar d)(a-b).
$$

When $\alpha=0$, one has $E=0$ and the tangency constraint forces $a=b$ for every boundary observer, so the flux vanishes for all $u$. When $\alpha\neq0$, admissible observers with $a\neq b$ exist and detect a nonzero flux wherever $\phi_2\neq0$.

For $Q<0$, both principal null directions point outward and

$$
\overline{\mathcal P}^{\mu}(u)n_\mu
=
-36
\sqrt{\frac{3}{-\Lambda}}
\frac{\sqrt{-Q}}{\sqrt2\rho}
|\phi_2|^2
(ab+d\bar d)(a+b)<0.
$$

The negative sign means superenergy escapes from the spacetime through the timelike boundary in the paper's orientation convention. Such a region necessarily has $\alpha\neq0$.

# Cotton--York and electric Weyl data

Define the magnetic and electric parts of the rescaled Weyl tensor relative to $n^\alpha$:

$$
C_{\alpha\beta}
\mathrel{\mathop:}_{\mathscr J}
\frac12n^\mu n^\nu
\eta_{\alpha\mu}{}^{\rho\sigma}
d_{\rho\sigma\beta\nu},
$$

$$
D_{\alpha\beta}
\mathrel{\mathop:}_{\mathscr J}
n^\mu n^\nu d_{\alpha\mu\beta\nu}.
$$

$C_{\alpha\beta}$ is proportional to the boundary Cotton--York tensor. For $\Lambda>0$, $D_{\alpha\beta}$ is part of the conformal initial/final data on spacelike $\mathscr J$. For $\Lambda<0$, it is the electric Weyl datum commonly related to the holographic stress tensor on timelike $\mathscr J$.

The two no-radiation tests are:

$$
\Lambda>0:
\qquad
D^\mu{}_{\beta}C_{\mu\gamma}
\eta^{\beta\gamma\alpha\nu}n_\nu=0,
$$

and

$$
\Lambda<0:
\qquad
\beta D_{\alpha\beta}=\gamma C_{\alpha\beta}
$$

for functions $\beta,\gamma$ not simultaneously zero.

For the most general nonaccelerating member, both tensors share one trace-free tensor structure:

$$
C_{\alpha\beta}
=
l\left(\frac{\Lambda l^2}{3}-1\right)S_{\alpha\beta},
\qquad
D_{\alpha\beta}=-mS_{\alpha\beta}.
$$

Consequently,

$$
l\left(1-\frac{\Lambda l^2}{3}\right)D_{\alpha\beta}
=
mC_{\alpha\beta}.
$$

This is an important conceptual result: non-radiating boundary data need not have vanishing Cotton tensor. Conformal flatness of $\mathscr J$ is stronger than absence of radiation.

# What this contributes to the vault

## Useful boundary-data distinction

The paper gives an explicit example in which the boundary Cotton tensor, electric rescaled Weyl tensor, causal character of $\mathscr J$, and radiation flux are distinct pieces of data. For the AdS/CPS notes, this prevents a common conflation:

- $D_{ab}$ can encode a holographic stress response;
- $C_{ab}$ encodes intrinsic conformal geometry;
- their alignment can mean no radiation even when neither tensor vanishes;
- none of these objects is automatically an integrable covariant-phase-space charge.

## What does not transfer directly

The analysis is entirely asymptotic and solution-specific. It does not construct a symplectic form, Wald--Zoupas flux, Hamiltonian generator, or gluing map. The “radiation” criterion is based on the rescaled Weyl super-Poynting tensor rather than Bondi news or an AdS boundary symplectic flux, so comparisons must retain the criterion being used.

# Verification log

## Source-derived

- Source-derived: official arXiv metadata identifies `2608.15280v1`, published 2026-08-15T15:24:37Z, with primary category `gr-qc`, cross-category `hep-th`, and comment `26 pages`.
- Source-derived: the complete 899-line TeX source and 26-page official PDF were inspected.
- Source-derived: rendered pages 1, 12, 14, 18, 22, and 25 were visually checked; the conformal-boundary, flux, and electric/magnetic-Weyl equations were legible.

## Checked

- Checked: Mathematica expanded $P(x)$ and reproduced all five coefficients $c_0,\ldots,c_4$ exactly.
- Checked: Mathematica verified at $q=\alpha x$ that

  $$
  Q+\alpha^2P=-\frac{\Lambda}{3}\rho^2
  $$

  and that $\rho^2=A^2+\alpha^2B^2$.
- Checked: a direct linear-algebra calculation gives the coplanarity determinant $2\alpha P$, so on a regular $P>0$ boundary region the normal and the two PNDs are coplanar exactly when $\alpha=0$.
- Checked: xAct reduced the claimed nonradiating relation

  $$
  l(1-\Lambda l^2/3)D_{ab}-mC_{ab}
  $$

  to zero after substituting the displayed common tensor structure.
- Checked: Mathematica substituted $a=e=g=0$ into the general $\phi_2$ and obtained

  $$
  \phi_2
  =-
  \frac{m(1+\alpha^2l^2)-il[1-(\alpha^2+\Lambda/3)l^2]}
  {(1+\alpha^2l^2x^2-2i\alpha lx)^3}.
  $$
- Checked: setting $m=e=g=l=a=0$ in the general expression gives $\phi_2=0$ identically, demonstrating the conformally-flat degeneration behind the qualification in the direct verdict.

## Failed

- Failed: the printed special-case formula for $a=e=g=0$ (PDF equation (3.25), source near line 577) does not follow from the general $\phi_2$. It prints $m(1+\alpha^2l)$ instead of $m(1+\alpha^2l^2)$ and uses $(1+\alpha^2l^2x-i\alpha lx)^3$ instead of $(1+\alpha^2l^2x^2-2i\alpha lx)^3$. A generic numerical substitution gives a nonzero residual.
- Failed: in the $\Lambda<0$, $Q>0$ observer argument (PDF page 18, after equation (5.7)), the manuscript says $\alpha=0$ “sets $D=0$.” From its own definitions, $D=1+(l^2-a^2)q^2$ becomes $1$ at $\mathscr J$ when $q=0$. The required statement is $E=0$, after which $B_1=-B_2$ forces $a=b$.
- Failed: “radiation if and only if $\alpha\neq0$” is false without excluding the conformally-flat/type-O degeneration and without interpreting radiation as non-identical on a component. The paper's own flux formulas contain $|\phi_2|^2$ and other pointwise zero factors.

## Blocked

- Blocked: the full $C_{ab}$ and $D_{ab}$ expressions for the general charged, rotating, accelerating solution are stated but their tensor derivation is not included in a reproducible computer-algebra notebook; only selected subcases and algebraic consequences could be checked.
- Blocked: the radiation criteria are imported from prior theorems. Their general proofs are not reproduced in this paper, so this run verified their application to the displayed PND geometry rather than the foundational equivalence theorem.
- Blocked: the metric correction/homothety is explained, but a full independent Einstein--Maxwell residual check would require constructing the entire metric, vector potential, and curvature system; that computation was not feasible within this daily run.
- Blocked: statements at $Q=0$ are explicitly outside the boundary chart used in the calculation. Extending through those loci would require a different conformal chart.

## Not independently verified

- Not independently verified: the exhaustive classification of all quartic-root orderings and every contradiction used to rule out simultaneous axis regularization.
- Not independently verified: global causal claims involving closed timelike curves after one or two helical identifications.
- Not independently verified: normalization relating $D_{ab}$ to the renormalized holographic stress tensor for a chosen AdS counterterm convention.
- Not independently verified: the $\Lambda\to0$ limit of the positive-$\Lambda$ super-Poynting formula, which is singular as written and must be taken in the framework cited by the authors.

# Bottom line

The main reusable insight is not simply “acceleration radiates.” It is the boundary-data mechanism: acceleration tilts the principal null plane relative to conformal infinity, and a nonzero rescaled Weyl field then produces asymptotic superenergy flux. For the vault, the $\Lambda<0$ alignment condition $\beta D=\gamma C$ is especially valuable as an explicit reminder that boundary stress data, intrinsic conformal curvature, radiation, and integrable charges are related but inequivalent structures.
