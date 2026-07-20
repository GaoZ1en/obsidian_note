---
paper id: 2607.16029v1
title: "Quantum Mechanics on Lie Groups: II. Path Integrals"
authors:
  - Mathieu Beauvillain
  - Blagoje Oblak
  - Marios Petropoulos
publication date: 2026-07-17T15:01
abstract: |-
  The paper constructs transition-amplitude path integrals in L2(G) for general Lie groups by combining noncommutative Fourier transforms with a sum over logarithms that resolves compact directions. It treats left/right Haar measures and non-unimodular groups, then develops one- and two-loop semiclassics for Euler--Arnold systems and their partition functions.
comments: "41 pages, 0 figures"
url: https://arxiv.org/abs/2607.16029v1
summary: "A reusable measure-and-winding construction for group-manifold path integrals, with a substantive sign problem in the stated high-temperature curvature correction."
tags: []
---

Back to [[2026_07_20_overview]].

This paper is useful for the spectral/heat-kernel work because it derives, rather than assumes, the phase-space measure on a Lie group. Its key separation is

$$
\text{global compact topology}
\longleftrightarrow
\sum_{Y_f\in\operatorname{Logs}(g_f)},
\qquad
\text{local fluctuations}
\longleftrightarrow
\int_{\mathfrak g}\mathcal DX.
$$

That separation survives for nonabelian and non-unimodular groups. The source logic is coherent through the path-integral construction and the Euler--Arnold loop expansion, but its final curvature coefficient fails an $SU(2)$ benchmark unless one reverses a sign convention.

# Cotangent-bundle mechanics

The configuration space is a Lie group $G$ of dimension $n$, and

$$
T^*G\cong G\times\mathfrak g^*.
$$

The paper realizes $\mathfrak g$ by right-invariant vector fields so that momenta generate the left regular representation. With

$$
[t_i,t_j]=c^k{}_{ij}t_k,
$$

the Liouville one-form is

$$
\mathcal A_{(g,p)}
=\langle p,dgg^{-1}\rangle
=\langle p,\Omega_g^{\mathrm R}\rangle,
$$

and its symplectic form gives

$$
\{A,B\}
=\mathcal L_iA\frac{\partial B}{\partial p_i}
-\frac{\partial A}{\partial p_i}\mathcal L_iB
-c^k{}_{ij}p_k
\frac{\partial A}{\partial p_i}
\frac{\partial B}{\partial p_j}.
$$

Hamilton's equations are

$$
\dot g g^{-1}=\partial_pH,
$$

$$
\dot p-\operatorname{ad}^*_{\dot g g^{-1}}p
=-R_g^*\partial_gH.
$$

For a Lie--Poisson Hamiltonian $H(p)$, the momentum evolves on a coadjoint orbit:

$$
\dot p=\operatorname{ad}^*_{\partial_pH}p,
\qquad
Q=\operatorname{Ad}^*_{g^{-1}}p=\text{constant}.
$$

The quantization considered here is nevertheless the full $L^2(G)$ theory, not the quantization of one orbit.

# Euler--Arnold systems as geodesic motion

For an invertible symmetric inertia map $I:\mathfrak g\to\mathfrak g^*$,

$$
H(p)=\frac12\langle p,I^{-1}p\rangle.
$$

Then

$$
p=I(\dot g g^{-1}),
\qquad
\dot p=\operatorname{ad}^*_{I^{-1}p}p,
$$

and Gaussian elimination of $p$ gives

$$
S[g]
=\frac12\int_0^Tdt\,
\langle I(\dot g g^{-1}),\dot g g^{-1}\rangle.
$$

This is geodesic motion for the right-invariant metric

$$
\gamma_g(u,v)
=\langle I\Omega_g^{\mathrm R}u,\Omega_g^{\mathrm R}v\rangle.
$$

On a classical path, $S_{\mathrm{cl}}=L[g_{\mathrm{cl}}]^2/(2T)$. This gives the saddle weight used later and makes the sum over distinct logarithms a sum over geodesic/winding sectors.

# Decompactifying (G) on its Lie algebra

Let $X_i$ be the principal logarithm of $g_i$. The propagator is first rewritten as

$$
(g_f|e^{-i\widehat HT}|g_i)
=\sum_{Y_f\in\operatorname{Logs}(g_f)}
\langle Y_f|e^{-i\widehat HT}|X_i\rangle.
$$

Every decompactified kernel lives on the whole Lie algebra $\mathfrak g$. The discrete set $\operatorname{Logs}(g_f)$ restores the compact directions, generalizing the winding-number sum for a particle on $U(1)$.

After Trotter subdivision, insertions of the position and momentum identities involve the left-Haar exponential-coordinate Jacobian $J_{\mathrm L}(X)$ and the Gutt star product. The Hamiltonian symbol is

$$
H(X,p)
:=\langle X|p\rangle\star\langle p|\widehat H|X\rangle.
$$

At leading order in each time step, the Baker--Campbell--Hausdorff series becomes the pulled-back left Maurer--Cartan form. The continuum formula is therefore

$$
\boxed{
(g_f|e^{-i\widehat HT}|g_i)
=\sum_{Y_f\in\operatorname{Logs}(g_f)}
\int_{X(0)=X_i}^{X(T)=Y_f}
\mathcal DX_{\mathrm L}\mathcal Dp\,
e^{iS_{\mathrm L}[X,p]}
}
$$

with

$$
S_{\mathrm L}[X,p]
=\int_0^Tdt\left[
\langle p,g^{-1}\dot g\rangle-H(X,p)
\right].
$$

Two non-flat structures remain visible: $J_{\mathrm L}(X)$ at every time slice, and the star-product correction in the operator symbol.

# From the operator symbol to the right-Haar action

For $\widehat H=\widehat K(p)+V(g)$, the potential symbol is $V(X)$, but the kinetic symbol is

$$
K(X,p)=K(\operatorname{Ad}^*_{\exp X}p).
$$

The position dependence is removed by

$$
\pi=\operatorname{Ad}^*_{\exp X}p.
$$

This simultaneously converts the left Maurer--Cartan form and left Haar measure into their right counterparts. The result is

$$
\boxed{
(g_f|e^{-i\widehat HT}|g_i)
=\frac1{\Delta(g_i)}
\sum_{Y_f\in\operatorname{Logs}(g_f)}
\int\mathcal DX_{\mathrm R}\mathcal D\pi\,
e^{iS_{\mathrm R}[X,\pi]}
}
$$

where

$$
S_{\mathrm R}
=\int_0^Tdt\left[
\langle\pi,\dot gg^{-1}\rangle-K(\pi)-V(g)
\right],
$$

and

$$
\Delta(g)=\frac{J_{\mathrm L}(X)}{J_{\mathrm R}(X)}
$$

is the modular function. The endpoint factor $1/\Delta(g_i)$ remains because the time slicing has one more momentum integration than position integration. It disappears for unimodular groups, but it is essential in the claimed generality.

For quadratic $K$, integrating over $\pi$ finally gives

$$
(g_f|e^{-i\widehat HT}|g_i)
=\frac{\mathcal N}{\Delta(g_i)}
\sum_{Y_f\in\operatorname{Logs}(g_f)}
\int\mathcal DX_{\mathrm R}
\exp\left{i\int_0^Tdt
\left[
\frac12\langle I\Omega_X^{\mathrm R}(\dot X),
\Omega_X^{\mathrm R}(\dot X)\rangle-V(X)
\right]\right\}.
$$

This is the ordinary group-manifold Lagrangian, but with the topology, Haar Jacobian, and non-unimodular endpoint normalization still explicit.

# Semiclassics and the measure ghosts

The saddle expansion is performed around every geodesic joining the selected logarithms. Writing the fluctuation in exponential coordinates produces:

- a quadratic Jacobi operator whose determinant gives the one-loop Van Vleck factor;
- cubic and quartic vertices from the Maurer--Cartan expansion;
- the exponential-coordinate Haar Jacobian at each time;
- Grassmann measure ghosts representing that Jacobian.

The ghost loops cancel the formal contact terms proportional to $\delta(0)$ that arise from differentiated bosonic propagators. This is the practical payoff of retaining the Haar measure instead of replacing it by a flat functional measure. The remaining two-loop diagrams are finite combinations of the structure constants, the comoving inertia tensor, and the classical charge.

Appendix A checks the whole construction on $U(1)$, where the logarithm sum becomes the familiar integer winding sum. Appendix B supplies left/right exponential-coordinate Jacobians and the modular identity; Appendix C gives the exponential-coordinate vertices; Appendix D collects the two-loop contractions.

# Partition density and the curvature-sign test

For a right-translation-invariant Hamiltonian,

$$
Z(\beta)
=\operatorname{Vol}_{\mathrm R}(G)\,z(\beta),
\qquad
z(\beta):=(e|e^{-\beta\widehat H}|e).
$$

The identity has exceptionally many logarithms, so the prescription is to sum only over

$$
\operatorname{Logs}(e)\cap\mathfrak h
$$

for a fixed Cartan subalgebra, matching the generic-point limit of the original group integral. At one loop,

$$
z(\beta)
\sim
\sqrt{\frac{\det I}{(2\pi\beta)^n}}
\sum_{g_{\mathrm{cl}}:e\to e}
\frac{e^{-L[g_{\mathrm{cl}}]^2/(2\beta)}}
{\sqrt{\det M[g_{\mathrm{cl}}](1)}}.
$$

At high temperature only the constant loop contributes perturbatively, giving the leading local heat-kernel term

$$
z(\beta)
\sim
\sqrt{\frac{\det I}{(2\pi\beta)^n}}.
$$

The paper then states

$$
z(\beta)
\stackrel{?}{\sim}
\sqrt{\frac{\det I}{(2\pi\beta)^n}}
\left(1+\frac{\beta R}{12}\right),
$$

with the structure-constant expression in its Eq. (6.8) identified as the scalar curvature. An isotropic $SU(2)$ benchmark reveals a sign inconsistency. Take

$$
I_{ij}=\delta_{ij},
\qquad
c^i{}_{jk}=\varepsilon_{ijk}.
$$

The standard Koszul calculation for the corresponding right-invariant metric gives

$$
R_{\mathrm{geom}}=+\frac32,
$$

whereas the paper's Eq. (6.8) evaluates to

$$
R_{\mathrm{paper}}=-\frac32.
$$

The exact heat trace density in the same normalization is

$$
z(\beta)
=\frac1{16\pi^2}
\sum_{m=1}^{\infty}m^2
e^{-\beta(m^2-1)/8},
$$

whose small-$\beta$ expansion is

$$
z(\beta)
\sim
(2\pi\beta)^{-3/2}
\left(1+\frac\beta8+\cdots\right).
$$

The source formula instead yields $1-\beta/8$. Thus either Eq. (6.8) requires an overall minus sign before it is called the geometric Ricci scalar, or Eq. (6.9) must use $-\beta R/12$ with the paper's convention. The path-integral construction is not affected, but the advertised heat-kernel comparison is not correct as printed.

There is also a local Wick-rotation typo: the statement $\beta=-iT$ on page 27 is incompatible with $e^{-i\widehat HT}=e^{-\beta\widehat H}$; the required relation is $\beta=iT$, which the later formulas effectively use.

Appendix A.22 has a further sign typo. Differentiating its own Gaussian gives

$$
\langle a_na_m\rangle
=+\frac{iT^2}{\pi^2n^2}\delta_{nm},
$$

not $T^2/(i\pi^2n^2)$; Appendix A.23 returns to the correct $+i$ sign. In Appendix C, Eqs. (C.1)--(C.3) visibly omit time-derivative dots on the quartic correlators, and the expression under the ``4Y2D'' heading is labelled $V^{4Y1D}$. Their right-hand sides make the intended terms recoverable, but the displayed left-hand sides should not be copied literally.

# Relation to current spectral work

The paper's strongest reusable lesson is to compare spectral quantities only after matching four layers:

1. the Hilbert space, here $L^2(G)$ rather than one coadjoint-orbit representation;
2. global sectors, here the logarithm/winding sum;
3. the measure, including $J_{\mathrm R}$ and $\Delta$;
4. the local heat-kernel coefficient, whose curvature sign must match the Laplacian convention.

This fits the vault's rule that a canonical trace and a covariant determinant should be compared after their boundary conditions, measure, zero modes, and normalization have been aligned, not by matching bare kernels term by term.

# Verification note

**Verified:** the Liouville-form Poisson bracket, Euler--Arnold Legendre transform, left/right Maurer--Cartan conversion, adjoint momentum change, modular Jacobian, and Gaussian momentum elimination were reproduced algebraically. Mathematica plus Poisson resummation reproduced the $U(1)$ winding kernel. The $SU(2)$ Koszul curvature and exact-spectrum benchmark independently reproduce the positive $+\beta/8$ heat-kernel coefficient.

**Assumptions:** existence of the noncommutative Fourier transform and the logarithm resolution developed in Part I; a regular enough exponential-chart time slicing; a fixed Cartan prescription at the identity; symmetric quantization of the quadratic Hamiltonian.

**Not verified:** a measure-theoretic continuum limit of the path integral, cancellation of divergences beyond two loops, determinant phases and conjugate-point prescriptions for all saddles, the exceptional identity-log prescription beyond its generic-point argument, or the construction for groups whose exponential/logarithm fibers violate the paper's generic discrete assumptions.
