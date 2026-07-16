---
paper id: 2607.13228v1
title: Some Remarks on the Spectral Geometry of the Gribov Horizon
authors:
  - Daniel G. Tedesco
publication date: 2026-07-14T19:44
abstract: |-
  The paper develops a local spectral description of the Landau-gauge Gribov horizon. After removing the residual constant-ghost kernel on a torus, it identifies the reduced Faddeev--Popov operator with the normal Morse--Bott Hessian of the orbit-norm functional, separates that operator from the covariant Laplacian defining the orthogonal connection, and derives crossing-form and resolvent normal forms. An explicit SU(2) hedgehog family gives normalizable threshold states in every coupled angular-momentum channel and the exact threshold-stability interval -2 < g < 1.
comments: "No arXiv comments supplied; PDF is 25 pages"
url: https://arxiv.org/abs/2607.13228v1
summary: "A reusable spectral toolkit for distinguishing gauge-orbit projection from Faddeev--Popov degeneracy and for extracting horizon crossings, ghost poles, and exact SU(2) thresholds."
tags: []
---

[[2026_07_16_overview|Back to the daily overview]]

This is useful less as a new Gribov narrative than as a clean operator dictionary. The transferable point is that two inverses which are often verbally conflated have different geometric jobs: the covariant Laplacian controls the local orthogonal connection on the irreducible stratum, while the reduced Faddeev--Popov operator controls the gauge-fixing Hessian and becomes singular at the Gribov horizon.

## Residual color modes and the reduced ghost operator

The compact setup is a flat torus $M=T_L^d$, gauge group $SU(N)$, and adjoint-valued ghosts in

$$
\mathcal H=L^2(M,\mathfrak{su}(N)),
\qquad
\langle f,g\rangle=\int_M\operatorname{tr}(f^\dagger g)\,d^dx.
$$

With

$$
D_\mu[A]=\partial_\mu+\operatorname{ad}_{A_\mu},
\qquad
D_A^*=-D_\mu,
\qquad
\partial_\mu A_\mu=0,
$$

the Landau Faddeev--Popov operator is

$$
\mathcal M[A]=-\partial_\mu D_\mu[A].
$$

Every spatially constant ghost $c\in\mathfrak{su}(N)$ lies in its kernel because

$$
\mathcal M[A]c=-\partial_\mu[A_\mu,c]=-[\partial_\mu A_\mu,c]=0.
$$

This is a fixed global-color degeneracy, not the horizon mode of interest. If $\Pi_0$ projects away the constant sections, the operative Hilbert space and operator are

$$
\mathcal H_0=\mathcal H\ominus\mathfrak g_{\rm const},
\qquad
\widehat{\mathcal M}[A]=\Pi_0\mathcal M[A]\Pi_0\big|_{\mathcal H_0}.
$$

Writing $\lambda_0(A)$ for its lowest eigenvalue, the first region is

$$
\Omega=\{A:\partial\!\cdot A=0,\ \lambda_0(A)>0\}.
$$

The strict inequality is important: the paper later distinguishes the open positive region from its horizon and, on $\mathbb R^3$, from a threshold interval whose endpoints lie at the bottom of essential spectrum.

## The orthogonal connection is not the Gribov resolvent

At an irreducible connection, the $L^2$ metric yields

$$
T_A\mathcal A=\operatorname{Ran}D_A\oplus\ker D_A^*.
$$

For $a=a_H+D_A\xi$, the vertical parameter and Singer connection are

$$
\xi=(D_A^*D_A)^{-1}D_A^*a,
\qquad
\omega_A(a)=\Delta_A^{-1}D_A^*a,
\qquad
\Pi_A^Ha=a-D_A\Delta_A^{-1}D_A^*a,
$$

where $\Delta_A=D_A^*D_A$. The positivity identity

$$
\langle\xi,\Delta_A\xi\rangle=\|D_A\xi\|^2
$$

shows that $\Delta_A$ is invertible on an irreducible stratum. By contrast,

$$
\mathcal M[A]=\Delta_A+\operatorname{ad}_{A_\mu}D_\mu
$$

has different lower-order terms. Thus $\widehat{\mathcal M}[A]\xi=0$ need not imply $\Delta_A\xi=0$: the ghost resolvent can diverge while the orthogonal connection remains locally regular. This is the main conceptual guardrail for later BRST or gauge-slice work.

## Orbit norm and the Morse--Bott Hessian

On the gauge orbit of $A$, consider

$$
V_A[U]=\frac12\|A^U\|^2.
$$

For $U(t)=e^{t\xi}$, the first variation is

$$
\frac{d}{dt}V_A[e^{t\xi}]\big|_{t=0}
=\langle A,D_A\xi\rangle
=-\langle\partial_\mu A_\mu,\xi\rangle,
$$

so Landau gauge is the critical-point condition. The second variation is

$$
\frac{d^2}{dt^2}V_A[e^{t\xi}]\big|_{t=0}
=\langle\xi,\mathcal M[A]\xi\rangle.
$$

After quotienting the global-color critical manifold, $\widehat{\mathcal M}[A]$ is therefore the normal Morse--Bott Hessian. This makes a horizon crossing simultaneously a Faddeev--Popov zero, a focal direction, and a change of the normal Morse index.

## Crossing forms and the wall conormal

Along a transverse affine path

$$
A_t=A_*+(t-t_*)B,
\qquad
\widehat{\mathcal M}_t=\widehat{\mathcal M}_{t_*}+(t-t_*)V_B,
$$

where $V_B=-\Pi_0\partial_\mu\operatorname{ad}_{B_\mu}\Pi_0$, differentiating a normalized eigenpair gives the Feynman--Hellmann relation

$$
\dot\lambda(t)=\langle f_t,V_Bf_t\rangle.
$$

At a simple zero mode $f_0$, the crossing form is

$$
\Gamma_A(B;f_0)
=\langle f_0,V_Bf_0\rangle
=\int_M(\partial_\mu f_0^a)[B_\mu,f_0]^a\,d^dx.
$$

It is both the first eigenvalue derivative and the conormal functional of the regular wall:

$$
T_A\mathcal H_{\rm reg}
=\{B:\partial\!\cdot B=0,\ \Gamma_A(B;f_0)=0\}.
$$

For an $r$-fold zero, the scalar derivative is replaced by the critical block

$$
P=\sum_{\alpha=1}^r|f_\alpha\rangle\langle f_\alpha|,
\qquad
\Gamma_B=PV_BP.
$$

This avoids differentiating the ordered minimum of crossing eigenvalue branches, which need not be smooth at degeneracy.

For an affine ray that begins in the positive region,

$$
\widehat{\mathcal M}_t=\widehat{\mathcal M}_0+tV,
\qquad
\widehat{\mathcal M}_{t_*}P=0,
$$

compression gives

$$
\Gamma=PVP=-\frac1{t_*}P\widehat{\mathcal M}_0P
\le -\frac{\lambda_0(0)}{t_*}P.
$$

Thus every critical branch crosses downward along that radial direction. With the paper's sign convention,

$$
\Delta n_-=-\sum_\alpha\operatorname{sgn}\gamma_\alpha=r.
$$

## Resolvent residue and what a source detects

At a simple regular crossing, Schur reduction gives

$$
\widehat{\mathcal M}_t^{-1}
=\frac{P}{(t-t_*)\Gamma}+O(1),
$$

and hence for a continuous source $J_t$,

$$
\widehat{\mathcal M}_t^{-1}J_t
=\frac{|f_0\rangle\langle f_0,J_{t_*}\rangle}
{\Gamma(t-t_*)}+O(1).
$$

The inverse operator has a pole even when a chosen source misses it; the sourced singularity disappears precisely when $J_{t_*}\perp f_0$. For a regular $r$-fold crossing,

$$
\widehat{\mathcal M}_t^{-1}
=\frac1{t-t_*}P\Gamma^{-1}P+O(1).
$$

If $\Gamma$ has a kernel, its pseudoinverse is insufficient. The model

$$
E(\delta)=\begin{pmatrix}\delta&0\\0&\delta^2\end{pmatrix}
$$

already has a double pole in the tangential channel, requiring a second Schur reduction. This is the useful warning for numerical horizon tracking: a vanishing first derivative does not mean the resolvent is regular.

## $SU(2)$ hedgehog channels and exact thresholds

On $\mathbb R^3$, take

$$
A_i^c=\varepsilon_{cij}x_jh(r),
\qquad
h(r)=g\,\phi(r),
\qquad
\phi(r)=\frac{9r}{(r^3+1)^2}.
$$

The operator becomes

$$
\mathcal M=-\partial^2+h(r)\,\mathbf S\!\cdot\!\mathbf L.
$$

In a $(J,L)$ channel,

$$
c_{JL}=\frac12[J(J+1)-L(L+1)-2],
$$

and $R(r)=u(r)/r$ obeys

$$
-u''+\frac{L(L+1)}{r^2}u+c_{JL}h(r)u=\lambda u.
$$

The nodeless ansatz

$$
u_L(r)=\frac{r^{L+1}}{(r^3+1)^{(2L+1)/3}}
$$

satisfies

$$
\frac{u_L''}{u_L}-\frac{L(L+1)}{r^2}
=-2(2L+1)(L+2)\frac{r}{(r^3+1)^2},
$$

so every coupled channel has threshold

$$
g_*(J,L)=-\frac{2(2L+1)(L+2)}{9c_{JL}}.
$$

For color spin one and $L\ge1$,

$$
c_{L-1,L}=-(L+1),
\qquad c_{L,L}=-1,
\qquad c_{L+1,L}=L.
$$

Minimizing the three threshold families over the full tower yields

$$
g_{*,+}=1\quad(J,L)=(0,1),
\qquad
g_{*,-}=-2\quad(J,L)=(2,1),
$$

and therefore

$$
\mathcal I_{\rm thr}=(-2,1).
$$

Because zero is the bottom of essential spectrum, this is not a compact-space positive-gap Gribov region. The Dirichlet-box computation is a finite-volume convergence diagnostic, not a replacement for the continuum proof.

## Verification note

Mathematica independently reproduced the Henyey differential identity for symbolic integer $L\ge1$, the $L=1$ thresholds $(1,2,-2)$, and the appendix integrals

$$
\int_0^\infty\frac{r^4}{(r^3+1)^2}\,dr=\frac{4\pi}{9\sqrt3},
\qquad
\int_0^\infty\phi(r)\left(\frac{r^2}{r^3+1}\right)^2dr=\frac12.
$$

The functional-analytic claims about self-adjoint domains, spectral flow, Morse--Bott geometry, and convergence of boxed spectra are source-derived; they were not independently proved here. No Sage calculation was required because the only representation-theory input used in this note is the elementary $S=1$ angular-momentum coupling formula.

## Reuse boundary

- For BRST notes, use $\widehat{\mathcal M}^{-1}$, not $\Delta_A^{-1}$, when diagnosing the ghost pole.
- For finite-mode experiments, track $P\dot{\mathcal M}P$ rather than only the lowest ordered eigenvalue.
- For tangent approaches to a wall, carry the second Schur reduction; a Moore--Penrose inverse of the first crossing form loses higher pole orders.
- The hedgehog interval is an exact continuum threshold benchmark that can test radial discretizations without fitting the critical coupling.
