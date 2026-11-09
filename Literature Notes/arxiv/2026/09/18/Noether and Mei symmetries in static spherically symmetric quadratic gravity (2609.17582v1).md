---
paper id: 2609.17582v1
title: "Noether and Mei symmetries in static spherically symmetric quadratic gravity: variational consistency, constraints, and conserved curvature flux"
authors:
  - G. G. N. Nashed
  - A. Eid
  - Kazuharu Bamba
publication date: 2026-09-07T04:35
abstract: |-
  The paper reconstructs the static spherical reduction of pure metric R^2 gravity while retaining the equation removed by Schwarzschild-type radial gauge fixing. It distinguishes off-shell Noether, strong point-Mei, and polynomial Lie-point symmetries and relates a scaling charge to the covariant curvature flux H N R'.
comments: "15 pages"
url: https://arxiv.org/abs/2609.17582v1
summary: "The displayed reduced-action identities and curvature-flux law check out, but the three-generator Lie result is only a degree-at-most-two polynomial classification and its advertised audit script is absent from the arXiv source bundle."
tags: []
---

# Verdict

**Correct under the following precise conditions:** the calculation is restricted to vacuum metric pure $R^2$ gravity, the metric is varied before imposing $A B=1$, the removed $B$-equation is restored as $E_L=0$, and the Lie classification is read only on the regular normal-form sector $H N R\neq0$ within polynomial point generators of total degree at most two.

The paper's main local chain is reproducible:

1. the corrected gauge-fixed radial Lagrangian has Hessian determinant $24HNR$;
2. its combined scaling is an exact off-shell Noether symmetry;
3. the associated charge is $I_N=6HNR'-rE_L$;
4. the restored gravitational constraint gives $HNR'=C_R$;
5. the four-dimensional trace equation independently gives the same flux law.

This does **not** prove that the unrestricted point-symmetry algebra is three-dimensional, classify generalized Mei symmetries, or solve the nonzero-flux black-hole sector. The source claims an accompanying SymPy audit, but the downloaded arXiv source bundle contains only the TeX file and metadata; its $495\times60$ rank computation could therefore not be independently rerun from the supplied code.

# Why This Matters Here

The useful conceptual point is not the inventory of symmetry generators by itself. It is the order of operations:

> Vary the radial lapse-like metric component, identify its constraint, and only then impose the Schwarzschild-type gauge.

This is directly relevant to action-first covariant phase space work. A regular Hessian after gauge fixing does not erase the equation removed by that gauge fixing, and an identity that vanishes only on the restored constraint surface is weaker than an off-shell variational symmetry.

# Source Map

1. **Variational reduction:** derives an unfixed one-dimensional Lagrangian in $(A,B,N,R)$, varies the lapse-like variable $B$, and then imposes $A=H$, $B=H^{-1}$.
2. **Quadratic model:** specializes to $f(R)=R^2$ and writes the reduced equations, momenta, Hessian, radial energy, and restored constraint.
3. **Noether sector:** verifies radial translations and one combined scaling, and separates two individually unsuccessful candidate scalings.
4. **Mei and Lie sectors:** tests strong point-Mei generators and solves a degree-$\leq2$ polynomial Lie-point ansatz.
5. **Covariant interpretation:** derives the same conserved flux from the trace equation $\Box R=0$.
6. **Solution sectors:** separates nonzero constant curvature, degenerate scalar-flat, and dynamical-curvature branches.
7. **Scope:** explicitly leaves unrestricted point, generalized, and global nonzero-flux analyses open.

# Variational Reduction

The vacuum metric action is

$$\begin{align}
S[g]=\int d^4x\,\sqrt{-g}\,f(R),
\end{align}$$

with field equation

$$\begin{align}
f_R R_{\mu\nu}-\frac12 f g_{\mu\nu} +\left(g_{\mu\nu}\Box-\nabla_\mu\nabla_\nu\right)f_R=0.
\end{align}$$

The unfixed static spherical ansatz is

$$\begin{align}
ds^2=-A(r)dt^2+B(r)dr^2+N(r)d\Omega^2.
\end{align}$$

After introducing $R$ as an auxiliary minisuperspace coordinate and integrating the genuine second derivatives by parts, the paper obtains

$$\begin{align}
L_u=\sqrt{AB}\left\{ N(f-Rf_R)+2f_R +f_R\left[\frac{(N')^2}{2BN}+\frac{A'N'}{AB}\right] +f_{RR}R'\left[\frac{2N'}B+\frac{NA'}{AB}\right] \right\}.
\end{align}$$

The point of retaining $B$ until after variation is that $B'$ is absent, so its Euler--Lagrange equation is a radial constraint. Only after taking that variation does the paper impose

$$\begin{align}
A=H,\qquad B=H^{-1}.
\end{align}$$

The resulting gauge-fixed Lagrangian is

$$\begin{align}
L_f=N(f-Rf_R) +f_R\left[\frac{H(N')^2}{2N}+H'N'+2\right] +f_{RR}R'(2HN'+NH').
\end{align}$$

The velocity-independent term $2f_R$ is essential. It does not affect the Hessian, but its $R$-variation is $2f_{RR}$, so it cannot be discarded unless it is a genuine total derivative.

# Pure Quadratic Model

For $f(R)=R^2$,

$$\begin{align}
L=\frac{RH}{N}(N')^2+2RH'N'+4HR'N'+2NR'H'+4R-NR^2.
\end{align}$$

The auxiliary-curvature equation returns the Ricci scalar of

$$\begin{align}
ds^2=-Hdt^2+\frac{dr^2}{H}+N d\Omega^2:
\end{align}$$

$$\begin{align}
R=\frac{4N-4HNN''+H(N')^2-4H'NN'-2H''N^2}{2N^2}.
\end{align}$$

The momenta are

$$\begin{align}
p_H=2RN'+2NR',
\end{align}$$

$$\begin{align}
p_N=\frac{2RH}{N}N'+2RH'+4HR',
\end{align}$$

$$\begin{align}
p_R=4HN'+2NH'.
\end{align}$$

Their velocity Hessian satisfies

$$\begin{align}
\det W=24HNR.
\end{align}$$

Thus the gauge-fixed mechanical Legendre map is regular only where $HNR\neq0$. This is compatible with a constraint inherited from the unfixed gravitational action.

The radial energy is

$$\begin{align}
E_L=NR^2-4R+\frac{RH}{N}(N')^2 +2RH'N'+4HR'N'+2NR'H'.
\end{align}$$

The unfixed $B$-equation becomes

$$\begin{align}
E_L=0
\end{align}$$

on a regular patch with $H\neq0$. This is not an independently imposed zero-energy convention; it is the metric equation removed by the gauge $AB=1$.

# Three Distinct Symmetry Questions

## Off-Shell Noether Symmetry

For

$$\begin{align}
X_N=r\partial_r+H\partial_H+N\partial_N-R\partial_R,
\end{align}$$

the first-prolongation residual vanishes identically:

$$\begin{align}
X_N^{[1]}L+L=0.
\end{align}$$

The two pieces considered separately do not have the same status. For

$$\begin{align}
Y_2=r\partial_r+H\partial_H, \qquad Y_3=H\partial_H+N\partial_N-R\partial_R,
\end{align}$$

one finds

$$\begin{align}
Y_2^{[1]}L+L=4R-NR^2, \qquad Y_3^{[1]}L=E_L.
\end{align}$$

Therefore $Y_2$ is not a Noether symmetry of the corrected Lagrangian, while $Y_3$ becomes invariant only on the restored constraint shell. Their sum $X_N$ is the exact off-shell symmetry.

The corresponding Noether invariant is

$$\begin{align}
I_N=Hp_H+Np_N-Rp_R-rE_L.
\end{align}$$

Using the displayed momenta gives the exact algebraic identity

$$\begin{align}
Hp_H+Np_N-Rp_R=6HNR',
\end{align}$$

and hence

$$\begin{align}
I_N=6HNR'-rE_L.
\end{align}$$

On $E_L=0$, this reduces to

$$\begin{align}
HNR'=C_R.
\end{align}$$

## Strong Point-Mei Condition

The paper defines the strong point-Mei test by

$$\begin{align}
\mathcal E_i\!\left(X^{[1]}L\right)=0.
\end{align}$$

For

$$\begin{align}
M_2=\frac12 r\partial_r+H\partial_H,
\end{align}$$

the stronger identity $M_2^{[1]}L=0$ holds, but the Noether residual is $L/2$, not zero. This is a clean example of why the Mei and Noether conditions must not be conflated.

## Polynomial Lie-Point Classification

The Lie calculation uses all 15 monomials of total degree at most two in $(r,H,N,R)$ independently in each of the four generator components, giving 60 coefficients. The source reports 495 distinct linear conditions, rank 57, and nullity 3. A basis is

$$\begin{align}
L_1=\partial_r, \qquad L_2=\frac12r\partial_r+H\partial_H, \qquad L_3=r\partial_r+H\partial_H+N\partial_N-R\partial_R.
\end{align}$$

Their algebra is $\mathfrak{aff}(1)\oplus\mathbb R$.

The precise conclusion is:

> There are no further Lie-point generators inside this degree-$\leq2$ polynomial ansatz on the regular normal-form sector $HNR\neq0$.

It does not exclude rational, logarithmic, exponential, non-polynomial, or derivative-dependent generators. The claimed matrix-rank calculation was not independently reproduced because the audit script named in the paper is not present in the arXiv source bundle.

# Covariant Origin of the Charge

Tracing the metric $f(R)$ equation gives

$$\begin{align}
3\Box f_R+Rf_R-2f=0.
\end{align}$$

For $f(R)=R^2$, this becomes $6\Box R=0$, hence $\Box R=0$. In the gauge-fixed spherical metric,

$$\begin{align}
\sqrt{-g}=N\sin\theta, \qquad g^{rr}=H,
\end{align}$$

so

$$\begin{align}
\Box R=\frac1N\frac{d}{dr}(HNR').
\end{align}$$

Therefore

$$\begin{align}
\frac{d}{dr}(HNR')=0,
\end{align}$$

which is exactly the constrained Noether first integral. In the unfixed areal-radius form,

$$\begin{align}
r^2\sqrt{\frac AB}\,R'=C_R.
\end{align}$$

This agreement is the paper's strongest structural result: the reduced Noether charge is the static spherical representative of the covariant trace-current flux.

# Solution Sectors

For $C_R=0$ and $HN\neq0$, the scalar curvature is constant.

- If $R=R_0\neq0$, the field equation reduces to $R_{\mu\nu}=R_0g_{\mu\nu}/4$. In areal Schwarzschild coordinates,

$$\begin{align}
H(r)=1-\frac{2M}{r}-\frac{R_0r^2}{12}.
\end{align}$$

- If $R=0$, then both $f$ and $f_R$ vanish, so scalar flatness does not imply Ricci flatness. One allowed family is

$$\begin{align}
H(r)=1-\frac{2M}{r}+\frac{C}{r^2}.
\end{align}$$

  The coefficient $C$ is not an electromagnetic charge without an added Maxwell sector.

For $C_R\neq0$,

$$\begin{align}
R'=\frac{C_R}{HN},
\end{align}$$

so $R$ is locally monotone on each connected region where $H$ and $N$ retain nonzero signs. This is only a local restriction. A horizon analysis must use horizon-regular coordinates and the remaining metric equations; the flux equation alone does not establish or exclude regular black holes.

# Independent Checks

## Verified with Mathematica

Starting directly from the displayed quadratic radial Lagrangian, Mathematica reproduced:

- $\det W=24HNR$;
- the displayed radial energy $E_L$;
- $Hp_H+Np_N-Rp_R-6HNR'=0$;
- $X_N^{[1]}L+L=0$;
- $Y_2^{[1]}L+L-(4R-NR^2)=0$;
- $Y_3^{[1]}L-E_L=0$;
- $M_2^{[1]}L=0$.

Substitution into the source's Ricci-scalar formula also gives

$$\begin{align}
R\left[1-\frac{2M}{r}-\frac{R_0r^2}{12},\,N=r^2\right]=R_0,
\end{align}$$

and

$$\begin{align}
R\left[1-\frac{2M}{r}+\frac{C}{r^2},\,N=r^2\right]=0.
\end{align}$$

## Assumptions

- vacuum metric, not Palatini or metric-affine, $f(R)$ gravity;
- pure $f(R)=R^2$, with no Einstein--Hilbert or Maxwell term;
- the unfixed reduction and its boundary integrations are accepted as written;
- regular patches when dividing by $H$, $N$, or $R$;
- ordinary point transformations for the stated Noether/Mei tests;
- polynomial point generators of total degree at most two for the Lie classification.

## Not Verified

- the derivation of the unfixed radial Lagrangian from the four-dimensional action, including every boundary term;
- the full $495\times60$ determining matrix and its rank, because the advertised script was not supplied in the arXiv bundle;
- completeness beyond the polynomial degree-$\leq2$ point ansatz;
- generalized Mei symmetries;
- global existence, horizon regularity, or asymptotics of the $C_R\neq0$ branch.

# Bottom Line

This is a careful and useful correction paper whose main reduced identities survive independent symbolic checks. Its strongest reusable lesson is that a gauge-fixed regular Hessian and an off-shell Noether identity answer different questions from the gravitational constraint inherited from the unfixed action. The classification claims should nevertheless be quoted with their exact scope: degree-at-most-two polynomial point symmetries on $HNR\neq0$, not the full symmetry algebra.
