---
title: Pure gravity perturbation in global AdS3
date: 2026-06-02
summary: "Expands pure Einstein gravity around global AdS3 with a bulk stress tensor source, recording xPert conventions, geometric perturbations, the bulk action, and perturbative equations of motion."
---

# Pure gravity perturbation in global AdS$_3$

We work in global AdS$_3$ with unit AdS radius,

$$\begin{align}
\mathrm{d}s_0^2=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2 .
\end{align}$$

The background metric is denoted by $g^{(0)}_{\mu\nu}$, and all indices on perturbations are raised and lowered with $g^{(0)}_{\mu\nu}$. The background covariant derivative is denoted by $\nabla_\mu$. The curvature convention is

$$\begin{align}
R^{(0)}_{\mu\nu\rho\sigma} &=g^{(0)}_{\mu\sigma}g^{(0)}_{\nu\rho} -g^{(0)}_{\mu\rho}g^{(0)}_{\nu\sigma},\\
R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu},\\
R^{(0)}&=-6 .
\end{align}$$

In this notation $\Lambda=1$ means $\ell^{-2}=1$. Thus the usual cosmological constant is negative, and the bulk action is

$$\begin{align}
S_{\mathrm{bulk}}[g]=\frac{1}{2\kappa^2}\int_M\mathrm{d}^3x\sqrt{-g}(R+2).
\end{align}$$

The metric perturbation is expanded as

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu} +\kappa h^{(1)}_{\mu\nu} +\kappa^2 h^{(2)}_{\mu\nu} +O(\kappa^3).
\end{align}$$

We write

$$\begin{align}
h_i=g^{(0)\mu\nu}h^{(i)}_{\mu\nu},\qquad h_i{}^\mu{}_\nu=g^{(0)\mu\rho}h^{(i)}_{\rho\nu}.
\end{align}$$

## xPert convention

xPert uses the Taylor convention

$$\begin{align}
g_{\mu\nu}(\epsilon) =g^{(0)}_{\mu\nu} +\epsilon\,\delta g_{\mu\nu} +\frac{\epsilon^2}{2}\delta^2g_{\mu\nu} +O(\epsilon^3).
\end{align}$$

Therefore the conversion to the present perturbation variables is

$$\begin{align}
\delta g_{\mu\nu}=h^{(1)}_{\mu\nu},\qquad \delta^2g_{\mu\nu}=2h^{(2)}_{\mu\nu}.
\end{align}$$

A minimal xPert workflow is

```Mathematica
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Needs["xAct`xTras`"];

DefManifold[M, 3, {a, b, c, d, e, f}];
DefMetric[-1, g[-a, -b], CD, {";", "\[Del]"}];
DefMetricPerturbation[g, dg, \[Epsilon]];

DefTensor[h1[-a, -b], M, Symmetric[{-a, -b}], PrintAs -> "h^(1)"];
DefTensor[h2[-a, -b], M, Symmetric[{-a, -b}], PrintAs -> "h^(2)"];

xpToHere = {
  dg[LI[1], inds___] :> h1[inds],
  dg[LI[2], inds___] :> 2 h2[inds]
};

rawPert[expr_, order_] :=
  FullSimplification[][
    ToCanonical[
      ContractMetric[
        ExpandPerturbation[Perturbation[expr, order]]
      ]
    ] /. xpToHere
  ];

coeff1[expr_] := rawPert[expr, 1];
coeff2[expr_] := 1/2 rawPert[expr, 2];

ricci1 = coeff1[RicciCD[-a, -b]];
ricci2 = coeff2[RicciCD[-a, -b]];

einsteinExpr = RicciCD[-a, -b] - 1/2 g[-a, -b] RicciScalarCD[] - g[-a, -b];
einstein1 = coeff1[einsteinExpr];
einstein2 = coeff2[einsteinExpr];
```

After expanding, impose the AdS$_3$ background curvature rules above. The second rule in `xpToHere`, together with the factor `1/2` in `coeff2`, is the only place where the xPert Taylor convention differs from the expansion used here.

## Geometric expansion

The inverse metric is

$$\begin{align}
g^{\mu\nu} =g^{(0)\mu\nu} -\kappa h_1^{\mu\nu} +\kappa^2\left(h_1{}^\mu{}_\rho h_1^{\rho\nu}-h_2^{\mu\nu}\right) +O(\kappa^3).
\end{align}$$

The volume density is

$$\begin{align}
\sqrt{-g} =\sqrt{-g^{(0)}}\left[ 1+\frac{\kappa}{2}h_1 +\kappa^2\left( \frac{1}{2}h_2 -\frac{1}{4}h^{(1)}_{\mu\nu}h_1^{\mu\nu} +\frac{1}{8}h_1^2 \right) \right]+O(\kappa^3).
\end{align}$$

For any symmetric tensor $X_{\mu\nu}$, define the linearized connection operator

$$\begin{align}
C[X]^\rho{}_{\mu\nu} =\frac{1}{2}\left( \nabla_\mu X^\rho{}_\nu +\nabla_\nu X^\rho{}_\mu -\nabla^\rho X_{\mu\nu} \right).
\end{align}$$

Then the Christoffel connection is

$$\begin{align}
\Gamma^\rho{}_{\mu\nu} ={\Gamma^{(0)}}^\rho{}_{\mu\nu} +\kappa C[h^{(1)}]^\rho{}_{\mu\nu} +\kappa^2\left( C[h^{(2)}]^\rho{}_{\mu\nu} +C[h^{(1)},h^{(1)}]^\rho{}_{\mu\nu} \right) +O(\kappa^3),
\end{align}$$

where

$$\begin{align}
C[h^{(1)},h^{(1)}]^\rho{}_{\mu\nu} =-\frac{1}{2}h_1^{\rho\sigma} \left( \nabla_\mu h^{(1)}_{\sigma\nu} +\nabla_\nu h^{(1)}_{\mu\sigma} -\nabla_\sigma h^{(1)}_{\mu\nu} \right).
\end{align}$$

The Riemann tensor can be written compactly in terms of these connection perturbations:

$$\begin{align}
R^\rho{}_{\sigma\mu\nu} &={R^{(0)}}^\rho{}_{\sigma\mu\nu} +\kappa R^{(1)\rho}{}_{\sigma\mu\nu}[h^{(1)}]\\
&\quad+\kappa^2\left( R^{(1)\rho}{}_{\sigma\mu\nu}[h^{(2)}] +R^{(2)\rho}{}_{\sigma\mu\nu}[h^{(1)},h^{(1)}] \right) +O(\kappa^3),
\end{align}$$

with

$$\begin{align}
R^{(1)\rho}{}_{\sigma\mu\nu}[X] =2\nabla_{[\mu}C[X]^\rho{}_{\nu]\sigma},
\end{align}$$

and

$$\begin{align}
R^{(2)\rho}{}_{\sigma\mu\nu}[h^{(1)},h^{(1)}] &=2\nabla_{[\mu}C[h^{(1)},h^{(1)}]^\rho{}_{\nu]\sigma}\\
&\quad+2C[h^{(1)}]^\rho{}_{[\mu|\lambda|}
C[h^{(1)}]^\lambda{}_{\nu]\sigma}.
\end{align}$$

The Ricci tensor has the same decomposition,

$$\begin{align}
R_{\mu\nu} =R^{(0)}_{\mu\nu} +\kappa R^{(1)}_{\mu\nu}[h^{(1)}] +\kappa^2\left( R^{(1)}_{\mu\nu}[h^{(2)}] +R^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] \right) +O(\kappa^3),
\end{align}$$

where

$$\begin{align}
R^{(1)}_{\mu\nu}[X] &=\frac{1}{2}\left( \nabla_\rho\nabla_\mu X^\rho{}_\nu +\nabla_\rho\nabla_\nu X^\rho{}_\mu -\nabla^2X_{\mu\nu} -\nabla_\mu\nabla_\nu X \right),
\end{align}$$

and

$$\begin{align}
R^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}]&=\nabla_\rho C[h^{(1)},h^{(1)}]^\rho{}_{\nu\mu}-\nabla_\nu C[h^{(1)},h^{(1)}]^\rho{}_{\rho\mu}\\
&\quad+C[h^{(1)}]^\rho{}_{\rho\lambda}C[h^{(1)}]^\lambda{}_{\nu\mu}-C[h^{(1)}]^\rho{}_{\nu\lambda}C[h^{(1)}]^\lambda{}_{\rho\mu}.
\end{align}$$

The scalar curvature is

$$\begin{align}
R=-6+\kappa R^{(1)}[h^{(1)}] +\kappa^2\left( R^{(1)}[h^{(2)}] +R^{(2)}[h^{(1)},h^{(1)}] \right) +O(\kappa^3),
\end{align}$$

with

$$\begin{align}
R^{(1)}[X]=\nabla_\mu\nabla_\nu X^{\mu\nu}-\nabla^2X+2X,
\end{align}$$

and

$$\begin{align}
R^{(2)}[h^{(1)},h^{(1)}] &=g^{(0)\mu\nu}R^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] -h_1^{\mu\nu}R^{(1)}_{\mu\nu}[h^{(1)}] -2h^{(1)}_{\mu\nu}h_1^{\mu\nu}.
\end{align}$$

## Bulk action

Expanding the bulk Lagrangian gives

$$\begin{align}
\sqrt{-g}(R+2) =\sqrt{-g^{(0)}}\left[ \mathcal{L}^{(0)} +\kappa\mathcal{L}^{(1)}[h^{(1)}] +\kappa^2\left( \mathcal{L}^{(1)}[h^{(2)}] +\mathcal{L}^{(2)}[h^{(1)}] \right) \right]+O(\kappa^3),
\end{align}$$

where

$$\begin{align}
\mathcal{L}^{(0)}=-4,
\end{align}$$

and

$$\begin{align}
\mathcal{L}^{(1)}[X] =\nabla_\mu\nabla_\nu X^{\mu\nu}-\nabla^2X.
\end{align}$$

Thus $\mathcal{L}^{(1)}$ is a total derivative on the AdS$_3$ background. The quadratic bulk Lagrangian for $h^{(1)}_{\mu\nu}$ is

$$\begin{align}
\mathcal{L}^{(2)}[h^{(1)}] &=\frac{1}{2}h_1^2-h^{(1)}_{\mu\nu}h_1^{\mu\nu} +h_1^{\mu\nu}\nabla_\mu\nabla_\nu h_1 -\frac{1}{4}\nabla_\mu h_1\nabla^\mu h_1\\
&\quad -\nabla_\mu h_1^{\mu\nu}\nabla_\rho h^{(1)}_\nu{}^\rho +\nabla^\mu h_1\nabla_\nu h^{(1)}_\mu{}^\nu -h_1^{\mu\nu}\nabla_\nu\nabla_\rho h^{(1)}_\mu{}^\rho\\
&\quad -h_1^{\mu\nu}\nabla_\rho\nabla_\nu h^{(1)}_\mu{}^\rho +\frac{1}{2}h_1\nabla_\mu\nabla_\nu h_1^{\mu\nu} +h_1^{\mu\nu}\nabla^2h^{(1)}_{\mu\nu}\\
&\quad -\frac{1}{2}h_1\nabla^2h_1 -\frac{1}{2}\nabla_\mu h^{(1)}_{\nu\rho}\nabla^\rho h_1^{\mu\nu} +\frac{3}{4}\nabla_\rho h^{(1)}_{\mu\nu}\nabla^\rho h_1^{\mu\nu}.
\end{align}$$

Therefore

$$\begin{align}
S_{\mathrm{bulk}} &=\frac{1}{2\kappa^2}\int_M\mathrm{d}^3x\sqrt{-g^{(0)}} \left[ \mathcal{L}^{(0)} +\kappa\mathcal{L}^{(1)}[h^{(1)}]\right.\\
&\quad\left. +\kappa^2\left( \mathcal{L}^{(1)}[h^{(2)}] +\mathcal{L}^{(2)}[h^{(1)}] \right) \right] +O(\kappa).
\end{align}$$

The terms involving $\mathcal{L}^{(1)}$ are boundary terms. The non-trivial bulk quadratic action for the first-order graviton is the $\mathcal{L}^{(2)}[h^{(1)}]$ term.

## Equations of motion with a bulk source

Define

$$\begin{align}
\mathcal{E}_{\mu\nu}[g] =R_{\mu\nu}-\frac{1}{2}g_{\mu\nu}R-g_{\mu\nu}.
\end{align}$$

The sourced Einstein equation is

$$\begin{align}
\mathcal{E}_{\mu\nu}[g]=\kappa^2T_{\mu\nu}.
\end{align}$$

Expanding the left hand side gives

$$\begin{align}
\mathcal{E}_{\mu\nu}[g] =\kappa\mathcal{E}^{(1)}_{\mu\nu}[h^{(1)}] +\kappa^2\left( \mathcal{E}^{(1)}_{\mu\nu}[h^{(2)}] +\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] \right) +O(\kappa^3).
\end{align}$$

The linearized Einstein operator is

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[X] &=-X_{\mu\nu} -\frac{1}{2}\nabla^2X_{\mu\nu} +\frac{1}{2}\nabla_\mu\nabla_\rho X_\nu{}^\rho +\frac{1}{2}\nabla_\nu\nabla_\rho X_\mu{}^\rho -\frac{1}{2}\nabla_\mu\nabla_\nu X\\
&\quad +\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^2X -\frac{1}{2}g^{(0)}_{\mu\nu}\nabla_\rho\nabla_\sigma X^{\rho\sigma}.
\end{align}$$

The quadratic source built from $h^{(1)}_{\mu\nu}$ is

$$\begin{align}
\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}]&=R^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}]-\frac{1}{2}g^{(0)}_{\mu\nu}R^{(2)}[h^{(1)},h^{(1)}]-\frac{1}{2}h^{(1)}_{\mu\nu}R^{(1)}[h^{(1)}].
\end{align}$$

If the bulk stress tensor is counted as $T_{\mu\nu}=O(\kappa^0)$, the perturbative equations are

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h^{(1)}]=0,
\end{align}$$

and

$$\begin{align}
\mathcal{E}^{(1)}_{\mu\nu}[h^{(2)}] +\mathcal{E}^{(2)}_{\mu\nu}[h^{(1)},h^{(1)}] =T_{\mu\nu}.
\end{align}$$

Thus $h^{(1)}_{\mu\nu}$ is the first-order pure-gravity perturbation, while $h^{(2)}_{\mu\nu}$ contains both the gravitational self-backreaction of $h^{(1)}_{\mu\nu}$ and the response to the bulk source.
