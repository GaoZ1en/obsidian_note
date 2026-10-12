---
paper id: 2610.04218v1
title: "Higher-form Symmetries of Linearized Gravity in Maximally Symmetric Spaces"
authors:
  - Natsuya Kido
publication date: 2026-10-03T02:17:50Z
abstract: |-
  The paper studies vielbein shifts in linearized gravity, using Palatini variables on Minkowski space and the MacDowell-Mansouri formulation on maximally symmetric backgrounds. It proposes an approximate extension at small cosmological constant. The note separates the directly recoverable flat-space identity from defects in the printed curvature and curved-background arguments.
comments: "21 pages"
url: https://arxiv.org/abs/2610.04218v1
summary: "A useful first-order surface-current construction whose flat-space derivation can be repaired, while the advertised cosmological-constant expansion requires further work."
tags: []
---

# A recoverable flat-space current and an incomplete curved-space extension

On a fixed Minkowski coframe, the quadratic Palatini action admits the transformation

$$
\varepsilon^a\longmapsto\varepsilon^a+\alpha^a,
\qquad d\alpha^a=0,\qquad\delta_\alpha\varpi^{ab}=0,
$$

up to a boundary term. Its useful local object is

$$
K_a=\frac12\epsilon_{abcd}\underline e^b\wedge\varpi^{cd},
\qquad J_a=\star_\eta K_a,
\qquad dK_a=0
$$

on the **contracted linearized Einstein equation**. This result does not require the false assertion that vacuum linearized gravity has zero Riemann curvature. For regional CPS work, $K_a$ supplies a concrete two-form whose conservation, Lorentz-gauge dependence and boundary conditions must be considered separately.

**Status:** completed technical reconstruction of Sections 1–5, with explicit failure boundaries. The flat-space vielbein-shift identity is recoverable. The source's general spin-connection shift claim fails a direct check. Its small-cosmological-constant action-level power counting and claimed higher-order symmetry are not established by the displayed argument. This is a completed critical reading, not acceptance of all source conclusions. Reasons: `T1-symmetry; T1-charge; T2-model`.

The source map and descriptions of the paper’s proposed constructions are **Source-derived**; only the explicitly reproduced identities and counterexamples receive **Checked** status.

## Source structure and dependencies

| Source | Content and dependency |
| --- | --- |
| 1, pp. 2–3 | Maxwell higher-form symmetry motivates treating a gravitational potential as a shifted one-form; quantum interpretation is explicitly deferred. |
| 2.1, p. 4 | Palatini action, tetrad and connection variations, and obstruction to a nonlinear vielbein shift. The implication from vacuum equations to vanishing curvature is incorrect. |
| 2.2, pp. 4–5 | Expansion in $\sqrt G$ and quadratic action (2.2); retain the correct contracted curvature equation and linear torsion equation. |
| 2.3.1–2.3.2, pp. 5–6 | Closed vielbein shift, current $K_a$, and proposed dual vielbein. Conservation survives repair; the global and physical-equivalence claims need qualifications. |
| 3.1, pp. 7–9 | Homogeneous spaces, reductive decompositions and symmetric-pair brackets. |
| 3.2.1–3.2.2, pp. 9–12 | Cartan connection, solder form, local sections, curvature and torsion; distinguishes model-flatness from metric flatness. |
| 4.1.1–4.1.2, pp. 13–16 | (A)dS/Poincaré algebra, MM action (4.2), Euler term and Einstein dynamics. |
| 4.2.1, p. 16 | Two expansions: field amplitude $\sqrt G$ and inverse curvature radius $1/l$. |
| 4.2.2, pp. 17–19 | Linear MM action (4.3), proposed flat/curved shifts and order-dependent extensions. Missing normalized-action terms obstruct the printed proof. |
| 4.2.3, pp. 19–20 | Candidate current and covariant-cohomology argument. A displayed integration-by-parts formula also has a form-degree error. |
| 5, pp. 20–21 | Classical interpretation, translation-sector restriction and proposed quantum continuation. No independent quantum construction. |
| Acknowledgment; references, p. 21 | Provenance and background references; no appendices. |

The technical route is 2.1–2.3 → 4.1.2 → 4.2. Sections 3 and 4.1.1 explain the geometry needed to distinguish $R=0$ from Cartan flatness. The checks below follow that route. Official TeX and all substantive sections were inspected; rendered PDF pp. 5, 19 and 20 confirm the decisive printed equations and defects.

## Fields, two Hodge stars and two expansion parameters

Spacetime is four dimensional, with internal metric $\eta_{ab}=\mathrm{diag}(-,+,+,+)$ and oriented symbol $\epsilon_{0123}=+1$. The coframe $e$ is an invertible map from $TM$ to the Lorentz vector bundle. The connection is metric compatible; it becomes the Levi-Civita connection only after imposing zero torsion. A generic independent spin connection does not already have that property.

| Object | Meaning |
| --- | --- |
| $e^a$, $\omega^{ab}=-\omega^{ba}$ | Independent coframe and Lorentz connection one-forms. |
| $R=d\omega+\frac12[\omega,\omega]$ | Lorentz curvature; components $R^{ab}=d\omega^{ab}+\omega^a{}_c\wedge\omega^{cb}$. |
| $T=de+[\omega,e]$ | Torsion, with $T^a=de^a+\omega^a{}_b\wedge e^b$. |
| $\underline e,\underline\omega$ | Fixed background fields. In Sec. 2, $\underline e^a=dx^a$, $\underline\omega=0$. |
| $\varepsilon,\varpi$ | First perturbations in $e=\underline e+\sqrt G\varepsilon+\cdots$, $\omega=\underline\omega+\sqrt G\varpi+\cdots$. |
| $\star_{\rm int}$ | Hodge operator on internal exterior powers. It commutes with the spacetime exterior derivative. |
| $\star_\eta$ | Spacetime Hodge operator of the fixed Minkowski background; on real two-forms $\star_\eta^2=-1$. |
| $\lambda=+1,-1$; $l>0$ | de Sitter/anti-de Sitter sign and radius, with $\Lambda=3\lambda/l^2$. Minkowski is the contraction limit. |
| $\mathcal A=(\varpi,\varepsilon)$ | Perturbation of the pulled-back Cartan connection; distinguish it from the principal-bundle connection, for which the source reuses a calligraphic symbol. |
| $\widehat F$, $\widehat{\mathcal F}$ | Lorentz projections of full and linear Cartan curvatures. |

The source wedge combines spacetime and internal exterior products. Thus two vector-valued one-forms commute in the combined product: the two antisymmetry signs cancel. The bracket $[\ ,\ ]$ instead combines the spacetime wedge with the Lie bracket. These two operations must not be interchanged when checking coefficients.

All action statements below assume that the displayed total derivative has zero integral or is explicitly retained as boundary data. The paper does not supply a regional boundary action, admissible boundary variations, a charge algebra, or a complete gauge quotient.

## 2.1–2.2: Palatini variation and the curvature equation that must be retained

The source starts from

$$
S[e,\omega]=\frac1{2G}\int_M\star_{\rm int}(e\wedge e\wedge R).
\tag{2.1}
$$

The independent equations are

$$
e\wedge R=0,
\qquad D_\omega(e\wedge e)=0.
$$

In components the first equation is $\epsilon_{abcd}e^b\wedge R^{cd}=0$. For an invertible coframe the second enforces $T^a=0$; the first then enforces vacuum Einstein equations. It does **not** eliminate Weyl curvature.

An explicit linear counterexample makes the distinction independent of notation. With coordinates $(t,x,y,z)$ take

$$
h_{xx}=f(t-z),\qquad h_{yy}=-f(t-z),\qquad h_{\mu\nu}=0\text{ otherwise}.
$$

Using

$$
R^{(1)}_{\mu\nu\rho\sigma}
=\frac12\left(
\partial_\nu\partial_\rho h_{\mu\sigma}
+\partial_\mu\partial_\sigma h_{\nu\rho}
-\partial_\nu\partial_\sigma h_{\mu\rho}
-\partial_\mu\partial_\rho h_{\nu\sigma}
\right),
$$

all sixteen Ricci components vanish, while $R^{(1)}_{txtx}=-f''(t-z)/2$. This is a vacuum perturbation with nonzero curvature whenever $f''\ne0$.

**Failed, source pp. 4–5:** neither $e\wedge R=0\Rightarrow R=0$ nor $\underline e\wedge d\varpi=0\Rightarrow d\varpi=0$ follows from invertibility. The latter implication would remove propagating gravitational waves. The counterexample was independently computed in the xAct/Mathematica runtime.

For the quadratic expansion, write

$$
R=\sqrt G\,d\varpi+G\left(d\varpi'+\frac12[\varpi,\varpi]\right)+O(G^{3/2}).
$$

The order-$G^0$ part of the action is

$$
S_2[\varepsilon,\varpi]
=\int_M\star_{\rm int}\left(
\underline e\wedge\varepsilon\wedge d\varpi
+\frac14\underline e\wedge\underline e\wedge[\varpi,\varpi]
\right).
\tag{2.2}
$$

The background $d\varpi'$ term and lower-order linear term are total derivatives when $d\underline e=0$. In a regional treatment those derivative terms must be tracked before fixing the symplectic potential; discarding them fixes a representative of the action.

A safe derivation of the connection equation expands the **full** Palatini equation:

$$
D_\omega(e\wedge e)
=\sqrt G\left[2d(\underline e\wedge\varepsilon)
+[\varpi,\underline e\wedge\underline e]\right]+O(G).
$$

Thus the linear equations are

$$
\epsilon_{abcd}\underline e^b\wedge d\varpi^{cd}=0,
\qquad d\varepsilon^a+\varpi^a{}_b\wedge\underline e^b=0.
\tag{L}
$$

The intermediate connection equation printed on p. 5 omits the factor two multiplying $d(\underline e\wedge\varepsilon)$ relative to the bracket term, under the source's combined-product convention. Its subsequently stated torsion equation agrees with (L), which is the equation used here. Expansion multiplicities were checked by Mathematica; that scalar coefficient check supplements the displayed graded-product derivation rather than replacing it.

The nonlinear shift discussion also needs care. $e\mapsto e+\alpha$ with $d\alpha=0$ changes both $e\wedge R$ and torsion through connection couplings. This explains why the flat quadratic identity does not automatically extend to full gravity. The source's claim that the shift maps general Einstein solutions to Einstein solutions is not justified by the false $R=0$ premise.

## 2.3: Closed shifts, conserved two-forms and the dual-potential boundary

For fixed $\varpi$ and $d\alpha=0$,

$$
\Delta_\alpha S_2
=\int_M\star_{\rm int}(\underline e\wedge\alpha\wedge d\varpi)
=\int_{\partial M}\star_{\rm int}(\underline e\wedge\alpha\wedge\varpi).
\tag{S}
$$

The equality uses $d\underline e=d\alpha=0$ and the graded Leibniz rule. There is no term quadratic in $\alpha$ because $\varepsilon$ enters (2.2) linearly. The transformation also preserves both equations (L): the curvature equation is unchanged, and torsion changes by $d\alpha=0$. This establishes the restricted classical shift without imposing $d\varpi=0$.

The source rewrites the variation as

$$
\Delta_\alpha S_2=\int_M\alpha^a\wedge d(-K_a),
\qquad K_a=\frac12\epsilon_{abcd}\underline e^b\wedge\varpi^{cd}.
$$

Because $d\underline e=0$,

$$
dK_a=-\frac12\epsilon_{abcd}\underline e^b\wedge d\varpi^{cd}=0
$$

by the first equation (L). With $J_a=\star_\eta K_a$, the paper's equation $d\star_\eta J_a=0$ follows, accounting for $\star_\eta^2=-1$ on two-forms. This is the directly reusable conservation law.

Torsion alone does not establish it. For example, the torsion-free Levi-Civita perturbation of $h_{xx}=f(t)$ with all other components zero has

$$
G^{(1)}_{yy}=G^{(1)}_{zz}=-\frac12f''(t),
$$

with the other components zero in the convention above. This independently checked example rules out deriving $dK=0$ merely from the existence of a torsion-free connection.

Locally on a contractible region, (L) and Poincaré's lemma allow

$$
K_a=d\widetilde\varepsilon_a.
$$

Globally this requires vanishing periods of $K_a$, not only local closedness. On all of smooth $\mathbb R^{3,1}$ the relevant de Rham obstruction vanishes; on punctured regions, excluded sources, nontrivial bundles or boundary-restricted function spaces it need not. In particular, a globally exact $K_a$ integrates to zero on every closed two-cycle where its potential is smooth. Nonzero charges require specifying the global domain, defects, asymptotic conditions or relative cohomology.

The source motivates the dual potential by replacing $\varpi$ with $\star_{\rm int}\varpi$. Internal Hodge duality is invertible algebraically, but that fact alone proves neither an invertible map of global potential spaces nor equality of reduced phase spaces or quantum theories. Gauge identifications and integrability are additional inputs. The interpretation of the graviton as a higher-form Goldstone field remains source motivation, not a checked quantum statement.

## 3: Why Cartan flatness differs from Riemann flatness

A Klein model is $G/H$ with transitive $G$ action and stabilizer $H$. The relevant stabilizer is $H=SO(3,1)$, with

$$
G=ISO(3,1),\quad SO(4,1),\quad SO(3,2)
$$

for Minkowski, de Sitter and anti-de Sitter respectively. A reductive splitting is a splitting of $H$ representations,

$$
\mathfrak g=\mathfrak h\oplus\mathfrak m,
\qquad[\mathfrak h,\mathfrak m]\subset\mathfrak m.
$$

For these symmetric models one also has $[\mathfrak m,\mathfrak m]\subset\mathfrak h$. Reductivity alone does not imply this last relation; the source obtains it using the involution whose eigenspaces are $\mathfrak h$ and $\mathfrak m$. Nor does reductivity make $\mathfrak m$ a Lie subalgebra.

A Cartan connection $\mathcal A$ on a principal $H$ bundle $\mathscr G\to M$ is a $\mathfrak g$-valued one-form that is a linear isomorphism $T_p\mathscr G\to\mathfrak g$, is $H$ equivariant, and returns $X\in\mathfrak h$ on its fundamental vertical vector field. Its $\mathfrak h$ projection is an Ehresmann connection; its $\mathfrak m$ projection is the solder form. Pulling back by a local section gives $(\omega,e)$. A global section is an extra triviality condition, not guaranteed by the local construction.

The Cartan curvature is

$$
F=dA+\frac12[A,A]
=\left(R+\frac12[e,e],\,T\right).
$$

The source's later displayed decomposition temporarily drops the factor $1/2$ in the translation bracket; the component expression below is the consistent normalization. For a homogeneous model the Maurer–Cartan equation says $F=0$. At nonzero cosmological constant that means **constant nonzero Lorentz curvature plus zero torsion**, not zero Riemann curvature. The sentence at the end of the source's Lorentz-geometry curvature example is valid as written only for the Poincaré model.

## 4.1: Algebra, curvature splitting and the normalized MM action

In the source basis,

$$
[M_{ab},P_c]=\eta_{bc}P_a-\eta_{ac}P_b,
\qquad[P_a,P_b]=-\frac{\lambda}{l^2}M_{ab},
$$

with the usual Lorentz bracket

$$
[M_{ab},M_{cd}]
=\eta_{bc}M_{ad}+\eta_{ad}M_{bc}
-\eta_{ac}M_{bd}-\eta_{bd}M_{ac}.
$$

Sage matrix representations for both signs reproduce the translation bracket and all $10^3$ Jacobi triples for each algebra. The contraction $1/l\to0$ makes translations abelian. This is a Lie-algebra statement, not yet a variational symmetry of the gravitational action.

With $A=\frac12\omega^{ab}M_{ab}+e^aP_a$,

$$
\widehat F^{ab}=R^{ab}-\frac{\lambda}{l^2}e^a\wedge e^b,
\qquad T^a=de^a+\omega^a{}_b\wedge e^b.
\tag{C}
$$

The model background satisfies $\underline R^{ab}=\lambda\underline e^a\wedge\underline e^b/l^2$, $\underline T^a=0$. Vacuum fluctuations around it can still carry Weyl curvature.

The source's MM functional is

$$
S_{\rm MM}=-\frac{l^2}{2\lambda G}
\int_M\langle\widehat F,\widehat F\rangle,
\qquad
\langle M_{ab},M_{cd}\rangle=\epsilon_{abcd}.
\tag{4.2}
$$

The pairing includes the spacetime wedge and internal Hodge star. It is Lorentz invariant; the projection and internal star do not automatically give invariance under the whole (A)dS group. Setting $E^{ab}=e^a\wedge e^b$ as a Lorentz-valued two-form, the component-consistent expansion is

$$
S_{\rm MM}
=-\frac{l^2}{2\lambda G}\int\langle R,R\rangle
+\frac1G\int\langle R,E\rangle
-\frac{\lambda}{2Gl^2}\int\langle E,E\rangle.
$$

Its first term is the Euler density; the others give Palatini gravity with cosmological constant in the pairing convention. Varying the Euler term produces a boundary contribution by $D_\omega R=0$. Therefore it does not change bulk equations, but it can change a boundary potential or charge representative. Before taking the flat limit one must subtract or otherwise control this term. The printed parenthetical $l\to0$ for the flat limit on p. 16 is inconsistent with $\Lambda=3\lambda/l^2$; the relevant radius limit is $l\to\infty$.

## 4.2.1–4.2.2: Two expansions and the missing terms in the shift argument

First expand at fixed cosmological constant:

$$
A=\underline A+\sqrt G\,\mathcal A+O(G),
\qquad F=\sqrt G\,\mathcal F+O(G),
\qquad \mathcal F=D_{\underline A}\mathcal A.
$$

Since $\underline F=0$, the quadratic MM action is

$$
S_2=-\frac{l^2}{2\lambda}
\int\langle\widehat{\mathcal F},\widehat{\mathcal F}\rangle.
\tag{4.3}
$$

Writing $\bar D=D_{\underline\omega}$ gives

$$
\widehat{\mathcal F}^{ab}
=\bar D\varpi^{ab}
-\frac{\lambda}{l^2}
\left(\underline e^a\wedge\varepsilon^b
+\varepsilon^a\wedge\underline e^b\right),
\qquad
\mathcal T^a=\bar D\varepsilon^a+\varpi^a{}_b\wedge\underline e^b.
\tag{LC}
$$

Now make a pure vielbein shift $\varepsilon\mapsto\varepsilon+\alpha$, $d\alpha=0$. Define

$$
B^{ab}=\underline e^a\wedge\alpha^b+\alpha^a\wedge\underline e^b.
$$

Then

$$
\Delta\widehat{\mathcal F}=-\frac{\lambda}{l^2}B,
\qquad\Delta\mathcal T=\bar D\alpha=[\underline\omega,\alpha],
$$

and the **full normalized** action variation is

$$
\Delta S_2
=\int\langle\widehat{\mathcal F},B\rangle
-\frac{\lambda}{2l^2}\int\langle B,B\rangle.
\tag{V}
$$

This follows by expanding the square; Mathematica independently reproduced the powers and coefficients. It is the appropriate starting point for any small-curvature approximation.

The source instead counts the Lorentz component of $[\underline e,\alpha]$ as $O(l^{-2})$ in the curvature square and drops it before restoring the overall $l^2$ in (4.3). That operation is not justified: an $O(l^{-2})$ term in the unnormalized square contributes at order one to the action. Its variation formula also replaces $\widehat{\mathcal F}$ by $d\varpi$, omitting the background-connection and vielbein terms present in (LC). Some leading terms become total derivatives in a suitable flat limit, but those cancellations must be demonstrated in (V), with boundary conditions, before assigning an error order.

There is a bounded repair of the **leading local statement**. In a fixed-size patch, choose a family of coframes and connections with smooth flat limit

$$
\underline e^a=dx^a+O(\Lambda),\qquad
\underline\omega^{ab}=O(\Lambda),
$$

and keep fields and derivatives bounded as $\Lambda\to0$. After controlling the Euler boundary term, the leading part of (V) is the boundary variation (S); the remaining local bulk terms are $O(\Lambda)$. This supplies a conditional local approximation. It is not a uniform statement on all of (A)dS, whose curvature radius diverges, nor a proof for arbitrary frame families or growing regions. The source gives neither a uniform norm estimate nor a boundary prescription that establishes such a global result.

### Why the general spin-connection shift does not survive

The boxed flat-space statement in Sec. 4.2.2 extends action invariance to an arbitrary closed $\mathfrak{iso}(3,1)$-valued shift, while admitting that torsion is not preserved. This is inconsistent with the quadratic Palatini action's $\varpi^2$ term. A direct polynomial exterior-algebra check takes $\underline e^a=dx^a$, $\varepsilon=0$ and constant connection components

$$
\varpi^{01}=q\,dx,\qquad\varpi^{02}=s\,dy,
$$

with their antisymmetric partners and all others zero. These one-forms are closed. In the component convention

$$
\mathcal L_2=\frac14\epsilon_{abcd}\underline e^a\wedge\underline e^b
\wedge\varpi^c{}_f\wedge\varpi^{fd},
$$

Sage returns

$$
\mathcal L_2=qs\,dt\wedge dx\wedge dy\wedge dz.
$$

Shifting $q$ at nonzero $s$ changes the action already to first order in the shift. On a periodic flat domain this is not removed by a globally defined boundary term. Torsion is also nonzero: $\mathcal T^1=-q\,dt\wedge dx$, $\mathcal T^2=-s\,dt\wedge dy$. Thus the claimed arbitrary connection shift is **Failed**; the restricted vielbein shift remains valid.

The mismatch in taking the MM flat limit comes from dropping terms in a singularly normalized functional before subtracting the full Euler term. At finite curvature the quadratic expansion of that topological term includes background-curvature contributions. Keeping only $(d\varpi)^2$ is insufficient to justify removing the $\varpi^2$ dynamics that remain in the Palatini limit.

### Higher-order shifts are a source claim, not a derived symmetry here

The source expands $\underline A$, $\mathcal A$ and $\alpha$ in $\sqrt{\lambda\Lambda}\propto l^{-1}$. It argues that at truncation order $n$, the coefficients $\alpha^{(n-1)}$ and $\alpha^{(n)}$ remain allowed because a translation bracket supplies two extra inverse-radius powers. The normalized expression (V) shows why the extra powers cannot simply be counted in the curvature square. Boundary cancellations, background gauge, quadratic shift terms and all retained field coefficients must be controlled together.

**Blocked by a source-level gap:** no complete normalized-action expansion is supplied that proves the advertised all-$n$ rule. The local leading repair above is deliberately narrower and does not establish an order-dependent family of global higher-form symmetries.

## 4.2.3: Current at finite curvature and the cohomology obstruction

The paper again proposes

$$
K_a=\frac12\epsilon_{abcd}\underline e^b\wedge\varpi^{cd},
\qquad J_a=\star_\eta K_a.
$$

A correct ordinary exterior derivative is

$$
dK_a
=\frac12\epsilon_{abcd}
\left(d\underline e^b\wedge\varpi^{cd}
-\underline e^b\wedge d\varpi^{cd}\right).
\tag{D}
$$

Using $d\underline e^b=-\underline\omega^b{}_f\wedge\underline e^f$, the integration-by-parts identity becomes

$$
\frac12\epsilon_{abcd}\underline e^b\wedge d\varpi^{cd}
=d(-K_a)-\frac12\epsilon_{abcd}
\underline\omega^b{}_f\wedge\underline e^f\wedge\varpi^{cd}.
$$

On rendered p. 19, the source's last factor in this remainder is $d\varpi^{cd}$ rather than $\varpi^{cd}$. The former is a four-form, whereas $d(-K_a)$ is a three-form; after multiplication by the outside $\alpha^a$ it would even be a five-form in four dimensions. This is a **Failed printed identity**, repaired by the graded Leibniz rule in (D). Repairing that typo does not fill the independent action-expansion gap.

For the Lorentz-covariant derivative, background torsionlessness gives the useful identity

$$
\bar D K_a=-\frac12\epsilon_{abcd}\underline e^b\wedge\bar D\varpi^{cd}.
$$

The curved linearized Einstein equation from (LC) replaces $\bar D\varpi$ by a contracted expression involving $\Lambda\varepsilon$, so conservation is generally broken at that order. The precise ordinary derivative also contains frame-connection terms. Replacing the background spacetime Hodge star by $\star_\eta$ is valid only to the stated flat-limit order in a specified frame; linearization in $\sqrt G$ alone does not turn a curved background metric into $\eta$.

The source argues that $\bar D^2=0$ through first order in $l^{-1}$ and identifies the resulting cohomology with de Rham cohomology. The actual identity is

$$
\bar D^2V^a=\underline R^a{}_b\wedge V^b,
\qquad\underline R^{ab}=\frac{\lambda}{l^2}\underline e^a\wedge\underline e^b.
$$

xAct reproduced the underlying covariant-derivative commutator as the Riemann action on a vector. Modulo terms of order $l^{-2}$ one may obtain a flat connection in a formal truncated local problem. Even an exactly flat bundle may have nontrivial holonomy; its covariant cohomology need not equal ordinary de Rham cohomology globally. A local covariant Poincaré argument needs a flat trivialization to the retained order. At finite nonzero curvature, the proposed dual equation $\bar D\widetilde\varepsilon=K$ also has a nontrivial integrability condition. No global dual-potential equivalence is established.

## Regional CPS translation and a bounded use of the result

The paper provides a local two-form, not a completed Hamiltonian construction. The direct object to take into a region $\Sigma$ is a candidate surface integral $\int_S K_a$ over a two-surface $S$. Conservation under homological deformation uses the contracted Einstein equation and absence of singularities in the swept region. To interpret this as an observable, fix admissible gauge transformations and boundary conditions.

For example, under a flat-background linear Lorentz gauge transformation $\delta_\chi\varpi^{cd}=-d\chi^{cd}$,

$$
\delta_\chi K_a
=d\left(\frac12\epsilon_{abcd}\underline e^b\chi^{cd}\right).
$$

Thus an integral over a closed smooth surface is insensitive to a globally defined small Lorentz parameter in this linear setting; open surfaces acquire an edge term. This displayed derivation is local and does not settle large transformations, bundle patching or the CPS generator normalization. Similarly, locally exact $\alpha^a=d\beta^a$ is tied to the translation/diffeomorphism gauge sector; classifying a nontrivial global higher-form symmetry requires quotienting those redundancies and specifying allowed non-exact parameters.

The immediate use is therefore a controlled flat-space testbed for three separate questions: a two-form current, the equation that closes it, and its edge/gauge dependence. The cosmological deformation can be revisited by starting with (V) and the corrected derivative (D). There is no basis here for importing the source's all-order shift claim into an AdS regional observable algebra.

## Verification ledger and residual boundaries

| Order | Check | Result and scope |
| --- | --- | --- |
| 2.1–2.2 | Explicit TT wave Ricci/Riemann calculation in xAct/Mathematica runtime | **Checked:** Ricci matrix zero and $R_{txtx}=-f''/2$; **Failed:** curvature-zero implications on pp. 4–5. |
| 2.2 | Coefficient expansion of $e\wedge e\wedge R$ and full connection equation | **Checked:** quadratic coefficients and factor two from the combined wedge; no all-orders expansion asserted. |
| 2.3 | Graded integration by parts and contracted Einstein equation | **Checked:** (S) and $dK=0$; boundary integral retained explicitly. |
| 2.3 | Torsion-free perturbation $h_{xx}=f(t)$ | **Checked:** nonzero Einstein components show torsion alone is insufficient. |
| 3–4.1 | Sage matrix Lie-algebra checks | **Checked:** translation brackets and 1,000 Jacobi triples for each of $SO(4,1)$ and $SO(3,2)$ at unit radius. |
| 4.2.2 | Polynomial exterior algebra for constant closed spin shift | **Checked:** density $qs\,dt\wedge dx\wedge dy\wedge dz$; **Failed:** generic connection-shift invariance. |
| 4.2.2 | Mathematica normalized MM square expansion | **Checked:** $bh-\lambda b^2/(2l^2)$ in scalar bookkeeping, matching (V); no removal of the leading term without integration by parts. |
| 4.2.3 | Rendered formula and form-degree check | **Failed:** printed $d\varpi$ remainder; corrected (D) follows directly from Leibniz. |
| 4.2.3 | xAct covariant commutator | **Checked:** Riemann curvature acts on the vector; exact nilpotence fails at finite curvature in general. |
| Global extension | Boundary conditions, holonomy, gauge quotient, charge brackets and quantum realization | **Not independently verified:** absent from the supplied construction. |

**Verified:** the corrected local flat-space chain, counterexamples to the curvature-zero and general-connection-shift assertions, algebra brackets/Jacobi identities, normalized action power counting, and covariant-curvature obstruction.

**Assumptions:** four dimensions, invertible coframe, $(-+++)$ signature, smooth fields, fixed background for linearization, pure vielbein closed shifts, and explicit treatment or vanishing of boundary terms. The curved leading repair further assumes a bounded patch and a smooth flat-limit gauge family with bounded perturbations and derivatives.

**Not verified:** a global nontrivial higher-form charge group; a canonical or quantum dual-graviton equivalence; a uniform (A)dS error estimate; or the all-$n$ shift rule. The latter is blocked by incomplete normalized-action and boundary data in the source, not by lack of full-text access.

The first xAct setup attempted to use the reserved derivative symbol `PD` in a metric definition and returned `DefMetric::error`; a clean setup using `CD` completed the checks. No unresolved retrieval or CAS execution blocker remains. The source-level failures above remain substantive.

## Sources

Official [abstract and submission history](https://arxiv.org/abs/2610.04218v1) and [TeX source](https://arxiv.org/src/2610.04218v1). The 21-page official PDF was inspected outside the vault; no PDF attachment was created. Publication metadata uses the v1 submission timestamp, while the title page displays October 6, 2026. This note does not treat that title-page date as the official list date.
