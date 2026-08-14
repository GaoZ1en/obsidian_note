---
title: "Vector Perturbations in Ghost-Free Quasidilaton Massive Gravity"
authors:
  - Ekapob Kulchoakrungsun
  - Daris Samart
arxiv_id: "2608.13529v1"
arxiv_url: "https://arxiv.org/abs/2608.13529v1"
pdf_url: "https://arxiv.org/pdf/2608.13529v1"
source_url: "https://export.arxiv.org/e-print/2608.13529v1"
official_list_date: "2026-08-14"
date_read: "2026-08-14"
priority: medium
reason_codes:
  - T2-model
  - T2-dS-BH-holography
  - T3-math
status: "checked under the stated FLRW and minimal-matter assumptions"
---

# Vector Perturbations in Ghost-Free Quasidilaton Massive Gravity

## Verdict

**Correct under the following precise conditions:** flat FLRW, the ghost-free extended quasidilaton model with no canonical quasidilaton kinetic term, minimal matter coupled only to \(g_{\mu\nu}\), a homogeneous canonical scalar, or one Maxwell/Proca field with vanishing background, and a quadratic perturbation analysis at nonzero spatial momentum. Under these assumptions, the gravitational vector kinetic coefficient is unchanged from vacuum,

\[
K_V
=
\frac{2a^2Jm^2X}
{2a^2Jm^2X+k^2(r+1)},
\]

and therefore tends to zero on Branch II, \(J=0\), provided \(k\neq0\) and \(r+1\neq0\).

The evidence does **not** prove that the helicity-1 modes are absent from the nonlinear theory. It shows only that their quadratic kinetic term vanishes on the exact Branch-II FLRW background, which is the standard linear signal of strong coupling.

## Why this is relevant

- **T2-model:** it is a clean constrained-system calculation in a modified-gravity cosmology.
- **T2-dS-BH-holography:** the result concerns self-accelerating backgrounds, missing kinetic terms, and the distinction between linear degeneracy and nonlinear degree-of-freedom removal.
- **T3-math:** the calculation depends on gauge-invariant vector variables, integrating out an auxiliary shift, and using background equations without changing the perturbative claim.

The paper is especially useful as a discipline example: a vanishing quadratic form is not a nonlinear constraint proof.

## Theory and conventions

The action is

\[
S
=
\frac{M_{\mathrm{Pl}}^2}{2}
\int d^4x\sqrt{-g}
\left[
R+2m^2
\left(
\mathcal L_2+\alpha_3\mathcal L_3+\alpha_4\mathcal L_4
\right)
\right]
+S_{\mathrm{matter}}.
\]

The massive-gravity potential is built from

\[
\mathcal K^\mu{}_{\nu}
=
\delta^\mu{}_{\nu}
-e^\sigma
\left(
\sqrt{g^{-1}\widetilde f}
\right)^\mu{}_{\nu},
\]

with extended fiducial metric

\[
\widetilde f_{\mu\nu}
=
\eta_{\alpha\beta}
\partial_\mu\phi^\alpha\partial_\nu\phi^\beta
-\frac{\alpha_\sigma}{m^2}
\partial_\mu(e^{-\sigma})
\partial_\nu(e^{-\sigma}).
\]

Conventions:

- metric signature mostly plus;
- conformal time \(\tau\), with \(\mathcal H=a'/a\);
- flat FLRW background;
- \(X=e^\sigma/a\);
- vector perturbations are transverse;
- matter is minimally coupled to the physical metric only.

The background combinations are

\[
J
=
(3-2X)
+(X-3)(X-1)\alpha_3
+(X-1)^2\alpha_4,
\]

and

\[
Q
=
(X-1)
\left[
3-3(X-1)\alpha_3+(X-1)^2\alpha_4
\right].
\]

The background constraint factorizes as

\[
m^2JX(\sigma'-\mathcal Hr)=0,
\]

giving

\[
\text{Branch I}:\quad \sigma'=\mathcal Hr,
\qquad
\text{Branch II}:\quad J=0.
\]

## Vector variables and gauge

The metric vector perturbations are the transverse shift \(B_i\) and spatial vector \(E_i\). The Stückelberg perturbation supplies a transverse vector \(\Pi_i\):

\[
\partial^iB_i
=
\partial^iE_i
=
\partial^i\Pi_i
=0.
\]

Under a transverse spatial diffeomorphism \(\xi_i\),

\[
B_i\mapsto B_i-\xi_i',
\qquad
E_i\mapsto E_i-2\xi_i,
\qquad
\Pi_i\mapsto\Pi_i-\xi_i.
\]

Thus

\[
B_i^{\mathrm{GI}}
=
B_i-\frac12E_i',
\qquad
\Pi_i^{\mathrm{GI}}
=
\Pi_i-\frac12E_i
\]

are gauge invariant. The paper fixes \(E_i=0\), after which \(B_i\) and \(\Pi_i\) are the gauge-invariant variables.

At quadratic order, \(B_i\) carries no time derivative and is auxiliary. Integrating it out determines the kinetic term of \(\Pi_i\).

## Vacuum benchmark

Before applying the vacuum Friedmann equation, the shift constraint has the form

\[
B_i
=
\frac{2a^2Jm^2X^2\Pi_i'}
{(1+r)X(k^2+6\mathcal H^2)
-2a^2m^2
\left\{
J[r(X-1)^2-2X+1]
+(r+1)[Q-(X-1)^2X]
\right\}}.
\]

Using

\[
Q
=
\frac{3X\mathcal H^2}{a^2m^2}
-(X-1)^2(J-X)
\]

reduces it to

\[
B_i
=
\frac{2a^2Jm^2X}
{(1+r)k^2+2a^2Jm^2X}
\Pi_i'.
\]

The reduced kinetic action is

\[
S^{(2)}_{V,\mathrm{kin}}
=
\int d\tau\frac{d^3k}{(2\pi)^3}
\frac{a^2M_{\mathrm{Pl}}^2k^2}{4}
K_V
\Pi_i^{\prime *}\Pi_i',
\]

where

\[
K_V
=
\left[
1+\frac{k^2(r+1)}{2a^2Jm^2X}
\right]^{-1}.
\]

For \(X>0\), \(r+1>0\), and positive \(m^2\), the ultraviolet no-ghost condition is \(J>0\):

\[
a^2k^2K_V
\xrightarrow{k\to\infty}
\frac{2a^4m^2JX}{r+1}.
\]

## Canonical scalar matter

For

\[
\mathcal L_\chi
=
-\frac12(\partial\chi)^2-V(\chi),
\qquad
\chi=\bar\chi(\tau)+\delta\chi,
\]

the matter perturbation \(\delta\chi\) is a scalar and cannot enter the transverse vector sector directly.

It does enter the unreduced shift denominator through the background:

\[
B_i
=
\frac{2a^2Jm^2X^2M_{\mathrm{Pl}}^2}
{\mathcal D_\chi}\Pi_i',
\]

with

\[
\begin{aligned}
\mathcal D_\chi
={}&
-2a^2
\Bigl\{
Jm^2M_{\mathrm{Pl}}^2
[r(X-1)^2-2X+1]\\
&+(r+1)
\left[
m^2M_{\mathrm{Pl}}^2
(Q-(X-1)^2X)
+XV(\bar\chi)
\right]
\Bigr\}\\
&+(r+1)X
\left[
k^2M_{\mathrm{Pl}}^2-(\bar\chi')^2
\right]
+6(r+1)X\mathcal H^2M_{\mathrm{Pl}}^2.
\end{aligned}
\]

The Friedmann equation gives

\[
6\mathcal H^2M_{\mathrm{Pl}}^2
=
2a^2m^2M_{\mathrm{Pl}}^2\rho_X
+2a^2V(\bar\chi)
+(\bar\chi')^2,
\]

while

\[
X\rho_X
=
Q+J(X-1)^2-X(X-1)^2.
\]

Substitution cancels both explicit matter terms and yields

\[
\mathcal D_\chi
=
M_{\mathrm{Pl}}^2X
\left[
(r+1)k^2+2a^2Jm^2X
\right].
\]

Therefore \(B_i\) and \(K_V\) reduce exactly to their vacuum expressions. The scalar changes the background solution but not the functional form of the gravitational vector kinetic coefficient.

## Maxwell and Proca matter

The Abelian background is assumed to vanish:

\[
\bar A_\mu=0.
\]

Consequently \(F_{\mu\nu}\) begins at first perturbative order. The quadratic Maxwell action contains two powers of \(\delta A\) and only the background metric. A term containing \(\delta g\) and two powers of \(\delta A\) is cubic, so no quadratic mixing with \(B_i\) or \(\Pi_i\) occurs.

The transverse Maxwell action is

\[
S^{(2)}_{A,V}
=
\frac12
\int d\tau\frac{d^3k}{(2\pi)^3}
\left[
A_i^{T\prime *}A_i^{T\prime}
-k^2A_i^{T*}A_i^T
\right].
\]

Thus the kinetic matrix in the \((\Pi_i,A_i^T)\) basis is diagonal. A healthy photon direction does not repair the zero gravitational eigenvalue.

The Proca term

\[
-\frac12m_A^2\sqrt{-g}A_\mu A^\mu
\]

adds a mass to the transverse matter vector. With \(\bar A_\mu=0\), metric-vector mixing again first appears at cubic order. The gravitational \(K_V\) remains unchanged.

This conclusion does not extend automatically to several vector fields, non-Abelian isotropic configurations, nonzero vector backgrounds, anisotropic stress, or nonminimal couplings.

## Meaning of Branch II

For nonzero \(k\) and nonsingular \(r+1\),

\[
J\to0
\quad\Longrightarrow\quad
K_V\to0.
\]

Away from Branch II, a canonical variable is

\[
v_i
=
\frac{M_{\mathrm{Pl}}ak}{\sqrt2}
\sqrt{K_V}\,\Pi_i.
\]

As \(K_V\to0\), this field redefinition becomes singular. Cubic and higher interactions that are regular in \(\Pi_i\) can acquire inverse powers of \(K_V\) in terms of \(v_i\). This supports the strong-coupling interpretation.

What has not been shown is a new nonlinear constraint that removes the modes. On exact Branch II, a remaining algebraic or gradient term may set \(\Pi_i=0\) in the linearized equations, but this does not determine the nonlinear degree-of-freedom count.

## Mathematica supplement audit

The official source contains a 17.1 MB Mathematica notebook with 275 Input cells and 252 cached Output cells.

Direct headless use of

\[
\texttt{NotebookEvaluate}
\]

is unavailable because the Wolfram front end is not present in the automation environment. I therefore parsed the notebook expression and replayed its Input cells sequentially in a fresh kernel with a 45-second guard per cell.

Result:

- total replay time: 189.16 seconds;
- 275 Input cells attempted;
- 246 completed without returning \(\$\mathrm{Failed}\) or \(\$\mathrm{TimedOut}\);
- the key symbols for the integrated shift, kinetic coefficient, and reduced vector action were generated;
- 29 cells returned \(\$\mathrm{Failed}\) or \(\$\mathrm{TimedOut}\).

The exact failed-cell indices were

\[
\begin{gathered}
13,16,95,126,127,140,141,142,143,147,150,163,164,166,\\
180,181,182,183,184,185,197,198,199,201,270,271,273,274,275.
\end{gathered}
\]

Several notebook cells use front-end-oriented box structures and direct matrix display. The final massive-vector section is among the cells not cleanly reproduced. The supplement is therefore partially, not fully, executable in the headless environment.

## Source-derived

- Official arXiv abstract page for \(2608.13529v1\), submitted 13 August 2026.
- Full 9-page official PDF.
- Complete official TeX source, bibliography, and 17.1 MB Mathematica supplement.
- Visual inspection of PDF pages 1, 4, 6, and 8, covering the abstract, gauge setup, scalar cancellation, kinetic coefficient, and interpretation.
- The action, background branches, gauge transformations, shift constraint, matter assumptions, and stated limitations above are source-derived.

## Checked

- **Mathematica:** the scalar-matter denominator reduces identically to
  \[
  M_{\mathrm{Pl}}^2X[(r+1)k^2+2a^2Jm^2X]
  \]
  after the Friedmann equation and the definition of \(\rho_X\) are applied.
- **Mathematica:** substituting that denominator reproduces the vacuum shift solution.
- **Mathematica:** the two displayed forms of \(K_V\) are algebraically identical.
- **Mathematica:** for \(k\neq0\) and \(r\neq-1\), \(\lim_{J\to0}K_V=0\).
- **Mathematica:** the ultraviolet limit is
  \[
  \lim_{k\to\infty}a^2k^2K_V
  =
  \frac{2a^4Jm^2X}{r+1}.
  \]
- **Perturbative-order audit:** when \(\bar A_\mu=0\), Maxwell/Proca terms involving a metric vector and two matter-vector perturbations are cubic, so the quadratic kinetic matrix is block diagonal.
- **Author notebook:** 246 of 275 Input cells replayed sequentially; the central scalar/vector gravitational quantities were generated.

## Blocked

- A completely clean notebook replay is blocked by front-end-dependent box structures and 29 failed or timed-out cells; the exact indices are recorded above.
- The final massive-vector notebook cells did not all execute successfully, so the Proca conclusion is independently supported by perturbative order counting rather than full notebook reproduction.
- No cubic or Hamiltonian constraint calculation is supplied, so the nonlinear fate of Branch II cannot be decided.

## Not independently verified

- The full second-order expansion of the dRGT/quasidilaton potential from first principles.
- Every cached output in the author notebook.
- The claimed absence of the Boulware--Deser ghost in the complete restricted theory.
- The mass and gradient terms of the reduced gravitational vector action, which the paper does not display.
- Stability of Branch I over a parameter region.
- Any \(k=0\) homogeneous-vector statement.
- Nonlinear degree-of-freedom removal or the strong-coupling scale.
- Nonminimal matter, nonzero or multi-vector backgrounds, imperfect fluids, and non-Abelian configurations.

## Reading map

1. Read Sections II--III for the model and the two background branches.
2. Read Section IV.C for the vector gauge invariants and the \(E_i=0\) choice.
3. Read equations (43)--(49) for the vacuum shift and \(K_V\).
4. Read equations (52)--(54) for the scalar-matter cancellation.
5. Read the Maxwell/Proca order-counting argument, which is simpler than the symbolic expansion.
6. Read Section VI for the correct distinction between linear strong coupling and nonlinear removal.

## Daily package

Back to [[2026_08_14_overview]].
