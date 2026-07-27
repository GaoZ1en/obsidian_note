---
paper id: 2607.21786v1
title: Static Black Holes and Iyer--Wald Entropy in f(R,K) Gravity
authors:
  - I. Díaz-Saldaña
  - J. López-Domínguez
  - Wilfredo Yunpanqui
  - Javier Chagoya
  - M. Sabido
publication date: 2026-07-23T20:05
abstract: |-
  The paper studies perturbative static, spherically symmetric black holes in a four-dimensional higher-curvature theory whose Lagrangian depends non-polynomially on the Ricci and Kretschmann scalars. It presents a first-order deformation of Schwarzschild and evaluates a local Iyer--Wald bifurcation-surface entropy. An independent variation and component audit finds that the last term of the printed field equation has the wrong sign in the convention used by the subsequent source components; the generic-n metric consequently fails the angular field equation, although the local Wald functional remains algebraically useful.
comments: "7 pages"
url: https://arxiv.org/abs/2607.21786v1
summary: "A useful local higher-curvature Wald functional, but not a valid generic-n black-hole solution of the stated action because the printed field tensor has a sign error and is not conserved."
tags: []
---

Back to [[2026_07_27_overview]].

**Verdict.** The local \(E^{abcd}=\partial\mathcal L/\partial R_{abcd}\) and Wald-contraction algebra are useful, but the paper does **not** establish its generic-\(n\) black-hole family. In the curvature convention that reproduces the paper's Schwarzschild source components, direct xAct variation gives the opposite sign for the last double-divergence term in Eq. (4). The printed tensor is not covariantly conserved, and the displayed metric solves only its \(tt\) and \(rr\) subsystem while failing the angular equation for generic \(n\). The exceptional factors vanish at \(n=\pm1\); both branches survive this first-order field-equation audit, with \(n=1\) reducing to the ordinary cosmological-constant branch.

This paper remains directly relevant to the Wald/CPS line as a compact repair benchmark. It does not derive the symplectic potential, Hamiltonian mass, integrability conditions, or first law. Its entropy formula should therefore be read as a conditional local functional for a perturbation of Schwarzschild, not as the entropy of the claimed generic-\(n\) solution.

## What the seven pages construct

| Source location | Construction | Audit status |
| --- | --- | --- |
| Sec. I | Reverse thermodynamic question: compare static black-hole and FRW apparent-horizon entropy laws | Motivation |
| Sec. II, Eqs. (1)--(4) | Non-polynomial \(f(\mathcal R,\mathcal K)\) action and metric field equation | Last double-divergence sign failed direct variation |
| Sec. III, Eqs. (5)--(15) | Expansion about Schwarzschild, effective source, radial ODEs, and generic \(n\ne0\) metric | Solves the printed \(tt,rr\) subsystem; fails conservation and the angular equation generically |
| Sec. III, Eqs. (16)--(18) | Perturbative root shift and \(n=1\) specialization | Generic shift is conditional and omits \(\ell^{-2n}\); \(n=1\) checked independently |
| Sec. III, Eqs. (19)--(22) | Separate \(n=0\) logarithmic branch and integration-constant choice | Algebra/source scope separated |
| Sec. IV, Eqs. (23)--(29) | Iyer--Wald tensor, area term, and power-law correction | Local contraction checked; interpretation on the claimed generic solution failed |
| Sec. IV, Eq. (30) | Expansion near \(n=-1\) | Logarithm present, but coefficient expansion incomplete |
| Sec. V | Outlook: temperature, stability, QNMs, rotation, phenomenology | Not carried out |
| Appendices | None | — |

## Theory, branches, and dimensions

The four-dimensional action is

$$
\mathcal S
=
\frac1{16\pi G}
\int d^4x\sqrt{-g}
\left[
\mathcal R
+\frac{\lambda}{\ell^{2n}}
f(\mathcal R,\mathcal K)
\right],
\tag{1}
$$

where

$$
\mathcal K
=
\mathcal R_{\alpha\beta\gamma\delta}
\mathcal R^{\alpha\beta\gamma\delta},
$$

and

$$
f=-X^{1-n},
\qquad
X=\mathcal R+\sqrt{6\mathcal K-\mathcal R^2}.
\tag{2}
$$

The dimensions are

$$
[X]=L^{-2},
\qquad
[f]=L^{2n-2},
\qquad
\left[
\ell^{-2n}f
\right]=L^{-2},
$$

with dimensionless \(\lambda\). The source does not state:

- a Riemann-sign convention, although its later components select one operationally;
- the real branch/domain of the square root and \(X^{1-n}\);
- an allowed range of real \(n\);
- a reference scale for logarithms in the \(n=0\) metric.

The metric signature is inferred to be \((-+++)\).

## The field-equation sign and the Noether-identity test

The field equation is

$$
G_{\mu\nu}
+\frac{\lambda}{\ell^{2n}}
\Sigma_{\mu\nu}
=0,
\tag{3}
$$

with

$$
\begin{aligned}
\Sigma_{\mu\nu}
={}&
f_{\mathcal R}\mathcal R_{\mu\nu}
-\frac12g_{\mu\nu}f
+
\left(
g_{\mu\nu}\Box-\nabla_\mu\nabla_\nu
\right)
f_{\mathcal R}
\\
&+
2f_{\mathcal K}
\mathcal R_\mu{}^{\alpha\beta\gamma}
\mathcal R_{\nu\alpha\beta\gamma}
-4\nabla^\alpha\nabla^\beta
\left(
f_{\mathcal K}
\mathcal R_{\mu\alpha\nu\beta}
\right).
\end{aligned}
\tag{4}
$$

Here

$$
f_{\mathcal R}
=
\frac{\partial f}{\partial\mathcal R},
\qquad
f_{\mathcal K}
=
\frac{\partial f}{\partial\mathcal K}.
$$

Equation (4) is the source's printed expression. Fixing the curvature convention by requiring

$$
\mathcal R_{trtr}=-\frac{2M}{r^3},
\qquad
\left.
\epsilon_{\mu\nu}\epsilon_{\alpha\beta}
\mathcal R^{\mu\nu\alpha\beta}
\right|_{r=2M}
=-\frac1{M^2},
$$

as in its entropy calculation, a direct xAct `VarL` calculation gives

$$
+4\nabla^\alpha\nabla^\beta
\left(
f_{\mathcal K}
\mathcal R_{\mu\alpha\nu\beta}
\right),
\tag{4 corrected}
$$

not the printed \(-4\) term. This is not a removable convention mismatch.

The Euler tensor of a diffeomorphism-invariant metric action must satisfy an off-shell Noether identity. The tensor used by the paper instead gives, on Schwarzschild,

$$
\nabla_\mu\Sigma^\mu{}_r
=
2^{\frac32-\frac{5n}{2}}
3^{2-n}
M^{1-n}
(n^2-1)
r^{3n-4},
\tag{4a}
$$

with all other divergence components zero. The corrected \(+4\) tensor is covariantly conserved in the same component calculation.

On Schwarzschild,

$$
\mathcal R_{\mu\nu}^{(0)}=0,
\qquad
\mathcal R^{(0)}=0,
\qquad
\mathcal K_0=\frac{48M^2}{r^6},
$$

so

$$
X_0=\sqrt{6\mathcal K_0}
=\frac{12\sqrt2\,M}{r^3}.
$$

The chain rule gives

$$
f_{\mathcal R}^{(0)}
=-(1-n)X_0^{-n},
\qquad
f_{\mathcal K}^{(0)}
=-3(1-n)X_0^{-(n+1)}.
\tag{7}
$$

Because \(\Sigma_{\mu\nu}\) is already multiplied by \(\lambda\), the first-order metric equation is

$$
\delta G_{\mu\nu}
=
-\ell^{-2n}
\Sigma_{\mu\nu}^{(0)}.
\tag{8}
$$

No \(\delta\Sigma_{\mu\nu}\) term enters until \(O(\lambda^2)\).

## The printed radial subsystem in areal-radius gauge

The ansatz is

$$
ds^2
=
-P(r)dt^2
+Q(r)dr^2
+r^2d\Omega^2,
\tag{9}
$$

with

$$
P=\mathscr F_0+\lambda A,
\qquad
Q=(\mathscr F_0+\lambda B)^{-1},
\qquad
\mathscr F_0=1-\frac{2M}{r}.
\tag{10--11}
$$

Thus

$$
h_{tt}=-A,
\qquad
h_{rr}=-\frac{B}{\mathscr F_0^2}
$$

in this gauge. The two radial equations are

$$
\frac1{r^2}\frac d{dr}(rB)
=
-\ell^{-2n}
\Sigma^{(0)t}{}_t,
\tag{12a}
$$

$$
\frac{rB-2MA}{r^2(r-2M)}
+\frac{A'}r
=
-\ell^{-2n}
\Sigma^{(0)r}{}_r.
\tag{12b}
$$

The Schwarzschild effective source is packaged as

$$
\Sigma^{(0)t}{}_t
=
\kappa_nM^{-n}r^{3(n-1)}
(\alpha_nM-\beta_nr),
\tag{13a}
$$

$$
\Sigma^{(0)r}{}_r
=
\kappa_nM^{-n}r^{3(n-1)}
(\psi_nM+\sigma_nr),
\tag{13b}
$$

where

$$
\kappa_n=2^{-5n/2}3^{1-n},
$$

$$
\alpha_n
=
n\left[
1-5\sqrt2
+n\left(
5+\sqrt2+6(\sqrt2-1)n
\right)
\right],
$$

$$
\beta_n
=(n-1)(3n+1)
\left[
\sqrt2+(\sqrt2-1)n
\right],
$$

$$
\psi_n
=
4\sqrt2
+n\left[
3+\sqrt2-3(\sqrt2+1)n
\right],
$$

$$
\sigma_n
=(n-1)
\left[
\sqrt2+(\sqrt2+2)n
\right].
\tag{14}
$$

For \(n\ne0\), the paper's candidate metric is

$$
\begin{aligned}
A(r)
={}&
-\frac{\kappa_nM^{-n}}{3n\ell^{2n}}
r^{3n-1}
(\psi_nM+\omega_nr)
+\frac{c_1}{r}
+c_2\mathscr F_0,
\\
B(r)
={}&
-\frac{\kappa_nM^{-n}}{3n\ell^{2n}}
r^{3n-1}
\left(
\alpha_nM
-\frac{3n}{3n+1}\beta_nr
\right)
+\frac{c_1}{r},
\end{aligned}
\tag{15}
$$

with

$$
\omega_n=\sigma_n+\frac{\beta_n}{3n+1}.
$$

The factors \(3n+1\) cancel against the same factor in \(\beta_n\); the printed formula only looks singular at \(n=-1/3\). The source should simplify it or define the value by continuity.

The mode \(c_2\mathscr F_0\) is removed by a constant rescaling of \(t\). The \(c_1/r\) mode is a perturbative mass shift unless boundary conditions or a fixed mass convention retain it.

Mathematica substitution verifies that Eq. (15) solves the two printed radial equations (12a)--(12b). That does not make it a solution of the action: those equations use the nonconserved printed source and do not enforce the angular component. On the displayed metric, the remaining mixed angular equation has residual

$$
\delta G^\theta{}_\theta
+\ell^{-2n}\Sigma^\theta{}_\theta\big|_{\mathrm{printed}}
=
-2^{\frac12-\frac{5n}{2}}
3^{2-n}
\ell^{-2n}
M^{1-n}
(n^2-1)
r^{3n-3}.
\tag{15a}
$$

For the correctly varied action, define

$$
C_n
=
2^{\frac32-\frac{5n}{2}}
3^{1-n}
\ell^{-2n}
M^{-n}
(n^2-1)
r^{3n-3}.
$$

Exact component substitution gives

$$
\begin{aligned}
\mathcal E^t{}_t
&=
C_n[-M-6Mn+r+3nr],
\\
\mathcal E^r{}_r
&=
C_n(3M-r),
\\
\mathcal E^\theta{}_\theta
&=
-\frac{C_n}{2}[5M-6Mn+3nr].
\end{aligned}
\tag{15b}
$$

Thus Eq. (15) is on shell only at the exceptional values \(n=\pm1\), not for generic \(n\).

As a formal property of the printed metric, the leading correction grows as \(r^{3n}\), motivating the source's \(n<0\) falloff statement. This does not establish either a solution or regularity of the nonanalytic action derivatives as \(X\to0\).

## The two roots of the printed metric coincide at first order

Write

$$
r_H=2M+\lambda\,\delta r.
$$

The root of \(g^{rr}=\mathscr F_0+\lambda B\) is

$$
\delta r_B=-2M B(2M),
$$

while the root of \(P=\mathscr F_0+\lambda A\) is

$$
\delta r_A=-2M A(2M).
$$

Independent Mathematica substitution within the printed metric gives

$$
\delta r_A-\delta r_B=0
$$

for the full printed generic expression. Explicitly,

$$
\delta r
=
-c_1
+
\frac{2^{n/2}}{3^n}
\frac{M^{2n+1}}{\ell^{2n}}
\left[
1+\sqrt2+(\sqrt2-1)n
\right].
\tag{16--17 corrected}
$$

For \(c_1=0\),

$$
r_H
=
2M
+
\lambda
\frac{M}{\ell^{2n}}
\left(
\frac{\sqrt2M^2}{3}
\right)^n
\left[
1+\sqrt2+(\sqrt2-1)n
\right].
$$

The source's Eq. (17) omits \(\ell^{-2n}\). Its own Eq. (15) and the \(c_1\) choice in Eq. (22) contain the factor, and dimensional analysis requires it.

Choosing

$$
c_1
=
\frac{2^{n/2}}{3^n}
\frac{M^{2n+1}}{\ell^{2n}}
\left[
1+\sqrt2+(\sqrt2-1)n
\right]
\tag{22}
$$

keeps the two roots at \(r=2M\). For generic \(n\), these are roots of a metric that fails the action equation and therefore have no established black-hole interpretation. Even for an on-shell exceptional branch, coincident local roots do not by themselves prove that the surface is the global outer event horizon; that requires a regular ingoing extension and global causal information.

## The \(n=1\) cosmological-constant branch

At \(n=1\),

$$
f=-1,
$$

so

$$
\mathcal L
=
\frac1{16\pi G}
\left(
\mathcal R-\frac{\lambda}{\ell^2}
\right)
=
\frac1{16\pi G}
\left(
\mathcal R-2\Lambda_{\mathrm{eff}}
\right),
$$

with

$$
\Lambda_{\mathrm{eff}}
=\frac{\lambda}{2\ell^2}.
$$

The checked metric functions are

$$
A=B=-\frac{r^2}{6\ell^2},
$$

and the horizon shift is

$$
r_H
=
2M
+
\frac43
\frac{\lambda M^3}{\ell^2}.
$$

The paper prints the \(\ell=1\) expressions without declaring that convention. This is an additional dimensional error, separate from the decisive field-equation sign failure.

## The separate \(n=0\) branch

The printed generic expression has an explicit \(1/n\), so the paper treats \(n=0\) separately:

$$
\begin{aligned}
A(r)
={}&
c_2
+
\frac{
c_1-2M(3\sqrt2+c_2)
+6\sqrt2(r-2M)\log r
}{r},
\\
B(r)
={}&
\frac{c_1}{r}-3\sqrt2.
\end{aligned}
\tag{19}
$$

The local root is

$$
r_H
=
2M+\lambda(6\sqrt2M-c_1).
\tag{20}
$$

This branch also solves only the printed \(tt,rr\) equations. Its printed angular residual is

$$
\delta G^\theta{}_\theta
+\Sigma^\theta{}_\theta\big|_{\mathrm{printed},\,n=0}
=
\frac{9\sqrt2M}{r^3},
$$

so it is not a full solution even of the source's own tensor equation.

A dimensionless logarithm should be written \(\log(r/r_0)\); changing \(r_0\) shifts an integration constant. After the paper's radial and mass redefinitions, the metric has an angular deficit but also logarithmic \(g_{tt}\) growth. Consequently, an ADM-like interpretation of the redefined mass is not established merely by analogy with a pure deficit-angle geometry.

## The conditional local Iyer--Wald functional

For a Lagrangian depending algebraically on \(g\) and the Riemann tensor,

$$
S_W
=
-2\pi
\oint_{\mathcal H}
\frac{\partial\mathcal L}
{\partial\mathcal R_{\mu\nu\alpha\beta}}
\epsilon_{\mu\nu}\epsilon_{\alpha\beta}
\sqrt h\,d^2x.
\tag{23}
$$

The binormal satisfies

$$
\epsilon_{\mu\nu}\epsilon^{\mu\nu}=-2.
$$

For a generic diagonal metric, its coordinate component is not simply \(\epsilon_{tr}=1\); it contains the normalization \(\sqrt{PQ}\). At the unperturbed Schwarzschild horizon used in the \(O(\lambda)\) higher-curvature term, the paper's component choice is adequate.

Define

$$
\mathcal C^{\mu\nu\alpha\beta}
=
\frac12
\left(
g^{\mu\alpha}g^{\nu\beta}
-g^{\mu\beta}g^{\nu\alpha}
\right).
$$

Then

$$
\frac{\partial\mathcal L}
{\partial\mathcal R_{\mu\nu\alpha\beta}}
=
\frac1{16\pi G}
\left[
\mathcal C^{\mu\nu\alpha\beta}
+
\frac{\lambda}{\ell^{2n}}
\left(
f_{\mathcal R}\mathcal C^{\mu\nu\alpha\beta}
+2f_{\mathcal K}
\mathcal R^{\mu\nu\alpha\beta}
\right)
\right].
\tag{24}
$$

The Einstein term gives

$$
S_{\mathrm{GR}}=\frac{\mathcal A_H}{4G}.
\tag{25}
$$

Because the higher-curvature term already carries \(\lambda\), its curvature invariants and binormal contraction may be evaluated on the unperturbed Schwarzschild bifurcation sphere. The Einstein area term, however, requires the area of an actual perturbed solution. Thus the local higher-curvature coefficient below is independently meaningful, while the mass-to-area shift inferred from the failed generic metric is not.

## Horizon algebra and the power-law entropy

At \(r=2M\),

$$
\mathcal A_H^{(0)}=16\pi M^2,
$$

$$
X_H^{(0)}
=
\frac{3\sqrt2}{2M^2},
$$

and xAct, with the convention used by the source, gives

$$
\gamma^{(0)}
:=
\left(
\epsilon_{\mu\nu}\epsilon_{\alpha\beta}
\mathcal R^{\mu\nu\alpha\beta}
\right)^{(0)}
=-\frac1{M^2}
=-\frac{16\pi}{\mathcal A_H^{(0)}}.
$$

The higher-curvature contribution is

$$
S_{\mathrm{HC}}
=
-\frac{\lambda}{4G\ell^{2n}}
\left[
-f_{\mathcal R}^{(0)}
+f_{\mathcal K}^{(0)}\gamma^{(0)}
\right]
\mathcal A_H.
\tag{27}
$$

Substitution gives

$$
\begin{aligned}
S_{\mathrm{HC}}
=
-\frac{\lambda}{\ell^{2n}G}
&\,2^{-5/2-7n/2}
(3\pi)^{-n}
(1-n)
\\
&\times(2+\sqrt2)
\mathcal A_H^{n+1}.
\end{aligned}
\tag{28}
$$

Equivalently,

$$
\boxed{
S_W
=
\frac{\mathcal A_H}{4G}
+
\frac{\lambda}{\ell^{2n}}
\frac{(n-1)(1+\sqrt2)G^n}
{(6\sqrt2\pi)^n}
\left(
\frac{\mathcal A_H}{4G}
\right)^{n+1}
}.
\tag{29}
$$

Mathematica gives zero algebraic residual between Eqs. (27), (28), and (29). This verifies the local Wald contraction, not the existence of the background on which the paper evaluates it. For generic \(n\), Eq. (29) is therefore a conditional entropy-area functional; inserting the area shift of Eq. (15) would rely on a failed solution.

## Distinguished values of \(n\)

- \(n=1\): the explicit higher-curvature entropy term vanishes because \(f=-1\). The entropy is still \(\mathcal A_H/(4G)\), but \(\mathcal A_H\) is the Schwarzschild--(A)dS horizon area.
- \(n=\tfrac12\): the correction is proportional to \(\mathcal A_H^{3/2}\). The source notes a coefficient-level difference from its FRW apparent-horizon construction.
- \(n=0\): the entropy correction remains linear in area. This resembles a Newton-constant rescaling at the entropy level, not necessarily in the full asymptotic dynamics.
- \(n=-1\): the explicit correction is area independent. This exceptional metric is on shell in the first-order component audit, although its global horizon and asymptotic phase space remain unchecked.

The \(n=-1\) constant does not establish equality with a pure four-dimensional Gauss--Bonnet entropy functional. Although

$$
f|_{\mathcal R=0,n=-1}
=-6\mathcal K,
$$

one must differentiate the original \(f(\mathcal R,\mathcal K)\) before restricting to Ricci flatness. At the background,

$$
f_{\mathcal R}^{(0)}
=-2X_0\ne0,
$$

whereas a pure \(-6\mathcal K\) term has \(f_{\mathcal R}=0\). The area independence is real; the Gauss--Bonnet functional identification and coefficient are not established.

Indeed, differentiating before restriction gives

$$
P_f^{abcd}-P_{-6\mathcal K}^{abcd}
=
-2\sqrt{6\mathcal K}\,
\mathcal C^{abcd}.
$$

The two checked constants are

$$
\Delta S_{f,n=-1}
=
-\frac{12(2+\sqrt2)\pi\lambda\ell^2}{G},
\qquad
\Delta S_{-6\mathcal K}
=
-\frac{24\pi\lambda\ell^2}{G}.
$$

For

$$
n=-1+\varepsilon,
$$

the power produces

$$
S_{\mathrm{BH}}^{n+1}
=
1+\varepsilon\log S_{\mathrm{BH}}
+O(\varepsilon^2).
\tag{30}
$$

But the prefactor also depends on \(n\). Writing \(\Delta S_{-1}\) for the constant above, Mathematica gives the complete expansion

$$
\Delta S
=
\Delta S_{-1}
\left[
1+\varepsilon
\left(
\log\frac{G S_{\mathrm{BH}}}
{6\sqrt2\pi\ell^2}
-\frac12
\right)
\right]
+O(\varepsilon^2).
\tag{30 corrected}
$$

The logarithm is present, but Eq. (30) alone is not the complete \(O(\varepsilon)\) correction.

## What a CPS completion would still need

| Paper object | CPS interpretation | Missing construction |
| --- | --- | --- |
| Scalar \(\mathcal L(g,R)\) | Covariant form \(\mathbf L=\mathcal L\,\boldsymbol\epsilon\) | The scalar/form notation is not reconciled |
| Metric equation | \(\delta\mathbf L=\mathbf E^{ab}\delta g_{ab}+d\boldsymbol\theta\) | \(\boldsymbol\theta\) is not derived |
| \(E^{abcd}=\partial\mathcal L/\partial R_{abcd}\) | Local Noether-charge tensor | Checked only in the entropy contraction |
| Bifurcation sphere | \(\chi=0\), \(\nabla_a\chi_b=\kappa\epsilon_{ab}\) | Global horizon and normalization still matter |
| Wald entropy | \(2\pi\kappa^{-1}\int Q_\chi\) | Only the bifurcation reduction is evaluated |
| \(c_1,c_2\) | Parametric solution directions | Their charge/gauge meaning depends on boundary conditions |
| Symplectic current | \(\boldsymbol\omega=\delta_1\boldsymbol\theta[\delta_2g]-\delta_2\boldsymbol\theta[\delta_1g]\) | Absent |
| Hamiltonian variation | \(\delta H_\xi=\int(\delta Q_\xi-\xi\cdot\theta)\) | Absent |
| First law | Equality of outer and horizon Hamiltonian variations | Absent |

The local Noether-charge functional can be evaluated without an asymptotic completion, but calling it black-hole entropy still requires an actual stationary solution with a regular bifurcation surface. A first law additionally requires an admissible outer boundary, a normalized \(\partial_t\), a finite Hamiltonian mass, and integrability.

## Concrete project extensions

1. Correct the sign in \(\Sigma_{\mu\nu}\), recompute all Schwarzschild source components, and solve a conserved set of \(tt\), \(rr\), and angular equations.
2. Compute \(\boldsymbol\theta\), \(Q_\xi\), \(k_\xi=\delta Q_\xi-\xi\cdot\theta\), and \(\boldsymbol\omega\) for the non-polynomial model.
3. Transform any repaired solution to ingoing coordinates and distinguish a regular Killing horizon from a coordinate root.
4. For a valid \(n<0\) branch, impose an asymptotic phase space and determine the charge meaning of \(c_1,c_2\).
5. Compute the corrected surface gravity and test the first law against the outer Hamiltonian.
6. Treat the \(n=0\) logarithmic/deficit branch with its own renormalized boundary conditions.
7. Compare the full \(n=-1\) functional derivative, before Ricci-flat restriction, with true four-dimensional Gauss--Bonnet.
8. Reconstruct the FRW apparent-horizon coefficient with the same temperature and Newton-constant conventions.

## Verification log

### Checked

- Mathematica: the dimensions of \(X\), \(f\), \(\ell^{-2n}f\), \(A\), \(B\), and \(c_1\).
- Mathematica: the chain-rule derivatives in Eq. (7).
- xAct: in the convention matching the source's curvature/binormal contraction, direct variation gives \(+4\nabla^\alpha\nabla^\beta(f_{\mathcal K}R_{\mu\alpha\nu\beta})\), opposite to Eq. (4).
- xAct/xCoba: the printed source has the nonzero radial divergence in Eq. (4a), while changing the last sign to \(+4\) restores covariant conservation.
- xAct/xCoba: the displayed metric has the printed angular residual (15a) and the correct-action residuals (15b); all vanish identically only for \(n=\pm1\).
- Mathematica: substituting Eq. (15) into the two **printed** radial ODEs gives residuals \(\{0,0\}\); this is a subsystem check only.
- Mathematica: within the printed metric, the \(P=0\) and \(g^{rr}=0\) roots have identical first-order shifts; their difference is zero.
- Mathematica: restoring \(\ell^{-2n}\) makes the generic horizon-shift residual zero, and Eq. (22) is exactly the value that sets the common shift to zero.
- Mathematica: at \(n=1\),

  $$
  A=B=-r^2/(6\ell^2),
  $$

  and \(\Lambda_{\mathrm{eff}}=\lambda/(2\ell^2)\).
- xAct/xCoba: Schwarzschild has \(\mathcal R=0\),

  $$
  \mathcal K=48M^2/r^6,
  $$

  and \(\gamma_H=-1/M^2\) in the paper's convention.
- Mathematica: Eqs. (27), (28), and (29) are algebraically equivalent; both residuals are zero.
- Mathematica: the special values \(n=1,\tfrac12,0,-1\) and the full coefficient expansion near \(n=-1\).

### Blocked

- Abstract reduction of the complete non-polynomial xAct variation to the compact tensor form: `FullSimplification` aborted because the local Invar database was unavailable. The decisive \(q\mathcal K\) variation, exact components, and Noether-identity check were not blocked.
- A repaired generic-\(n\) solution after recomputing the source with the correct sign.
- A global event-horizon identification for either an exceptional or repaired solution.
- Regularity in ingoing coordinates for all \(n\) and choices of integration constants.
- Asymptotic Hamiltonian charges, integrability, and the first law.
- The real/analytic domain of the non-polynomial action near flat infinity and across the corrected solution.
- The FRW/static coefficient comparison, which requires reconstructing the conventions of the earlier paper.

### Failed

- The last double-divergence term in Eq. (4) has the wrong sign in the convention used by the paper's curvature components.
- The printed \(\Sigma_{\mu\nu}\) is not covariantly conserved for generic \(n\), violating the Noether identity required of the stated diffeomorphism-invariant action.
- Equation (15) solves the printed \(tt,rr\) subsystem but fails the angular equation and the correctly varied action equations for generic \(n\); its horizon and mass-to-area claims are consequently not established.
- The separate \(n=0\) branch also fails the printed angular equation.
- Eq. (17) omits \(\ell^{-2n}\) and is dimensionally inconsistent for \(n\ne0\).
- The \(n=1\) statements omit \(\ell^{-2}\); the correct \(A,B,\Lambda_{\mathrm{eff}},r_H\) are given above.
- Calling the root of \(g^{rr}\) alone the event horizon overstates the local perturbative evidence, even though the \(P\) and \(g^{rr}\) roots coincide at this order.
- The \(n=-1\) comparison does not establish equality with the Gauss--Bonnet entropy functional because differentiation and Ricci-flat restriction do not commute.
- Eq. (30) expands only \(S_{\mathrm{BH}}^{n+1}\), not the \(n\)-dependent coefficient multiplying it.
- The generic statement \(\epsilon_{tr}=1\) omits the normalized \(\sqrt{PQ}\) factor; it is harmless only in the unperturbed background evaluation actually used.
- The \(n=0\) \(\log r\) lacks a reference length, and the resulting logarithmic asymptotic does not justify an ADM-mass interpretation by a pure deficit-angle analogy.
