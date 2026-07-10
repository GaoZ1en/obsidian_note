---
paper id: 2607.07872v1
title: The Energy-Momentum-News Complex near Future Null Infinity
authors:
  - Jelle Hartong
  - Emil Have
  - Vijay Nenmeli
  - Gerben Oling
publication date: 2026-07-08T19:17
abstract: |-
  The paper solves the three- and four-dimensional vacuum Einstein equations near future null infinity in a Carroll-covariant Bondi--Sachs gauge, treats the boundary shear as an independent source, defines an energy-momentum-news response from a renormalized action, and derives diffeomorphism, Weyl, and anomalous Carroll-boost Ward identities whose projections reproduce the Bondi loss equations.
comments: "203 pages including 5 appendices"
url: https://arxiv.org/abs/2607.07872v1
summary: "A comprehensive Carroll-covariant reference that unifies asymptotic Einstein recursion, null-infinity variational data, the Bondi loss equations, and a boost-anomalous energy-momentum-news complex."
tags: []
---

Back to [[2026_07_10_overview]].

This is the strongest framework paper in today's list. It treats future null infinity as a constrained conformal Carroll manifold, solves the radial vacuum equations in a gauge that keeps Carroll boosts visible, and then shows that the remaining Einstein equations are precisely the temporal and spatial diffeomorphism Ward identities of a boundary response complex. The extra response $S^{\mu\nu}$ is conjugate to the shear $C_{\mu\nu}$; after finite improvements it is one half of the Bondi news. Weyl invariance can be restored, but the Carroll-boost Ward identity carries a local anomaly.

## How to read this long paper

1. Read Sections 2.4--2.5 for the emergence of conformal Carroll data and the shear source.
2. Read Section 3.1--3.6 for the Carroll-covariant Bondi gauge and its residual diffeomorphism, Weyl, and boost transformations.
3. Use Sections 4--5 as the radial-Einstein dictionary; focus first on the recursion degeneracies at $n=0$ and $n=d-1$.
4. Read Section 6.2--6.4 to see why the response is an EMT-news complex rather than an ordinary stress tensor.
5. Read Section 7 together with Appendix D: the appendix is the equation ledger behind the loss-equation matching.
6. Read Section 8 before interpreting the Section 7 currents; only the improved complex is Weyl covariant.
7. Read Section 9 for the variational derivation and the boost anomaly. The action calculation is the independent structural check on the EOM matching.
8. Use Appendix E to translate the Carroll-covariant formulas back to standard Bondi mass and angular-momentum loss.

The complete source map is:

| Source block | Main object | Output used later |
|---|---|---|
| Section 1 | Program and boundary-source proposal | Full construction |
| Section 2 | Penrose boundary and null frame | $(\tau_\mu,h_{\mu\nu},C_{\mu\nu})$ |
| Section 3 | Carroll-covariant Bondi/NU gauges | Residual gauge transformations and hypersurface connection |
| Section 4 | Seven Carroll projections of $R_{MN}=0$ | Radial equations in composite variables |
| Section 5 | Radial recursion and Bianchi reduction | Free data, loss equations, log branch |
| Section 6 | Constrained variations and Ward identities | EMT-news definition and transformation laws |
| Section 7 | Bondi loss as diffeomorphism Ward identities | EOM response complex |
| Section 8 | Finite improvements | Weyl-covariant response complex |
| Section 9 | Cutoff action and counterterms | Renormalized response and boost anomaly |
| Section 10 | Interpretation and open problems | BMS charges, NP dictionary, flat holography |
| Appendix A | Curvature, Lie derivative, spatial-tensor identities | Sign and projection conventions |
| Appendix B | Boundary conformal Carroll geometry | Connection, Weyl and boost variations |
| Appendix C | Complete radial expansions | Coefficient dictionary |
| Appendix D | Detailed EOM expansion | Source-order loss-equation ledger |
| Appendix E | Standard Bondi reduction | Mass and angular-momentum loss |

## Carroll sources, indices, and radial coefficients

The bulk dimension is $d+2$. The cases $d=1$ and $d=2$ are three- and four-dimensional gravity. The boundary Carroll data obey

$$
v^\mu\tau_\mu=-1,
\qquad
h_{\mu\nu}v^\nu=0,
\qquad
\delta^\mu{}_{\nu}
=-v^\mu\tau_\nu+h^{\mu\rho}h_{\rho\nu}.
$$

The basic source set is

$$
(\tau_\mu,h_{\mu\nu},C_{\mu\nu}),
$$

where $C_{\mu\nu}$ is spatial and symmetric trace free. Useful derived tensors are

$$
K_{\mu\nu}=-\frac12\mathcal L_vh_{\mu\nu},
\qquad
K=h^{\mu\nu}K_{\mu\nu},
$$

$$
a_\mu=\mathcal L_v\tau_\mu,
\qquad
F_{\mu\nu}
=2h^\rho{}_{\mu}h^\sigma{}_{\nu}
\partial_{[\rho}\tau_{\sigma]},
$$

and the news

$$
N_{\mu\nu}
=-\left(\mathcal L_v+\frac{1}{d}K\right)C_{\mu\nu}.
\tag{6.38}
$$

For $d=2$, $N_{\mu\nu}=-(\mathcal L_v+K/2)C_{\mu\nu}$. The lower-index news has Weyl weight zero.

The response fields are

$$
(T^\mu,T^{\mu\nu},S^{\mu\nu}),
$$

with momentum density and mixed tensor

$$
P_\kappa=T^{\mu\nu}\tau_\mu h_{\nu\kappa},
\qquad
T^\mu{}_{\nu}=T^\mu\tau_\nu+T^{\mu\rho}h_{\rho\nu}.
$$

The symbol $S$ is overloaded in the source: $S(r,x)=g^{rr}$ is a bulk radial scalar, $S$ also denotes an action, and $S^{\mu\nu}$ is the news response. The index structure must be retained whenever two of them occur in one argument.

The radial convention is

$$
X(r,x)=\sum_n r^{-n}\overset{(n)}X(x).
$$

The radial metric variables are

$$
ds^2=-2e^\beta\tau_\mu drdx^\mu
+\left(-e^{2\beta}S\tau_\mu\tau_\nu
+\Pi_{\mu\nu}\right)dx^\mu dx^\nu.
$$

The equal-$r$ composite objects used to compress the Einstein equations are

$$
\mathcal A_\mu=\mathcal L_UV_\mu,
\qquad
\mathcal K_{\mu\nu}=-\frac12\mathcal L_U\Pi_{\mu\nu},
$$

$$
\mathcal G_{\mu\nu}
=\Pi^\rho{}_{\mu}\Pi^\sigma{}_{\nu}
\left(\partial_r\Pi_{\rho\sigma}-\frac{2}{r}\Pi_{\rho\sigma}\right),
$$

$$
\mathcal Z_\mu
=\Pi_{\mu\nu}\partial_rU^\nu-\mathcal A_\mu,
\qquad
\overline{\mathcal K}=\mathcal K-\frac{d}{2r}S.
$$

They are engineered so that leading powers cancel and the recursive order of each Einstein equation is visible.

## Penrose boundary and the shear source

### From the null frame to Carroll geometry

The paper first calibrates its null frame on Minkowski space in Bondi coordinates,

$$
ds^2=-du^2-2dudr+r^2\gamma_{AB}dx^Adx^B,
$$

then uses $\Omega=1/r$ for the conformal completion. The physical radial null vector is fixed to

$$
V^M\partial_M=-\partial_r.
$$

The leading frame coefficients at $\Omega=0$ give $v^\mu,\tau_\mu,e_a{}^\mu,e^a{}_{\mu}$ and hence the conformal Carroll structure. A leading radial diffeomorphism becomes a boundary Weyl transformation, while a subleading tangential diffeomorphism becomes a Carroll boost.

The residual source transformations are

$$
\delta\tau_\mu
=\mathcal L_\chi\tau_\mu+\Lambda_D\tau_\mu+\lambda_\mu,
$$

$$
\delta h_{\mu\nu}
=\mathcal L_\chi h_{\mu\nu}+2\Lambda_Dh_{\mu\nu}.
$$

Thus $v^\mu$ and $h_{\mu\nu}$ are boost invariant, while the inverse variables transform because a Carroll boost changes the splitting between time and space.

### Leading Einstein constraint and shear

The leading vacuum equations impose

$$
K_{\mu\nu}=\frac{K}{d}h_{\mu\nu}.
\tag{2.74}
$$

This is a constraint on the admissible boundary metric, not a gauge condition chosen after the variation. The spatial STF part of the $O(r)$ metric coefficient defines

$$
C_{\mu\nu}
=h^\rho{}_{\langle\mu}h^\sigma{}_{\nu\rangle}
\overset{(-1)}\Pi_{\rho\sigma}.
$$

Using the leading equations, its boost law becomes

$$
\delta C_{\mu\nu}
=\mathcal L_\chi C_{\mu\nu}
+\Lambda_D C_{\mu\nu}
+h^\rho{}_{\langle\mu}h^\sigma{}_{\nu\rangle}
\mathcal L_\lambda h_{\rho\sigma}
+2\lambda_{\langle\mu}a_{\nu\rangle}.
$$

The crucial conceptual move is to retain $C_{\mu\nu}$ as an independent source even though it is subleading in the radial metric.

## Carroll-covariant Bondi gauge

The gauge supplements $V=-\partial_r$ by

$$
\Gamma^\mu{}_{rr}=0,
\qquad
U_\mu=\frac12SV_\mu,
\qquad
\Gamma^\rho{}_{\rho r}=\frac{d}{r}.
$$

The first condition makes the radial congruence geodesic and gives

$$
V_\mu=e^\beta\tau_\mu.
$$

The second fixes the remaining null rotations. The last is the Bondi determinant condition,

$$
\frac12\Pi^{\mu\nu}\partial_r\Pi_{\mu\nu}=\frac{d}{r},
$$

which removes the spatial trace of the shear coefficient. The alternative Newman--Unti choice sets $\beta=0$ on shell and leaves one radial diffeomorphism unfixed.

The preferred equal-$r$ connection is torsion free and volume-form compatible but not metric compatible. In particular,

$$
\widehat D_\rho U^\mu=-\Pi^{\mu\alpha}\mathcal K_{\alpha\rho},
$$

$$
\widehat D_\rho\Pi_{\mu\nu}
=-2V_{(\mu}\mathcal K_{\nu)\rho},
$$

$$
\widehat D_\rho V_\mu
=\frac12\mathcal F_{\rho\mu}-V_\rho\mathcal A_\mu.
$$

The shifted curvature $Q_{\mu\nu\rho\sigma}$ restores the algebraic symmetries of a Riemann tensor. In $d=2$ its fully spatial part has only one scalar $\mathcal Q$.

Reduction to standard Bondi gauge is obtained by choosing

$$
v=-\partial_u,
\qquad
\tau=du,
$$

so $a_\mu=0$ and the remaining boundary metric is conformally related to a time-independent cut metric. Further fixing recovers extended BMS transformations.

## Radial Einstein hierarchy

### Seven projections

The vacuum equations are decomposed into

$$
R_{rr},\quad U^\mu R_{\mu r},\quad
\Pi^\mu{}_{\kappa}R_{\mu r},
$$

$$
\Pi^{\mu\nu}R_{\mu\nu},\quad
\Pi^\mu{}_{\langle\kappa}
\Pi^\nu{}_{\lambda\rangle}R_{\mu\nu},
$$

$$
\Pi^\mu{}_{\kappa}U^\nu R_{\mu\nu},
\qquad
U^\mu U^\nu R_{\mu\nu}.
$$

The $rr$ equation is particularly transparent:

$$
0=R_{rr}
=\frac{d}{r}\partial_r\beta
+\frac14\mathcal F^2-\frac14\mathcal G^2.
\tag{4.9}
$$

It gives $\overset{(1)}\beta=0$, and in four bulk dimensions

$$
\overset{(2)}\beta
=\frac{1}{16}(F^2-C^2).
$$

The latter coefficient was independently derived by expanding Eq. (4.9) to $r^{-4}$.

The radial scalar and mixed equations determine most coefficients algebraically. At order $r^{-n-2}$ their characteristic factors include

$$
n(d-1-n),
$$

so the recursion degenerates at $n=0$ and $n=d-1$. These degenerate orders carry the mass and angular-momentum data. The spatial STF equation instead evolves the cut metric data along $v^\mu$ and therefore requires a full radial profile on one cut.

### Four-dimensional asymptotic data

In $d=2$, the first unconstrained STF coefficient is $D_{\mu\nu}$,

$$
D_{\mu\nu}
=h^\rho{}_{\mu}h^\sigma{}_{\nu}
\left(\overset{(0)}\Pi_{\rho\sigma}
-\frac14C^2h_{\rho\sigma}\right)
-\frac12F_{\mu\rho}C^\rho{}_{\nu}.
$$

Without logarithms it obeys

$$
\mathcal L_vD_{\mu\nu}=0,
\qquad
h^{\mu\nu}\mathcal D_\mu D_{\nu\kappa}=0.
$$

A specified $r^{-1}\log r$ branch removes the spatial-divergence constraint but retains $\mathcal L_vD_{\mu\nu}=0$. It is a controlled polyhomogeneous extension, not a theorem covering all possible logarithmic branches.

### Bianchi reduction

The contracted Bianchi identities show that all but two remaining Einstein equations propagate once the radial equations hold. The independent coefficients are

$$
\left.U^\mu U^\nu R_{\mu\nu}\right|_{r^{-d}}=0,
\qquad
\left.\Pi^\mu{}_{\kappa}U^\nu R_{\mu\nu}\right|_{r^{-d}}=0.
$$

They become the energy and momentum loss equations and later match the temporal and spatial diffeomorphism Ward identities.

## Constrained boundary variation and the EMT-news complex

### Local solution of the boundary constraint

For $d=2$, the pure-trace condition on $K_{\mu\nu}$ can be solved locally with isothermal cut coordinates $X^a$:

$$
h_{\mu\nu}dx^\mu dx^\nu
=e^{2\varphi}\left[(dX^1)^2+(dX^2)^2\right],
$$

$$
\mathcal L_vX^a=0,
\qquad
K=-2\mathcal L_v\varphi.
$$

This construction uses a local spatial frame, a local $SO(2)$ rotation, Frobenius integrability, and local isothermal coordinates. It does not establish a global chart on an arbitrary cut.

The on-shell variation is

$$
\delta S
=\int d^3x\,e\left(
T^\mu\delta\tau_\mu
+\frac12T^{\mu\nu}\delta h_{\mu\nu}
+\frac12S^{\mu\nu}\delta C_{\mu\nu}
\right).
\tag{6.1}
$$

Because $C_{\mu\nu}$ is spatial and STF, only the spatial STF part of $S^{\mu\nu}$ is an independent response.

### Stress ambiguity on the constraint surface

Constraint-preserving metric variations do not see every component of $T^{\mu\nu}$. The invisible improvement is parameterized by a spatial STF tensor $Y^{\mu\nu}$:

$$
t^{\mu\nu}
=\mathcal D_\rho
\left(
v^\rho Y^{\mu\nu}
-v^\mu Y^{\nu\rho}
-v^\nu Y^{\mu\rho}
\right)
-KY^{\mu\nu}.
\tag{6.18}
$$

Equivalently, it is the response of the Lagrange-multiplier term

$$
\frac12\int e\,\zeta^{\mu\nu}K_{\langle\mu\nu\rangle},
\qquad
Y^{\mu\nu}=\frac12\zeta^{\mu\nu}.
$$

This ambiguity changes the representative of the momentum/stress response but not the Ward identities, because the constraint term is invariant under the boundary symmetries.

### Three Ward identities

Weyl invariance gives

$$
T^\mu\tau_\mu
+T^{\mu\nu}h_{\mu\nu}
+\frac12S^{\mu\nu}C_{\mu\nu}=0.
\tag{6.27}
$$

Before the anomaly is included, Carroll boosts give

$$
h^\mu{}_{\rho}T^\rho
-(\mathcal D_\rho-a_\rho)S^{\rho\mu}=0.
\tag{6.29}
$$

Boundary diffeomorphisms give a single mixed-index identity whose temporal and spatial projections contain the energy and momentum equations. The shear response enters through both $S^{\mu\nu}N_{\mu\nu}$ and derivatives of $S^{\mu\nu}$.

If the boost variation of the action is

$$
\delta_\lambda S
=\int e\,\mathcal A_B^\mu\lambda_\mu,
$$

then the boost identity becomes

$$
h^\mu{}_{\rho}T^\rho
-(\mathcal D_\rho-a_\rho)S^{\rho\mu}
=\mathcal A_B^\mu.
$$

The response weights after Weyl improvement are

$$
w(T^\mu,T^{\mu\nu},S^{\mu\nu})=(-4,-5,-4).
$$

## Bondi loss as the diffeomorphism Ward identity

### Three-dimensional bulk

In $d=1$, the two loss equations identify the energy density, flux, pressure, and momentum density with the $r^0$ and $r^{-1}$ radial coefficients. The raw EOM response does not yet satisfy the Weyl or boost identities. A finite improvement restores the Weyl identity; the remaining flux is the three-dimensional boost anomaly.

### Simplified four-dimensional geometry

For $d\tau=0$,

$$
a_\mu=0,
\qquad
F_{\mu\nu}=0,
$$

while $K$ may remain nonzero. The mass equation can then be rearranged into the temporal Ward identity, and the angular-momentum equation into the spatial Ward identity. The news response is

$$
S^{\mu\nu}=\frac12N^{\mu\nu}.
$$

The key two-dimensional identity for spatial STF tensors $C$ and $N$ is

$$
C^\mu{}_{\rho}N^{\rho}{}_{\nu}
+N^\mu{}_{\rho}C^{\rho}{}_{\nu}
=(C\cdot N)h^\mu{}_{\nu}.
$$

This identity was independently reproduced with general $2\times2$ symmetric trace-free matrices.

### General four-dimensional geometry

The angular-momentum equation is organized into six blocks: radial-response data, $D_{\mu\nu}$, the scalar $\overset{(0)}S$, the mixed coefficient $\overset{(1)}{\mathcal Z}_\mu$, the STF extrinsic-curvature coefficients, and pure/mixed $C$--$F$ terms. The mass equation uses the same ansatz for $S^{\mu\nu}$ and a lower-order momentum equation as a boundary Bianchi identity.

The two decompositions contain ambiguities $b_1$ and $b_2$. Their difference is proportional to five independent structures. Solving all five coefficient equations gives uniquely

$$
b_1=-\frac14,
\qquad
b_2=-\frac12.
$$

This overdetermined linear system was independently solved in Mathematica.

The EOM news response is then

$$
S_{\mathrm{EOM}}^{\mu\nu}
=\overset{(-1)}{\mathcal K}{}^{T\mu\nu}
=\frac12N^{\mu\nu}
-\frac14KC^{\mu\nu}+A^{\mu\nu},
$$

where

$$
A_{\mu\nu}
=h^\rho{}_{\langle\mu}h^\sigma{}_{\nu\rangle}
(\mathcal D_\rho a_\sigma+a_\rho a_\sigma).
$$

This is not yet the final response: the $KC$ and $A$ terms are removed by finite improvement.

The logarithmic branch modifies the allowed $D_{\mu\nu}$ data but contributes only through the stress ambiguity $t^{\mu\nu}$. Under the paper's lower-order EOM and constraint-preserving variations, the final loss equations and EMT-news complex are unchanged.

## Weyl improvement and the news response

The unimproved four-dimensional trace is

$$
T^\mu\tau_\mu
+T^{\mu\nu}h_{\mu\nu}
+\frac12S^{\mu\nu}C_{\mu\nu}
=\frac14C\cdot N
+\frac12\mathcal D_\rho\mathcal D_\sigma C^{\rho\sigma}
+\frac18KF^2
-\frac18\mathcal L_vF^2.
$$

The relevant finite functional is

$$
I_{\mathrm{imp}}
=\int e\left(
a_1KC^2
+a_2C^{\mu\nu}a_\mu a_\nu
+a_3C^{\mu\nu}\mathcal D_\mu a_\nu
+a_4KF^2
\right).
$$

Requiring the news response to contain no extra $a^{\langle\mu}a^{\nu\rangle}$ term sets $a_2=a_3$. Vanishing of the four independent trace structures gives

$$
a_1=\frac{1}{16},
\qquad
a_2=a_3=-\frac12,
\qquad
a_4=\frac{1}{16}.
$$

The coefficient system for $(a_1,a_2,a_4)$ was independently solved in Mathematica. The improved news response is

$$
S_W^{\mu\nu}=\frac12N^{\mu\nu}.
$$

The energy density, flux, momentum density, stress trace, and STF stress are then written in Weyl-covariant combinations of $C,N,F,a,K,D$ and the radial mass/angular data. The momentum and STF stress remain defined only modulo the $t^{\mu\nu}$ ambiguity. With logarithms, $\zeta^{\mu\nu}$ must transform inhomogeneously to keep the representative Weyl covariant.

## Renormalized action at future null infinity

### Cutoff variation

The action starts from Einstein--Hilbert plus a generalized Gibbons--Hawking--York term adapted to a cutoff of arbitrary signature. Cancellation of normal derivatives of $\delta g$ fixes its coefficient to $2$. A norm counterterm cancels the variation of $ES$ and fixes its coefficient to $1$. A further finite norm term is required for the Weyl-improved response.

The calculation is deliberately performed in the order

$$
\text{vary at finite }r
\longrightarrow
\text{impose gauge-preserving variations}
\longrightarrow
\text{put the solution on shell}
\longrightarrow
r\to\infty.
$$

This is appropriate for a leaky boundary at $\mathcal I^+$, where the shear source allows symplectic flux.

### Three-dimensional response and anomaly

For $d=1$, the finite response already matches the EOM complex. The finite functional proportional to $a^2$ restores the Weyl identity. The remaining anomaly is

$$
\mathcal A_B^\mu
=v^\rho h^{\mu\sigma}
(\partial_\rho\widetilde b_\sigma-partial_\sigma\widetilde b_\rho),
$$

with Weyl connection

$$
\widetilde b_\mu=a_\mu+K\tau_\mu.
$$

The source relates it to the $c_M$ central extension of BMS$_3$.

### Four-dimensional counterterms

The raw $d=2$ variation diverges linearly. Its shear-dependent overleading term is exactly a constraint response with $\zeta^{\mu\nu}=-2C^{\mu\nu}$ and therefore integrates to a boundary total derivative for allowed variations. The remaining divergence is removed by an intrinsic curvature counterterm.

The final counterterm combination can be written as

$$
S'_{\mathrm{norm}}
=\int_\Sigma\sqrt{-g}\,N^2\nabla_MV^M,
$$

$$
S'_{\mathrm{int}}
=-\int_{r=\Lambda}Er
\left(\mathcal Q+\frac14S\mathcal F^2\right).
$$

The finite response to $\delta C_{\mu\nu}$ is

$$
S_{\mathrm{ren}}^{\mu\nu}
=-\frac12h^{\mu\rho}h^{\nu\sigma}
\left(\mathcal L_v+\frac12K\right)C_{\rho\sigma}
=\frac12N^{\mu\nu}.
$$

The renormalized-action response matches the Weyl-improved EOM complex. This agreement is the paper's strongest internal consistency check.

### Carroll-boost anomaly

The four-dimensional anomaly may be written as

$$
\begin{aligned}
\mathcal A_B^\mu={}&
\frac12h^{\mu\nu}(\partial_\nu+2a_\nu)
(\overset{(0)}S-a^2)
+h^\mu{}_{\rho}(\mathcal L_v-\tfrac32K)
\overset{(0)}P{}^\rho\\
&-\frac12(d\widetilde b)_{v\sigma}
(C^{\sigma\mu}-F^{\sigma\mu}).
\end{aligned}
$$

The local third-derivative scalar counterterms classified in the paper all contain $K$, whereas the anomaly has pieces independent of $K$. Under that classification, the anomaly cannot be removed even if Weyl invariance is relaxed while diffeomorphism invariance is retained.

The boost variation of the anomaly is bilinear in the boost parameter and a spatial STF tensor. Its antisymmetrized Wess--Zumino contraction vanishes because a symmetric matrix defines a symmetric bilinear form; this finite-dimensional algebraic part was independently checked. The full covariant Wess--Zumino calculation, including field-dependent parameter transformations, was not reproduced.

## Standard Bondi mass and angular-momentum loss

Appendix E fixes

$$
\tau=du,
\qquad
v=-\partial_u,
\qquad
h_{AB}=\gamma_{AB}(x),
\qquad
a_\mu=K=F_{\mu\nu}=0.
$$

The news convention becomes $N_{AB}=+\partial_uC_{AB}$. The boost anomaly determines the spatial energy flux,

$$
T_W^A=\frac14D^AR[\gamma]+D_BN^{BA}.
$$

With mass aspect $M=-\overset{(1)}S/2$, the temporal Ward identity gives

$$
\partial_uM
=\frac14D^AD^BN_{AB}
+\frac18D^2R[\gamma]
-\frac18N^{AB}N_{AB}.
$$

The spatial Ward identity similarly reproduces the standard angular-momentum loss equation after identifying the radial shift coefficient with the Bondi angular-momentum aspect $N_A$. The sign is tied to $v=-\partial_u$ and the paper's positive $N_{AB}=\partial_uC_{AB}$ convention.

## Dictionary to local boundary, CPS, and charge work

| Paper object | Local use | Qualification |
|---|---|---|
| $(\tau_\mu,h_{\mu\nu})$ | Conformal Carroll boundary source | Restricted by $K^T_{\mu\nu}=0$ |
| $C_{\mu\nu}$ | Independent radiative/shear source | Subleading in the metric but varied independently |
| $S_W^{\mu\nu}=N^{\mu\nu}/2$ | Response conjugate to shear | Normalization omits restored $16\pi G$ factor |
| $T^\mu,T^{\mu\nu}$ | Energy current and stress/momentum response | Stress has constraint improvement ambiguity |
| Temporal diffeo Ward identity | Bondi mass loss | Uses radial EOM and Bianchi identities |
| Spatial diffeo Ward identity | Angular-momentum loss | Representative depends on $t^{\mu\nu}$ |
| $\mathcal A_B^\mu$ | Carroll-boost anomaly | Not removable within classified local counterterms |
| $D_{\mu\nu}$ | Non-radiative STF integration data | Divergence constraint changes with logs |
| Finite counterterms | Boundary improvement choice | Do not change diffeomorphism Ward identities |

For vault CPS work, the important source/response statement is

$$
\delta S_{\mathrm{ren}}|_{\mathcal I^+}
=\int e\left(
T_W^\mu\delta\tau_\mu
+\frac12T_W^{\mu\nu}\delta h_{\mu\nu}
+\frac14N^{\mu\nu}\delta C_{\mu\nu}
\right),
$$

up to the paper's suppressed overall gravitational normalization. This makes the news part of the boundary canonical response rather than merely a flux inserted after the fact.

## Verification log

### Checked

- Mathematica expanded $R_{rr}=d\partial_r\beta/r+(\mathcal F^2-\mathcal G^2)/4$ through $r^{-4}$ and reproduced $\overset{(2)}\beta=(F^2-C^2)/(8d)$, hence $(F^2-C^2)/16$ for $d=2$.
- General $2\times2$ symmetric trace-free matrices satisfy $C^2=(C\cdot C)I/2$ and $CN+NC=(C\cdot N)I$; both matrix residuals vanish. This reproduces the algebra used in the four-dimensional loss equations.
- The five matching equations in Eq. (7.83) form an overdetermined consistent system with the unique solution $b_1=-1/4$, $b_2=-1/2$.
- The four independent Weyl-trace coefficients in Section 8 give $a_1=1/16$, $a_2=-1/2$, and $a_4=1/16$; Mathematica reproduced the unique solution. The source condition $a_2=a_3$ then gives $a_3=-1/2$.
- The antisymmetrized finite-dimensional contraction $\lambda_1^TM\lambda_2-\lambda_2^TM\lambda_1$ vanishes for symmetric $M$, checking the algebraic core of the displayed boost-anomaly Wess--Zumino argument.

### Blocked

- A source-order xAct reproduction of Sections 2--9 is blocked at the geometric setup: the paper uses a degenerate Carroll metric and a custom torsion-free but non-metric-compatible connection, whereas the available xAct metric pipeline assumes a nondegenerate metric-compatible Levi-Civita connection unless the full custom bundle and projection algebra are implemented first. No such implementation accompanies the source.
- The full radial expansion has hundreds of interdependent coefficient definitions. The scalar $R_{rr}$ and two-dimensional STF reductions were checked, but the remaining Appendix D ledger was not independently reproduced without a faithful implementation of the custom connection and gauge constraints.
- The action variation fixes $V^M,N_M$ and then restricts to Bondi-gauge-preserving metric variations. A generic Einstein--Hilbert/GHY variation is not an equivalent check unless those constrained variations are encoded.
- Total-derivative removals assume compact cuts, suitable falloff, or omission of the corners of $\mathcal I^+$. Section 9 does not close a variational principle including those corners.
- The local solution of $K_{\langle\mu\nu\rangle}=0$ does not address global frames, isothermal charts, or cut topology.
- The no-go classification for the boost anomaly is conditional on local, diffeomorphism-covariant, parity-even counterterms at the specified derivative order. Parity-odd terms, extra boundary structure, and corner functionals were not classified.
- The claim that logarithms do not alter the complex uses lower-order EOM, $\mathcal L_vD_{\mu\nu}=0$, and the constraint-response ambiguity; it is not an off-shell statement.
- The overall $1/(16\pi G)$ normalization is suppressed and must be restored before comparing the response with physical BMS charges.
- The full covariant Wess--Zumino closure, including the field-dependent Carroll-boost parameter and all response transformations, remains source-derived rather than independently reproduced.

### Failed

- Two simplified-loss formulas print $\mathcal D_\mu\mathcal D_\mu C^{\mu\nu}$, with $\mu$ occurring three times. The derivation and index consistency require $\mathcal D_\mu\mathcal D_\nu C^{\mu\nu}$.
- The Section 6.6 integration-by-parts line has the wrong sign for the $T^{\mu\nu}\delta\delta_gh_{\mu\nu}$ term, and its next line assigns $\Lambda_D\delta h_{\mu\nu}$ where the source transformation requires $2\Lambda_D\delta h_{\mu\nu}$. The final response weights are consistent with the corrected factors, not with those intermediate lines.
- The first expression in `eq:UPiREMTNewsComplex-part1` conflicts free and dummy indices in $P_\kappa$; the projected $\mathcal Z$ index must be renamed.
- `eq:finitevard=2order1` pairs the news response with $\delta h_{\mu\nu}$, but the surrounding finite-variation decomposition and the definition of the independent shear source require $\delta C_{\mu\nu}$.
- `eq:hol-ren-d=2-news-ren-to-news-eom` writes $S_{\mathrm{ren}}^{\prime\mu\nu}=N_{\mu\nu}/2$ with inconsistent index positions; the derivation gives $N^{\mu\nu}/2$.

The section tree and equation locations were checked against the TeX source. The contents and numbering of the phase-space, loss-equation, and action pages were also compared with rendered PDF pages. Those source inspections are not counted as independent mathematical checks.
