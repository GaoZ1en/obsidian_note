---
paper id: 2607.24883v1
title: Wald-like entropy and Islands in Dimensionally Reduced Einstein-Hilbert Gravity
authors:
  - Krishna Jalan
publication date: 2026-07-27T09:49
abstract: |-
  The paper applies a Lorentzian Wald-like Noether-charge prescription to the Polyakov-corrected two-dimensional dilaton theory obtained from spherical reduction of four-dimensional Einstein gravity. It studies Hartle--Hawking and Unruh states, locates quantum extremal surfaces, and constructs eternal and evaporating Page curves.
comments: "23 pages + Appendix, 9 figures"
url: https://arxiv.org/abs/2607.24883v1
summary: "A monograph-mode reconstruction of the reduced theory, conformalon entropy, QES equations, and Page curves, with an independent audit exposing several local formula errors and a factor-two failure in the evaporating Page time."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T1-Wald-CPS`, `T1-charge`, `T1-boundary`, `T2-dS-BH-holography`.

The central idea is attractive: the local Polyakov auxiliary field makes the anomaly contribution look like a curvature coupling, so the same Noether-charge expression contains both the dilaton area term and a matter-entropy term. The paper then evaluates this object on QES candidates in eternal and evaporating black holes. The audit finds that the leading Hartle--Hawking Page time survives, but the printed Noether-potential sign, several backreaction identities, and the evaporating Page-time coefficient do not.

## How to read this long paper

1. Read Section 2 as a proposal with a sharp scope boundary. The nonempty-island entropy is assigned a Wald-like charge for a non-Killing vector; the no-island branch is separately identified with $-c\psi/6$ and is not derived from that charge.
2. Section 3 defines the theory. The spherical reduction and Polyakov equations are mostly correct, but the reduced boundary divergence and the correct Newton relation must be kept. Several printed coefficients require repair.
3. Section 4 is the cleanest application. After correcting two $e^{\pm\varepsilon h}$ factors and a time-independent Kruskal constant, the leading QES displacement and the eternal Page time remain intact.
4. Section 5 is more conditional: it assumes a quasi-static radial map, almost constant surface gravity, a cutoff trajectory, and a constant shift $v_a-v_c$. Its saddle equations are consistent with the approximate entropy, but its final Page time is too small by a factor of two.
5. Appendix A contains the actual backreaction derivations. It should be read alongside Sections 3--5 because several main-text formulas disagree with their appendix counterparts.

## Source structure map

- **1. Introduction:** island formula, Lorentzian Wald-like motivation, and the DREH goals.
- **2. Brief review of Wald-like entropy for islands:** proposed non-Killing Noether charge and normalization of $\xi$.
  - **2.1. Dilaton-gravity theories:** local Polyakov action, Noether potential, point entropy $F/(4G_N)-c\psi/6$, and the separately prescribed no-island rule.
- **3. Dimensionally reduced Einstein--Hilbert gravity:** spherical reduction, equations of motion, anomaly stress tensor, and semiclassical parameter.
  - **3.1. Eternal black hole:** Hartle--Hawking backreaction, Kruskal coordinates, and conformalon.
  - **3.2. Evaporating black hole:** late-time Vaidya/Unruh backreaction, horizons, state functions, and image map.
- **4. Eternal island and Page curve:** two-sided generalized entropy, QES extremization, no-island branch, and crossing time.
- **5. Evaporating island and Page curve:** quasi-static QES family, falling island branch, growing image-point branch, and Page time.
- **6. Conclusion and outlook:** relation to earlier island computations, dimensional-reduction anomaly, four-dimensional anomaly/vacuum polarization, and replica/Wald questions.
- **Appendix A. Black-hole solutions in the DREH model:**
  - **A.1. Eternal black holes:** classical solution, Hartle--Hawking state, one-loop stress tensor, backreaction, horizons, surface gravity, and tortoise coordinate.
  - **A.2. Evaporating black hole:** null shell, Unruh state, Vaidya equations, image coordinates, apparent/event horizons, and late-time surface gravity.

## Notation and convention dictionary

| Object | Meaning |
| --- | --- |
| $g_{ab}$, $\phi$ | Two-dimensional metric and dilaton after spherical reduction. |
| $r=\lambda^{-1}e^{-\phi}$ | Four-dimensional areal radius; therefore $F(\phi)=e^{-2\phi}=\lambda^2r^2$. |
| $G_N^{(4)}$, $G_N$ | Four- and two-dimensional Newton constants. The checked relation is $4\pi G_N=\lambda^2G_N^{(4)}$. |
| $\chi_i$, $c=N$ | $N$ minimally coupled massless scalars and their large central charge. |
| $\psi$ | Polyakov--Liouville auxiliary field, or conformalon; $2\Box\psi=R$. |
| $\varepsilon=2cG_N/3$ | Semiclassical backreaction parameter, assumed $\varepsilon\ll(\lambda r_0)^2$. |
| $r_0$ | Classical Schwarzschild radius, $8\pi G_NM/\lambda^2$. |
| $r_h$, $r_h^{\rm AH}$ | Backreacted event and apparent horizons. |
| $\kappa_0=1/(2r_0)$, $\kappa$ | Classical and backreacted surface gravities. |
| $x^\pm$ | Hartle--Hawking Kruskal coordinates. |
| $(u,v)$, $(U,v)$ | Eddington--Finkelstein and Unruh/Kruskal coordinates for evaporation. |
| $C$, $X$ | Cutoff endpoint of the radiation region and island/QES endpoint. |
| $\eta$ | Short-distance regulator defined in the local Lorentz frame at $C$. |
| $\rho$ | Conformal factor in $ds^2=-e^{2\rho}dx^+dx^-$ or the corresponding Unruh chart. |
| $t_\pm$, $t_u,t_v$ | State-dependent homogeneous data in the Polyakov stress tensor. |

The metric signature in the two-dimensional audit is $(-,+)$, $\epsilon_{ab}\epsilon^{ab}=-2$, and antisymmetrization has weight $1/2$.

## The reduced theory and its boundary term

The four-dimensional metric ansatz is

$$
ds_4^2
=g_{ab}(x)dx^a dx^b
+\lambda^{-2}e^{-2\phi(x)}d\Omega_2^2.
$$

The checked curvature reduction is

$$
R^{(4)}
=R-6(\nabla\phi)^2+4\Box\phi
+2\lambda^2e^{2\phi}.
\tag{3.4}
$$

After sphere integration and one integration by parts,

$$
I_{\rm DREH}
=
\frac1{16\pi G_N}
\int d^2x\sqrt{-g}\,
\left[
e^{-2\phi}\bigl(R+2(\nabla\phi)^2\bigr)
+2\lambda^2
\right],
\tag{3.5}
$$

with

$$
\boxed{4\pi G_N=\lambda^2G_N^{(4)}}.
$$

The reduction also produces the boundary divergence

$$
\frac1{4\pi G_N}
\int_{\partial M_2}\sqrt{|h|}\,
e^{-2\phi}n^a\nabla_a\phi.
$$

It was dropped in the bulk action. This is not yet a complete reduced GHY/counterterm analysis, but it matters when translating the Noether expression into a well-posed boundary phase space.

The Section-6 statement $G_N=\lambda^2G_N^{(4)}/\pi$ is larger by a factor of four. The correct relation gives

$$
\frac{\lambda^2r^2}{4G_N}
=
\frac{\pi r^2}{G_N^{(4)}}
=
\frac{\operatorname{Area}(S^2)}{4G_N^{(4)}}.
$$

## Polyakov localization and state data

The anomaly action is localized as

$$
I_{\rm PL}
=
-\frac{c}{24\pi}
\int d^2x\sqrt{-g}\,
\left[(\nabla\psi)^2+\psi R\right],
$$

and

$$
2\Box\psi=R.
$$

Eliminating $\psi$ gives

$$
-\frac{c}{96\pi}
\int\sqrt{-g}\,R\Box^{-1}R,
$$

up to the Green-function choice and the integration-by-parts boundary term. The checked stress tensor is

$$
\langle T_{ab}\rangle
=
\frac{c}{12\pi}
\left[
-\nabla_a\nabla_b\psi
+\nabla_a\psi\nabla_b\psi
+g_{ab}
\left(\Box\psi-\frac12(\nabla\psi)^2\right)
\right],
$$

with on-shell trace $cR/(24\pi)$.

In conformal coordinates,

$$
\psi=-\rho+\psi_+(x^+)+\psi_-(x^-),
$$

and the homogeneous functions encode the quantum state. The stress-tensor functions have the schematic form

$$
t_\pm=\psi_\pm''-(\psi_\pm')^2.
$$

The identifications $t_\pm=0$ for Hartle--Hawking Kruskal vacuum and $(t_v,t_u)=(0,-\kappa_0^2/4)$ for the Unruh state are state/normal-ordering inputs, not consequences of the local anomaly equation alone.

## The point Noether charge and its sign problem

For the curvature-dependent Lagrangian, define

$$
A(\phi,\psi)
=
\frac{F(\phi)}{16\pi G_N}
-\frac{c}{24\pi}\psi,
$$

so

$$
E^{abcd}
=
\frac A2(g^{ac}g^{bd}-g^{ad}g^{bc}).
$$

The paper prints

$$
Q^{ab}
=-E^{abcd}\nabla_c\xi_d
+2\xi_d\nabla_cE^{abcd}.
\tag{2.9, printed}
$$

xAct gives

$$
-E^{abcd}\nabla_c\xi_d=-A\nabla^{[a}\xi^{b]},
$$

but the printed second term is

$$
+2\xi_d\nabla_cE^{abcd}
=-2\xi^{[a}\nabla^{b]}A,
$$

opposite to the sign in the paper's next line. The internally consistent formula is

$$
\boxed{
Q^{ab}
=-E^{abcd}\nabla_c\xi_d
-2\xi_d\nabla_cE^{abcd}
}.
$$

At the proposed QES, $\xi=0$ and $\nabla^{[a}\xi^{b]}=\epsilon^{ab}$. The disputed derivative-of-$A$ term then vanishes, so the point charge can be rederived independently:

$$
\boxed{
S_{\rm gen}(X)
=
\frac{F(\phi_X)}{4G_N}
-\frac c6\psi(X)
}.
\tag{2.11}
$$

For DREH,

$$
S_{\rm gen}(X)
=
\frac{\lambda^2r_X^2}{4G_N}
-\frac c6\psi(X).
$$

Thus the sign failure in (2.9) does not contaminate the displayed point entropy. It does invalidate the paper's claimed derivation of (2.10) from the printed general potential.

## What the Wald-like prescription does not derive

The vector $\xi$ used here is not a Killing field, does not generate the extremal surface, and is normalized only locally by $\xi|_X=0$ and $\nabla^{[a}\xi^{b]}|_X=\epsilon^{ab}$. The paper postulates that evaluating its Noether charge gives the generalized entropy.

When $X=\varnothing$, there is no codimension-two point at which to evaluate that charge. The paper therefore separately sets

$$
S_{\rm no\mbox{-}island}
=-\frac c6\psi\big|_{\text{image of }\partial R}.
$$

This uses the Cardy--Calabrese/replica interpretation of the conformalon. It is explicitly not a no-island derivation from the Wald charge. The Page curve combines two inputs:

$$
S(R)=\min
\left\{
S_{\rm no\mbox{-}island},
S_{\rm island}
\right\}.
$$

## Hartle--Hawking backreaction

The static metric is

$$
ds^2
=-f(r)e^{2\varepsilon h(r)}dt^2
+\frac{dr^2}{f(r)},
\qquad
f(r)=1-\frac{r_0}{r}
+\varepsilon\frac{m(r)}r.
$$

The tortoise coordinate obeys

$$
dr_*=\frac{dr}{f(r)e^{\varepsilon h(r)}}.
$$

The conformalon is

$$
\psi(x)
=
-\frac12\log
\left[
e^{2\rho(x)}e^{2\rho_c}
(x^+-c^+)^2(x^--c^-)^2\eta^{-4}
\right].
$$

The appendix derivation has several local source failures:

- Eq. (A.2) must be $f_0''+2f_0'/r=0$, not the printed minus-sign ODE.
- The horizon shift $r_h=r_0-\varepsilon m(r_0)$ is correct.
- Directly expanding
  $\kappa=\frac12e^{\varepsilon h(r_h)}f'(r_h)$ gives
  $$
  \kappa
  =
  \frac1{2r_0}
  \left[
  1+\varepsilon
  \left(
  h(r_0)+m'(r_0)+\frac{m(r_0)}{r_0}
  \right)
  \right],
  $$
  whereas (A.14) inserts a spurious $(\lambda^2r_0^2)^{-1}$.
- The final (A.29) value is independently correct, but it follows from the corrected, not the printed, (A.14).
- In (A.33), the middle equality $R=f_0''$ is wrong. The correct chain is
  $$
  f_0''=-\frac{2r_0}{r^3},
  \qquad
  R=-f_0''
  =+\frac{2r_0}{r^3}.
  $$
- Main-text (3.16) omits $\kappa$ in the Kruskal exponent. The dimensionally correct definition is
  $$
  x^\pm
  =
  \pm\kappa^{-1}e^{\pm\kappa(t\pm r_*)}.
  $$

The asymptotic conditions on $m,h$ hold sequentially:

$$
\lim_{L\to\infty}\lim_{r\to L}m(r)
=
\lim_{L\to\infty}\lim_{r\to L}h(r)
=0.
$$

They are not exact finite-$L$ boundary values.

## Eternal QES and Page curve

For the two-sided black hole,

$$
S_{\rm gen}^{\rm HH}
=
2\left[
\frac{\lambda^2r^2}{4G_N}
+\frac c{12}
\log
\left(
e^{2\rho}e^{2\rho_c}
(x^+-c^+)^2(x^--c^-)^2\eta^{-4}
\right)
\right]_X.
$$

Time extremization gives

$$
t_a=t_c.
$$

The exact radial derivative must contain

$$
\frac{dr}{dr_*}=f e^{+\varepsilon h}.
$$

Therefore (4.4) and the exact equality in (4.6), which print $e^{-\varepsilon h}$, are wrong at $O(\varepsilon)$. With the corrected sign, the near-horizon leading equation still gives

$$
\delta
=
\frac{\varepsilon^2}{4\lambda^4r_h^3}
e^{1-2\kappa c_*},
$$

and

$$
a
=
r_h
+\frac{(cG_N)^2}{9\lambda^4r_h^3}
e^{1-2\kappa c_*}.
$$

The time direction has a negative Hessian: this is a saddle/maximal direction, not a local minimum in all coordinates.

The island entropy is constant to the retained order,

$$
S_{\rm island}^{\rm HH}=2S_{\rm bh}.
$$

Direct Kruskal substitution in the no-island expression gives a coordinate factor $16$ where (4.11) effectively uses $4$. This shifts the entropy by a constant only; the late slope is unchanged:

$$
S_{\rm no\mbox{-}island}^{\rm HH}
\sim
\frac c3\kappa t_c.
$$

Equating it to $2S_{\rm bh}$ yields

$$
\boxed{
t_{\rm Page}^{\rm HH}
=
\frac{1536\pi^3G_N^2M^3}{c\lambda^4}
}.
$$

This coefficient was independently reproduced. The source's small-time prose also misses a factor: $\log\cosh x=x^2/2+O(x^4)$, not $x^2$.

## Unruh geometry and horizon data

The main text writes

$$
ds^2=-f(r,v)e^{2\varepsilon h(r,v)}dv^2+2\,dv\,dr,
\tag{3.22}
$$

while Appendix (A.34), used in the derivation of (A.39)--(A.40), has $2e^{\varepsilon h}dv\,dr$. The two metrics differ at $O(\varepsilon)$; the appendix coordinate equations require the latter.

The apparent and event horizons are

$$
\begin{aligned}
r_h^{\rm AH}(v)
&=
r_0+\frac{\varepsilon}{8\lambda^2r_0}
\left[
\frac72-\frac L{r_0}
+\log\frac{r_0}{L}
-\frac{v-v_0}{2r_0}
\right],\\
r_h(v)
&=
r_h^{\rm AH}(v)
-\frac{\varepsilon}{8\lambda^2r_0}.
\end{aligned}
$$

The appendix solution satisfies the three displayed backreaction equations after substitution. The event-horizon shift follows from the teleological solution of the linearized null-ray equation.

Two coordinate formulas require repair:

$$
r
=
r_0\left[
1+W\!\left(e^{r_*/r_0-1}\right)
\right],
$$

so (A.48) is missing the $r_0$ multiplying $W$. Equation (A.49) uses the corrected form. Equation (A.50) drops a factor $e^{-1+\kappa_0v_0}$; it is valid only for $v_0=2r_0$ or after absorbing that constant into the affine normalization of $U$.

The labels in (A.55)--(A.56) are swapped: $t_v$ belongs to $\psi_1(v)$ and $t_u$ to $\psi_2(u)$. Their numerical values remain

$$
t_v=0,
\qquad
t_u=-\frac{\kappa_0^2}{4}.
$$

## Evaporating QES family

The Unruh generalized entropy is

$$
S_{\rm gen}^{\rm U}
=
\left[
\frac{\lambda^2r^2}{4G_N}
+\frac c{12}
\log
\left(
e^{2\rho}e^{2\rho_c}
(v-v_c)^2(U-U_c)^2\eta^{-4}
\right)
\right]_{(U_a,v_a)}.
$$

The quasi-static near-horizon map is assumed to be

$$
r(U,v)
\simeq
r_h^{\rm AH}(v)
-Ue^{\kappa v}
+\frac1\kappa\dot r_h^{\rm AH}.
$$

Since

$$
f'(r_h^{\rm AH})
=2\kappa,
$$

the linearized blackening factor should be

$$
f\simeq2\kappa(r-r_h^{\rm AH}),
$$

not (5.3)'s $\kappa(r-r_h^{\rm AH})$. This changes only the additive $(c/12)\log2$ in the approximate entropy, not its saddle equations.

At the retained order, extremization gives the source's (5.5)--(5.7) and the QES radius

$$
a
=
r_h(v_a)
-\frac{\varepsilon}{8\lambda^2r_0}
\frac{4+\kappa_0(v_a-v_c)}
{\kappa_0(v_a-v_c)}.
$$

For $\kappa_0(v_a-v_c)<-4$ it is inside the event horizon; for $-4<\kappa_0(v_a-v_c)<0$ it lies outside. The equations define a family of QES candidates rather than a unique causal trajectory.

The paper then assumes $x=v_a-v_c$ is constant at late time. This is self-consistent for a fixed-radial cutoff with

$$
U_c=Be^{-\kappa v_c}
$$

and constant $\kappa$, because substituting into (5.5)/(5.7) removes the explicit $v_c$ dependence. It is not proved for a general cutoff trajectory.

Equation (5.9) also changes the term $\varepsilon(c/6)h(a)$ from (5.4) into $\varepsilon h(a)$. The exact residual is

$$
\varepsilon h(a)\left(\frac c6-1\right).
$$

The leading late-time island slope nevertheless follows from the area term:

$$
S_{\rm island}^{\rm U}
\sim
\frac{\lambda^2r_0^2}{4G_N}
-\frac{c\kappa_0}{24}v_c.
\tag{5.11}
$$

## The evaporating Page-time failure

Using the image point and reflecting boundary, the no-island branch grows as

$$
S_{\rm no\mbox{-}island}^{\rm U}
\sim
\frac{c\kappa_0}{12}v_c.
\tag{5.14}
$$

Equation (5.13) has the literal typo $\rho(U_c,v_v)$; it must be $\rho(U_c,v_c)$. The image-point normalization is also conditional on the missing constant in (A.50).

Crossing the two printed slopes gives

$$
\frac{\lambda^2r_0^2}{4G_N}
-\frac{c\kappa_0}{24}v_{\rm Page}
=
\frac{c\kappa_0}{12}v_{\rm Page}.
$$

Therefore

$$
v_{\rm Page}
=
\frac{8S_0}{c\kappa_0}
=
\boxed{
\frac{2048\pi^3G_N^2M_0^3}
{c\lambda^4}
},
$$

not the printed

$$
\frac{1024\pi^3G_N^2M_0^3}
{c\lambda^4}.
$$

This is a substantive factor-two failure in the final reported coefficient, not a coordinate-independent additive entropy constant.

## Covariant-phase-space translation

The paper invokes Iyer--Wald language but does not perform a complete CPS construction for the QES vector. In particular:

- the corrected local Noether potential was checked, but $\theta$, $\omega$, and $k_\xi=\delta Q_\xi-\xi\cdot\theta$ are not derived for the combined DREH--Polyakov theory;
- $\xi$ is field-dependent through $S_{\rm gen}$ and is not Killing, so the usual bifurcation-surface derivation does not transfer automatically;
- evaluating at $\xi=0$ removes the derivative-of-$A$ term and many JKM ambiguities locally, but it does not by itself prove invariance under all boundary improvements;
- the spherical reduction drops a total derivative and does not assemble the complete well-posed boundary action;
- the no-island entropy is a replica/CFT state identification, not a Noether-charge result;
- no edge-mode, corner-algebra, or charge-integrability analysis is supplied.

The paper should therefore be read as evidence that a particular local Noether density reproduces known island formulas in this model, not as a general theorem equating Lorentzian Wald charge and replica entropy.

## Global equation ledger

| Source location | Role | Status |
| --- | --- | --- |
| 2.6--2.7 | local Polyakov action and $2\Box\psi=R$ | Checked with xCPS. |
| 2.9 | general Noether potential | **Failed sign** in derivative-of-$E$ term. |
| 2.10--2.11 | model potential and point entropy | 2.10 follows after correcting 2.9; 2.11 independently checked. |
| 2.12 | no-island conformalon rule | State/replica input; not derived from the charge. |
| 3.4--3.5 | spherical reduction and DREH action | Checked, including the omitted boundary divergence. |
| 3.7--3.12 | classical/Polyakov equations and stress tensor | Checked. |
| 3.14 | total metric equation | **Failed:** missing $8\pi G_N$ on the full classical scalar stress tensor. |
| 3.16 | Kruskal coordinates | **Failed typo:** missing $\kappa$ in exponent. |
| 3.22 | evaporating metric | **Failed:** conflicts with Appendix A.34 in the $dv\,dr$ coefficient. |
| 4.4, 4.6 | eternal radial QES equation | **Failed at $O(\varepsilon)$:** wrong sign of $h$ in $dr/dr_*$. |
| 4.8--4.10 | QES displacement and island entropy | Checked at the stated leading order. |
| 4.11 | no-island entropy | Constant factor wrong; late slope checked. |
| 4.14 | eternal Page time | Checked independently. |
| 5.3 | near-horizon $f$ | **Failed:** missing factor two; only an entropy constant changes. |
| 5.4--5.8 | approximate entropy and saddle equations | Checked modulo that constant and quasi-static assumptions. |
| 5.9 | extremized entropy | **Failed:** coefficient of $\varepsilon h(a)$. |
| 5.10--5.14 | late island/no-island slopes | Checked conditionally on cutoff and affine normalization. |
| 5.15 | evaporating Page time | **Failed by factor two.** |
| A.2 | classical radial ODE | **Failed sign.** |
| A.14 | surface-gravity expansion | **Failed:** spurious $(\lambda^2r_0^2)^{-1}$. |
| A.29 | final static $\kappa$ | Checked independently, not from printed A.14. |
| A.33 | curvature sign | Middle equality failed; final positive value checked. |
| A.48--A.50 | Lambert-$W$/affine map | A.48 missing $r_0$; A.50 missing normalization constant. |
| A.55--A.56 | Unruh state functions | Labels swapped; values checked. |
| A.57--A.66 | stress, backreaction, horizons, $\kappa$ | Checked by substitution under quasi-static assumptions. |

## Global derivation map

1. Spherical reduction gives $F=e^{-2\phi}=\lambda^2r^2$ and the area term $F/(4G_N)$.
2. Localizing the Polyakov anomaly gives a second curvature coupling $-c\psi R/(24\pi)$.
3. Evaluating the corrected Noether potential at $\xi=0$, $\nabla\xi=\epsilon$ gives $F/(4G_N)-c\psi/6$.
4. Solving $2\Box\psi=R$ with state-dependent homogeneous functions produces Hartle--Hawking or Unruh entropy data.
5. The semiclassical metric equations determine $m,h$, horizon shifts, and $\rho$ to $O(\varepsilon)$.
6. Extremizing the point entropy gives the island QES. The eternal solution is a single near-horizon saddle; the Unruh equations admit a time-dependent family.
7. A separately prescribed image-point conformalon gives the no-island entropy.
8. The Page curve is the minimum of these two branches. The eternal crossing coefficient survives the audit; the evaporating coefficient must be doubled.

## Concrete project extensions

1. Recompute the full DREH--Polyakov presymplectic potential, including the reduction-generated boundary divergence, and compare the resulting $k_\xi$ with the point formula.
2. Treat $\xi[S_{\rm gen}]$ as a field-dependent generator and include the corresponding Barnich--Troessaert/Iyer--Wald correction before claiming a charge theorem.
3. Track JKM ambiguities at a zero-dimensional QES and determine which vanish because $\xi=0$ versus which shift the entropy through boundary terms.
4. Derive the no-island branch from replica or algebraic-QFT data in the same notation instead of folding it into the phrase “Wald-like entropy”.
5. Redo the evaporating analysis with the corrected metric convention, affine normalization, and time-dependent $\kappa$, then determine whether the constant-shift QES family persists.
6. Repeat the reduction with four-dimensional matter before quantization, retaining dilaton--matter couplings and the dimensional-reduction anomaly.
7. Use the present error ledger as a regression test for the existing $f(R,K)$ Iyer--Wald notes: a compact Noether formula and a correct final limit do not guarantee that the intermediate derivation is consistent.

## Verification log

### Checked

- xCPS/xAct independently reproduced the Polyakov equation, anomaly stress tensor and trace, the corrected Noether potential, the point entropy, the spherical reduction, the DREH metric/dilaton equations, and the reduced normalization.
- xCoba/Mathematica reproduced the static curvature, horizon shift, corrected surface-gravity expansion, conformal-coordinate equations, Hartle--Hawking stress tensor, integrated $m,h$, and local tortoise expansion.
- The complete Hartle--Hawking QES chain was checked through the retained order. The wrong $e^{-\varepsilon h}$ signs do not change the leading $O(\varepsilon^2)$ displacement after correction.
- The eternal late-time slope and
  $t_{\rm Page}=1536\pi^3G_N^2M^3/(c\lambda^4)$ were independently reproduced.
- The Unruh saddle equations (5.5)--(5.8), horizon relations, stress-tensor transformations, backreaction solution, and late-time slopes were checked under the source's quasi-static assumptions.
- Direct arithmetic from (5.11), (5.14), and $\kappa_0=1/(2r_0)$ gives the corrected factor
  $2048\pi^3G_N^2M_0^3/(c\lambda^4)$.
- Formula-dense PDF pages were rendered and inspected against the TeX source, so the listed failures are visibly printed-source issues rather than extraction artifacts.

### Blocked

- The Wald-like QES prescription itself, the Cardy--Calabrese identification of $-c\psi/6$, and the no-island image rule require replica/state input beyond the local symbolic checks.
- The state functions depend on normal-ordering and Green-function choices.
- A complete boundary variational principle, CPS integrability analysis, JKM ambiguity classification, and edge/corner treatment were not supplied.
- The Unruh constant-shift ansatz is conditional on the cutoff trajectory and nearly constant surface gravity; the linearized theory does not control the evaporation endpoint.

### Failed

- Eq. (2.9): derivative-of-$E$ sign.
- Eq. (3.14): missing $8\pi G_N$ factor on part of the classical scalar stress tensor.
- Eqs. (A.2), (A.14), and the middle equality of (A.33): radial ODE, surface gravity, and curvature-sign errors.
- Eqs. (3.16), (3.22), (4.4), (4.6), (4.11), (5.3), (5.9), (5.13), (A.48), (A.50), and (A.55)--(A.56): coordinate, normalization, sign, or label errors documented above.
- Eq. (5.15): substantive factor-two error in the evaporating Page time. Downstream use should replace $1024\pi^3$ by $2048\pi^3$.
