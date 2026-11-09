---
paper id: 2611.02655v1
title: No smooth real instanton saddles in self-dual Yang-Mills on AdS4
authors:
  - Bayram Tekin
publication date: 2026-11-02T07:15:43
abstract: |-
  The source retains the auxiliary-field boundary equation in the first-order self-dual Yang-Mills limit on Euclidean AdS4. It proves a conditional no-go theorem for smooth real non-flat connections and reconstructs the surface contribution missing from older vortex-flux calculations of restricted instanton charge. Complex saddles and singular field-space limits remain open.
comments: "20 pages, 2 figures"
url: https://arxiv.org/abs/2611.02655v1
summary: "Eliminating an auxiliary field before a singular coupling limit can lose the boundary equation that decides whether a self-dual solution is a saddle."
tags: []
---

# The Boundary Equation That Survives the Self-Dual Limit

**Correct under the following precise conditions:** for a compact gauge group with positive invariant inner product, a real connection $A$, a possibly complex anti-self-dual field $B$, both smooth on the closed conformal ball, fixed nonzero $g_+^{-2}$, free boundary connection and no added boundary functional/source, the source's first-order boundary problem has only the gauge orbit of $(A,B)=(0,0)$. This does not exclude non-flat self-dual connections with different boundary data, complex connections, nonsmooth configurations, or nonperturbative effects.

Immediate use: compare action representatives and their boundary variations before reducing a theory, taking a chiral/degenerate limit, or declaring a bulk solution a saddle. This is a concrete AdS gauge-theory counterpart of retaining boundary data before a CPS or regional reduction.

All general source claims below are **Source-derived** unless independently labelled **Checked**. The complete pinned TeX and all 20 PDF pages were inspected through source/text navigation; PDF pages 6, 8, 10, 14 and 18 were rendered and visually checked for the action variation, theorem, corrected charge and appendix normalization.

## Full Source Tree and Reading Order

| Source cluster | Definitions, main step and dependency |
|---|---|
| 1 | Separates self-duality from stationarity of an action with a varying boundary connection. |
| 2.1 | Flat conformal ball, smoothness, compact Lie algebra, Hodge dual and Pontryagin conventions. |
| 2.2 | Two chiral couplings and an auxiliary anti-self-dual field; finite-coupling square completion. |
| 2.3 | Bulk and boundary equations from the same regulated action. Essential first step. |
| 2.4 | Singular limit of the eliminated boundary equation versus the surviving first-order equation. |
| 3.1 | Pairing a self-dual deformation with $B$ forces stationarity of $Q$. |
| 3.2 | Dilation, positivity, boundary unique continuation, and vanishing of $B$. |
| 4.1 | SO(3) reduction to Abelian vortices on a hyperbolic half-disk. |
| 4.2 | One-vortex solution identified with a restricted BPST field, including gauge regularity at the axis. |
| 4.3 | Corrected charge, arbitrary center/size, limits and nonstationary half-charge example. |
| 4.4 | Higher-power family with charge $(n-1)/2$. |
| 5.1–5.2 | Different boundary ensembles, vanishing topological coupling, complex fields and path-integral limits. |
| 6 | Conditional conclusion. |
| A | Four-dimensional curvature reduction, pointwise vortex identity and missing boundary term. |

For current use, read 2.2–3.2 first, then 4.3/A for the explicit charge audit. The general no-go proof does not depend on the vortex ansatz or the correction to the older paper.

## Conformal Compactification and Conventions

Euclidean AdS4 is the open unit ball $\mathbb B$, $r=|y|<1$, with

$$\begin{align}
g_{\mu\nu}=\Omega^2\delta_{\mu\nu},\qquad \Omega=\frac{2\ell}{1-r^2},\qquad s(r)=\ell\log\frac{1+r}{1-r}.
\end{align}$$

The sphere $S^3$ is at infinite proper distance. It is a conformal boundary, not a finite-radius physical wall. Smoothness means that the **lower Cartesian components** $A_\mu,B_{\mu\nu}$ extend smoothly to $\overline{\mathbb B}$ in a suitable gauge, with conformal weight zero. Finite action alone is weaker.

For SU(2), $T_a=-i\sigma_a/2$, $[T_a,T_b]=\epsilon_{abc}T_c$, $\operatorname{tr}T_aT_b=-\delta_{ab}/2$. The general compact algebra uses a positive invariant pairing with real totally antisymmetric $f_{abc}$. A real connection has real components $A^a_\mu$ in this basis, despite anti-Hermitian generators. Set

$$\begin{align}
F^a_{\mu\nu}=\partial_\mu A^a_\nu-\partial_\nu A^a_\mu +f_{abc}A^b_\mu A^c_\nu,\qquad (\star F)_{\mu\nu}=\tfrac12\epsilon_{\mu\nu\rho\sigma}F^{\rho\sigma}, \qquad\tilde\epsilon_{1234}=1.
\end{align}$$

The Hodge star acts on spacetime indices; $D$ also contains the gauge connection and, in curvilinear coordinates, the Levi-Civita connection. The bilinear pairing $X\cdot Y=X^a_{\mu\nu}Y^{a\mu\nu}$ contains no complex conjugation.

**Checked with xAct:** Euclidean $\star^2=1$ on two-forms and $F^+\cdot B^-=0$, including complex components. Positive norms require an explicit conjugation when $B$ is complex.

All two-form bulk action terms are conformally invariant in four dimensions: $\sqrt g\sim\Omega^4$, two raised indices contribute $\Omega^{-4}$, and $\star_g=\star_0$ on two-forms. At cutoff $r=R<1$, the boundary factor is

$$\begin{align}
d\Sigma_g\,n^{(g)}_\mu X^{\mu\nu}_{(g)} =\Omega^3d\Sigma\,\Omega n_\mu\,\Omega^{-4}X^{\mu\nu}_{(0)} =d\Sigma\,n_\mu X^{\mu\nu}_{(0)}.
\end{align}$$

Keep all three factors before $R\to1^-$. Looking at the normal alone would incorrectly erase a finite boundary equation.

## Two Chiral Couplings and the Independent Multiplier

The theta normalization is

$$\begin{align}
Q[A]=\frac1{32\pi^2}\int\sqrt g\,F\cdot\star F, \qquad S_{YM,\theta}=\frac1{4g^2}\int\sqrt g\,F\cdot F-i\theta Q,
\end{align}$$

$$\begin{align}
F^\pm=\tfrac12(F\pm\star F),\qquad \frac1{g_\pm^2}=\frac1{g^2}\mp\frac{i\theta}{8\pi^2}.
\end{align}$$

The limit $g_-\to0$ at fixed $g_+$ is an analytic continuation in coupling space; it cannot be taken at fixed real theta and real ordinary Yang-Mills coupling. Define $\varepsilon^{-1}=g_+^{-2}+g_-^{-2}$ and impose $\star B=-B$ as the field space of the multiplier. The finite-coupling first-order action is

$$\begin{align}
S_\varepsilon[A,B]=\int\sqrt g\left[ B\cdot F^- -\varepsilon B\cdot B +\frac1{4g_+^2}F\cdot\star F\right].
\end{align}$$

Completing the square gives $B=F^-/(2\varepsilon)$. Only for nonzero $\varepsilon$ can one eliminate it in that way. Gaussian integration also needs an appropriate contour; equivalence of nonperturbative integration cycles is not established by the algebraic completion.

## Regulated Variation and the Surviving Boundary Condition

For $a_\mu=\delta A_\mu$, $\delta F_{\mu\nu}=D_\mu a_\nu-D_\nu a_\mu$. Antisymmetry and the orthogonality of duality sectors give

$$\begin{align}
\delta_A(B\cdot F^-)=2B^{a\mu\nu}(D_\mu a_\nu)^a, \qquad \delta(F\cdot\star F)=4(\star F)^{a\mu\nu}(D_\mu a_\nu)^a.
\end{align}$$

The second expression is a total divergence by the Bianchi identity. On $M_R=\{r\le R\}$,

$$\begin{aligned}
\delta S_{\varepsilon,R}={}&\int_{M_R}\sqrt g\left[ (F^- -2\varepsilon B)^{a\mu\nu}\delta B^a_{\mu\nu} -2(D_\mu B^{\mu\nu})^aa^a_\nu\right]\\
&+2\int_{S_R}d\Sigma_g\,n^{(g)}_\mu \left[B^{a\mu\nu}+\frac1{2g_+^2}(\star F)^{a\mu\nu}\right]a^a_\nu.
\end{aligned}$$

The surface term fixes the boundary equation after $R\to1^-$, because the tangential boundary variation is free. In the flat conformal frame the complete limiting problem is

$$\begin{align}
F=\star F,\qquad \star B=-B,\qquad D_\mu B^{\mu\nu}=0,\qquad n_\mu(B^{\mu\nu}+cF^{\mu\nu})\big|_{S^3}=0, \quad c=\frac1{2g_+^2}\ne0.
\end{align}$$

There are three independent boundary equations per Lie-algebra generator. In axes with outward normal $\partial_1$, they say $B_{1i}=-cF_{1i}$; self/anti-self-duality then gives the tangential relation $B_{jk}=cF_{jk}$.

At finite coupling the same equation, after elimination of $B$, reads

$$\begin{align}
n_\mu(g_-^2F^{+\mu\nu}+g_+^2F^{-\mu\nu})=0.
\end{align}$$

Multiplying by couplings and then setting $g_-=0$ makes it vacuous for self-dual $F$; that operation has discarded information held in the independent finite $B$. It does not authorize dropping the first-order boundary equation.

At generic finite couplings with nonreal ratio $g_+^2/g_-^2$, reality forces normal contractions of $F^+$ and $F^-$ to vanish separately. Their sum and dual imply all boundary components of $F$ vanish. The same unique-continuation argument below then excludes a smooth real nonflat Yang-Mills solution at those couplings. This is separate from simply substituting the singular limit into the eliminated boundary equation.

## Stationarity of the Pontryagin Charge

Let $A(s)$ be any smooth self-dual family, with tangent $a$. Then $\delta F$ is self-dual. Define $J^\mu=B^{a\mu\nu}a^a_\nu$. Invariance of the color pairing, $D_\mu B^{\mu\nu}=0$, and anti-self-duality give

$$\begin{align}
\nabla_\mu J^\mu =(D_\mu B^{\mu\nu})^aa^a_\nu+\tfrac12B\cdot\delta F=0.
\end{align}$$

Gauss's theorem and the boundary equation yield

$$\begin{align}
0=\oint n_\mu B^{a\mu\nu}a^a_\nu =-c\oint n_\mu(\star F)^{a\mu\nu}a^a_\nu.
\end{align}$$

On the other hand, the same variation gives

$$\begin{align}
\frac{dQ}{ds}=\frac1{8\pi^2}
 \oint n_\mu(\star F)^{a\mu\nu}a^a_\nu=0.
\end{align}$$

This part of the argument allows complex $A$ as well as complex $B$; no positivity has yet been used. It is a necessary condition on every $B$ that could complete $A$, rather than a test of the special choice $B=0$.

## Dilation, Positivity and Boundary Unique Continuation

For $0<\lambda\le1$, set

$$\begin{align}
(A_\lambda)_\mu(y)=\lambda A_\mu(\lambda y),\qquad (F_\lambda)_{\mu\nu}(y)=\lambda^2F_{\mu\nu}(\lambda y).
\end{align}$$

Flat-frame self-duality is preserved. This varies the boundary data, which is allowed in this ensemble; it is not an AdS isometry. For real $A$,

$$\begin{align}
\varrho(y)=\frac1{32\pi^2}\sum_{a,\mu,\nu}(F^a_{\mu\nu})^2\ge0, \quad Q[A_\lambda]=\int_{|x|<\lambda}\varrho(x)d^4x,
\end{align}$$

$$\begin{align}
\left.\frac{dQ[A_\lambda]}{d\lambda}\right|_{1^-} =\int_{S^3}\varrho(\omega)d\Omega_3.
\end{align}$$

The necessary stationarity condition makes the integral zero. Continuity and positivity force every component of $F$ to vanish on the boundary. Only a one-sided derivative is needed; no extension of the original field beyond the ball was assumed.

The remaining general analytic step is **Source-derived**, not a CAS result. A flat boundary connection can be gauged to $A_i=0$ in a boundary collar with $A_r=0$. Full $F=0$ also gives $\partial_rA_i=0$ there. In this gauge the angular Yang-Mills equation is

$$\begin{align}
\partial_r^2A_i+\frac1r\partial_rA_i+\frac1{r^2}\mathcal D^jF_{ji}=0.
\end{align}$$

Repeated differentiation forces all boundary jets to vanish. Extending by zero gives a smooth Yang-Mills connection across the sphere. The cited local Coulomb-gauge elliptic analyticity theorem then makes the gauge-invariant curvature norm analytic, zero on an exterior open set and hence zero on the connected ball. The paper supplies the reduction to those theorems; their full PDE hypotheses have not been separately audited against the cited books/articles here.

For $F=0$, triviality of the ball gauges $A$ to zero. Anti-self-duality and $\partial_\mu B^{\mu\nu}=0$ imply $dB=0$. On the star-shaped ball, $B=d\zeta$, where

$$\begin{align}
\zeta_\nu(y)=\int_0^1 t\,y^\mu B_{\mu\nu}(ty)dt.
\end{align}$$

An integration by parts gives

$$\begin{align}
\int_{\mathbb B}|B|^2 =2\oint n_\mu\overline B^{a\mu\nu}\zeta^a_\nu -2\int(\partial_\mu\overline B^{a\mu\nu})\zeta^a_\nu=0.
\end{align}$$

The boundary condition is again needed; a constant anti-self-dual $B$ would otherwise satisfy the bulk equations. This establishes the conditional gauge orbit $(0,0)$, even allowing complex $B$.

## The Vortex Reduction and Its Regularity Boundary

SO(3) rotates $(y^1,y^2,y^3)$. Write $y=(q\hat n,w)$, $u=q+iw$. The orbit metric is $\gamma=(dq^2+dw^2)/q^2$ on the half-disk $D_+=\{q>0,|u|<1\}$. The semicircle is the conformal boundary; $q=0$ is an internal shrinking-orbit axis and requires regularity, not a new boundary condition.

In Witten's ansatz the reduced fields are $\phi=\phi_1+i\phi_2$ and an Abelian connection $\mathfrak a$, with

$$\begin{align}
D_{\bar u}\phi=0,\qquad \partial_q\mathfrak a_w-\partial_w\mathfrak a_q=-\frac{1-|\phi|^2}{q^2}, \qquad D_\mu\phi=\partial_\mu\phi+i\mathfrak a_\mu\phi.
\end{align}$$

A holomorphic disk map $\Phi$ gives $|\phi|=2q|\Phi'|/(1-|\Phi|^2)$. The one-vortex family uses
$\Phi=((u_0-u)/(\bar u_0+u))^2$, $u_0=\alpha+i\beta$, $\alpha>0$. It is gauge-equivalent **off the axis** to a BPST instanton of size $\alpha$, center $(0,0,0,\beta)$, restricted to the ball. The qualification matters: the reduced gauge transformation uses $T_r=\hat n^aT_a$, whose direction is undefined at the axis. A smooth orbit-space phase does not automatically define a smooth four-dimensional gauge.

## Explicit BPST Curvature and Charge Correction

The regular Cartesian representative is

$$\begin{align}
A^a_\mu=\frac{2\eta^a_{\mu\nu}(y-b)^\nu}{|y-b|^2+\alpha^2}, \qquad F^a_{\mu\nu}=\frac{-4\alpha^2\eta^a_{\mu\nu}} {(|y-b|^2+\alpha^2)^2}, \qquad \varrho=\frac{6\alpha^4}{\pi^2(|y-b|^2+\alpha^2)^4}.
\end{align}$$

Here $\eta^a_{ij}=\epsilon_{aij}$, $\eta^a_{i4}=-\eta^a_{4i}=\delta_{ai}$, so the chosen orientation makes $F$ self-dual. **Checked with the xAct service:** direct symbolic component differentiation including the SU(2) commutator reproduces all curvature components, self-duality and density normalization.

For $v=u-i\beta$, the reduced representative is

$$\begin{align}
\phi=\frac{i(\alpha^2-v^2)}{\alpha^2+|v|^2},\quad \mathfrak a_q=\frac{2(w-\beta)}{\alpha^2+|v|^2},\quad \mathfrak a_w=-\frac{2q}{\alpha^2+|v|^2}.
\end{align}$$

**Checked in Mathematica:** both vortex equations and the pointwise reduction identity hold for this entire explicit family, with $q>0,\alpha>0$ and real $w,\beta$.

Appendix A derives from the four-dimensional curvature

$$\begin{align}
8\pi^2Q=4\pi\int_{D_+} \left[|D\phi|_\gamma^2+(1-|\phi|^2)^2\right]\mathrm{vol}_\gamma,
\end{align}$$

$$\begin{align}
|D\phi|_\gamma^2+(1-|\phi|^2)^2 =(1-|\phi|^2)+\tfrac12\Delta_\gamma|\phi|^2.
\end{align}$$

The general pointwise identity follows from $D_{\bar u}\phi=0$, $[D_{\bar u},D_u]\phi=f_{qw}\phi/2$ and the second vortex equation. This source derivation is distinct from the explicit-family CAS test. Since the scalar Laplacian times area is conformally invariant in two dimensions,

$$\begin{align}
Q=\mathcal V+\mathcal S,\quad \mathcal V=\frac1{2\pi}\int_{D_+}(1-|\phi|^2)\frac{dq\,dw}{q^2},\quad \mathcal S=\frac1{4\pi}\oint_{|u|=1}\partial_\perp|\phi|^2ds.
\end{align}$$

The axis term vanishes only with the stated smoothness $1-|\phi|^2=O(q^2)$. Dropping the outer semicircle term was the error in the old charge calculation.

For a centered instanton,

$$\begin{align}
\mathcal V=\frac1{1+\alpha^2},\qquad \mathcal S=\frac{\alpha^2(1-\alpha^2)}{(1+\alpha^2)^3},\qquad Q=\frac{1+3\alpha^2}{(1+\alpha^2)^3}.
\end{align}$$

**Checked:** direct radial integration $12\alpha^4\int_0^1r^3dr/(r^2+\alpha^2)^4$, the surface correction, and

$$\begin{align}
-\alpha\frac{dQ}{d\alpha} =\frac{12\alpha^4}{(1+\alpha^2)^4} =\int_{S^3}\varrho\,d\Omega_3>0.
\end{align}$$

At $\alpha=1$, $\mathcal S=0$, yet $\mathcal S'=-1/4$, $Q'=-3/4$, $\mathcal V'=-1/2$. A boundary term can vanish on one field and still alter its variation. The correct half-charge value is therefore not a stationarity test.

## General Center, Higher Powers and Ordered Limits

For arbitrary $b$ define

$$\begin{align}
X=\sinh d=\frac{1-|b|^2-\alpha^2}{2\alpha},\qquad \tau=\tanh d=\frac X{\sqrt{1+X^2}},\qquad Q=\frac{(1+\tau)^2(2-\tau)}4.
\end{align}$$

The source obtains this from ball isometries and rotational invariance. An independent numerical reduction integrates the actual density with $|b|=\beta$:

$$\begin{align}
Q=12\alpha^4\int_0^1 \frac{r^3(r^2+\beta^2+\alpha^2)dr} {[(r^2+\beta^2+\alpha^2)^2-4r^2\beta^2]^{5/2}}.
\end{align}$$

**Checked, finite numerical evidence:** three pairs $(\alpha,\beta)=(3/5,2/5),(1,1),(3/10,6/5)$ agree with the source formula to about 29 decimal places in 30-digit working arithmetic; corresponding charges are approximately 0.7657364322, 0.1869504832 and 0.0760147754. This supports, but does not independently prove, the arbitrary-center formula.

For $\Phi=((1-u)/(1+u))^n$, $n\ge2$, reflection across the boundary geodesic sets $\mathcal S=0$, splits full-plane flux equally and yields $Q=\mathcal V=(n-1)/2$. The source constructs separate regular axis and vortex gauges. This all-$n$ global patching and reflection argument remains **Source-derived**; no arbitrary-degree bundle/gauge classification is claimed as machine-verified.

At fixed interior center, $\alpha\to0$ concentrates curvature and yields $Q\to1$; setting $\alpha=0$ in the potential first is a different, singular operation. Centers approaching the boundary at a rate comparable to $\alpha$ give intermediate limits. Neither limit belongs automatically to the smooth closed-ball field space used in the theorem. Keep a cutoff $R<1$ until evaluating boundary weights, and keep $\alpha>0$ until the charge integral is defined.

## CPS Translation and Limits of the No-Go Statement

At fixed metric and couplings the reconstructed surface potential density is

$$\begin{align}
\Theta^\mu[\delta A]=2\sqrt g\left(B^{a\mu\nu}+c(\star F)^{a\mu\nu}\right)\delta A^a_\nu.
\end{align}$$

Antisymmetrizing its variation produces the local presymplectic current. Variations tangent to the homogeneous boundary equation have vanishing normal flux under these assumptions. This is a local translation of the displayed action variation, not a completed charge algebra, reduced regional phase space or gluing theorem. Changing the boundary functional changes this potential and the boundary equation together.

Fixed **non-flat Dirichlet data** remove the free boundary variation and may admit a restricted BPST field with $B=0$; the size-changing deformation is then inadmissible. Source-free flat Dirichlet data are a different case. A prescribed boundary source can also be chosen to support a self-dual field. If $c=0$, $B=0$ completes any self-dual connection and the stationarity condition on $Q$ disappears.

For complex $A$, the conserved-current step still gives $\delta Q=0$, but $\int F^a_{\mu\nu}F^a_{\mu\nu}=0$ is not a positive-norm condition. The theorem cannot force $F=0$. The formal weight $\exp[-8\pi^2Q/g_+^2]$ does not determine the integration cycle, singular ends, measure or determinant. Absence of these smooth real saddles is not absence of nonperturbative contributions or triviality of the quantum theory.

## Equation Ledger and Verification Boundary

| Source chain | Result | Evidence |
|---|---|---|
| Chiral split → square completion | Finite $B$ formulation, singular elimination limit | Source-derived algebra; tensor duality identities checked. |
| Regulated first variation → boundary coefficient | Eq. (2.34) retains $B+cF$ | Source derivation reconstructed, boundary weights kept explicitly. |
| $D B=0$ + duality + boundary equation | Stationary $Q$ along every self-dual deformation | Reconstructed argument; no positivity needed. |
| Dilation → nonnegative boundary density | Boundary $F=0$ for real $A$ | General comparison argument and explicit BPST normalization checks. |
| Boundary jets → analytic continuation | Flatness throughout the ball | Source-derived PDE theorem input. |
| Flat $A$ + closed $B$ + boundary condition | $B=0$, even if complex | Source integration-by-parts proof. |
| Four-dimensional reduction → Laplacian term | Corrected $Q=\mathcal V+\mathcal S$ | Explicit BPST/vortex identity and centered integrals checked. |

**Verified:** xAct Hodge-square/duality orthogonality; full explicit SU(2) BPST curvature, self-duality and density; both reduced vortex equations for the BPST family; its pointwise reduction identity; centered charge and boundary correction; dilation derivative; half-charge variations; three off-center numerical density integrals.

**Assumptions:** Euclidean orientation and compact positive color pairing above; real $A$, possibly complex $B$; both smooth on the closed conformal ball in appropriate gauges; $c\ne0$; free boundary connection; fixed metric/couplings; no source or extra boundary functional. Explicit family checks use $\alpha>0$; cutoff and small-size limits remain ordered.

**Failed:** no source equation failed the checks executed for this paper. The unqualified assertion “there are no self-dual configurations on AdS4” would be incorrect; the paper itself distinguishes configurations from saddles of its specific boundary problem.

**Blocked:** no retrieval/computation-service obstruction. Independent certification of the general Coulomb-gauge elliptic analyticity theorem, all higher-power gauge patching, or a nonperturbative path-integral construction requires additional mathematical input beyond the calculations executed here.

**Not verified:** the full prior HRSS construction, general PDE unique continuation from first principles, arbitrary-center formula as an independent symbolic theorem, all-$n$ global gauge patches, existence of complex saddles, integration cycles, measures, determinants and singular-end contributions.
