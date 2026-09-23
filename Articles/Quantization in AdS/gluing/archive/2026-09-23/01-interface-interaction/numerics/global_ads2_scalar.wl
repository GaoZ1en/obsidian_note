(* ::Package:: *)

(* ===================================================================== *)
(*  Global AdS2 scalar cut at rho=0: Neumann-mode Galerkin benchmark     *)
(*                                                                       *)
(*  Model: continuous theory V.md and article/3_scalar_geometries.md.    *)
(*  Standard branch Delta>1.  The half-space Neumann modes are the       *)
(*  restrictions of the even global Gegenbauer modes.  Only the          *)
(*  reflection-odd sector feels the interface penalty.                   *)
(* ===================================================================== *)

ClearAll["Global`*"];

delta = 2;
gList = {0.1, 1.0, 5.0};
nList = {8, 16, 32, 64};

globalNormSquared[n_, conformalDimension_] :=
  Pi 2^(1 - 2 conformalDimension) Gamma[n + 2 conformalDimension]/
   (n! (n + conformalDimension) Gamma[conformalDimension]^2);

halfBoundaryValue[r_, conformalDimension_] :=
  Sqrt[2] GegenbauerC[2 r, conformalDimension, 0]/
   Sqrt[globalNormSquared[2 r, conformalDimension]];

halfFrequency[r_, conformalDimension_] := conformalDimension + 2 r;

oddSectorMatrix[g_, Nmax_, conformalDimension_] := Module[{free, boundary},
  free = DiagonalMatrix[
    Table[halfFrequency[r, conformalDimension]^2, {r, 0, Nmax}]
    ];
  boundary = Table[halfBoundaryValue[r, conformalDimension], {r, 0, Nmax}];
  free + 2 g Outer[Times, boundary, boundary]
  ];

truncatedOddFrequencies[g_, Nmax_, conformalDimension_] :=
  Sort[Sqrt[Eigenvalues[N[oddSectorMatrix[g, Nmax, conformalDimension], 40]]]];

dirichletToNeumann[frequency_, conformalDimension_] :=
  -2 Gamma[(conformalDimension + 1 - frequency)/2] *
    Gamma[(conformalDimension + 1 + frequency)/2]/
   (Gamma[(conformalDimension - frequency)/2]
     Gamma[(conformalDimension + frequency)/2]);

exactOddFrequency[g_, r_, conformalDimension_] := Module[{lower, upper},
  lower = conformalDimension + 2 r;
  upper = conformalDimension + 2 r + 1;
  ww /. FindRoot[
    dirichletToNeumann[ww, conformalDimension] == 2 g,
    {ww, (lower + upper)/2, lower + 10^-10, upper - 10^-10}
    ]
  ];

exactOddFrequencies[g_, count_, conformalDimension_] :=
  Table[exactOddFrequency[g, r, conformalDimension], {r, 0, count - 1}];

(* The full boundary resolvent satisfies                                 *)
(*   Sum[b_r^2/(omega_r^2-omega^2),{r,0,Infinity}] = -1/D_Delta(omega). *)
(* Evaluate the omitted tail at omega=0 to match a fixed low-energy      *)
(* window with one energy-independent bare coupling.                     *)
zeroEnergyTail[Nmax_, conformalDimension_] :=
  -1/dirichletToNeumann[0, conformalDimension] -
   Sum[
     halfBoundaryValue[r, conformalDimension]^2/
      halfFrequency[r, conformalDimension]^2,
     {r, 0, Nmax}
     ];

matchedCoupling[gContinuum_, Nmax_, conformalDimension_] :=
  1/(1/gContinuum + 2 zeroEnergyTail[Nmax, conformalDimension]);

maxRelativeError[values_, target_, count_] :=
  Max[Abs[(Take[values, count] - Take[target, count])/Take[target, count]]];

errorRow[g_, Nmax_] := Module[{target, direct, matched, gN},
  target = exactOddFrequencies[g, 12, delta];
  gN = matchedCoupling[g, Nmax, delta];
  direct = truncatedOddFrequencies[g, Nmax, delta];
  matched = truncatedOddFrequencies[gN, Nmax, delta];
  {g, Nmax,
   maxRelativeError[direct, target, 6],
   maxRelativeError[matched, target, 6],
   gN}
  ];

errorTable = Flatten[
  Table[errorRow[g, Nmax], {g, gList}, {Nmax, nList}],
  1
  ];

Print["===================================================================="];
Print[" Global AdS2 scalar: Delta=2, first six affected frequencies"];
Print[" columns: {g, N, direct max rel. error, matched max rel. error, g_N}"];
Print[TableForm[N[errorTable, 9]]];

expectedMatched = {
  1.05539102114597*^-6, 1.52384076609611*^-7,
  2.17075197154010*^-8, 2.90369843338332*^-9,
  1.03627478627322*^-4, 1.32069526987688*^-5,
  1.78005266688570*^-6, 2.34682294464671*^-7,
  1.66742008680041*^-3, 2.03233074845362*^-4,
  2.72108863203973*^-5, 3.58292783480559*^-6
  };

residual = Max[Abs[errorTable[[All, 4]] - expectedMatched]];
improvementPassed = And @@ Thread[errorTable[[All, 4]] < errorTable[[All, 3]]];

Print[" maximum residual against the stored matched benchmark = ", N[residual, 5]];
Print[" matched coupling improves every displayed case = ", improvementPassed];

If[residual > 10^-12 || ! TrueQ[improvementPassed],
  Print["ERROR: global AdS2 truncation benchmark failed."];
  Exit[1];
  ];
