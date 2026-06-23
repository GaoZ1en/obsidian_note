---
title: Moller scattering with FeynCalc
date: 2026-04-28
summary: "Tree-level QED computation of the unpolarized differential cross section for Moller scattering in the massless center-of-mass limit, with the FeynCalc setup and reproducible Mathematica code."
---

# Moller scattering with FeynCalc

## FeynCalc setup

The official FeynCalc installation page recommends installing the stable release from inside a Mathematica kernel with:

```wl
Import["https://raw.githubusercontent.com/FeynCalc/feyncalc/master/install.m"];
InstallFeynCalc[]
```

On this machine FeynCalc was installed under:

```text
/Users/koishi/Library/Wolfram/Applications/FeynCalc/
```

The package loads successfully as FeynCalc 10.2.0 stable:

```wl
Needs["FeynCalc`"]
```

Source used for the setup: [FeynCalc installation guide](https://feyncalc.github.io/FeynCalcBookDev/Extra/Install.html).

## Kinematics

Consider tree-level QED Moller scattering

$$\begin{align}
e^-(p_1) + e^-(p_2) \to e^-(p_3) + e^-(p_4).
\end{align}$$

Use the massless Mandelstam variables

$$\begin{align}
s = (p_1+p_2)^2, \qquad t = (p_1-p_3)^2, \qquad u = (p_1-p_4)^2, \qquad s+t+u=0.
\end{align}$$

In the center-of-mass frame,

$$\begin{align}
t = -\frac{s}{2}(1-\cos\theta), \qquad u = -\frac{s}{2}(1+\cos\theta).
\end{align}$$

There are two photon-exchange diagrams. The $t$-channel amplitude is

$$\begin{align}
i\mathcal{M}_t = (-ie)^2 \frac{-i}{t} \left[\bar{u}(p_3)\gamma^\mu u(p_1)\right] \left[\bar{u}(p_4)\gamma_\mu u(p_2)\right],
\end{align}$$

and the $u$-channel amplitude is

$$\begin{align}
i\mathcal{M}_u = -(-ie)^2 \frac{-i}{u} \left[\bar{u}(p_4)\gamma^\mu u(p_1)\right] \left[\bar{u}(p_3)\gamma_\mu u(p_2)\right].
\end{align}$$

The extra minus sign in $\mathcal{M}_u$ is the fermion exchange sign for identical final-state electrons. Thus

$$\begin{align}
\mathcal{M} = \mathcal{M}_t - \mathcal{M}_u.
\end{align}$$

## Spin average

The unpolarized spin average gives

$$\begin{align}
\overline{|\mathcal{M}|^2} = \frac{e^4}{4} \left[ \frac{T_t}{t^2} + \frac{T_u}{u^2} - \frac{2T_{tu}}{tu} \right],
\end{align}
\end{align}$$

where

$$\begin{aligned}
T_t &= \operatorname{tr}\left(\not{p}_3\gamma^\mu \not{p}_1\gamma^\nu\right) \operatorname{tr}\left(\not{p}_4\gamma_\mu \not{p}_2\gamma_\nu\right) = 8(s^2+u^2), \\
T_u &= \operatorname{tr}\left(\not{p}_4\gamma^\mu \not{p}_1\gamma^\nu\right) \operatorname{tr}\left(\not{p}_3\gamma_\mu \not{p}_2\gamma_\nu\right) = 8(s^2+t^2), \\
T_{tu} &= \operatorname{tr}\left(\not{p}_3\gamma^\mu \not{p}_1\gamma^\nu
\not{p}_4\gamma_\mu \not{p}_2\gamma_\nu\right) = -8s^2.
\end{aligned}$$

Therefore

$$\begin{align}
\overline{|\mathcal{M}|^2} = 2e^4 \left[ \frac{s^2+u^2}{t^2} + \frac{s^2+t^2}{u^2} + \frac{2s^2}{tu} \right].
\end{align}$$

Equivalently, using $u=-s-t$,

$$\begin{align}
\overline{|\mathcal{M}|^2} = \frac{4e^4(s^2+st+t^2)^2}{t^2(s+t)^2}.
\end{align}$$

In the center-of-mass frame this becomes

$$\begin{align}
\overline{|\mathcal{M}|^2} = 4e^4 \frac{(3+\cos^2\theta)^2}{(1-\cos^2\theta)^2}.
\end{align}$$

## Differential cross section

For massless $2\to2$ scattering,

$$\begin{align}
\frac{d\sigma}{d\Omega} = \frac{1}{64\pi^2 s}\overline{|\mathcal{M}|^2}.
\end{align}$$

Because the two final electrons are identical, integrating over the full solid angle requires an additional factor $1/2$. Hence

$$\begin{align}
\frac{d\sigma}{d\Omega} = \frac{1}{2}\frac{1}{64\pi^2s}
\overline{|\mathcal{M}|^2} = \frac{\alpha^2}{2s} \frac{(3+\cos^2\theta)^2}{(1-\cos^2\theta)^2},
\end{align}$$

where $\alpha=e^2/(4\pi)$. If the final-state electrons are artificially labeled, or if one integrates over only one hemisphere, the factor $1/2$ should be omitted accordingly.

## Mathematica and FeynCalc code

```wl
$LoadAddOns = {};
Needs["FeynCalc`"];

ClearScalarProducts[];
FCClearScalarProducts[];

SetMandelstam[s, t, u, p1, p2, p3, p4, 0, 0, 0, 0];

trT1 = DiracTrace[GS[p3] . GA[mu] . GS[p1] . GA[nu]] //
   DiracSimplify;
trT2 = DiracTrace[GS[p4] . GA[mu] . GS[p2] . GA[nu]] //
   DiracSimplify;
TT = Contract[trT1 trT2] // DiracSimplify // Simplify;

trU1 = DiracTrace[GS[p4] . GA[mu] . GS[p1] . GA[nu]] //
   DiracSimplify;
trU2 = DiracTrace[GS[p3] . GA[mu] . GS[p2] . GA[nu]] //
   DiracSimplify;
UU = Contract[trU1 trU2] // DiracSimplify // Simplify;

interTrace =
  DiracTrace[
    GS[p3] . GA[mu] . GS[p1] . GA[nu] .
    GS[p4] . GA[mu] . GS[p2] . GA[nu]
  ] // DiracSimplify;
INT = Contract[interTrace] // DiracSimplify // Simplify;

spinAvgMsq =
  Simplify[
    (e^4/4) (TT/t^2 + UU/u^2 - 2 INT/(t u)) /. u -> -s - t
  ];

angleForm =
  FullSimplify[
    spinAvgMsq /. t -> -s/2 (1 - x)
  ];

{TT, UU, INT, spinAvgMsq, angleForm}
```

The evaluated output is

```wl
{
  8 (s^2 + u^2),
  8 (s^2 + t^2),
  -8 s^2,
  (4 e^4 (s^2 + s t + t^2)^2)/(t^2 (s + t)^2),
  (4 e^4 (3 + x^2)^2)/(-1 + x^2)^2
}
```

with $x=\cos\theta$.
