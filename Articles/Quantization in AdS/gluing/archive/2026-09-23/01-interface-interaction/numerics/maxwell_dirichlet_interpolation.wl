(* ::Package:: *)

(* ===================================================================== *)
(*  Gauge-invariant Maxwell Dirichlet-to-glued interpolation             *)
(*                                                                       *)
(*  Source: article/appendix_a_dirichlet.md.  Diagonalizing the          *)
(*  boundary matrix M_kappa gives common and relative dressed sectors   *)
(*  with coefficients alphaPlus and alphaMinus.  After dualization,     *)
(*  each oscillator sector is a rank-one kinetic defect.                *)
(* ===================================================================== *)

ClearAll["Global`*"];

ell = 1;
mu = 1;
kappaList = {0.1, 1.0, 5.0};
nList = {8, 16, 32, 64};
rootCount = 8;

sectorCoefficients[kappa_, scale_] :=
  {scale/kappa, scale (1/kappa + 2 kappa)};

cutNeumannWaveNumber[n_, length_] := (n + 1/2) Pi/length;
cutTrace[n_, length_] := (-1)^n Sqrt[2/length];

sectorMatrices[alpha_, Nmax_, length_] := Module[{waveNumbers, trace},
  waveNumbers = Table[cutNeumannWaveNumber[n, length], {n, 0, Nmax}];
  trace = Table[cutTrace[n, length], {n, 0, Nmax}];
  {
   DiagonalMatrix[waveNumbers^2],
   IdentityMatrix[Nmax + 1] + Outer[Times, trace, trace]/alpha
   }
  ];

sectorRoots[alpha_, Nmax_, length_, count_] := Module[{stiffness, kinetic},
  {stiffness, kinetic} = N[sectorMatrices[alpha, Nmax, length], 40];
  Take[Sort[Sqrt[Eigenvalues[{stiffness, kinetic}]]], count]
  ];

exactSectorRoot[alpha_, mode_, length_] := Module[
  {lower, upper, alphaExact, lengthExact},
  alphaExact = Rationalize[alpha, 0];
  lengthExact = Rationalize[length, 0];
  lower = mode Pi/length;
  upper = (mode + 1/2) Pi/length;
  kk /. FindRoot[
    kk Tan[kk lengthExact] == alphaExact,
    {kk, lower + 10^-30, upper - 10^-30},
    Method -> "Brent", WorkingPrecision -> 50]
  ];

exactSectorRoots[alpha_, count_, length_] :=
  Table[exactSectorRoot[alpha, mode, length], {mode, 0, count - 1}];

combinedRoots[kappa_, Nmax_, length_, scale_, count_] := Module[
  {alphaPlus, alphaMinus},
  {alphaPlus, alphaMinus} = sectorCoefficients[kappa, scale];
  Take[Sort[Join[
     sectorRoots[alphaPlus, Nmax, length, count],
     sectorRoots[alphaMinus, Nmax, length, count]]], count]
  ];

exactCombinedRoots[kappa_, length_, scale_, count_] := Module[
  {alphaPlus, alphaMinus},
  {alphaPlus, alphaMinus} = sectorCoefficients[kappa, scale];
  Take[Sort[Join[
     exactSectorRoots[alphaPlus, count, length],
     exactSectorRoots[alphaMinus, count, length]]], count]
  ];

errorRow[kappa_, Nmax_] := Module[{values, target},
  values = combinedRoots[kappa, Nmax, ell, mu, rootCount];
  target = exactCombinedRoots[kappa, ell, mu, rootCount];
  {kappa, Nmax, Max[Abs[values - target]]}
  ];

errorTable = Flatten[
  Table[errorRow[kappa, Nmax], {kappa, kappaList}, {Nmax, nList}], 1];

(* Endpoint spectra.  At kappa -> 0 both sectors approach the           *)
(* outer-Dirichlet/cut-Neumann roots.  At kappa -> Infinity the common  *)
(* sector approaches n Pi/L and the relative sector the half-integers;  *)
(* their union is the full-interval Dirichlet spectrum, with the zero   *)
(* common root assigned to the global holonomy sector.                  *)
weakKappa = 10^-8;
strongKappa = 10^8;
weakTarget = Take[Sort[Flatten[Table[
      {(n + 1/2) Pi/ell, (n + 1/2) Pi/ell}, {n, 0, rootCount - 1}]]],
   rootCount];
strongTarget = Table[r Pi/(2 ell), {r, 0, rootCount - 1}];
weakEndpointResidual = Max[Abs[
   exactCombinedRoots[weakKappa, ell, mu, rootCount] - weakTarget]];
strongEndpointResidual = Max[Abs[
   exactCombinedRoots[strongKappa, ell, mu, rootCount] - strongTarget]];

(* Half-interval response identity and energy-dependent matching. *)
continuumResponse[k_, length_] := Tan[k length]/k;
truncatedResponse[k_, Nmax_, length_] := Sum[
  cutTrace[n, length]^2/
   (cutNeumannWaveNumber[n, length]^2 - k^2),
  {n, 0, Nmax}];

responseSumIdentity = FullSimplify[
  Sum[(2/length)/(((n + 1/2) Pi/length)^2 - k^2),
    {n, 0, Infinity}] == continuumResponse[k, length],
  Assumptions -> {length > 0, k > 0, Element[k, Reals]}];
responseIdentityResidual = If[TrueQ[responseSumIdentity], 0, Infinity];

omittedResponse[k_, Nmax_, length_] :=
  continuumResponse[k, length] - truncatedResponse[k, Nmax, length];

matchedCoefficient[alpha_, kStar_, Nmax_, length_] :=
  alpha - kStar^2 omittedResponse[kStar, Nmax, length];

checkKappa = 1;
{checkAlphaPlus, checkAlphaMinus} = sectorCoefficients[checkKappa, mu];
checkRootPlus = exactSectorRoot[checkAlphaPlus, 0, ell];
checkRootMinus = exactSectorRoot[checkAlphaMinus, 0, ell];
checkAlphaPlusN = matchedCoefficient[checkAlphaPlus, checkRootPlus, 8, ell];
checkAlphaMinusN = matchedCoefficient[checkAlphaMinus, checkRootMinus, 8, ell];
matchingResidual = Max[{
   Abs[1 - checkRootPlus^2 truncatedResponse[checkRootPlus, 8, ell]/
      checkAlphaPlusN],
   Abs[1 - checkRootMinus^2 truncatedResponse[checkRootMinus, 8, ell]/
      checkAlphaMinusN]
   }];

(* Generalized-eigenvector checks in both CPS metrics. *)
metricChecks = Table[
  Module[{stiffness, kinetic, values, vectors, ordering, normalized,
    eigenResidual, orthogonalityResidual, positivityMargin},
   {stiffness, kinetic} = N[sectorMatrices[alpha, 24, ell], 40];
   {values, vectors} = Eigensystem[{stiffness, kinetic}];
   ordering = Ordering[values];
   values = values[[ordering]];
   vectors = vectors[[ordering]];
   normalized = (#/Sqrt[# . kinetic . #]) & /@ vectors;
   eigenResidual = Max[Table[
      Norm[stiffness . normalized[[j]] -
        values[[j]] kinetic . normalized[[j]]],
      {j, 1, rootCount}]];
   orthogonalityResidual = Max[Abs[
      Take[normalized, rootCount] . kinetic .
       Transpose[Take[normalized, rootCount]] -
      IdentityMatrix[rootCount]]];
   positivityMargin = Min[Eigenvalues[kinetic]];
   {eigenResidual, orthogonalityResidual, positivityMargin}
   ],
  {alpha, {checkAlphaPlus, checkAlphaMinus}}];

Print["===================================================================="];
Print[" Maxwell Dirichlet-to-glued interpolation: L=1, mu=1"];
Print[" columns: {kappa, N, direct max abs. error in first eight roots}"];
Print[TableForm[N[errorTable, 9]]];
Print[" half-interval response-sum identity residual = ",
  N[responseIdentityResidual, 5]];
Print[" selected-root energy-dependent matching residual = ",
  N[matchingResidual, 5]];
Print[" weak-endpoint spectral residual at kappa=10^-8 = ",
  N[weakEndpointResidual, 5]];
Print[" strong-endpoint spectral residual at kappa=10^8 = ",
  N[strongEndpointResidual, 5]];
Print[" {eigen residual, G-orthogonality residual, min eig(G)} "];
Print[TableForm[N[metricChecks, 8]]];
Print[" kappa=1 selected bare coefficients at N=8 = ",
  N[{checkAlphaPlusN, checkAlphaMinusN}, 10]];

If[responseIdentityResidual > 10^-20 || matchingResidual > 10^-30 ||
  weakEndpointResidual > 10^-5 || strongEndpointResidual > 10^-3 ||
  Max[metricChecks[[All, 1]]] > 10^-24 ||
  Max[metricChecks[[All, 2]]] > 10^-24 ||
  Min[metricChecks[[All, 3]]] <= 0,
 Print["ERROR: Maxwell Dirichlet-interpolation benchmark failed."];
 Exit[1];
 ];
