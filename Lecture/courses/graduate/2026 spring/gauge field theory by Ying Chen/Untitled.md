---
title: Yukawa phi4 example with FeynRules and FeynArts
date: 2026-04-28
summary: "A worked Mathematica workflow for deriving Feynman rules from a Yukawa plus phi4 Lagrangian, generating diagrams with FeynArts, and organizing the tree and one-loop amplitudes for psi psibar to three scalars."
---

# Yukawa phi4 example with FeynRules and FeynArts

## Model

Take one Dirac fermion $\psi$ and one real scalar $\phi$ with interaction

$$\begin{align}
\mathcal L_{\mathrm{int}}
=
-g\phi\bar\psi\psi
-
\frac{\lambda}{4!}\phi^4.
\end{align}$$

The full Lagrangian used in FeynRules was

$$\begin{align}
\mathcal L
=
i\bar\psi\gamma^\mu\partial_\mu\psi
-m_\psi\bar\psi\psi
+
\frac{1}{2}\partial_\mu\phi\,\partial^\mu\phi
-
\frac{1}{2}m_\phi^2\phi^2
-
g\phi\bar\psi\psi
-
\frac{\lambda}{4!}\phi^4.
\end{align}$$

FeynRules returned two nonzero interaction vertices:

$$\begin{align}
\phi\phi\phi\phi:\ -i\lambda,
\qquad
\bar\psi\psi\phi:\ -ig.
\end{align}$$

## Package setup

The packages used were:

- FeynRules 2.3.49, installed at `/Users/koishi/Library/Wolfram/Applications/feynrules-current`.
- FeynArts 3.12, installed at `/Users/koishi/Library/Wolfram/Applications/FeynCalc/FeynArts` and patched for FeynCalc.
- FeynCalc 10.2.0 stable.

The FeynRules-generated FeynArts model files were installed at:

- `/Users/koishi/Library/Wolfram/Applications/FeynCalc/FeynArts/Models/YukawaPhi4FR.mod`
- `/Users/koishi/Library/Wolfram/Applications/FeynCalc/FeynArts/Models/YukawaPhi4FR.gen`
- `/Users/koishi/Library/Wolfram/Applications/FeynCalc/FeynArts/Models/YukawaPhi4FR.pars`

## FeynRules model file

```wl
M$ModelName = "YukawaPhi4";

M$Information = {
  Authors -> "Codex",
  Date -> "2026-04-28"
};

M$Parameters = {
  gY == {
    ParameterType -> External,
    Value -> 1,
    InteractionOrder -> {YUK, 1},
    TeX -> "g"
  },
  lam == {
    ParameterType -> External,
    Value -> 1,
    InteractionOrder -> {PHI4, 1},
    TeX -> "\\lambda"
  },
  Mpsi == {
    ParameterType -> External,
    Value -> 1,
    TeX -> "m_\\psi"
  },
  Mphi == {
    ParameterType -> External,
    Value -> 1,
    TeX -> "m_\\phi"
  }
};

M$GaugeGroups = {};

M$ClassesDescription = {
  F[1] == {
    ClassName -> psi,
    SelfConjugate -> False,
    Mass -> {Mpsi, 1},
    Width -> 0,
    PropagatorLabel -> "\\psi",
    PropagatorType -> Straight,
    PropagatorArrow -> Forward,
    PDG -> 9000001,
    ParticleName -> "\\psi",
    AntiParticleName -> "\\bar{\\psi}",
    FullName -> "Dirac fermion psi"
  },

  S[1] == {
    ClassName -> phi,
    SelfConjugate -> True,
    Mass -> {Mphi, 1},
    Width -> 0,
    PropagatorLabel -> "\\phi",
    PropagatorType -> D,
    PropagatorArrow -> None,
    PDG -> 9000002,
    ParticleName -> "\\phi",
    FullName -> "Real scalar phi"
  }
};
```

## FeynRules export

```wl
Unprotect[Commutator, MatrixSymbol];
ClearAll[Commutator, MatrixSymbol];

$FeynRulesPath =
  FileNameJoin[{$UserBaseDirectory, "Applications", "feynrules-current"}];
SetDirectory[$FeynRulesPath];
Get["FeynRulesPackage.m"];

SetDirectory["/tmp"];
LoadModel["YukawaPhi4.fr"];

L =
  I psibar . Ga[mu] . del[psi, mu]
  - Mpsi psibar . psi
  + 1/2 del[phi, mu] del[phi, mu]
  - 1/2 Mphi^2 phi^2
  - gY psibar . psi phi
  - lam/24 phi^4;

verts = FeynmanRules[L, ScreenOutput -> False];

WriteFeynArtsOutput[
  L,
  Output -> "YukawaPhi4FR",
  CouplingRename -> False
];
```

The important check is

```wl
verts[[All, 1]]
```

which gives

```wl
{
  {{phi, 1}, {phi, 2}, {phi, 3}, {phi, 4}},
  {{psibar, 1}, {psi, 2}, {phi, 3}}
}
```

## Selection rule for psi psi to three scalars

For a Dirac fermion with only $\phi\bar\psi\psi$ and $\phi^4$ interactions, fermion number is conserved. Hence

$$\begin{align}
\psi\psi\to\phi\phi\phi
\end{align}$$

is forbidden at every perturbative order:

$$\begin{align}
\mathcal M(\psi\psi\to3\phi)=0,
\qquad
d\sigma(\psi\psi\to3\phi)=0.
\end{align}$$

FeynArts confirms this at one loop:

```wl
$LoadFeynArts = True;
Needs["FeynCalc`"];

top = CreateTopologies[1, 2 -> 3];

ins = InsertFields[
  top,
  {F[1], F[1]} -> {S[1], S[1], S[1]},
  Model -> "YukawaPhi4FR",
  GenericModel -> "YukawaPhi4FR",
  InsertionLevel -> {Classes}
];

amp = CreateFeynAmp[ins];
```

The output is

```text
in total: 0 Classes insertions
in total: 0 Classes amplitudes
```

## psi psibar to three scalars

The process

$$\begin{align}
\psi(p_1)+\bar\psi(p_2)
\to
\phi(k_1)+\phi(k_2)+\phi(k_3)
\end{align}$$

is allowed. FeynArts gives

```text
tree level: 7 amplitudes
one loop: 169 amplitudes
```

The tree amplitude splits into two classes:

$$\begin{align}
\mathcal M^{(0)}
=
\mathcal M_{g\lambda}^{(0)}
+
\mathcal M_{g^3}^{(0)}.
\end{align}$$

The first class is scalar exchange,

$$\begin{align}
\psi\bar\psi\to\phi^\ast\to\phi\phi\phi,
\end{align}$$

with schematic amplitude

$$\begin{align}
\mathcal M_{g\lambda}^{(0)}
=
\bar v(p_2)(-ig)u(p_1)
\frac{i}{(p_1+p_2)^2-m_\phi^2}
(-i\lambda).
\end{align}$$

The second class is emission of the three final scalars from the fermion line. There are $3!$ permutations:

$$\begin{align}
\mathcal M_{g^3}^{(0)}
=
(-ig)^3
\sum_{\pi\in S_3}
\bar v(p_2)
\frac{i(\not p_1-\not k_{\pi(1)}-\not k_{\pi(2)}+m_\psi)}
{(p_1-k_{\pi(1)}-k_{\pi(2)})^2-m_\psi^2}
\frac{i(\not p_1-\not k_{\pi(1)}+m_\psi)}
{(p_1-k_{\pi(1)})^2-m_\psi^2}
u(p_1).
\end{align}$$

## FeynArts and FeynCalc code

```wl
$LoadFeynArts = True;
Needs["FeynCalc`"];

model = "YukawaPhi4FR";
gen = "YukawaPhi4FR";

topTree = CreateTopologies[0, 2 -> 3];
insTree = InsertFields[
  topTree,
  {F[1], -F[1]} -> {S[1], S[1], S[1]},
  Model -> model,
  GenericModel -> gen,
  InsertionLevel -> {Classes}
];

ampTreeFA = CreateFeynAmp[insTree, Truncated -> True];

treeFCList =
  FCFAConvert[
    ampTreeFA,
    IncomingMomenta -> {p1, p2},
    OutgoingMomenta -> {k1, k2, k3},
    LoopMomenta -> {},
    UndoChiralSplittings -> True,
    ChangeDimension -> 4,
    List -> True,
    SMP -> False,
    DropSumOver -> True
  ] // Contract // DiracSimplify;

topLoop = CreateTopologies[1, 2 -> 3];
insLoop = InsertFields[
  topLoop,
  {F[1], -F[1]} -> {S[1], S[1], S[1]},
  Model -> model,
  GenericModel -> gen,
  InsertionLevel -> {Classes}
];

ampLoopFA = CreateFeynAmp[insLoop, Truncated -> True];

loopFCList =
  FCFAConvert[
    ampLoopFA,
    IncomingMomenta -> {p1, p2},
    OutgoingMomenta -> {k1, k2, k3},
    LoopMomenta -> {q},
    UndoChiralSplittings -> True,
    ChangeDimension -> D,
    List -> True,
    SMP -> False,
    DropSumOver -> True
  ] // Contract;

{Length[treeFCList], Length[loopFCList]}
```

The evaluated result is

```wl
{7, 169}
```

The first one-loop term in FeynCalc form is

```wl
-1/16*
  lam*((-I)*gY) . (Mpsi - DiracGamma[Momentum[q, D], D]) .
  ((-I)*gY) .
  (Mpsi + DiracGamma[Momentum[k2 + k3 - p2, D], D]) .
  ((-I)*gY) *
  FeynAmpDenominator[
    PropagatorDenominator[Momentum[-k2 - k3 + p2, D], Mpsi]
  ] *
  FeynAmpDenominator[
    PropagatorDenominator[Momentum[q, D], Mpsi],
    PropagatorDenominator[Momentum[-p2 + q, D], Mphi],
    PropagatorDenominator[Momentum[k2 + k3 - p2 + q, D], Mphi]
  ] / Pi^4
```

## One-loop cross section

The physical one-loop correction to the cross section is the interference of the renormalized one-loop amplitude with the tree amplitude:

$$\begin{align}
d\sigma_{\text{1-loop}}
=
\frac{1}{3!}
\frac{1}{4\sqrt{(p_1\cdot p_2)^2-m_\psi^4}}
\,
\overline{
2\operatorname{Re}
\left[
\mathcal M^{(0)\ast}
\mathcal M_{\mathrm{ren}}^{(1)}
\right]
}
\,d\Phi_3.
\end{align}$$

The factor $1/3!$ accounts for the three identical final-state scalars. The squared one-loop amplitude $|\mathcal M^{(1)}|^2$ contributes only at two-loop order in the cross section expansion.

To obtain a numerical cross section one still has to choose:

- the masses $m_\psi,m_\phi$,
- the couplings $g,\lambda$,
- the center-of-mass energy $s$,
- a renormalization scheme, such as on-shell or $\overline{\mathrm{MS}}$,
- and a numerical integration method for the three-body phase space $d\Phi_3$.
