---
title: Differential Geometry And Topology Core Structures
date: 2026-07-01
summary: "Definitions and structural data for topology, manifolds, Cartan calculus, Hodge star, homology tools, and symplectic geometry."
---

# Differential Geometry And Topology Core Structures

## Point-Set Topology

A topology $\tau$ on $X$ contains $\varnothing$ and $X$, is closed under arbitrary unions, and is closed under finite intersections.

Basic properties:

- continuity: preimages of open sets are open;
- Hausdorff: distinct points admit disjoint neighborhoods;
- compactness: every open cover has a finite subcover;
- connectedness: no separation by two nonempty disjoint open sets.

In metric spaces, compactness is equivalent to complete plus totally bounded.

Compact-Hausdorff and quotient facts:

- compact subsets of Hausdorff spaces are closed;
- continuous images of compact spaces are compact;
- a continuous bijection from a compact space to a Hausdorff space is a homeomorphism;
- path-connected spaces are connected, but connected spaces need not be path-connected;
- quotient constructions can fail to be Hausdorff even when the original space is Hausdorff.

## Smooth Manifolds

An $n$-manifold is Hausdorff, second-countable, and locally modelled on $\mathbb R^n$ with smooth transition functions.

Common manifold sources:

- open subsets of $\mathbb R^n$ are manifolds;
- embedded level sets use the regular value theorem;
- quotients require separate checks for Hausdorff and smooth structure.

## Lie Derivative

For vector fields $X,Y$,

$$
\begin{align}
[X,Y]^\mu=X^\nu\partial_\nu Y^\mu-Y^\nu\partial_\nu X^\mu.
\end{align}
$$

For a tensor $T$ of type $(m,n)$, the Lie derivative differentiates components along $X$, subtracts one $\partial X$ term for each upper index, and adds one $\partial X$ term for each lower index.

## Cartan Calculus

The three basic operations are exterior derivative $d$, interior product $\iota_X$, and Lie derivative $\mathcal L_X$. The key identity is Cartan's formula:

$$
\begin{align}
\mathcal L_X=d\iota_X+\iota_X d.
\end{align}
$$

Use this identity to compute Lie derivatives of differential forms without expanding all tensor components.

## Hodge Star

On an oriented Riemannian $n$-manifold, the Hodge star maps $k$-forms to $(n-k)$-forms and is fixed by

$$
\begin{align}
\alpha\wedge *\beta=\langle\alpha,\beta\rangle\,\mathrm{vol}.
\end{align}
$$

In the standard orientation on $\mathbb R^3$,

$$
\begin{align}
*dx=dy\wedge dz,\qquad *dy=dz\wedge dx,\qquad *dz=dx\wedge dy.
\end{align}
$$

## Homology Constructions

Common homology constructions:

- cellular homology for CW complexes such as projective spaces;
- Kunneth for products when torsion issues are controlled;
- Mayer-Vietoris for decompositions into two simpler open sets;
- long exact sequences for fibrations such as the Hopf fibration.

## Symplectic Geometry

A symplectic form is a closed nondegenerate 2-form $\omega$. Hamiltonian vector fields are defined by

$$
\begin{align}
\iota_{X_H}\omega=dH.
\end{align}
$$

The Poisson bracket is

$$
\begin{align}
\{F,H\}=\omega(X_F,X_H).
\end{align}
$$
