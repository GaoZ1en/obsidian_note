---
paper id: 2610.03479v1
title: "Unimodular boundary time for Regge calculus"
authors:
  - "Steffen Gielen"
  - "Sofie Ried"
publication date: 2026-10-02T15:49
abstract: "Henneaux-Teitelboim gravity is a diffeomorphism-invariant formulation of unimodular gravity that is locally equivalent to general relativity but includes an extra boundary variable, unimodular time, whose difference between hypersurfaces measures the enclosed 4-volume. In general, unimodular versions of quantum gravity can be expected to deviate from theories based on general relativity, but a discrete path-integral formulation for Henneaux-Teitelboim gravity has not yet been established. In this paper, we discretise Henneaux-Teitelboim gravity using the methods of Euclidean Regge calculus. Testing this framework in a symmetry-reduced model of Regge cosmology, we reproduce results in previous literature and demonstrate that the continuum limit can be naturally defined using unimodular time rather than proper time. Because unimodular time appears as boundary data as opposed to being a degree of freedom in the bulk, this approach allows for the comparison of general simplicial triangulations, beyond highly symmetric discretisations, to the continuum. Our work provides a first step towards a discrete path-integral formulation of Henneaux-Teitelboim gravity and adds a new perspective on time as a boundary variable in quantum gravity."
comments: "30 pages, 9 figures"
url: https://arxiv.org/abs/2610.03479v1
summary: "Oriented HT face fluxes provide an action-level boundary-time gluing benchmark, with repaired continuum-limit formulas and an explicit edge-derivative boundary."
tags: []
---
# Boundary volume time and the discrete action

The useful result is a local discrete action whose auxiliary fluxes cancel across a shared tetrahedron and whose surviving boundary difference is the total four-volume. The construction provides a concrete boundary-data test for regional gluing. It does not yet supply a quantum measure, a boundary Hilbert space, or a Lorentzian sewing theorem. Two printed continuum-limit formulas require local repair; the derivative convention in the numerical simplicial model also needs care.

Source: [arXiv:2610.03479v1](https://arxiv.org/abs/2610.03479v1), Steffen Gielen and Sofie Ried. Codes: T1-boundary; T1-symplectic; T2-model. Full PDF and TeX inspected; PDF pp.16 and18 visually confirm the two continuum-limit discrepancies below. Other equations were read in TeX and navigated with extracted PDF text.

## Source tree and reading guide

This is a monograph-mode reconstruction of the 30-page paper; there are no technical appendices.

| Source section | Objects and dependencies | Reading role |
| --- | --- | --- |
| I, Introduction | Regge geometry, unimodular versus fixed-cosmological-constant quantization | Background and motivation |
| II A, Henneaux–Teitelboim action and time | Density flux, boundary conditions, global obstruction | Essential; defines the variables discretized in III B |
| II B, Cosmological minisuperspace | FLRW action, lapse variation, volume-time gauge, classical branches | Essential comparison target for IV |
| III A, Regge fundamentals | Hinge areas, interior/boundary deficits, Schläfli identity | Technical reference for the edge equations |
| III B, Simplicial HT action | Face flux constraints, constant multiplier, gluing and total volume | Essential central construction |
| IV A, Discrete cosmological model | Five frusta, two continuum prescriptions, coarse spatial normalization | Technical reference; equations (51) and (62) need the repairs below |
| IV B, Simplicial model | Thirty four-simplices, incidence data, flux solution, numerical branches | Essential finite benchmark; no infinitesimal-time limit with the common-edge ansatz |
| V, Conclusion | Quantization, Lorentzian extension, other Regge variables | Open extensions rather than established constructions |

The derivation is II A → III B → IV A/B. Read II B before interpreting the plotted four-volumes. The continuum limit in IV A refines time only: the boundary remains the coarse five-tetrahedron triangulation of a three-sphere.

## Continuum variables, variation and boundary polarization

The paper uses $c=\hbar=8\pi G=1$, signature parameter $s=\pm1$ in the minisuperspace metric, and Euclidean signature for every discrete model. $T^\mu$ is a vector density; $\Lambda(x)$ is varied as a multiplier, not fixed as a coupling. In these units the action (2) is

$$
S_{\rm HT}+S_{\rm GHY}
=\frac12\int_M\sqrt{|g|}(R-2\Lambda)\,d^4x
+\int_M\Lambda\partial_\mu T^\mu\,d^4x
+\int_{\partial M}\epsilon\sqrt{|h|}K\,d^3x.
$$

**Source-derived.** The equations from $\Lambda,T^\mu$ are $\partial_\mu T^\mu=\sqrt{|g|}$ and $\partial_\mu\Lambda=0$. The metric equation is the ordinary Einstein equation with the resulting constant $\Lambda$. Density notation matters: replacing $T^\mu$ by an ordinary vector without its measure changes the action.

The auxiliary variation, with the outward boundary orientation, is

$$
\delta(\Lambda\partial_\mu T^\mu)
=(\partial_\mu T^\mu)\delta\Lambda
-(\partial_\mu\Lambda)\delta T^\mu
+\partial_\mu(\Lambda\delta T^\mu).
$$

Thus the induced auxiliary potential is $\Theta_\Sigma=\Lambda\delta T_\Sigma$ on the constant-$\Lambda$ solution space. With the vault convention $\Omega=\delta\Theta$, its contribution is $\delta\Lambda\wedge\delta T_\Sigma$. This is a local translation of the action, not a quantum construction asserted by the paper. Fixing the boundary flux makes this term stationary; fixing $\Lambda$ instead requires the corresponding boundary Legendre transform. Allowed gauge transformations and charges must respect that polarization.

A divergence-free shift $T^\mu\mapsto T^\mu+\omega^\mu$ preserves the bulk equations. The gauge $T^i=0$ is local and need not extend around a periodic coordinate. For compact hypersurfaces and no lateral flux,

$$
T_i=\int_{\Sigma_i}n_\mu T^\mu\,d^3x,
\qquad T_2-T_1=\int_U\sqrt{|g|}\,d^4x.
$$

The compact, boundaryless obstruction in (6) requires a globally defined smooth density and the stated Stokes hypotheses. A nondegenerate positive volume form cannot be exact on a compact closed manifold. This is an obstruction to those fields on that topology, not a claim that ordinary GR admits only degenerate compact solutions. Noncompactness alone does not imply infinite volume; the source's following discussion needs additional asymptotic assumptions.

## FLRW reduction and the surviving integration constant

For $ds^2=sN^2dt^2+a^2(dr^2+S_k(r)^2d\Omega^2)$, the fiducial spatial volume is $V_0$ ($2\pi^2$ for the unit three-sphere). Including GHY removes the second derivative of $a$ and gives (11)

$$
L=3V_0\left(kNa+s\frac{a\dot a^2}{N}\right)-V_0\Lambda Na^3+\Lambda\dot T.
$$

Variation before gauge fixing yields

$$
-s\frac{\dot a^2}{a^2N^2}+\frac{k}{a^2}=\frac\Lambda3,
\quad -s\frac{\ddot a}{aN^2}+s\frac{\dot a\dot N}{aN^3}=\frac\Lambda3,
\quad \dot T=V_0Na^3,\quad\dot\Lambda=0.
$$

Simply inserting the multiplier constraint and then varying $N$ loses $\Lambda$. Instead, choosing $T$ as parameter gives $N=(V_0a^3)^{-1}$ and

$$
S_{\rm gf}=3\int dT\left(\frac{k}{a^2}+sV_0^2a^4\dot a^2\right),
\quad s\ddot a a^5+2s\dot a^2a^4+\frac{k}{V_0^2a^2}=0.
$$

Its first integral is $-s\dot a^2a^4+k/(V_0^2a^2)=\Lambda/(3V_0^2)$. **Checked:** direct Euler derivatives and differentiation of the first integral agree exactly. The positive Euclidean branch has $a(t)=\sqrt{3/\Lambda}\sin(\sqrt{\Lambda/3}\,t)$; it is not the Lorentzian de Sitter scale factor.

For $a_2>a_1$ and $\Lambda>0$, (22) gives

$$
\Delta T=\frac{2\pi^2}{\sqrt3\Lambda^2}
\left[(6+a_1^2\Lambda)\sqrt{3-a_1^2\Lambda}
\pm(6+a_2^2\Lambda)\sqrt{3-a_2^2\Lambda}\right].
$$

The minus sign is the same-side expanding branch; the plus sign passes through the maximum $a_{\max}=\sqrt{3/\Lambda}$. The minus branch has the checked limit $\Delta T=\pi^2(a_2^4-a_1^4)/2$ at $\Lambda=0$. The primitive differentiated in Mathematica was $3\pi^2[\cos(\sqrt{3\Lambda}t)-9\cos(\sqrt{\Lambda/3}t)]/(2\Lambda^2)$.

# Face fluxes and the Henneaux–Teitelboim–Regge action

Let $\sigma,\tau,t,e$ denote four-simplices, tetrahedra, triangular hinges and edges. Areas and volumes are $a_t(l_e),V_\sigma(l_e)$; interior deficits are $\epsilon_t=2\pi-\sum_{\sigma\supset t}\theta_t^\sigma$, and boundary deficits use $\pi$ instead. Edge lengths on the boundary are fixed. The Regge action is the sum of hinge-area deficits minus $\Lambda$ times volume, including the boundary hinge term.

The independent new variables are $\Lambda_\sigma$, outward-oriented half-face fluxes $T_\sigma^\tau$, and a multiplier $\mu_\tau$ for each interior tetrahedron. Equation (27) is

$$
S_{\rm HTR}=\sum_{t\in\mathring{\mathcal T}}a_t\epsilon_t
-\sum_\sigma\Lambda_\sigma\left(V_\sigma-\sum_{\tau\subset\sigma}T_\sigma^\tau\right)
+\sum_{\tau\in\mathring{\mathcal T}}\mu_\tau\sum_{\sigma\supset\tau}T_\sigma^\tau
+\sum_{t\in\partial\mathcal T}a_t\epsilon_t^*.
$$

**Source-derived, with independently checked finite incidence algebra.** Interior variations imply

$$
\sum_{\sigma\supset\tau}T_\sigma^\tau=0,
\qquad \Lambda_\sigma+\mu_\tau=0,
\qquad V_\sigma=\sum_{\tau\subset\sigma}T_\sigma^\tau.
$$

The second equation applies to varied interior half-faces. Varying every boundary flux freely would additionally force its $\Lambda_\sigma$ to vanish, so the chosen boundary polarization cannot be omitted. Connectedness of the dual graph makes $\Lambda_\sigma$ a single constant. Schläfli cancellation then gives $\sum_{t\supset e}(\partial a_t/\partial l_e)\epsilon_t-\sum_{\sigma\supset e}\Lambda_\sigma\partial V_\sigma/\partial l_e=0$.

Gauge shifts lie in the kernel of the signed face-to-cell incidence matrix, with boundary data fixed. Summing the cell constraints cancels all paired interior fluxes. For $\partial\mathcal T=\Sigma_1\sqcup\Sigma_2$, define $T_1=-\sum_{\tau\in\Sigma_1}T_\sigma^\tau$, $T_2=\sum_{\tau\in\Sigma_2}T_\sigma^\tau$; then $\sum_\sigma V_\sigma=T_2-T_1$. Gluing requires matching boundary edge lengths and opposite outward half-face fluxes, exactly as in (35). The shared boundary term cancels with this orientation. Boundary volume time is additive under gluing even when no preferred bulk proper-time height exists.

For a closed complex, the same sum forces zero total positive Euclidean volume. This rules out a nondegenerate solution in this globally exact-flux formulation; it does not license a convergent path integral over degenerate configurations. The source explicitly retains the large-negative-action/conformal-factor problem.

# Five-frustum cosmology and the time-continuum limit

The boundary is two copies of the regular five-cell, with edge lengths $l_1,l_2$. Five frusta connect corresponding vertices with common edge $m$. Set $d=l_2-l_1$ and $h^2=m^2-3d^2/8>0$. The geometric inputs (37)–(44) are

$$
a_{30}=\frac{\sqrt3}{4}l_1^2,\quad a_{03}=\frac{\sqrt3}{4}l_2^2,
\quad a_{22}=\frac{l_1+l_2}{2}\sqrt{h^2+d^2/8},
\quad V_{44}=\frac{h(l_1+l_2)(l_1^2+l_2^2)}{24\sqrt2},
$$

$$
\theta_{30}=\arccos\frac{-d}{\sqrt{24h^2+d^2}},\quad
\theta_{03}=\arccos\frac{d}{\sqrt{24h^2+d^2}},\quad
\theta_{22}=\arccos\frac{8h^2-d^2}{24h^2+d^2}.
$$

There are ten hinges of each type. Thus the compact action is $10a_{22}(2\pi-3\theta_{22})+10a_{30}(\pi-2\theta_{30})+10a_{03}(\pi-2\theta_{03})-5\Lambda V_{44}+\Lambda\Delta T$ after the auxiliary interior constraints. This form preserves the boundary-angle signs more transparently than the expanded (45)–(46).

Take $l_2=l+u\,dt$, $h=Ndt$, $\Delta T=\dot Tdt$, with $N>0$. **Failed as printed:** the second term of equation (51), PDF p.16, has the wrong sign relative to (45)–(46). The corrected gravitational limit is

$$
L_{\rm grav}=-\frac{5l}{\sqrt2}\sqrt{u^2+8N^2}
\left[\pi-3\arccos\frac{u^2-8N^2}{u^2+24N^2}\right]
+5\sqrt3lu\left[\pi-2\arccos\frac{u}{\sqrt{u^2+24N^2}}\right].
$$

The printed-minus-corrected difference is $-20\sqrt3lu\arcsin[u/\sqrt{24N^2+u^2}]$. Expanding gives a quadratic-coefficient discrepancy $-5\sqrt2,l/N$. Correcting that sign restores (52)–(53):

$$
L=c_1lN+c_2\frac{lu^2}{N}-\frac{5N\Lambda l^3}{6\sqrt2}+\Lambda\dot T+O(u^4),
\quad c_1=10(2\pi-3\arccos(1/3)),
\quad c_2=\frac58(2\sqrt2+2\pi-3\arccos(1/3)),
$$

where the remainder is at fixed nonzero $N$ with the appropriate powers of $N$ understood. Both coefficients were checked by symbolic differentiation. The expansion is even in $u$.

Volume matching and integrated-curvature matching give different coarse spatial identifications,

$$
l=C_Va_V,\quad C_V=2^{5/6}(3\pi^2/5)^{1/3},
\qquad l=C_Ra_R,\quad C_R=\frac{3\pi^2}{10\pi-15\arccos(1/3)}.
$$

The checked Table I coefficients $(\tilde c_1,\tilde c_2,\tilde c_3)$ are $(1.410075,1.915812,1/3)$ for $a_V$ and $(1,0.683323,0.118892)$ for $a_R$. These are coarse-discretization errors, not convergence to continuum FLRW after time refinement alone.

The volume constraint is $\Delta T=5h(l_1+l_2)(l_1^2+l_2^2)/(24\sqrt2)$. In volume time it implies

$$
h=\frac{6\sqrt2}{5l^3}dT+O(dT^2),
\qquad m=\sqrt{\left(\frac{6\sqrt2}{5l^3}\right)^2+\frac38\left(\frac{dl}{dT}\right)^2}\,dT+O(dT^2).
$$

**Failed as printed:** (62), visually confirmed on PDF p.18, omits the square on the first term. It cannot follow from $m^2=h^2+3d^2/8$. The repaired substitution agrees with the lapse choice $N=6\sqrt2/(5l^3)$. It reproduces Table II $(\mathfrak c_1,\mathfrak c_2)=(1.410075,746.469960)$ and $(2.803669,94.963967)$; the continuum comparison is $(1,4\pi^4)$.

# The truly simplicial benchmark

Connect $x_i$ to every $y_j$ except $y_i$. A four-simplex chooses one vertex from each pair $(x_i,y_i)$, excluding the all-$x$ and all-$y$ choices. This gives 30 cells of types $(41,32,23,14)$ with counts $(5,10,10,5)$, 40 edges, 80 triangles and 80 tetrahedra, of which ten tetrahedra are on the boundary. There are no interior vertices. Sage reproduced all type counts in Table III and hinge incidences in Table IV.

The independent area and volume formulas (63)–(65) are

$$
a_{21}=\frac{l_1}{4}\sqrt{4m^2-l_1^2},\qquad
V_{41}=\frac{\sqrt2,l_1^3}{48}\sqrt{m^2-3l_1^2/8},\qquad
V_{32}=\frac{l_1^2l_2}{16\sqrt6}\sqrt{2m^2-2l_1^2/3-l_2^2/2}.
$$

Obtain $a_{12},V_{14},V_{23}$ by $l_1\leftrightarrow l_2$. The radicands must be positive; the four conditions have to hold simultaneously. All four squared volumes were checked exactly from Cayley–Menger determinants. All 40 squared dihedral cosines from (66)–(69) matched inverse Gram matrices, and all 40 signs matched at the nondegenerate point $(l_1,l_2,m)=(1,2,1.3)$.

Define $\epsilon_{21}=2\pi-\theta^{41}_{21}-2\theta^{32}_{21}-\theta^{23}_{21}$ and its exchanged partner $\epsilon_{12}$. The total action, restricted to the common-cross-edge ansatz, has interior part $30a_{21}\epsilon_{21}+30a_{12}\epsilon_{12}$ and volume $V_{\rm tot}=5V_{41}+10V_{32}+10V_{23}+5V_{14}$, plus the boundary hinge terms. Consequently the unambiguous common-$m$ stationarity condition is

$$
0=30a'_{21}\epsilon_{21}+30a'_{12}\epsilon_{12}
-\Lambda(5V'_{41}+10V'_{32}+10V'_{23}+5V'_{14}),
$$

where primes differentiate the already symmetry-reduced functions. Direct differentiation of the full action, including boundary angles, reproduced Schläfli cancellation at three nondegenerate points to approximately 80 decimal-place absolute residuals.

Equation (70) uses incidence counts $(3,3)$ and $(1,3,3,1)$ appropriate to a **single edge** before imposing the common-length condition. It is valid only if its partial derivatives also retain that single-edge meaning. For reduced derivatives one must divide $a'$ by two, $V'_{41/14}$ by four, and $V'_{32/23}$ by six before applying those counts. Treating the printed derivatives as derivatives of (63)–(65) fails when $\Lambda\ne0$. At $(l_1,l_2,\Lambda)=(1,4,0.1)$, the corrected common-edge equation has a root $m\simeq2.452247967808$; the literal reduced-derivative reading of (70) has residual $-2.476232003841$ there. The numerical implementation used for the paper's figures is absent from the retrieved source archive, so which convention produced those figures is **Blocked**.

The type-symmetric flux constraints are independently consistent. With $q=T^{40}_{41}$, their solution (72) is

$$
T^{31}_{41}=-T^{31}_{32}=(V_{41}-q)/4,\quad
T^{22}_{32}=-T^{22}_{23}=(V_{41}+2V_{32}-q)/6,
$$

$$
T^{13}_{23}=-T^{13}_{14}=(V_{41}+2V_{32}+2V_{23}-q)/4,
\quad T^{04}_{14}=V_{41}+2V_{32}+2V_{23}+V_{14}-q.
$$

All four cell constraints reduce to zero; $\Delta T=V_{\rm tot}$. Without the type-symmetric ansatz, the 30-by-70 interior incidence matrix has rank 29 and a 41-dimensional cycle kernel. Thus uniqueness of these displayed fluxes is an ansatz statement, not uniqueness of arbitrary discrete auxiliary fields.

At $\Lambda=0$, the source's flat geometric branch requires $l_2\ge4l_1$ for $l_2>l_1$, with the mirror branch $l_2\le l_1/4$. The half-angle calculation $\sqrt6/\sin[\arccos(1/4)/2]=4$ checks the degeneracy threshold. An independent point on the expanding branch gives $(l_1,l_2,m)=(1,5,3.065941943351)$ and $\Delta T=14.534441853749$. This is not a proof excluding every other stationary branch. The fixed common-edge ansatz cannot take $l_2\to l_1$ with all cell heights vanishing. Figures 6–9 and the claimed improved fit at positive $\Lambda$ remain source numerical results; the derivative ambiguity prevents their certification here.

# Translation into regional phase space

The reusable data are the oriented interface flux, the constant multiplier, and the local incidence constraints. Before gluing, each region carries an auxiliary potential $\Lambda\delta T$; opposite interface orientation cancels the matching terms. At fixed boundary flux, $\Lambda$ can vary between histories, while the cell equations make it constant inside a connected history. This separates a local matching condition from the choice of boundary polarization.

For current CPS work, this is a finite action-level benchmark for boundary data and additive on-shell volumes. It does not show that matching volume time alone matches all edge geometry, that the metric presymplectic form has no further corner data, or that a quantum amplitude composes with a prescribed measure. Those steps need their own constraints and quotient. Euclidean volume time should not be identified with causal evolution or a Lorentzian Hamiltonian without an additional construction.

## Verification ledger

- **Checked — continuum:** xAct variational residual for $\Lambda\nabla_a u^a$ against $-\nabla_a\Lambda$ is zero, at fixed metric after $T^a=\sqrt{|g|}u^a$. Mathematica verifies the lapse equation, gauge-fixed Euler equation, first integral, volume primitive and flat branch limit. This does not independently verify every tensor component of the FLRW curvature.
- **Checked — discrete structure:** exact Sage cell/hinge counts, four Cayley–Menger volume squares, 40 squared Gram-cosine identities, dual-incidence rank/kernel; 40 signed angle point comparisons; Mathematica checks the flux solution, coarse normalization tables, corrected kinetic coefficient and threshold ratio.
- **Checked — finite numerical scope:** full-action Schläfli residuals at $(1,2,1.3),(1,5,3.1),(2,3,3)$; one flat and one positive-$\Lambda$ corrected stationary point. No exhaustive solution scan was claimed.
- **Failed — local formulas:** printed (51) boundary term sign and (62) missing square. Repairs follow the earlier action/geometry and restore the displayed lower-order coefficients. The literal common-$m$ interpretation of (70) fails; the single-edge interpretation is distinct and must be retained.
- **Blocked — original numerical pipeline:** source archive supplies TeX and images, but no root-finding code or numerical datasets identifying the derivative convention used in Figure 6. Therefore the positive-$\Lambda$ comparison and extrema are not independently certified.
- **Source-derived:** global Regge convergence results cited from prior literature, the paper's numerical curves, and all proposed quantum/Lorentzian extensions.

**Verified:** the explicit local identities and finite benchmarks just listed. **Assumptions:** nondegenerate Euclidean simplices with positive radicands; fixed boundary metric/edge and flux data; smooth globally defined density for Stokes arguments; connected dual graph; $N>0$, $a,l>0$ where volume time is used; common-edge/type symmetry only where stated. **Not verified:** a full continuum convergence theorem, exhaustive stationary branches, quantum measure or boundary Hilbert space, and Lorentzian causal sewing. Retrieval succeeded for both official PDF and TeX; the PDF font warning was handled by TeX and rendered-page inspection. A temporary Mathematica iterator error was corrected; no computation-service blocker remains.
