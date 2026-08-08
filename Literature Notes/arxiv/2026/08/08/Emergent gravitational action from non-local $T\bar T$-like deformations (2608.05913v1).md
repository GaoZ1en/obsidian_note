---
paper id: 2608.05913v1
title: Emergent gravitational action from non-local $T\bar T$-like deformations
authors:
  - Yun-Ze Li
  - Bo-Rui Li
  - Yu-Xiao Liu
  - Song He
publication date: 2026-08-06T11:41
abstract: |-
  The paper studies the first-order change in the background-metric effective action produced by bilocal stress-tensor deformations. A heat-kernel treatment converts stress-tensor contact or short-distance data into local curvature invariants. Free fermion, Proca, and quadratic background-field Yang--Mills examples are model-dependent, while the leading CFT stress-tensor OPE and the trace-anomaly contact sector give contributions controlled by C_T and the type-A anomaly coefficient.
comments: "43 pages, no figures"
url: https://arxiv.org/abs/2608.05913v1
summary: "A reusable two-heat-kernel mechanism for extracting log-controlled local curvature terms from nonlocal stress-tensor deformations, with a sharp distinction between model-dependent determinants and CFT-universal OPE/anomaly data."
tags: []
---

Back to [[2026_08_08_overview]].

# Usefulness and claim tier

The transferable result is a method for computing the \(O(\lambda)\) **local geometric part** of a quantum effective action for a nondynamical background metric. The paper does not derive a propagating composite graviton, a complete dynamical gravity theory, or the ordinary \(\lambda=0\) Sakharov action.

Its two strongest universal sectors are:

1. the leading \(TT\) identity-OPE term fixed by \(C_T\);
2. the trace-contact term fixed by the Weyl anomaly.

# Bilocal deformation and the two heat kernels

The seed theory is deformed by

\[
\partial_\lambda S^{(\lambda)}
=\int_{\mathcal M\times\mathcal M}
d\mu(x)d\mu(y)\,
T_{\mu\nu}(x)
H^{\mu\nu,\rho\sigma}(x,y)
T_{\rho\sigma}(y).
\tag{1}
\]

The nonlocal kernel is prescribed by a geometric operator,

\[
F_{\mu\nu\alpha\beta}(x;\nabla)
G^{\alpha\beta,\rho\sigma}(x,y)
=\widetilde\delta(x-y)
\delta_\mu^\rho\delta_\nu^\sigma,
\tag{2}
\]

and local projectors \(I,J\),

\[
H^{\mu\nu,\rho\sigma}
=I_{\mu'\nu'}^{\mu\nu}
G^{\mu'\nu',\rho'\sigma'}
J_{\rho'\sigma'}^{\rho\sigma}.
\tag{3}
\]

At first order,

\[
W^{(1)}[g]
=\lambda\int d\mu(x)d\mu(y)\,
H^{\mu\nu,\rho\sigma}(x,y)
\langle T_{\mu\nu}(x)T_{\rho\sigma}(y)\rangle_{(0)}.
\tag{5}
\]

Two independent heat kernels enter:

- the seed determinant generates the contact or short-distance \(TT\) data;
- the inverse of \(F\) decides which local geometric invariant that data produces.

For an even \(N\)-th order minimal seed operator,

\[
\widehat D=(-\Box)^{N/2}\widehat1+\widehat P(\nabla),
\]

the diagonal heat kernel has

\[
K(\tau;x,x;\widehat D)
=\operatorname{tr}_V
\sum_{n=0}^\infty
\tau^{(2n-d)/N}\widehat E_{2n}(x).
\tag{13}
\]

The logarithmic seed coefficient \(\widehat E_d\), varied twice with respect to the metric, gives

\[
\langle T_{\mu\nu}(x)T_{\rho\sigma}(y)\rangle_{\rm cont}^{(0)}
=-2N\ln(\Lambda/\mu_0)
E_{\mu\nu\rho\sigma}(x;\nabla)
\widetilde\delta(x-y)+\cdots.
\tag{15}
\]

The second heat kernel represents \(F^{-1}\),

\[
G(x,y)=\int_0^\infty d\tau\,K(\tau;x,y;F).
\tag{17}
\]

Its coincidence expansion supplies a second logarithm. The resulting generic local term is

\[
W_{\rm ren,SI}^{(1)}
=-2MN\ln^2(\mu/\mu_0)
\int d\mu\,B_{d-M}^{(d)}.
\tag{29}
\]

The explicit factor \(\lambda\) is absent from the printed equations (23) and (29), although it is present in their parent formulas and in every later example. The generic result should therefore be read with an overall \(\lambda\).

The reusable mechanism is

\[
\boxed{
\text{seed UV coefficient}
\times
\text{coincidence coefficient of }F^{-1}
\longrightarrow
\text{local curvature invariant}.}
\]

# Free-field determinants in four dimensions

The examples choose a trace-reversing projector and an inverse linearized-gravity-type operator,

\[
F_{\mu\nu\rho\sigma}
=-g_{\mu\rho}g_{\nu\sigma}\Box
-R_{\mu\rho\nu\sigma}
-R_{\nu\rho\mu\sigma}.
\tag{31}
\]

This kernel is deformation data; it is not derived from the seed theory.

## Massive Dirac fermion

Squaring the Dirac operator gives

\[
D_F=-\nabla^2+\frac14R+m^2.
\tag{35}
\]

The displayed first-order action is

\[
\begin{aligned}
W_{\rm ren}^{(1)}
=\frac{\lambda m^2\ln^2(\mu/m)}{128\pi^4}
\int d^4x\sqrt g\bigg[&
-\frac{20m^2}{3}R
+\frac{10}{9}R^2
+\frac{112}{45}R_{\mu\nu}R^{\mu\nu}\\
&-8R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma}
+O(R^3,\nabla^6)\bigg].
\end{aligned}
\tag{42}
\]

The mass supplies the scale needed for an Einstein term, while spin-bundle curvature changes the curvature-squared coefficients.

## Proca field

The nonminimal operator is

\[
D^{\mu\nu}
=-g^{\mu\nu}\nabla^2
+\nabla^\mu\nabla^\nu
+m^2g^{\mu\nu}+R^{\mu\nu}.
\tag{45}
\]

The result is

\[
\begin{aligned}
W_{\rm ren}^{(1)}
=\frac{\lambda m^2\ln^2(\mu/m)}{128\pi^4}
\int d^4x\sqrt g\big[&
2m^2R
+3R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma}\\
&-2R_{\mu\nu}R^{\mu\nu}+R^2
+O(R^3,\nabla^6)\big].
\end{aligned}
\tag{50}
\]

Matching the Einstein coefficient gives

\[
G_{\rm eff}
=\frac{4\pi^3}
{\lambda m^4\ln^2(\mu/m)}.
\tag{51}
\]

The sign depends on \(\lambda\) and on action conventions. Maxwell is not obtained by setting \(m=0\): gauge fixing and ghosts alter the determinant, and the displayed Maxwell correction starts only at \(O(R^3,\nabla^6)\).

## Quadratic background-field Yang--Mills sector

In background Feynman gauge,

\[
W=-\ln\det(-\nabla^2)+\frac12\ln\det D.
\tag{59}
\]

The induced term is

\[
\begin{aligned}
W_{\rm ren}^{(1)}
=\frac{11\lambda\ln^2(\mu/\mu_0)}{384\pi^4}
\int d^4x\sqrt g\big[&
3R\,\gamma_{ab}\bar F^a_{\mu\nu}\bar F^{b\mu\nu}\\
&-14R_{\mu\nu}\gamma_{ab}
\bar F^{a\mu}{}_{\alpha}\bar F^{b\nu\alpha}\\
&+3R_{\mu\nu\rho\sigma}\gamma_{ab}
\bar F^{a\mu\nu}\bar F^{b\rho\sigma}
+\cdots\big].
\end{aligned}
\tag{62}
\]

There is no pure Einstein term because this massless perturbative sector has no intrinsic scale for a two-derivative pure-gravity coefficient.

# C_T and the local CFT short-distance sector

The universal flat-space correlator is

\[
\langle T_{\mu\nu}(x)T_{\rho\sigma}(y)\rangle
=\frac{C_T}{s^{2d}}
I_{\mu\alpha}(s)I_{\nu\beta}(s)
E_{\rho\sigma}^{\alpha\beta}.
\tag{63}
\]

On curved space the leading identity-OPE singularity is covariantized as

\[
\langle T_{\mu\nu}(x)T_{\rho\sigma}(y)\rangle_g
=\frac{\mathcal T_{\mu\nu,\rho\sigma}(x,y)}
{(2\sigma(x,y))^d}
+O(\sigma^{-d+1}).
\tag{64}
\]

This is not the full curved-space correlator. Subleading singularities depend on \(TTT\), \(TTO\), other OPE coefficients, one-point functions, the state, and counterterm choices.

The calculation continues to \(D=d-\epsilon\), uses Riemann normal coordinates, angular averages the direction-dependent tensor structures, and separates local UV and global/IR parts of the Green function. For a massless second-order kernel in \(d=4\), the universal sector begins at six derivatives; a kernel mass \(m\) permits \(m^4R\), \(m^2R^2\), and related lower-derivative terms in equation (104).

The meaning of ``universal'' is therefore precise but limited:

\[
C_T\text{ fixes the quantum amplitude},
\qquad
F\text{ fixes the geometric response channel}.
\]

# Trace deformation and the Weyl anomaly

For \(\Theta=g_{\mu\nu}T^{\mu\nu}\), a CFT has no separated-point \(\Theta\Theta\) correlator. In four dimensions,

\[
\mathcal A_4
=\frac1{(4\pi)^2}
\left(-aE_4+cW^2+\widetilde b\Box R\right).
\tag{109}
\]

After setting the scheme-dependent trivial anomaly \(\widetilde b\) aside, Weyl variation gives the contact term

\[
\langle\Theta(x)\Theta(y)\rangle
=-\frac{8a}{(4\pi)^2}
G^{\mu\nu}(x)\nabla_\mu\nabla_\nu
\widetilde\delta(x,y).
\tag{113}
\]

The type-B coefficient \(c\) does not enter because \(\sqrt g\,W^2\) is Weyl invariant in four dimensions.

For a minimal kernel \((-\Box+N)^{-1}\), the finite log-controlled action is equation (121). For \(N=m^2\), equation (122) contains

\[
\frac12m^4R,
\quad
-\frac13m^2R_{\mu\nu}R^{\mu\nu},
\quad
R\Box R,
\quad
R_{\mu\nu}\Box R^{\mu\nu},
\]

and cubic curvature invariants. This channel carries one \(\ln(\mu/\mu_0)\), rather than the generic double logarithm of the \(C_T\) sector.

# What can be reused

- Use the two-heat-kernel factorization when a nonlocal deformation is specified independently of the microscopic seed.
- Separate model-dependent determinant data from universal \(C_T\) or anomaly data.
- Treat masses in the seed and masses in the kernel differently: both lower derivative order, but they enter on different sides of the construction.
- Retain gauge-fixing and ghost determinants before interpreting a gauge-field result.
- Do not identify a local background-metric response with a dynamical graviton without a pole, sign, and state-space analysis.

# Verification note

**Checked:** Mathematica reproduced the proper-time logarithm, the dimensional matching of all fermion terms in (42), and the algebraic extraction of (51): the Einstein coefficient equals \(1/(16\pi G_{\rm eff})\) with zero residual. xAct independently returned \(\nabla_\mu G^{\mu\nu}=0\), the Bianchi identity needed for the anomaly contact operator. The related Mellin integral and sextic-oscillator check are recorded in the companion spectral note.

**Source-derived:** the metric functional derivatives, heat-kernel coefficients, nonminimal Proca determinant, gauge/ghost signs, Riemann-normal-coordinate angular averages, and long curvature-basis reductions were inspected in the source but not independently reproduced.

**Limitations:** only \(O(\lambda)\) is computed; power divergences and finite local terms are scheme-dependent; the smooth global Green-function remainder is not evaluated; cancellation of the auxiliary UV/IR separators requires omitted global contributions; the analysis assumes a boundaryless manifold or boundary conditions that remove total derivatives; kernel causality, positivity, and admissible boundary conditions are not established.

**Source issues:** equations (23) and (29) omit the overall \(\lambda\) present in their derivation and examples. Equation (115) prints \(\langle\Theta(x)\Theta(x)\rangle\) inside a bilocal integral; equations (114) and (116) show that \(\langle\Theta(x)\Theta(y)\rangle\) is intended.
