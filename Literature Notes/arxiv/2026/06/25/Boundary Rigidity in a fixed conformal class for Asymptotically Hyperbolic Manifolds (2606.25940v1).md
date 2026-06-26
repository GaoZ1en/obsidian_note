---
paper id: 2606.25940v1
title: Boundary Rigidity in a fixed conformal class for Asymptotically Hyperbolic Manifolds
authors:
  - Tristan Humbert
  - Sebastian Munoz-Thon
publication date: 2026-06-24T15:17
abstract: |-
  The paper proves boundary rigidity within a fixed conformal class for asymptotically hyperbolic manifolds. If two conformal asymptotically hyperbolic metrics are both simple, or both negatively curved, and their renormalized boundary distances or marked renormalized boundary distances agree for chosen conformal representatives at conformal infinity, then the metrics are equal.
comments: "14 pages, 1 figure, comments are welcome"
url: https://arxiv.org/abs/2606.25940v1
summary: "Medium-low mathematical reference: renormalized boundary distance data determine simple or negatively curved asymptotically hyperbolic metrics within a fixed conformal class."
tags: []
---

Daily overview: [[2026_06_25_overview]]

# Why this belongs in the daily notes

This is not a field-theory boundary-condition paper. It is a geometric inverse problem for asymptotically hyperbolic manifolds. The reason to keep it is that it gives a clean theorem about how much conformal-infinity boundary distance data can determine in an AH geometry when the conformal class is fixed.

For AdS-related work, it is a background reference for the distinction between:

1. choosing a conformal representative at infinity;
1. defining renormalized boundary distances;
1. proving rigidity only after imposing simplicity or negative curvature;
1. fixing the conformal class rather than allowing arbitrary boundary-fixing diffeomorphisms.

# AH metrics and renormalized distance

An asymptotically hyperbolic metric is conformally compact. Near the boundary, one chooses a boundary defining function $\rho$ and writes the compactified metric

$$\begin{align}
\bar g=\rho^2 g.
\end{align}$$

The boundary metric representative is determined by the choice of $\rho$. Geodesics between boundary points have infinite ordinary length in $g$, so the source uses a renormalized boundary length. In schematic form,

$$\begin{align}
L_{\rm ren}(\gamma) =\lim_{\epsilon\to0} \left(\ell_g(\gamma\cap\{\rho\ge \epsilon\})+2\log\epsilon\right),
\end{align}$$

with the precise convention depending on the chosen representatives at the conformal infinity.

The renormalized boundary distance function assigns this finite part to geodesics connecting boundary points. In negative curvature, where homotopy classes matter, the marked version records the renormalized length in each homotopy class.

# Main rigidity statements

The first theorem is the simple AH case. If $g$ and $\hat g$ lie in the same conformal class, both are simple AH metrics, and their renormalized boundary distance functions agree for chosen conformal representatives at infinity, then

$$\begin{align}
g=\hat g.
\end{align}$$

The second theorem is the negatively curved marked-distance case. If $g$ and $\hat g$ are negatively curved AH metrics in the same conformal class, and their marked renormalized boundary distance functions agree, then again

$$\begin{align}
g=\hat g.
\end{align}$$

The fixed-conformal-class hypothesis is essential for this note's use: the theorem is not claiming that arbitrary AH metrics are determined by the boundary distance without gauge or class restrictions.

# Proof route

The proof compares two conformal metrics

$$\begin{align}
\hat g=e^{2f}g
\end{align}$$

and shows that equality of the boundary data forces $f=0$.

The argument has three main steps.

First, equality of renormalized boundary distances gives equality of the boundary jets and the relevant scattering data. This controls how geodesics for the two metrics approach the boundary and allows the comparison to be made in a common asymptotic chart.

Second, the paper compares the volumes of truncated unit tangent bundles for $g$ and $\hat g$. The proof uses Santalo-type formulas, the scattering map, and a fiberwise rescaling near the boundary. The source records this as an asymptotic equality of volumes as the cutoff approaches the conformal boundary.

Third, this volume comparison becomes an integral constraint on the conformal factor. The scalar inequality behind the last step is that for $c>0$ and dimension parameter $n\ge2$,

$$\begin{align}
(n-1)c+c^{1-n}\ge n,
\end{align}$$

with equality only at $c=1$. Applied to the conformal factor along the relevant geodesic data, the equality of renormalized distances and volumes forces the integrand to vanish, hence $f=0$.

# Local interpretation

For AdS notes, the source is most useful as a precise inverse-boundary-data statement:

1. the data are renormalized lengths of boundary-to-boundary geodesics;
1. the data depend on the choice of conformal representative at infinity;
1. rigidity is proven in a fixed conformal class;
1. negative curvature requires marked homotopy-class data;
1. the proof uses geodesic scattering rather than a local field-theory phase space.

This should not be cited as evidence that arbitrary AdS boundary conditions determine the bulk. It is a conditional rigidity theorem for a specific geometric inverse problem.

# Verification log

## Checked

- Mathematica checked the scalar inequality structure used in the conformal-factor step by differentiating
  $f(c)=(n-1)c+c^{1-n}$: the stationary point is at $c=1$, $f(1)=n$, and $f''(c)=n(n-1)c^{-n-1}>0$ for $c>0$ and $n>1$.

## Blocked

- I did not independently reproduce the AH geodesic scattering, boundary-jet, Santalo formula, or marked-distance arguments. Those theorem-level steps are source-derived.

## Failed

- No failed independent check was found.
