---
title: General Relativity Reference
date: 2026-07-01
summary: "Reference note on GR geometry, hypersurfaces, geodesic congruences, ADM variables, and black-hole thermodynamics."
---

# General Relativity Reference

## Basic Geometry

The Levi-Civita connection is

$$
\begin{align}
\Gamma^\rho_{\mu\nu}
=\frac12 g^{\rho\sigma}
(\partial_\mu g_{\sigma\nu}+\partial_\nu g_{\mu\sigma}-\partial_\sigma g_{\mu\nu}).
\end{align}
$$

The Riemann tensor convention used here is

$$
\begin{align}
R^\rho{}_{\sigma\mu\nu}
=\partial_\mu\Gamma^\rho_{\sigma\nu}
-\partial_\nu\Gamma^\rho_{\sigma\mu}
+\Gamma^\rho_{\mu\lambda}\Gamma^\lambda_{\sigma\nu}
-\Gamma^\rho_{\nu\lambda}\Gamma^\lambda_{\sigma\mu}.
\end{align}
$$

Opposite sign conventions are common in GR references.

## Hypersurfaces

For a non-null hypersurface with unit normal $n^\mu$ satisfying $g_{\mu\nu}n^\mu n^\nu=\varepsilon$, the induced metric is

$$
\begin{align}
\gamma_{\mu\nu}=g_{\mu\nu}-\varepsilon n_\mu n_\nu.
\end{align}
$$

The extrinsic curvature is

$$
\begin{align}
K_{\mu\nu}=\gamma^\rho{}_\mu\gamma^\sigma{}_\nu\nabla_\rho n_\sigma.
\end{align}
$$

For null hypersurfaces, the induced metric is degenerate and an auxiliary null vector is needed.

## Congruences And Energy Conditions

For geodesic congruences, the basic data are:

- timelike versus null character;
- projector orthogonal to the tangent vector;
- expansion, shear, vorticity, and acceleration;
- curvature-sign convention in Raychaudhuri's equation;
- energy conditions translated through Einstein's equation.

## ADM And Conserved Quantities

ADM variables and conserved charges involve:

- lapse, shift, spatial metric, and foliation;
- extrinsic-curvature sign convention;
- Hamiltonian and momentum constraints;
- evolution equations;
- boundary falloff conditions;
- Killing-vector conserved quantities in stationary or axisymmetric metrics.

## Black-Hole Thermodynamics

For a stationary black hole,

$$
\begin{align}
T_H=\frac{\kappa}{2\pi},\qquad S=\frac{A}{4}.
\end{align}
$$

For Kerr,

$$
\begin{align}
\Omega_H=\frac{a}{r_+^2+a^2},\qquad
\kappa=\frac{r_+-r_-}{2(r_+^2+a^2)}.
\end{align}
$$

These formulas overlap with the black-hole thermodynamics notes under `Note/useful results/`.
