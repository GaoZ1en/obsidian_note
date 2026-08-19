(* ::Package:: *)

(* ===================================================================== *)
(*  Dirichlet-to-glued scalar interpolation by mode truncation           *)
(*                                                                       *)
(*  Model: continuous theory I.md, first half.                           *)
(*  Basis: outer-Dirichlet and cut-Neumann half-interval modes.          *)
(*  The common and relative sectors have boundary stiffnesses            *)
(*                                                                       *)
(*      alphaPlus  = mu/kappa,                                           *)
(*      alphaMinus = mu/kappa + 2 mu kappa.                              *)
(*                                                                       *)
(*  Both sectors are rank-one updates.  The omitted boundary response    *)
(*  gives an independent cutoff matching for each alpha.                 *)
(* ===================================================================== *)

ClearAll["Global`*"];

ell = 1;
mass = 1;
mu = 1;
kappaList = {0.1, 1.0, 5.0};
nList = {8, 16, 32, 64};

halfWaveNumber[n_, length_] := (n + 1/2) Pi/length;
halfBoundaryValue[n_, length_] := (-1)^n Sqrt[2/length];

sectorMatrix[alpha_, Nmax_, length_, scalarMass_] := Module[{free, boundary},
  free = DiagonalMatrix[
    Table[scalarMass^2 + halfWaveNumber[n, length]^2, {n, 0, Nmax}]
    ];
  boundary = Table[halfBoundaryValue[n, length], {n, 0, Nmax}];
  free + alpha Outer[Times, boundary, boundary]
  ];

sectorFrequencies[alpha_, Nmax_, length_, scalarMass_] :=
  Sort[Sqrt[Eigenvalues[N[sectorMatrix[alpha, Nmax, length, scalarMass], 40]]]];

exactWaveNumber[alpha_, n_, length_] := Module[{lower, upper},
  lower = (n - 1/2) Pi/length;
  upper = n Pi/length;
  kk /. FindRoot[
    kk Cot[kk length] == -alpha,
    {kk, (lower + upper)/2, lower + 10^-10, upper - 10^-10}
    ]
  ];

exactSectorFrequencies[alpha_, count_, length_, scalarMass_] :=
  Table[
    Sqrt[scalarMass^2 + exactWaveNumber[alpha, n, length]^2],
    {n, 1, count}
    ];

(* The tail is Sum[b_n^2/k_n^2,{n,Nmax+1,Infinity}] at zero energy. *)
zeroEnergyTail[Nmax_, length_] :=
  (2 length/Pi^2) PolyGamma[1, Nmax + 3/2];

matchedBoundaryStiffness[alphaContinuum_, Nmax_, length_] :=
  1/(1/alphaContinuum + zeroEnergyTail[Nmax, length]);

sectorStiffnesses[kappa_, scale_] :=
  {scale/kappa, scale/kappa + 2 scale kappa};

combinedFrequencies[kappa_, Nmax_, length_, scalarMass_, scale_, matched_] :=
 Module[{alphaPlus, alphaMinus, alphaPlusN, alphaMinusN},
  {alphaPlus, alphaMinus} = sectorStiffnesses[kappa, scale];
  {alphaPlusN, alphaMinusN} = If[matched,
    matchedBoundaryStiffness[#, Nmax, length] & /@ {alphaPlus, alphaMinus},
    {alphaPlus, alphaMinus}
    ];
  Sort[Join[
    sectorFrequencies[alphaPlusN, Nmax, length, scalarMass],
    sectorFrequencies[alphaMinusN, Nmax, length, scalarMass]
    ]]
  ];

exactCombinedFrequencies[kappa_, count_, length_, scalarMass_, scale_] :=
 Module[{alphaPlus, alphaMinus},
  {alphaPlus, alphaMinus} = sectorStiffnesses[kappa, scale];
  Sort[Join[
    exactSectorFrequencies[alphaPlus, count, length, scalarMass],
    exactSectorFrequencies[alphaMinus, count, length, scalarMass]
    ]]
  ];

maxRelativeError[values_, target_, count_] :=
  Max[Abs[(Take[values, count] - Take[target, count])/Take[target, count]]];

errorRow[kappa_, Nmax_] := Module[{target, direct, matched},
  target = exactCombinedFrequencies[kappa, 20, ell, mass, mu];
  direct = combinedFrequencies[kappa, Nmax, ell, mass, mu, False];
  matched = combinedFrequencies[kappa, Nmax, ell, mass, mu, True];
  {kappa, Nmax,
   maxRelativeError[direct, target, 8],
   maxRelativeError[matched, target, 8]}
  ];

errorTable = Flatten[
  Table[errorRow[kappa, Nmax], {kappa, kappaList}, {Nmax, nList}],
  1
  ];

Print["===================================================================="];
Print[" Dirichlet-to-glued scalar interpolation: ell=1, m=1, mu=1"];
Print[" columns: {kappa, N, direct max rel. error, matched max rel. error}"];
Print[TableForm[N[errorTable, 8]]];

expectedMatched = {
  5.92609234418759*^-4, 8.08085783521326*^-5,
  1.08121174707124*^-5, 1.40705820152984*^-6,
  8.45151951114501*^-5, 1.16608212493402*^-5,
  1.56390750086881*^-6, 2.03630218572475*^-7,
  5.92609234418759*^-4, 8.08085783521326*^-5,
  1.08121174707124*^-5, 1.40705820152984*^-6
  };

residual = Max[Abs[errorTable[[All, 4]] - expectedMatched]];
improvementPassed = And @@ Thread[errorTable[[All, 4]] < errorTable[[All, 3]]];

Print[" maximum residual against the stored matched benchmark = ", N[residual, 5]];
Print[" matched coupling improves every displayed case = ", improvementPassed];

(* On the continuum trajectory d h = mu^2, the two independently matched *)
(* coefficients are not on the same trajectory.                         *)
checkKappa = 1;
{checkAlphaPlus, checkAlphaMinus} = sectorStiffnesses[checkKappa, mu];
checkTail = zeroEnergyTail[8, ell];
checkAlphaPlusN = matchedBoundaryStiffness[checkAlphaPlus, 8, ell];
checkAlphaMinusN = matchedBoundaryStiffness[checkAlphaMinus, 8, ell];
checkDN = checkAlphaPlusN;
checkHN = (checkAlphaMinusN - checkAlphaPlusN)/2;
runningProductFormula = mu^2/(
   (1 + checkAlphaMinus checkTail) (1 + checkAlphaPlus checkTail)^2);
runningProductResidual = Abs[checkDN checkHN - runningProductFormula];
singleKappaClosureMargin = Abs[checkDN checkHN - mu^2];

Print[" d_N h_N formula residual at kappa=1, N=8 = ",
  N[runningProductResidual, 5]];
Print[" |d_N h_N-mu^2| at kappa=1, N=8 = ",
  N[singleKappaClosureMargin, 10]];

If[residual > 10^-12 || runningProductResidual > 10^-30 ||
  singleKappaClosureMargin < 10^-6 || ! TrueQ[improvementPassed],
  Print["ERROR: Dirichlet-interpolation benchmark failed."];
  Exit[1];
  ];

(* Reconstruct the two independently running coefficients in             *)
(* d_N(q1^2+q2^2) + h_N(q1-q2)^2 from the parity stiffnesses:            *)
(* d_N=alphaPlus_N and h_N=(alphaMinus_N-alphaPlus_N)/2.                 *)
(* In general d_N h_N != mu^2, so one bare kappa_N cannot implement      *)
(* both sector matchings simultaneously.                                 *)
