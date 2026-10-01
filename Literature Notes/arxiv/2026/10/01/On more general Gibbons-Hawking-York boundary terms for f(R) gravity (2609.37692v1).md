---
paper id: 2609.37692v1
title: "On more general Gibbons-Hawking-York boundary terms for f(R) gravity"
authors:
  - "Federico Scali"
  - "Sergio Luigi Cacciatori"
  - "Matteo Galaverni"
  - "Gabriele Gionti"
publication date: 2026-09-29T14:36
abstract: |-
  More general boundary conditions are introduced - with respect to known literature - which produce a well-posed stationary action principle in $f(R)$ gravity. These conditions encompass the known cases, thus enlarging the space of admissible solutions. The corresponding Gibbons-Hawking-York boundary terms are explicitly computed and hold for any analytic f(R). The perspectives of application concerning the scalar-tensor mapping and the laws of black-hole thermodynamics are outlined in the conclusions.
comments: "10 pages"
url: https://arxiv.org/abs/2609.37692v1
summary: "Mixed curvature-extrinsic-curvature data make the boundary variation integrable; the formal construction survives specific dimension and convergence corrections. Bulk existence remains open."
tags: []
---

# On more general Gibbons-Hawking-York boundary terms for f(R) gravity

The reusable result is a boundary polarization: with the metric fixed, constrain the remaining variations by $\delta R=g(K)\delta K$ and integrate the boundary one-form $f'(R)\delta K$ along that constraint. The paper constructs explicit derivative series for the boundary primitive. This is directly useful for specifying a regional higher-derivative action before discussing its CPS. It does **not** establish a well-posed bulk boundary-value problem or exhibit the advertised enlarged bulk solution space. There are also definite errors in the dimension coefficient and the stated series convergence domain, isolated below.

Reason codes: `T1-boundary; T1-Wald-CPS; T2-model`. Source: [official v1](https://arxiv.org/abs/2609.37692v1). This is a completed technical reconstruction with scoped corrections, not an endorsement of every source claim.

## Source map and dependencies

| Source | Role and dependency |
| --- | --- |
| I.A, pp. 1–2 | History of EH and GHY; background only. |
| I.B, pp. 2–3 | Distinguishes boundary data from boundary action; motivates higher-derivative extra data. Its broad existence/uniqueness terminology is not proved later. |
| II, pp. 3–4, Eqs. (1)–(5) | Metric action, restricted variation, standard fixed-curvature boundary term and scalar–tensor motivation. |
| III.A, pp. 4–5, Eqs. (6)–(10) | Madsen–Barrow-inspired condition and repeated integration. Dimension error in (6) propagates to the advertised geometric specialization. |
| III.B, pp. 5–6, Eqs. (11)–(24) | Power-law condition, geometric ansatz, coefficient recursion, logarithmic exponent case, excluded resonances. |
| III.C, pp. 6–7, Eqs. (25)–(32) | Functional condition, iterated primitives, multi-index coefficient formula. |
| IV, p. 7 | Explicitly leaves nonempty new bulk sectors, scalar–tensor interpretation and black-hole applications for future work. |
| A, pp. 8–9, (A1)–(A16) | Fixed non-null embedding, projectors, extrinsic curvature, Gauss–Codazzi. |
| B, pp. 9–10, (B1)–(B6) | Two bulk integrations by parts; normal metric derivative becomes $\delta K$. |
| C, p. 10, (C1)–(C6) | Root-test argument; needs sign, endpoint and negative-exponent qualifications. |

All published sections and appendices were inspected. Commented-out TeX draft sections on scalar–tensor inequivalence are not published results and are not used. Read II, III.B–C and B first; consult A for convention checks and C together with the corrections below. The historical introduction and bibliography are background.

## Fixed geometry and the action before variation

Spacetime dimension is $D$, boundary dimension $d=D-1$, with mostly-plus Lorentzian signature, source curvature convention, $k=8\pi G$, and an outward unit normal

$$
n^\mu n_\mu=\epsilon=\pm1,\qquad
h^\mu{}_\nu=\delta^\mu{}_{\nu}-\epsilon n^\mu n_\nu,\qquad
K_{\mu\nu}=h^\rho{}_\mu h^\sigma{}_\nu\nabla_\rho n_\sigma,
\quad K=h^{\mu\nu}K_{\mu\nu}.
$$

The hypersurface is closed, non-null, and has fixed embedding. Variations fix the **full** boundary metric, $\delta g_{\mu\nu}|_{\partial M}=0$, hence $\delta h_{ab}=0$ and $\delta n_\mu=0$ there; normal derivatives of $\delta g$ remain free. These are stronger coordinate-level premises than merely writing induced Dirichlet data without a gauge prescription. Use $\sqrt{|h|}$ below for either causal type; the source writes $\sqrt h$.

$$
S_f[g]=\frac1{2k}\int_M\sqrt{-g}\,f(R).
$$

The boundary action will be $k^{-1}\int_{\partial M}\epsilon\sqrt{|h|}\,B(R,K)$, with its prescribed extra data stated before taking its variation. Fixed functions of boundary position may appear, but their variations vanish. Units impose $[\alpha]=L^{r-1}$ in the power-law case if $[R]=L^{-2}$ and $[K]=L^{-1}$.

## Two integrations by parts isolate the obstruction

For a covariant metric variation, Appendix B gives

$$
\delta S_f=\frac1{2k}\int_M\sqrt{-g}\,E^{\mu\nu}\delta g_{\mu\nu}
-\frac1k\int_{\partial M}\epsilon\sqrt{|h|}\,f'(R)\delta K,
$$

$$
E^{\mu\nu}=\frac12g^{\mu\nu}f-f'R^{\mu\nu}
-g^{\mu\nu}\Box f'+\nabla^\mu\nabla^\nu f'.
$$

Here the undefined $\phi$ multiplying $R^{\mu\nu}$ in the printed Eqs. (2), (B4), (B6) is read as $f'(R)$, as in (B1). Varying with respect to the inverse metric reverses the Euler tensor sign. The derivative part before integration by parts is

$$
-f'(R)(g^{\rho\sigma}g^{\mu\nu}-g^{\rho\mu}g^{\sigma\nu})
\nabla_\rho\nabla_\sigma\delta g_{\mu\nu}.
$$

The first integration produces a normal derivative term. Tangential derivatives of $\delta g$ vanish on the fixed boundary; terms proportional to $\delta g$ vanish there on the second integration. Finally,

$$
\delta K=\frac12n^\rho h^{\mu\nu}\partial_\rho\delta g_{\mu\nu}
$$

converts the surviving term to the stated one-form. Adding $B=f'K$ leaves $Kf''\delta R$, so it works for fixed $R$ (or an appropriate degeneracy such as $f''=0$), not for unrestricted $R$ and $K$.

**Checked:** xAct/xTras `VarL` reproduces the unrestricted bulk Euler tensor. Its intermediate residual is a scalar second-derivative commutator; `SortCovDs` followed by canonicalization gives exactly zero. An independent Gaussian-normal warped-metric reduction, $ds^2=dz^2+a(z)^2\eta_{ij}dx^idx^j$ in four dimensions, has $R=-6a''/a-6(a'/a)^2$ and $K=3a'/a$. Mathematica gives the coefficient of $\delta a'$ in the reduced variation as $-3a^2f'/k$, equal to $-a^3f'\delta K/k$ at fixed $a$. This tests the boundary sign and normalization in that reduction, not every boundary tensor component.

## Which geometric restrictions produce the mixed condition?

Appendix A's Gauss–Codazzi scalar reads

$$
R|_{\partial M}=R^{(d)}-\epsilon(K^2+K_{ab}K^{ab})
-2\epsilon n^\mu\nabla_\mu K+2\epsilon\nabla_\alpha(n^\beta\nabla_\beta n^\alpha).
$$

Write $K_{ab}=Kh_{ab}/d+\bar K_{ab}$ with $h^{ab}\bar K_{ab}=0$. Then $K_{ab}K^{ab}=K^2/d+\bar K_{ab}\bar K^{ab}$. At fixed intrinsic metric the coefficient of $K\delta K$ in $\delta R$ is therefore $-2\epsilon D/(D-1)$.

**Failed, Eq. (6), visually confirmed on p. 4:** the source instead prints $-2\epsilon(D+1)/D$. Their difference in the positive coefficient is $1/[D(D-1)]$, not zero. This also conflicts with the paper's own later decomposition in III.B. Under the source's Eq. (7) restriction on the traceless and normal-derivative terms, the corrected specialization is

$$
\delta R=-2\epsilon\frac{D}{D-1}K\delta K.
$$

The algebraic recurrence remains valid for an independently prescribed $\alpha$; only its asserted geometric identification must change. The Madsen–Barrow-type series then has $(2D/(D-1))^{n-1}$ in place of $((2+2D)/D)^{n-1}$ in Eq. (10), with the other factors unchanged. We do not use the incorrect coefficient downstream.

For the more general ansatz

$$
K_{ab}=\frac K{D-1}h_{ab}+K^{\bar r}T_{ab},\quad
h^{ab}T_{ab}=0,\quad\delta T_{ab}=0,
$$

the paper separately requires

$$
\frac D{D-1}K\delta K+n^\mu\delta(\nabla_\mu K)
-\delta[\nabla_\alpha(n^\beta\nabla_\beta n^\alpha)]=0.
$$

Together these imply $\delta R=\alpha K^r\delta K$, with $r=2\bar r-1$ and $\alpha=-2\epsilon\bar r T_{ab}T^{ab}$. This is an imposed restriction on admissible metric jets, not an existence theorem for an embedding or a bulk solution. In the functional version replace $K^{\bar r}$ by $\bar g(K)$; the resulting coefficient is $g(K)=-2\epsilon T^2\bar g\bar g'$. Not every globally prescribed $g$ follows from a real regular $\bar g$ without further conditions.

## Power-law integration and its actual domain

Prescribe $\delta\alpha=\delta r=0$ and $\delta R=\alpha K^r\delta K$. A real branch such as $K>0$ is necessary for general real $r$. With

$$
B=-\sum_{n\ge1}c_nf^{(n)}(R)K^{s_n},
$$

cancellation requires the directional primitive equation

$$
(\partial_K+\alpha K^r\partial_R)B=f'(R).
$$

Separating derivatives of arbitrary $f$ gives

$$
s_1=1,\quad c_1=-1,\quad
s_n=1+(n-1)(1+r),\quad c_n=-\frac{\alpha c_{n-1}}{s_n}.
$$

For nonzero denominators,

$$
c_n=\frac{(-1)^n\alpha^{n-1}}{\prod_{j=0}^{n-1}[1+j(1+r)]}
=\frac{(-1)^n\alpha^{n-1}}{(1+r)^n}
\frac{\Gamma(1/(1+r))}{\Gamma(n+1/(1+r))}.
$$

The product expression is safer than an unqualified Gamma quotient at singular arguments. The $n=1$ term is the usual $f'K$; the next is $-\alpha f''K^{r+2}/(r+2)$. For $r=1$, denominators become $(2n-1)!!$. For $\alpha=0$, only the first term survives.

For $r=-1$, $s_n=1$ and $B=K\sum_{n\ge1}(-1)^{n-1}\alpha^{n-1}f^{(n)}$. This is a formal inverse differential-operator expansion and need not converge for analytic $f$. Resonances $r=-1-1/m$ obstruct this pure-power ansatz when a denominator vanishes. They do **not** forbid a boundary primitive: logarithms can replace the resonant monomial.

**Checked:** Mathematica verifies seven successive coefficient recurrences and the full directional primitive identity for a general degree-six polynomial $f$ with arbitrary allowed $r$. Since higher derivatives vanish, this is exact for that polynomial class. For $f(R)=R+\lambda R^2$,

$$
B=(1+2\lambda R)K-\frac{2\lambda\alpha}{r+2}K^{r+2},\qquad r\ne-2.
$$

At $r=-2$ the repaired primitive is

$$
B=(1+2\lambda R)K-2\lambda\alpha\log K,\qquad K>0.
$$

Both directional residuals vanish symbolically. The logarithmic repair is derived here, not claimed as the paper's construction.

### Convergence: explicit counterexamples and repair

Let $d_f$ be the distance from the chosen $R$ to the nearest complex singularity of $f$. For $r\ne-1$ away from resonant denominators, the natural series variable is $K^{1+r}$, not $|K|^{|1+r|}$. The interior root-test condition is

$$
\left|\frac{\alpha K^{1+r}}{(1+r)d_f}\right|<1.
$$

For $r>-1$ this bounds $|K|$ above; for $r<-1$ it bounds $|K|$ below, on the selected branch. Endpoints require separate tests, and termwise variation requires local uniform convergence of the differentiated series. These qualifications replace the blanket statement after (C6).

**Failed, Appendix C:** take $f(R)=1/(1-R)$ at $R=0$, $r=0$, $\alpha=1$. The series terms at $K=1$ are $(-1)^{n-1}$, so they do not tend to zero, although the paper's $|K|\le Z$ with $Z=1$ includes this point. For $r=-5/3$, the exact limiting absolute term ratio is $3|\alpha|/(2K^{2/3})$ on $K>0$; it converges only at sufficiently large $K$. For $r=-1$, the same analytic $f$ has successive absolute ratio $|\alpha|(n+1)\to\infty$ for $\alpha\ne0$. Analyticity of $f$ alone thus does not validate that special series. These are failures of the asserted convergence scope, not failures of every mixed boundary condition.

## Functional integration and a local primitive without the series

For $\delta R=g(K)\delta K$, the source sets

$$
B=-\sum_{n\ge1}f^{(n)}(R)G_n(K),\qquad
G_1=-K,\quad G_n'=-gG_{n-1}.
$$

Assuming a convergent Taylor expansion $g(K)=\sum_{s\ge0}\beta_sK^s/s!$ and choosing zero integration constants gives

$$
G_2=\sum_{s\ge0}\frac{\beta_sK^{s+2}}{(s+2)s!},\qquad
G_3=-\sum_{s,t\ge0}\frac{\beta_s\beta_tK^{s+t+3}}{(s+2)s!(s+t+3)t!},
$$

$$
G_n=(-1)^n\sum_{s_1,\ldots,s_{n-1}\ge0}
\frac{\left(\prod_i\beta_{s_i}\right)K^{n+\sum_i s_i}}
{\left(\prod_i s_i!\right)\prod_{i=1}^{n-1}(i+1+\sum_{j\le i}s_j)}.
$$

Each recursion cancels the preceding $f^{(n)}$ contribution. **Checked:** for quadratic $g=b_0+b_1K+b_2K^2$, explicit polynomial integration through $G_6$ and general degree-six $f$ gives a zero residual. Infinite sums still require a convergence argument; analyticity of $g$ alone is not a proof for the combined derivative expansion.

A local repair and interpretation avoids this issue. Choose a primitive $H'=g$ and fix the mixed datum $C(y)=R-H(K)$. On a domain where $f'$ and $g$ are regular, set

$$
B(R,K)=\int_{K_0}^{K}f'\big(R-H(K)+H(s)\big)\,ds.
$$

At fixed $C$, its derivative is $f'(R)$ by the fundamental theorem of calculus. Hence it solves the directional primitive equation. $K_0$ is fixed; adding any function of $C$ does not affect the allowed variation. For power laws, $H=\alpha K^{r+1}/(r+1)$ or $\alpha\log K$ at $r=-1$. This constructs a local boundary functional even when a particular derivative series fails. It does not solve the bulk field equations or prove globally admissible data.

## Translation into a regional action and CPS

The field space must be specified by fixed embedding, fixed boundary metric and fixed $C=R-H(K)$ before varying $S_f+S_B$. On this restricted space the normal symplectic-potential contribution is exact: $-\epsilon\sqrt{|h|}f'\delta K/k=-\delta(\epsilon\sqrt{|h|}B/k)$. The pullback of its field-space curl vanishes because $\delta R\wedge\delta K=g(K)\delta K\wedge\delta K=0$. This explains the integrability mechanism and identifies the extra boundary datum.

The source does not derive a corner symplectic form, surface-charge algebra, gluing measure or regional solution/observable space. For an artificial boundary one must additionally establish existence and compatibility with exterior data, choose the treatment of corners and both normal orientations, and verify that reassembly does not impose an unintended restriction. A different $g$ generally defines a different polarization, not a proven nested superset of all fixed-$R$ problems.

The standard scalar–tensor rewriting uses an auxiliary scalar with invertible $f''$ on the working patch. It explains the familiar fixed-scalar boundary term. The paper leaves the mixed-data map and black-hole thermodynamics as future work; neither a changed entropy nor a breakdown of scalar–tensor equivalence has been established here.

## Verification ledger and boundary

**Verified:** bulk Euler tensor with xAct/xTras; reduced normal boundary coefficient; dimension mismatch; power-law coefficient recurrences and degree-six cancellation; quadratic resonant logarithmic repair; functional recursion for quadratic $g$ and degree-six $f$; exact convergence counterexamples. The local integral primitive follows directly by differentiation at fixed $C$.

**Assumptions:** non-null closed fixed boundary, outward normal, full metric fixed, smooth allowed variations, fixed boundary functions, real branch when needed, regular $f$ on the integration path; convergence is required separately for infinite derivative series. No claim about null boundaries or corners.

| Label | Outcome |
| --- | --- |
| Source-derived | Full published structure, geometric ansatz, proposed solution-space interpretation and future scalar–tensor/thermodynamic applications. |
| Checked | xAct Euler residual zero after scalar commutation; Mathematica polynomial and recursion residuals zero; explicit divergent term sequences and negative-exponent ratio. |
| Failed | Eq. (6) dimension factor disagrees with (A16) and $d=D-1$ trace decomposition; Eq. (8)'s geometric coefficient inherits it. |
| Failed | Automatic convergence for $|K|\le Z$ after (C6), and unrestricted analytic justification of the $r=-1$ series, contradicted by displayed examples. |
| Blocked | Enlarged nonempty bulk solution space: no explicit solution plus compatible embedding and boundary jets is supplied; the source itself states this gap in IV. No retrieval or computation-service blocker remains. |

**Not verified:** existence, uniqueness or stability of the bulk boundary-value problem, a global equivalence of polarizations, corner completion, conserved charges or black-hole laws. PDF pp. 4 and 10 were rendered and visually inspected for the two reported defects; TeX and extracted text provided the remaining source map. A font-type warning from PDF extraction did not block reading.
