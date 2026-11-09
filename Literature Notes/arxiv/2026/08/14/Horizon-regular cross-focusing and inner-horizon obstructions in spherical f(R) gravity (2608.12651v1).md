---
paper id: 2608.12651v1
title: Horizon-regular cross-focusing and inner-horizon obstructions in spherical f(R) gravity
authors:
  - Maickol Muñoz-Palma
  - Francisco S. N. Lobo
  - Jean Báez Cuevas
  - Francisco Tello-Ortiz
publication date: 2026-08-12
abstract: |-
  A horizon-regular double-null criterion is derived for regular inner marginal horizons in spherically symmetric metric f(R) gravity. The area-weighted outgoing expansion obeys an exact affine transport law sourced by a mixed matter--scalaron quantity. A pointwise upper bound gives a sufficient obstruction to a second regular marginal sphere, while an outer--inner pair requires a source reversal and an exact integral balance.
comments: "17 pages, 3 figures"
url: https://arxiv.org/abs/2608.12651v1
summary: "A precise null-geometric obstruction theorem whose Cauchy-horizon consequence is explicitly conditional on regularity, marginality, nondegeneracy, and global identification."
tags: []
---

Back to [[2026_08_14_overview]].

The direct verdict is:

> The paper proves a sufficient obstruction to a second **regular future marginal sphere of the outgoing family** along a specified ingoing null generator. It does not prove an unconditional absence of Cauchy horizons in metric $f(R)$ gravity.

The distinction is unusually well maintained in the paper itself. The local cross-focusing sign classifies a marginal sphere; the propagation theorem excludes a later marginal sphere under a source bound; only an additional global hypothesis identifies a candidate inner marginal Killing horizon with a Cauchy horizon.

# How to Read This Long Paper

- **Essential:** Sections II--V. They fix the double-null frame, derive the area-weighted law, state the theorem, and give the static horizon identity.
- **Essential benchmark:** Section VI.C. It checks the source decomposition in a charged solution with nonconstant $R$ and nonconstant positive scalaron throughout the inter-horizon interval.
- **Scope control:** Section VII and the conclusion. These prevent upgrading the result to a stability or strong-cosmic-censorship theorem.
- **Technical reference:** Appendix A for the coordinate derivation of the cross-focusing identity and affine frame.
- **Do not conflate:** future-inner trapping sign, inner black-hole horizon, inner Killing horizon, Cauchy horizon, and mass-inflation boundary.

# Complete Source Map

1. **Introduction:** motivates a horizon-regular replacement for static-coordinate inner-horizon arguments and states the conditional claim.
2. **Metric $f(R)$ gravity in double-null form:** fixes field equations, trace equation, regularity, $F>0$, the normalized null frame, and expansions.
   - **Field equations and scalaron trace equation:** separates matter, Hessian, and curvature-potential terms.
   - **Double-null geometry and null frame:** chooses an affinely parametrized ingoing vector and a parallel-transported outgoing vector.
3. **Affine focusing and cross-focusing:** contrasts same-direction Raychaudhuri focusing with the mixed projection controlling marginal-horizon type.
   - **Affine null Raychaudhuri equation:** shows why the matter NEC alone does not control $f(R)$ focusing.
   - **Exact cross-focusing equation:** derives the mixed source and area-weighted total derivative.
   - **Outer, inner, and degenerate marginal spheres:** translates the sign of the cross derivative into a source threshold.
4. **Obstructions to a regular inner marginal horizon:** states the integral identity, sufficient obstruction, conditional Cauchy corollary, necessary reversal, and exact balance.
5. **Static limit and relation to radial criteria:** constructs a regular ingoing Eddington--Finkelstein chart and derives $\mathcal C_h=-B'(r_h)/r_h$ without a simple-zero assumption.
6. **Consistency checks and illustrative solutions:** treats GR+$\Lambda$, Reissner--Nordström--(A)dS, a scalaron-active charged solution, constant curvature, and a two-horizon solution that violates global $F>0$.
7. **Scope, limitations, and physical interpretation:** separates existence, global identification, and nonlinear stability.
8. **Conclusions:** restates the exact claim and identifies numerical double-null tests as the next step.
9. **Appendix A:** derives the coordinate curvature components, scalar d'Alembertian, mixed Hessian, total derivative, and affine-frame properties.

# Conventions and Theorem Domain

The action is

$$\begin{align}
S=\frac1{16\pi}\int d^4x\sqrt{-g}\,f(R)+S_m[g_{\mu\nu},\Psi],
\end{align}$$

with signature $(-,+,+,+)$ and

$$\begin{align}
F\equiv f_R.
\end{align}$$

The metric equation and trace are

$$\begin{align}
FR_{\mu\nu}-\frac12fg_{\mu\nu} -\nabla_\mu\nabla_\nu F+g_{\mu\nu}\Box F =8\pi T_{\mu\nu},
\end{align}$$

$$\begin{align}
3\Box F+FR-2f=8\pi T.
\end{align}$$

The theorem-bearing region assumes:

- $r>0$;
- $F>0$ throughout the entire null segment;
- metric and scalaron at least $C^2$;
- continuity and finiteness of the focusing-source projections;
- a regular normalized double-null frame;
- convergence of an integral if an endpoint is only a limiting null boundary.

The condition $F>0$ permits division by $F$ and maintains a positive effective gravitational coupling. It is necessary for the stated theorem but is not, by itself, a complete stability condition.

# Double-Null Frame

The geometry is

$$\begin{align}
ds^2=-2e^{-2\sigma(u,v)}du,dv+r^2(u,v)d\Omega^2.
\end{align}$$

The future-directed vectors are

$$\begin{align}
n^\mu=e^{2\sigma}(\partial_u)^\mu, \qquad \ell^\mu=(\partial_v)^\mu,
\end{align}$$

so that

$$\begin{align}
\ell\cdot n=-1, \qquad \nabla_nn^\mu=0, \qquad \nabla_n\ell^\mu=0.
\end{align}$$

The residual boost

$$\begin{align}
n\to cn, \qquad \ell\to c^{-1}\ell, \qquad n(c)=0,
\end{align}$$

preserves the mixed quantities and cross-focusing classification. The expansions are

$$\begin{align}
\theta_{(\ell)}=\frac{2r_{,v}}r, \qquad \theta_{(n)}=\frac{2e^{2\sigma}r_{,u}}r.
\end{align}$$

A future marginal sphere of the outgoing family has

$$\begin{align}
\theta_{(\ell)}=0, \qquad \theta_{(n)}<0.
\end{align}$$

# Same-Direction Focusing Versus Cross-Focusing

For an affine radial null vector $k^\mu$,

$$\begin{align}
\frac{d\theta_{(k)}}{d\lambda} =-\frac12\theta_{(k)}^2 -\frac1F\left(8\pi T_{kk}+\frac{d^2F}{d\lambda^2}\right).
\end{align}$$

Thus $T_{kk}\ge0$ alone does not determine focusing because the scalaron acceleration can have either sign.

The mixed geometric identity is instead

$$\begin{align}
G_{\ell n}=\mathcal L_n\theta_{(\ell)} +\theta_{(\ell)}\theta_{(n)}+\frac1{r^2}.
\end{align}$$

Define the Jordan-frame source

$$\begin{align}
\mathcal P_{\ell n} =8\pi T_{\ell n} +\nabla_\ell\nabla_nF +\Box F +\frac12(FR-f).
\end{align}$$

The field equation gives

$$\begin{align}
FG_{\ell n}=\mathcal P_{\ell n},
\end{align}$$

and hence

$$\begin{align}
\mathcal L_n\theta_{(\ell)} =-\theta_{(\ell)}\theta_{(n)} -\frac1{r^2}+\frac{\mathcal P_{\ell n}}F.
\end{align}$$

The mixed Hessian here is a tensor contraction. It is not generally the iterated directional derivative $\ell[n(F)]$.

Using $\mathcal L_n(r^2)=r^2\theta_{(n)}$ gives the central identity

$$\begin{align}
\boxed{ \mathcal L_n\bigl(r^2\theta_{(\ell)}\bigr) =-1+\frac{r^2\mathcal P_{\ell n}}F
}.
\end{align}$$

This absorbs the product of expansions exactly and requires no sign assumption for $\theta_{(n)}$ away from the initial marginal sphere.

The trace equation provides the equivalent source form

$$\begin{align}
\mathcal P_{\ell n} =8\pi T_{\ell n} +\nabla_\ell\nabla_nF +\frac{8\pi}{3}T +\frac16(FR+f).
\end{align}$$

# Local Horizon Classification

At a regular marginal sphere $H$,

$$\begin{align}
\mathcal C_H \equiv\left.\mathcal L_n\theta_{(\ell)}\right|_H =-\frac1{r_H^2}+\frac{\mathcal P_{\ell n}|_H}{F_H}.
\end{align}$$

Therefore

$$
\begin{array}{c|c|c}
\text{type}&\mathcal C_H&\mathcal P_{\ell n}|_H\\ \hline
\text{future outer}&<0&<F_H/r_H^2\\
\text{future inner}&>0&>F_H/r_H^2\\
\text{degenerate}&=0&=F_H/r_H^2
\end{array}
$$

These are local Hayward signs. A hypersurface is an outer or inner trapping horizon only if the sign persists along its foliation.

# Exact Integral and Propagation Theorem

Along an affinely parametrized ingoing generator $\gamma$,

$$\begin{align}
r^2(\lambda_b)\theta_{(\ell)}(\lambda_b) -r^2(\lambda_a)\theta_{(\ell)}(\lambda_a) =\int_{\lambda_a}^{\lambda_b} \left(\frac{r^2\mathcal P_{\ell n}}F-1\right)d\lambda.
\end{align}$$

If both endpoints are marginal,

$$\begin{align}
\int_{\lambda_o}^{\lambda_i} \left(\frac{r^2\mathcal P_{\ell n}}F-1\right)d\lambda=0.
\end{align}$$

Now begin at a regular nondegenerate future outer marginal sphere and assume on the subsequent regular segment

$$\begin{align}
\mathcal P_{\ell n}\le\frac F{r^2}.
\end{align}$$

The initial derivative of $r^2\theta_{(\ell)}$ is strictly negative. Continuity makes it negative immediately, while the bound makes it nonincreasing thereafter. Since $r>0$,

$$\begin{align}
\theta_{(\ell)}<0
\end{align}$$

at every later regular point. It cannot return to zero, so there is no second regular future marginal sphere of the same outgoing family on that generator.

This is a sufficient condition, not a necessary one. It is stronger and cleaner than an argument requiring the full intervening region to remain future trapped.

# Necessary Reversal and Conditional Cauchy Statement

Define

$$\begin{align}
\mathscr S(\lambda)=\frac{r^2\mathcal P_{\ell n}}F-1.
\end{align}$$

For a regular outer--inner pair on the same generator,

$$\begin{align}
\mathscr S(\lambda_o)<0, \qquad \mathscr S(\lambda_i)>0,
\end{align}$$

and continuity forces at least one zero in between. The endpoints also impose

$$\begin{align}
\int_{\lambda_o}^{\lambda_i}\mathscr S(\lambda)d\lambda=0.
\end{align}$$

The paper's Cauchy-horizon corollary additionally assumes that the candidate inner boundary:

1. is a regular nondegenerate future inner Killing horizon;
2. is foliated by marginal spheres of the outgoing family;
3. is reached through a regular double-null extension from the outer horizon;
4. actually constitutes a Cauchy horizon in the maximal development.

Only under these global assumptions does the local propagation theorem obstruct that Cauchy boundary.

# Horizon-Regular Static Limit

Start with

$$\begin{align}
ds^2=-A(r)dt^2+\frac{dr^2}{B(r)}+r^2d\Omega^2
\end{align}$$

and define

$$\begin{align}
dv=dt+\frac{dr}{\sqrt{AB}}, \qquad \Xi=\sqrt{\frac AB}.
\end{align}$$

Then

$$\begin{align}
ds^2=-A,dv^2+2\Xi,dv,dr+r^2d\Omega^2.
\end{align}$$

A common-zero horizon is regular in this chart if $A(r_h)=B(r_h)=0$ and $\Xi$ has a finite, positive, $C^1$ extension. The normalized pair is

$$\begin{align}
\ell=\partial_v+\frac{A}{2\Xi}\partial_r, \qquad n=-\frac1\Xi\partial_r.
\end{align}$$

The expansions are

$$\begin{align}
\theta_{(\ell)}=\frac{A}{\Xi r}=\frac{\Xi B}{r}, \qquad \theta_{(n)}=-\frac2{\Xi r}.
\end{align}$$

Consequently

$$\begin{align}
\mathcal C_h=-\frac{B'(r_h)}{r_h}.
\end{align}$$

No simple-zero assumption enters. Hence $B'(r_h)>0$, $<0$, and $=0$ correspond to future outer, future inner, and degenerate cases under the stated regularity assumptions.

The paper correctly keeps this mixed-null identity separate from the static same-direction equation for $d(B/A)/dr$. The latter only holds on connected static intervals and retains endpoint normalization data.

# Consistency Checks

## GR and Maxwell

For $f(R)=R-2\Lambda$, $F=1$,

$$\begin{align}
\mathcal P_{\ell n}=8\pi T_{\ell n}+\Lambda.
\end{align}$$

For a radial Maxwell field,

$$\begin{align}
8\pi T_{\ell n}=\frac{Q^2}{r^4}, \qquad T_{kk}=0.
\end{align}$$

This sharply illustrates why same-direction focusing and cross-focusing are not interchangeable. For asymptotically flat Reissner--Nordström,

$$\begin{align}
r_+r_-=Q^2,
\end{align}$$

$$\begin{align}
\mathcal C_+=\frac{r_--r_+}{r_+^3}<0, \qquad \mathcal C_-=\frac{r_+-r_-}{r_-^3}>0.
\end{align}$$

The inner horizon exists because the sufficient source bound is violated there. In the extremal limit the coincident horizon is degenerate and lies outside the theorem's nondegenerate hypothesis.

## Nonconstant Scalaron Benchmark

The exact charged example uses

$$\begin{align}
f(R)=R+2c_2\sqrt R, \qquad c_2<0,
\end{align}$$

$$\begin{align}
B(r)=\frac12-\frac mr+\frac{q^2}{4r^2}, \qquad F(r)=1-\frac r{3m}.
\end{align}$$

For $0<q^2<2m^2$,

$$\begin{align}
r_\pm=m\pm\sqrt{m^2-\frac{q^2}{2}}, \qquad r_+r_-=\frac{q^2}{2}.
\end{align}$$

Because $r_+<2m$,

$$\begin{align}
F(r)>\frac13
\end{align}$$

throughout $r_-\le r\le r_+$. Evaluating matter, Hessian, d'Alembertian, and potential pieces separately gives

$$\begin{align}
\frac{\mathcal P_{\ell n}}F =\frac1{2r^2}+\frac{q^2}{4r^4},
\end{align}$$

and therefore

$$\begin{align}
\mathscr S(r)=-\frac12+\frac{q^2}{4r^2}.
\end{align}$$

At the horizons,

$$\begin{align}
\mathscr S(r_+)=\frac{r_--r_+}{2r_+}<0, \qquad \mathscr S(r_-)=\frac{r_+-r_-}{2r_-}>0.
\end{align}$$

With inward affine orientation $d\lambda=-dr$,

$$\begin{align}
\int_{r_-}^{r_+} \left(-\frac12+\frac{q^2}{4r^2}\right)dr=0.
\end{align}$$

This benchmark realizes the necessary reversal. It does not test the sufficient no-second-horizon direction in a nonconstant-$F$ solution.

## Global Positivity Failure

For the Multamäki--Vilja example,

$$\begin{align}
F(r)=1-\frac r{3M}
\end{align}$$

vanishes inside the connected static interval between a black-hole and cosmological horizon. It therefore cannot support a divided $\mathcal P_{\ell n}/F$ argument across the whole interval. In addition, that horizon pair is not an outer-event/inner-Cauchy configuration.

# Relevance to Current Projects

**Reason codes:** `T1-charge`, `T1-boundary`, `T2-model`, `T2-dS-BH-holography`.

- The area-weighted total derivative is an excellent example of “先抽象后坐标”: the covariant null identity supplies the theorem, while the coordinate appendix and static chart provide checks.
- It cleanly separates horizon-local classification, propagation along a finite segment, and global causal identification. This matches the vault's policy of not upgrading finite local identities into global QFT or causal claims.
- The source $\mathcal P_{\ell n}$ keeps matter, scalaron derivatives, and curvature potential explicit instead of hiding them in an effective stress tensor.
- The $F>0$ failure is a concrete parameter/domain-closure warning: an inequality valid at two endpoints cannot be propagated if its denominator crosses zero between them.
- The result is relevant to horizon charges and boundary geometry, but it does not compute a covariant phase-space charge or symplectic flux.

# Evidence Audit

## Source-Derived

- The official arXiv abstract, 17-page PDF, complete TeX source, three figures, all main sections, and Appendix A were inspected.
- PDF pages 1, 5, 9, 13, and 16 were rendered and visually checked; theorem statements, displayed equations, figures/references, and two-column layout were legible with no formula-layout discrepancy found.
- The paper itself explicitly states that none of its nonconstant-$F$ examples tests the sufficient obstruction in a genuine scalaron-active one-horizon solution.

## Checked

- **Mathematica:** the coordinate expressions for $G_{\ell n}$, $\mathcal L_n\theta_{(\ell)}$, and $\theta_{(\ell)}\theta_{(n)}$ reproduce the cross-focusing identity with zero residual.
- **Mathematica:** substituting the scalaron trace equation into the invariant source reproduces the alternative trace-form source exactly.
- **Mathematica:** the four explicit source pieces of the charged nonconstant-$F$ benchmark simplify to $F(1/(2r^2)+q^2/(4r^4))$.
- **Mathematica:** $-d(rB)/dr$ reproduces $\mathscr S=-1/2+q^2/(4r^2)$.
- **Mathematica:** the two displayed roots solve $B(r)=0$, obey $r_+r_-=q^2/2$, and the exact inter-horizon integral is zero under $m>0$ and $0<q^2<2m^2$.
- **Analytic sign check:** using $q^2=2r_+r_-$ gives the displayed outer and inner values of $\mathscr S$ and their strict signs for $r_+>r_->0$.

## Blocked

- No numerical double-null dataset is provided from which to extract $r$, $F$, matter projections, and scalaron derivatives along a dynamical collapse generator. The proposed diagnostic cannot be tested against mass-inflation simulations from this paper alone.
- No machine-readable notebook accompanies the exact charged $f(R)$ solution; its status as a solution of the full field equations was taken from the cited source and the paper, not independently rederived here.

## Not Independently Verified

- The full metric $f(R)$ field equations for every illustrative solution, including matter normalization in the charged benchmark.
- Global causal identification of any candidate horizon or extendibility beyond it.
- Nonlinear stability, mass inflation, differentiability of a limiting Cauchy boundary, or strong cosmic censorship.
- Whether a viable nonconstant-$F$ one-horizon solution satisfies the sufficient bound on an entire regular ingoing segment; the authors explicitly leave this benchmark open.

# Achieved Claim Tier

**Verified tier:** exact algebraic and coordinate consistency of the cross-focusing transport law and its principal analytic benchmark, together with a source-level audit of the theorem's hypotheses and logical scope.

**Not achieved:** an independent derivation of every exact solution, a numerical dynamical test, or a global no-Cauchy-horizon/stability theorem.
