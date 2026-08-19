(* ::Package:: *)

(* ===================================================================== *)
(*  Uniform periodic scalar lattice                                     *)
(*                                                                       *)
(*  Source: lattice theory.md.  This file treats only the uniform        *)
(*  regulator requested in that note; the nonuniform model is excluded. *)
(* ===================================================================== *)

ClearAll["Global`*"];

mass = 1;
circumference = 2 Pi;

pathStiffness[sites_, spacing_, massValue_, boundaryType_] :=
 Module[{matrix},
  matrix = massValue^2 IdentityMatrix[sites];
  Do[
   matrix[[j, j]] += 1/spacing^2;
   matrix[[j + 1, j + 1]] += 1/spacing^2;
   matrix[[j, j + 1]] -= 1/spacing^2;
   matrix[[j + 1, j]] -= 1/spacing^2,
   {j, 1, sites - 1}];
  If[boundaryType == "Dirichlet",
   matrix[[1, 1]] += 1/spacing^2;
   matrix[[sites, sites]] += 1/spacing^2];
  matrix
  ];

periodicStiffness[sites_, spacing_, massValue_] := Module[{matrix},
  matrix = pathStiffness[sites, spacing, massValue, "Neumann"];
  matrix[[1, 1]] += 1/spacing^2;
  matrix[[sites, sites]] += 1/spacing^2;
  matrix[[1, sites]] -= 1/spacing^2;
  matrix[[sites, 1]] -= 1/spacing^2;
  matrix
  ];

directSum[left_, right_] := ArrayFlatten[{
   {left, ConstantArray[0, {Length[left], Length[right]}]},
   {ConstantArray[0, {Length[right], Length[left]}], right}
   }];

dirichletReference[n1_, n2_, spacing_, massValue_] :=
  directSum[
   pathStiffness[n1, spacing, massValue, "Dirichlet"],
   pathStiffness[n2, spacing, massValue, "Dirichlet"]];

neumannReference[n1_, n2_, spacing_, massValue_] :=
  directSum[
   pathStiffness[n1, spacing, massValue, "Neumann"],
   pathStiffness[n2, spacing, massValue, "Neumann"]];

addBond[matrix_, first_, second_, spacing_] := Module[{result = matrix},
  result[[first, first]] += 1/spacing^2;
  result[[second, second]] += 1/spacing^2;
  result[[first, second]] -= 1/spacing^2;
  result[[second, first]] -= 1/spacing^2;
  result
  ];

gluedDirichletMatrix[n1_, n2_, spacing_, massValue_] :=
 Module[{matrix, total},
  total = n1 + n2;
  matrix = dirichletReference[n1, n2, spacing, massValue];
  (* The Dirichlet reference already contains the four endpoint          *)
  (* diagonal entries, so its glue adds only the two cross terms.        *)
  matrix[[n1, n1 + 1]] -= 1/spacing^2;
  matrix[[n1 + 1, n1]] -= 1/spacing^2;
  matrix[[total, 1]] -= 1/spacing^2;
  matrix[[1, total]] -= 1/spacing^2;
  matrix
  ];

gluedNeumannMatrix[n1_, n2_, spacing_, massValue_] :=
 Module[{matrix, total},
  total = n1 + n2;
  matrix = neumannReference[n1, n2, spacing, massValue];
  matrix = addBond[matrix, n1, n1 + 1, spacing];
  matrix = addBond[matrix, total, 1, spacing];
  matrix
  ];

dirichletModeMatrix[sites_] := Transpose[Table[
    Sqrt[2/(sites + 1)] Sin[Pi n a/(sites + 1)],
    {n, 1, sites}, {a, 1, sites}]];

neumannModeMatrix[sites_] := Transpose[Join[
    {Table[1/Sqrt[sites], {a, 1, sites}]},
    Table[
     Table[Sqrt[2/sites] Cos[Pi n (a - 1/2)/sites],
      {a, 1, sites}],
     {n, 1, sites - 1}]]];

pieceModeMatrix[n1_, n2_, type_] := Module[{left, right},
  left = If[type == "Dirichlet",
    dirichletModeMatrix[n1], neumannModeMatrix[n1]];
  right = If[type == "Dirichlet",
    dirichletModeMatrix[n2], neumannModeMatrix[n2]];
  directSum[left, right]
  ];

pieceFrequencies[n1_, n2_, spacing_, massValue_, type_] := Join[
  If[type == "Dirichlet",
   Table[Sqrt[massValue^2 + 4/spacing^2 Sin[Pi n/(2 (n1 + 1))]^2],
    {n, 1, n1}],
   Table[Sqrt[massValue^2 + 4/spacing^2 Sin[Pi n/(2 n1)]^2],
    {n, 0, n1 - 1}]],
  If[type == "Dirichlet",
   Table[Sqrt[massValue^2 + 4/spacing^2 Sin[Pi n/(2 (n2 + 1))]^2],
    {n, 1, n2}],
   Table[Sqrt[massValue^2 + 4/spacing^2 Sin[Pi n/(2 n2)]^2],
    {n, 0, n2 - 1}]]
  ];

realPeriodicBasis[sites_] := Module[{columns, labels, upper},
  columns = {Table[1/Sqrt[sites], {j, 1, sites}]};
  labels = {0};
  upper = Floor[(sites - 1)/2];
  Do[
   AppendTo[columns, Table[
     Sqrt[2/sites] Cos[2 Pi r (j - 1)/sites], {j, 1, sites}]];
   AppendTo[labels, r];
   AppendTo[columns, Table[
     Sqrt[2/sites] Sin[2 Pi r (j - 1)/sites], {j, 1, sites}]];
   AppendTo[labels, r],
   {r, 1, upper}];
  If[EvenQ[sites],
   AppendTo[columns, Table[(-1)^(j - 1)/Sqrt[sites], {j, 1, sites}]];
   AppendTo[labels, sites/2]];
  {Transpose[columns], labels}
  ];

periodicFrequencies[sites_, spacing_, massValue_, labels_] :=
  Sqrt[massValue^2 + 4/spacing^2 Sin[Pi labels/sites]^2];

bogoliubovMatrices[n1_, n2_, spacing_, massValue_, type_] :=
 Module[{total, periodicBasis, labels, pieceBasis, overlap,
   periodicFrequencyVector, pieceFrequencyVector,
   periodicOmega, pieceOmega, rMatrix, sMatrix,
   numericalSpacing, numericalMass},
  total = n1 + n2;
  {periodicBasis, labels} = realPeriodicBasis[total];
  pieceBasis = pieceModeMatrix[n1, n2, type];
  periodicBasis = N[periodicBasis, 30];
  pieceBasis = N[pieceBasis, 30];
  numericalSpacing = N[spacing, 30];
  numericalMass = N[massValue, 30];
  overlap = Transpose[periodicBasis] . pieceBasis;
  periodicFrequencyVector = periodicFrequencies[
    total, numericalSpacing, numericalMass, labels];
  pieceFrequencyVector = pieceFrequencies[
    n1, n2, numericalSpacing, numericalMass, type];
  periodicOmega = DiagonalMatrix[periodicFrequencyVector];
  pieceOmega = DiagonalMatrix[pieceFrequencyVector];
  rMatrix = DiagonalMatrix[Sqrt[periodicFrequencyVector]] . overlap .
    DiagonalMatrix[1/Sqrt[pieceFrequencyVector]];
  sMatrix = DiagonalMatrix[1/Sqrt[periodicFrequencyVector]] . overlap .
    DiagonalMatrix[Sqrt[pieceFrequencyVector]];
  {(rMatrix + sMatrix)/2, (rMatrix - sMatrix)/2,
   periodicBasis, pieceBasis, periodicOmega, pieceOmega}
  ];

(* Exact unequal-split finite-lattice check.                              *)
n1Check = 7;
n2Check = 10;
totalCheck = n1Check + n2Check;
spacingCheck = circumference/totalCheck;
periodicCheck = periodicStiffness[totalCheck, spacingCheck, mass];
dirichletCheck = gluedDirichletMatrix[
   n1Check, n2Check, spacingCheck, mass];
neumannCheck = gluedNeumannMatrix[
   n1Check, n2Check, spacingCheck, mass];
dirichletGlueResidual = Max[Abs[dirichletCheck - periodicCheck]];
neumannGlueResidual = Max[Abs[neumannCheck - periodicCheck]];

{aDirichlet, bDirichlet, vPeriodic, eDirichlet,
  omegaPeriodic, omegaDirichlet} = bogoliubovMatrices[
   n1Check, n2Check, spacingCheck, mass, "Dirichlet"];
{aNeumann, bNeumann, unusedPeriodic, eNeumann,
  unusedOmegaPeriodic, omegaNeumann} = bogoliubovMatrices[
   n1Check, n2Check, spacingCheck, mass, "Neumann"];

periodicDiagonalResidual = Max[Abs[
    Transpose[vPeriodic] . periodicCheck . vPeriodic - omegaPeriodic^2]];
dirichletReferenceResidual = Max[Abs[
    Transpose[eDirichlet] .
      dirichletReference[n1Check, n2Check, spacingCheck, mass] .
      eDirichlet - omegaDirichlet^2]];
neumannReferenceResidual = Max[Abs[
    Transpose[eNeumann] .
      neumannReference[n1Check, n2Check, spacingCheck, mass] .
      eNeumann - omegaNeumann^2]];

canonicalResidual[aMatrix_, bMatrix_] := Max[Join[
   Flatten[Abs[aMatrix . Transpose[aMatrix] -
      bMatrix . Transpose[bMatrix] - IdentityMatrix[Length[aMatrix]]]],
   Flatten[Abs[aMatrix . Transpose[bMatrix] -
      bMatrix . Transpose[aMatrix]]]]];

dirichletCanonicalResidual = canonicalResidual[aDirichlet, bDirichlet];
neumannCanonicalResidual = canonicalResidual[aNeumann, bNeumann];

(* Fixed-physical-mode continuum dispersion.                             *)
continuumModeCount = 8;
continuumExactFrequencies = Table[
   Sqrt[mass^2 + (2 Pi r/circumference)^2],
   {r, 0, continuumModeCount}];
continuumScanN = {32, 64, 128, 256};
continuumErrorTable = Table[
   {sites,
    Max[Abs[
      Table[Sqrt[mass^2 +
          4/(circumference/sites)^2 Sin[Pi r/sites]^2],
        {r, 0, continuumModeCount}] - continuumExactFrequencies]]},
   {sites, continuumScanN}];

expectedContinuumErrors = {
  7.90638532135141*^-1,
  2.02420788964460*^-1,
  5.09064784398800*^-2,
  1.27455084869044*^-2
  };
continuumBenchmarkResidual = Max[Abs[
    continuumErrorTable[[All, 2]] - expectedContinuumErrors]];

(* Equal halves: the periodic constant row has exactly beta=0 in the     *)
(* Neumann product basis.  The total beta Hilbert--Schmidt norm still     *)
(* grows with the cutoff because the complementary sine sector is not    *)
(* unitarily equivalent in the continuum.                                *)
fockScanHalfSizes = {16, 32, 64, 128};
fockScan = Table[
   Module[{spacing, aMatrix, bMatrix},
    spacing = circumference/(2 halfSites);
    {aMatrix, bMatrix} = Take[
      bogoliubovMatrices[
       halfSites, halfSites, spacing, mass, "Neumann"], 2];
    {halfSites, Total[Flatten[bMatrix^2]],
     Total[bMatrix[[All, 2]]^2], Max[Abs[bMatrix[[1]]]]}
    ],
   {halfSites, fockScanHalfSizes}];
fockLogSlope = (fockScan[[-1, 2]] - fockScan[[1, 2]])/
  Log[fockScan[[-1, 1]]/fockScan[[1, 1]]];
fixedModeLogSlope = (fockScan[[-1, 3]] - fockScan[[1, 3]])/
  Log[fockScan[[-1, 1]]/fockScan[[1, 1]]];

Print["===================================================================="];
Print[" Uniform periodic scalar lattice: m=1, C=2 Pi"];
Print[" unequal split used for exact identities: N1=7, N2=10"];
Print[" Dirichlet cut-and-glue matrix residual = ",
  N[dirichletGlueResidual, 5]];
Print[" Neumann cut-and-glue matrix residual = ",
  N[neumannGlueResidual, 5]];
Print[" periodic diagonalization residual = ",
  N[periodicDiagonalResidual, 5]];
Print[" Dirichlet reference diagonalization residual = ",
  N[dirichletReferenceResidual, 5]];
Print[" Neumann reference diagonalization residual = ",
  N[neumannReferenceResidual, 5]];
Print[" Dirichlet Bogoliubov canonical residual = ",
  N[dirichletCanonicalResidual, 5]];
Print[" Neumann Bogoliubov canonical residual = ",
  N[neumannCanonicalResidual, 5]];
Print[" columns: {total sites, max fixed-mode continuum frequency error}"];
Print[TableForm[N[continuumErrorTable, 10]]];
Print[" columns: {half sites, Tr(beta beta^T), fixed n=1 column norm,",
  " constant-row max |beta|}"];
Print[TableForm[N[fockScan, 10]]];
Print[" endpoint log slope of Tr(beta beta^T) = ", N[fockLogSlope, 8]];
Print[" endpoint log slope of the fixed n=1 column norm = ",
  N[fixedModeLogSlope, 8]];
Print[" maximum residual against stored continuum benchmark = ",
  N[continuumBenchmarkResidual, 5]];

If[dirichletGlueResidual > 10^-30 || neumannGlueResidual > 10^-30 ||
  periodicDiagonalResidual > 10^-25 ||
  dirichletReferenceResidual > 10^-25 ||
  neumannReferenceResidual > 10^-25 ||
  dirichletCanonicalResidual > 10^-25 ||
  neumannCanonicalResidual > 10^-25 ||
  continuumBenchmarkResidual > 10^-11 ||
  Max[fockScan[[All, 4]]] > 10^-25 || fockLogSlope <= 0 ||
  fixedModeLogSlope <= 0,
 Print["ERROR: uniform periodic-lattice benchmark failed."];
 Exit[1];
 ];
