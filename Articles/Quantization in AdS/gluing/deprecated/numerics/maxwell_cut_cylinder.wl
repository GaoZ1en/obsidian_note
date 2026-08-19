(* ::Package:: *)

(* ===================================================================== *)
(*  Maxwell theory on a cut cylinder                                    *)
(*                                                                       *)
(*  Source: continuous theory III.md and article/4_maxwell.md.           *)
(*  After dualization, each y-Fourier sector reduces to a scalar on      *)
(*  [-L,L].  The transition field changes the kinetic metric, so the     *)
(*  affected reflection-even tower is a generalized eigenproblem.        *)
(* ===================================================================== *)

ClearAll["Global`*"];

halfLength = 1;
coupling = 1;
rootCount = 8;
scanN = {8, 16, 32, 64};

(* Outer Dirichlet and cut Neumann modes, normalized on the full         *)
(* reflection-even interval.  Their common cut trace is b_n.             *)
cutNeumannWaveNumber[n_, length_] := (n + 1/2) Pi/length;
cutTrace[n_, length_] := (-1)^n/Sqrt[length];

maxwellMatrices[g_, Nmax_, length_] := Module[{waveNumbers, trace},
  waveNumbers = Table[
    cutNeumannWaveNumber[n, length], {n, 0, Nmax}];
  trace = Table[cutTrace[n, length], {n, 0, Nmax}];
  {
   DiagonalMatrix[waveNumbers^2],
   IdentityMatrix[Nmax + 1] + Outer[Times, trace, trace]/g
   }
  ];

evenRoots[g_, Nmax_, length_, count_] := Module[{stiffness, kinetic},
  {stiffness, kinetic} = N[maxwellMatrices[g, Nmax, length], 40];
  Take[Sort[Sqrt[Eigenvalues[{stiffness, kinetic}]]], count]
  ];

exactEvenRoot[g_, mode_, length_] := Module[{lower, upper},
  lower = (mode - 1) Pi/length;
  upper = (mode - 1/2) Pi/length;
  k /. FindRoot[
    k Tan[k length] == 2 g,
    {k, (lower + upper)/2, lower + 10^-12, upper - 10^-12},
    WorkingPrecision -> 50]
  ];

exactEvenRoots = Table[
   exactEvenRoot[coupling, mode, halfLength],
   {mode, 1, rootCount}];

(* The reflection-odd sector has vanishing cut trace and is not changed  *)
(* by the transition-field kinetic term.                                *)
exactOddRoots = Table[
   mode Pi/halfLength, {mode, 1, rootCount}];

errorTable = Table[
   {Nmax,
    Max[Abs[
      evenRoots[coupling, Nmax, halfLength, rootCount] -
       exactEvenRoots]]},
   {Nmax, scanN}];

expectedErrors = {
  5.75910183125493*^-1,
  2.66859188496220*^-1,
  1.34394391500662*^-1,
  6.79571624506944*^-2
  };
benchmarkResidual = Max[Abs[errorTable[[All, 2]] - expectedErrors]];

(* The matrix determinant lemma gives the finite secular equation        *)
(*   1 - (k^2/g) Sum_n b_n^2/(k_n^2-k^2) = 0.                           *)
(* The continuum sum is tan(k L)/(2 k), reproducing                     *)
(*   k tan(k L) = 2 g.                                                   *)
continuumResponse[k_, length_] := Tan[k length]/(2 k);
truncatedResponse[k_, Nmax_, length_] := Sum[
  cutTrace[n, length]^2/
   (cutNeumannWaveNumber[n, length]^2 - k^2),
  {n, 0, Nmax}];

responseSumIdentity = FullSimplify[
   Sum[(1/length)/(((n + 1/2) Pi/length)^2 - k^2),
     {n, 0, Infinity}] == continuumResponse[k, length],
   Assumptions -> {length > 0, k > 0, Element[k, Reals]}];
responseIdentityResidual = If[TrueQ[responseSumIdentity], 0, Infinity];

exactSecularResidual = Max[Abs[
    # Tan[# halfLength] - 2 coupling & /@ exactEvenRoots]];

(* Generalized-eigenvector checks in the CPS metric.                     *)
checkN = 24;
{checkStiffness, checkKinetic} =
  N[maxwellMatrices[coupling, checkN, halfLength], 40];
{checkEigenvalues, checkEigenvectors} =
  Eigensystem[{checkStiffness, checkKinetic}];
ordering = Ordering[checkEigenvalues];
checkEigenvalues = checkEigenvalues[[ordering]];
checkEigenvectors = checkEigenvectors[[ordering]];
normalizedEigenvectors = (#/Sqrt[# . checkKinetic . #]) & /@
   checkEigenvectors;
generalizedResidual = Max[Table[
    Norm[checkStiffness . normalizedEigenvectors[[j]] -
      checkEigenvalues[[j]] checkKinetic . normalizedEigenvectors[[j]]],
    {j, 1, rootCount}]];
metricOrthogonalityResidual = Max[Abs[
    Take[normalizedEigenvectors, rootCount] . checkKinetic .
      Transpose[Take[normalizedEigenvectors, rootCount]] -
     IdentityMatrix[rootCount]]];
kineticPositivityMargin = Min[Eigenvalues[checkKinetic]];

(* The omitted response is energy dependent.  Exact matching at a        *)
(* chosen root would require                                              *)
(*   g_N(k)=g-k^2 T_N(k),                                                 *)
(* and therefore cannot be represented by a universal zero-energy        *)
(* renormalization of the single boundary kinetic coefficient.           *)
omittedResponse[k_, Nmax_, length_] :=
  continuumResponse[k, length] - truncatedResponse[k, Nmax, length];
modeSpecificBareCouplings = Table[
   With[{k = exactEvenRoots[[mode]]},
    coupling - k^2 omittedResponse[k, 8, halfLength]],
   {mode, 1, rootCount}];

(* Nonzero circle momentum only lifts the already diagonalized x roots.  *)
circleRadius = 1;
circleMomentum[m_, radius_] := m/radius;
liftedFrequencies = Table[
   Sqrt[circleMomentum[m, circleRadius]^2 + exactEvenRoots[[mode]]^2],
   {m, 0, 2}, {mode, 1, 4}];

Print["===================================================================="];
Print[" Maxwell cut cylinder: L=1, g=1"];
Print[" first eight exact even roots = ", N[exactEvenRoots, 10]];
Print[" first eight exact odd roots = ", N[exactOddRoots, 10]];
Print[" columns: {N, direct max abs. error in first eight even roots}"];
Print[TableForm[N[errorTable, 10]]];
Print[" response-sum identity residual = ",
  N[responseIdentityResidual, 5]];
Print[" exact secular residual = ", N[exactSecularResidual, 5]];
Print[" generalized eigen-equation residual = ",
  N[generalizedResidual, 5]];
Print[" G-orthogonality residual = ",
  N[metricOrthogonalityResidual, 5]];
Print[" smallest eigenvalue of G at N=24 = ",
  N[kineticPositivityMargin, 8]];
Print[" mode-specific g_N(k_j) at N=8 = ",
  N[modeSpecificBareCouplings, 10]];
Print[" lifted frequencies for m=0,1,2 and first four even roots = ",
  N[liftedFrequencies, 9]];
Print[" maximum residual against stored benchmark = ",
  N[benchmarkResidual, 5]];

If[responseIdentityResidual > 10^-20 || exactSecularResidual > 10^-35 ||
  generalizedResidual > 10^-25 || metricOrthogonalityResidual > 10^-25 ||
  kineticPositivityMargin <= 0 || benchmarkResidual > 10^-11,
 Print["ERROR: Maxwell cut-cylinder benchmark failed."];
 Exit[1];
 ];
