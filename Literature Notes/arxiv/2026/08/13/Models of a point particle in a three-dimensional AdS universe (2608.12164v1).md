---
paper id: 2608.12164v1
title: Models of a point particle in a three-dimensional AdS universe
authors:
  - Petr Lukes
  - Pavel Krtous
publication date: 2026-08-12
abstract: |-
  The paper regularizes a conical point source in static rotationally symmetric 2+1 gravity by smooth compact matter distributions, optionally joined to an AdS exterior through a thin shell. It shows that a slice-integrated local mass tends to the angular-deficit parameter at fixed asymptotic geometry and distinguishes this mass from both a lapse-weighted Killing mass and the BTZ metric parameter.
comments: "22 pages"
url: https://arxiv.org/abs/2608.12164v1
summary: "A useful regulator calculation separating angular-deficit mass, Killing mass, and the shifted BTZ parameter; the local-mass limit is robust within the paper's static rotational and fixed-asymptotic setup, not a universal definition of energy in AdS3."
tags: []
---

# Why this is medium priority

Reason codes: `T2-model`, `T2-dS-BH-holography`.

The paper supplies a controlled model for a common ambiguity in the AdS$_3$/BTZ notes: the conical deficit, the integral of local matter density, a Killing-weighted integral, and the parameter appearing in BTZ coordinates are related but are not identical observables.

Its main conclusion should be stated precisely:

> Correct under the static, rotationally symmetric, fixed-asymptotic zero-size limit: the dimensionless slice-integrated local mass tends to the normalized angular deficit $1-c_a$. The BTZ parameter is $1-c_a^2$, so it is a nonlinear reparametrization, not the same mass.

# Source map

- Section II: static rotational ansatz and Einstein equations.
- Section III: flat, AdS, and dS vacuum geometries; conical and black-hole branches.
- Section IV: dust, incompressible fluid, and Israel thin shells.
- Section V: local and Killing masses and their boundary formulas.
- Section VI: dust balls, fluid balls, and vacuum/dark-energy bubbles; fixed-asymptotic small-object limits.
- Section VII: scope of the result.

# 1. Static rotational geometry

The metric and matter ansatz are

$$
ds^2=-N(r)^2dT^2+dr^2+R(r)^2d\phi^2,
$$

$$
T=\epsilon N^2dT^2+p_rdr^2+p_\phi R^2d\phi^2,
\qquad \phi\sim\phi+2\pi.
$$

For an isotropic fluid, $p_r=p_\phi=p$. The covariant Einstein tensor is

$$
\mathrm{Ein}_{TT}=-\frac{R''}{R}N^2,
\qquad
\mathrm{Ein}_{rr}=\frac{N'R'}{NR},
\qquad
\mathrm{Ein}_{\phi\phi}=\frac{N''}{N}R^2.
$$

The paper moves the cosmological term into the effective stress tensor when using these component equations. Consequently, the quantity called local energy density includes the cosmological background unless it is subtracted by comparing equal asymptotics.

A regular origin at $r=r_o$ requires

$$
R(r_o)=0,
\qquad |R'(r_o)|=1.
$$

A semi-regular conical origin instead has $|R'(r_o)|=c_a\neq1$. Near it, the circumference is $2\pi c_a r$.

# 2. Conical AdS and the three mass parameters

For the conical AdS branch,

$$
R=c_a\ell\sinh\frac r\ell,
\qquad
N=N_a\cosh\frac r\ell.
$$

After passing to the circumference coordinate, the metric is written as

$$
ds^2=-\left(1-\widehat M+\frac{R^2}{\ell^2}\right)dT^2
+\frac{dR^2}{1-\widehat M+R^2/\ell^2}
+R^2d\phi^2,
$$

with the paper's shifted BTZ convention

$$
1-\widehat M=c_a^2.
$$

The normalized angular deficit is

$$
\widehat m_o=1-c_a
=\frac{\Delta\phi_o}{\pi},
$$

where the full missing angle is $2\Delta\phi_o=2\pi(1-c_a)$. Therefore

$$
\boxed{1-\widehat M=(1-\widehat m_o)^2},
$$

or equivalently

$$
\widehat M=2\widehat m_o-\widehat m_o^2.
$$

This convention differs by a constant shift from the common nonrotating BTZ parameter: the paper notes $1-\widehat M=-M_{\rm BTZ}$ in the usual normalization. Any comparison with a vault formula must translate this shift first.

The Killing mass is a third object. It weights the density by the lapse and can depend on the regularizing matter and shell, unlike the local mass limit.

# 3. Local mass as a boundary term

On a static annulus $r\in(r_{\rm in},r_{\rm out})$, define

$$
m_{r_{\rm in}}^{r_{\rm out}}
=\int_D\epsilon\,dS,
\qquad dS=R\,dr\,d\phi.
$$

Using $\kappa\epsilon=-R''/R$ gives

$$
\kappa m_{r_{\rm in}}^{r_{\rm out}}
=2\pi\left[R'(r_{\rm in})-R'(r_{\rm out})\right].
$$

This is the rotational form of Gauss--Bonnet: the integrated slice curvature depends only on boundary holonomies. With a regular origin,

$$
\widehat m^{r_{\rm out}}
:=\frac{\kappa m^{r_{\rm out}}}{2\pi}
=1-R'(r_{\rm out}).
$$

For a thin shell at $r_*$, Israel matching gives

$$
\kappa\epsilon_{\rm shell}
=-\frac{[R']}{R}\delta(r-r_*),
\qquad
\kappa m_{\rm shell}=-2\pi[R'].
$$

The jumps telescope with the smooth interior and exterior contributions, so the same boundary formula survives. This is the reason the small-object local-mass limit is insensitive to the detailed interior profile.

# 4. Killing mass

The lapse-weighted mass is

$$
\kappa\mathcal M_{r_{\rm in}}^{r_{\rm out}}
=\int_D\partial_T\cdot\mathrm{Ein}\cdot dS
=-2\pi\int_{r_{\rm in}}^{r_{\rm out}}R''N\,dr.
$$

For a smooth isotropic fluid,

$$
\kappa\mathcal M_{r_{\rm in}}^{r_{\rm out}}
=2\pi\left[
\frac12N'R-R'N
\right]_{r_{\rm in}}^{r_{\rm out}}.
$$

The isotropy step is not valid across a generic shell. Including a shell adds an explicit jump term,

$$
\kappa\mathcal M
=2\pi\left[
\frac12N'R-R'N
\right]_{r_{\rm in}}^{r_{\rm out}}
-\pi[N']R_*.
$$

Thus the Killing mass retains lapse and shell information. Several regularizations give $\widehat{\mathcal M}_o=N_a(1-c_a)$, but the paper also exhibits bubble models where even this relation fails. There is no model-independent equality between the Killing mass and $\widehat M$.

# 5. Fixed-asymptotic point-particle limit

The controlled limiting prescription is:

1. choose a smooth regular origin and a compact matter ball of circumference radius $R_*$;
2. join it to a fixed exterior conical AdS geometry, adding a shell if pressure matching requires one;
3. evaluate the mass immediately outside the object, thereby excluding the infinite exterior dark-energy contribution;
4. send $R_*\to0$ while keeping the exterior conicity $c_a$ fixed.

At the matching radius $r_+$ in the AdS exterior,

$$
\widehat m_+=1-c_a\cosh\frac{r_+}{\ell}.
$$

Since $R_*=c_a\ell\sinh(r_+/\ell)$, the limit gives

$$
R_*\to0,
\qquad r_+\to0,
\qquad
\widehat m_+\to1-c_a.
$$

The authors realize this limit using dust plus a compensating shell, an incompressible fluid without a shell, and several vacuum/dark-energy bubble constructions. The interior density can diverge as the radius shrinks; the integrated local mass remains finite because the exterior boundary datum $R'(r_+)$ is held fixed.

The black-hole branch cannot undergo the same $R_*\to0$ limit at fixed $R_{\rm hor}>0$, because the exterior has a nonzero minimal circumference. This is a genuine domain restriction, not a technical omission.

# Independent verification

## Checked

- **xAct/xCoba:** for $g=\operatorname{diag}(-N^2,1,R^2)$, independently reproduced
  $$
  \mathrm{Ein}_{ab}
  =\operatorname{diag}\left(
  -N^2R''/R,
  N'R'/(NR),
  R^2N''/N
  \right).
  $$
- **Direct symbolic integration:** $\kappa\epsilon=-R''/R$ and $dS=Rdrd\phi$ give exactly $\kappa m=2\pi(R'_{\rm in}-R'_{\rm out})$.
- **Shell audit:** the distributional contribution $-2\pi[R']$ cancels the two intermediate boundary values, leaving the same outer boundary formula.
- **Algebraic check:** $c_a=1-\widehat m_o$ and $1-\widehat M=c_a^2$ give $\widehat M=2\widehat m_o-\widehat m_o^2$.
- **Limit check:** substituting $R=c_a\ell\sinh(r/\ell)$ gives $\widehat m_+=1-c_a\cosh(r_+/\ell)\to1-c_a$ as $r_+\to0$.
- **Visual confirmation:** rendered PDF pages 10, 12, 14, 15, and 21 and checked the mass boundary terms, fixed-asymptotic argument, dust limit, fluid matching, and summary against the TeX source.

## Assumptions

- Staticity and rotational symmetry select the slicing and the timelike Killing field.
- The local mass integrates the effective density on that slice; outside-background subtraction is implemented by evaluating just above the compact object while holding the exterior geometry fixed.
- Interior matter is regular at the origin before the limit. Thin shells are treated by Israel junction conditions, not by an unrestricted codimension-two delta source.
- The model-independent statement concerns the local mass. Killing-mass limits can be matter-model dependent.
- The small-object limit applies to the conical AdS branch, not fixed-radius BTZ black holes.

## Not independently verified

- Energy conditions, dynamical stability, and realizability of every phenomenological shell equation of state were not established.
- The regulator sequence is not a dynamical collapse process and does not prove convergence in a specified generalized-function topology.
- The local mass is not shown to equal Brown--York, Abbott--Deser, holographic, canonical, or covariant-phase-space energy.
- The paper's global claim is confined to the static rotational sector; spinning particles, holonomy with angular momentum, and general asymptotically AdS$_3$ perturbations are outside scope.
- No quantum statement or BTZ mode-quantization result follows from the classical smoothing argument.

# Claim tier and takeaway

**Achieved claim tier:** exact classical regulator result in the static rotational sector, with the Einstein tensor and mass boundary formulas independently checked. This does not establish a universal AdS$_3$ energy definition.

For current BTZ work, keep the dictionary

$$
\boxed{
\text{conicity }c_a
\quad\Longleftrightarrow\quad
\widehat m_o=1-c_a
\quad\Longleftrightarrow\quad
\widehat M=1-c_a^2
}
$$

and translate the paper's shifted $\widehat M$ before comparing it with the conventional BTZ mass parameter or a canonical charge.
