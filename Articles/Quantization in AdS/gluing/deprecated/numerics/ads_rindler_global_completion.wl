(* ::Package:: *)

(* ===================================================================== *)
(*  Global-time completion of two AdS--Rindler halves                    *)
(*                                                                       *)
(*  Source: ads-rindler gluing.md.  The invariant AdS2-plane defect is   *)
(*  not separable in global polar coordinates, but it is separable in    *)
(*  the AdS2 slicing used in the note.                                   *)
(* ===================================================================== *)

ClearAll["Global`*"];

delta = 2;
massSquared = delta (delta - 2);
gegenbauerIndex = delta - 1/2;
kappa = 13/10;
commonCoefficient = 1/kappa;
relativeCoefficient = 1/kappa + 2 kappa;
rootCount = 8;
scanN = {8, 16, 32, 64};

(* The transverse Sturm--Liouville problem is                            *)
(*   -(cosh^2 y f')' + m^2 cosh^2 y f = M^2 f.                           *)
(* At a=0 its half-line Neumann basis is the restriction of the even     *)
(* full-line modes.  M_r^2=(Delta+2r)(Delta+2r-1).                       *)
gegenbauerNorm[degree_, index_] :=
  Pi 2^(1 - 2 index) Gamma[degree + 2 index]/
   (degree! (degree + index) Gamma[index]^2);

transverseMassSquared[r_] :=
  (delta + 2 r) (delta + 2 r - 1);

cutTrace[r_] :=
  Sqrt[2] GegenbauerC[2 r, gegenbauerIndex, 0]/
   Sqrt[gegenbauerNorm[2 r, gegenbauerIndex]];

transverseMatrix[a_, Nmax_] :=
  DiagonalMatrix[Table[transverseMassSquared[r], {r, 0, Nmax}]] +
   a Outer[Times,
     Table[cutTrace[r], {r, 0, Nmax}],
     Table[cutTrace[r], {r, 0, Nmax}]];

effectiveDimensions[a_, Nmax_, count_] := Module[{massEigenvalues},
  massEigenvalues = Sort[Eigenvalues[N[transverseMatrix[a, Nmax], 40]]];
  Take[(1 + Sqrt[1 + 4 massEigenvalues])/2, count]
  ];

(* The decaying solution for arbitrary nu=delta_eff-Delta is            *)
(*   f_nu(y)=sech(y)^Delta C_nu^(Delta-1/2)(tanh y).                     *)
(* Its logarithmic derivative at the cut gives the exact Robin          *)
(* response f'(0)/f(0).                                                  *)
cutLogDerivative[nu_?NumericQ] := N[
  2 gegenbauerIndex GegenbauerC[nu - 1, gegenbauerIndex + 1, 0]/
   GegenbauerC[nu, gegenbauerIndex, 0], 40];

exactEffectiveDimension[a_, mode_] := Module[{lower, upper},
  lower = 2 (mode - 1);
  upper = lower + 1;
  delta + nu /. FindRoot[
    cutLogDerivative[nu] == a,
    {nu, (lower + upper)/2, lower + 10^-12, upper - 10^-12},
    WorkingPrecision -> 40]
  ];

exactDimensions[a_] := Table[
  exactEffectiveDimension[a, mode], {mode, 1, rootCount}];

exactCommonDimensions = exactDimensions[commonCoefficient];
exactRelativeDimensions = exactDimensions[relativeCoefficient];

(* For Delta=2 Mathematica reduces b_r^2/M_r^2 to the following closed   *)
(* summand, whose full zero-energy boundary resolvent is exactly one.     *)
zeroResponseSummand[r_] :=
  Pi (3 + 4 r)/(4 Gamma[1/2 - r]^2 Gamma[2 + r]^2);
zeroResponseSum = FullSimplify[Sum[
    zeroResponseSummand[r], {r, 0, Infinity}]];
zeroSummandResidual = Max[Abs[Table[
    FullSimplify[
     cutTrace[r]^2/transverseMassSquared[r] - zeroResponseSummand[r]],
    {r, 0, 6}]]];

omittedZeroResponse[Nmax_] :=
  zeroResponseSum - Sum[
    zeroResponseSummand[r], {r, 0, Nmax}];

matchedCoefficient[a_, Nmax_] :=
  1/(1/a + omittedZeroResponse[Nmax]);

sectorErrorTable[a_, exact_] := Table[
  {Nmax,
   Max[Abs[effectiveDimensions[a, Nmax, rootCount] - exact]],
   matchedCoefficient[a, Nmax],
   Max[Abs[
     effectiveDimensions[matchedCoefficient[a, Nmax], Nmax, rootCount] -
      exact]]},
  {Nmax, scanN}];

commonErrorTable = sectorErrorTable[
   commonCoefficient, exactCommonDimensions];
relativeErrorTable = sectorErrorTable[
   relativeCoefficient, exactRelativeDimensions];

expectedCommonMatchedErrors = {
  3.73333858003661*^-4,
  3.43850297169150*^-5,
  4.34723877675838*^-6,
  5.61162499953324*^-7
  };
expectedRelativeMatchedErrors = {
  7.25906626914681*^-3,
  6.35572656955897*^-4,
  7.99804142624083*^-5,
  1.03166181282945*^-5
  };
benchmarkResidual = Max[Join[
    Abs[commonErrorTable[[All, 4]] - expectedCommonMatchedErrors],
    Abs[relativeErrorTable[[All, 4]] - expectedRelativeMatchedErrors]]];

matchingImproves = And @@ Join[
    Thread[commonErrorTable[[All, 4]] < commonErrorTable[[All, 2]]],
    Thread[relativeErrorTable[[All, 4]] < relativeErrorTable[[All, 2]]]];

(* The two matched Robin coefficients do not lie on the original         *)
(* one-parameter curve d h = 1, with d=aPlus and h=(aMinus-aPlus)/2.    *)
checkCommonMatched = commonErrorTable[[1, 3]];
checkRelativeMatched = relativeErrorTable[[1, 3]];
singleKappaClosureMargin = Abs[
  checkCommonMatched (checkRelativeMatched - checkCommonMatched)/2 - 1];

(* Independent checks of the slicing solution and the two endpoint       *)
(* spectra.  nu=0,2,... is Neumann; nu=1,3,... is Dirichlet.             *)
ySymbol = Unique["y"];
nuSymbol = Unique["nu"];
trialProfile = Sech[ySymbol]^delta GegenbauerC[
   nuSymbol, gegenbauerIndex, Tanh[ySymbol]];
trialMassSquared = (delta + nuSymbol) (delta + nuSymbol - 1);
odeExpression =
  -D[Cosh[ySymbol]^2 D[trialProfile, ySymbol], ySymbol] +
   massSquared Cosh[ySymbol]^2 trialProfile -
   trialMassSquared trialProfile;
odeTestPoints = {{3/10, 1/5}, {7/5, 3/4}, {12/5, 7/5}};
odeResidual = Max[Abs[(N[odeExpression /. {
          nuSymbol -> SetPrecision[#[[1]], 60],
          ySymbol -> SetPrecision[#[[2]], 60]}, 30] &) /@
     odeTestPoints]];

neumannEndpointResidual = Max[Abs[Table[
     cutLogDerivative[2 r], {r, 0, 3}]]];
dirichletEndpointResidual = Max[Abs[Table[
     GegenbauerC[2 r + 1, gegenbauerIndex, 0], {r, 0, 3}]]];

(* Each transverse dimension produces an exact global-AdS2 tower.        *)
firstFrequencies = Table[
   exactCommonDimensions[[j]] + n,
   {n, 0, 2}, {j, 1, 4}];

Print["===================================================================="];
Print[" AdS--Rindler global-time completion: Delta=2, kappa=13/10"];
Print[" common Robin coefficient = ", N[commonCoefficient, 8]];
Print[" relative Robin coefficient = ", N[relativeCoefficient, 8]];
Print[" first eight exact common effective dimensions = ",
  N[exactCommonDimensions, 10]];
Print[" first eight exact relative effective dimensions = ",
  N[exactRelativeDimensions, 10]];
Print[" columns: {N, direct error, matched a_N, matched error}"];
Print[" common sector:"];
Print[TableForm[N[commonErrorTable, 10]]];
Print[" relative sector:"];
Print[TableForm[N[relativeErrorTable, 10]]];
Print[" full zero-energy boundary response = ", zeroResponseSum];
Print[" closed zero-response summand residual = ", zeroSummandResidual];
Print[" transverse ODE residual = ", N[odeResidual, 5]];
Print[" Neumann endpoint residual = ", N[neumannEndpointResidual, 5]];
Print[" Dirichlet endpoint residual = ", N[dirichletEndpointResidual, 5]];
Print[" omega=delta_eff+n for n=0,1,2 and first four common roots = ",
  N[firstFrequencies, 9]];
Print[" maximum residual against stored benchmark = ",
  N[benchmarkResidual, 5]];
Print[" response matching improves every displayed case = ",
  matchingImproves];
Print[" |d_N h_N-1| at N=8 = ", N[singleKappaClosureMargin, 10]];

If[zeroResponseSum =!= 1 || zeroSummandResidual =!= 0 ||
  odeResidual > 10^-20 ||
  neumannEndpointResidual > 10^-30 || dirichletEndpointResidual > 10^-30 ||
  benchmarkResidual > 10^-11 || singleKappaClosureMargin < 10^-6 ||
  ! TrueQ[matchingImproves],
 Print["ERROR: AdS--Rindler global-completion benchmark failed."];
 Exit[1];
 ];
