(* ::Package:: *)

(*
  Finite-radius construction of scalar theories at the AdS3 BF bound M^2=-1.
  The script checks the logarithmic asymptotic coefficients, the running Robin
  boundary condition, the stability threshold, and representative finite-wall
  spectra.
*)

ClearAll[
  bfRadial,
  bfRadialPrime,
  robinResidual,
  asymptoticD,
  asymptoticA,
  asymptoticC,
  kappaSpectrum,
  infiniteRoots,
  finiteRoots
];

bfRadial[omega_?NumericQ, m_Integer, r_?NumericQ] := Module[
  {q = Abs[m], a, b, c, x},
  a = (q + 1 - omega)/2;
  b = (q + 1 + omega)/2;
  c = 1 + q;
  x = r^2/(1 + r^2);
  r^q (1 + r^2)^(-(q + 1)/2) Hypergeometric2F1[a, b, c, x]
];

bfRadialPrime[omega_?NumericQ, m_Integer, r_?NumericQ] := Module[
  {q = Abs[m], a, b, c, x, prefactor, hypergeometric, derivative, dx},
  a = (q + 1 - omega)/2;
  b = (q + 1 + omega)/2;
  c = 1 + q;
  x = r^2/(1 + r^2);
  prefactor = r^q (1 + r^2)^(-(q + 1)/2);
  hypergeometric = Hypergeometric2F1[a, b, c, x];
  derivative = (a b/c) Hypergeometric2F1[a + 1, b + 1, c + 1, x];
  dx = 2 r/(1 + r^2)^2;
  prefactor (
    (q/r - (q + 1) r/(1 + r^2)) hypergeometric
    + derivative dx
  )
];

robinResidual[
  omega_?NumericQ,
  m_Integer,
  cutoff_?NumericQ,
  lambda_?NumericQ
] := N[
  cutoff (
    Sqrt[1 + cutoff^2] bfRadialPrime[omega, m, cutoff]
    + (1 + lambda) bfRadial[omega, m, cutoff]
  ),
  50
];

asymptoticD[omega_, m_Integer] := Module[{q = Abs[m], a, b},
  a = (q + 1 - omega)/2;
  b = (q + 1 + omega)/2;
  Gamma[1 + q]/(Gamma[a] Gamma[b])
];

asymptoticC[omega_, m_Integer] := 2 asymptoticD[omega, m];

asymptoticA[omega_, m_Integer] := Module[{q = Abs[m], a, b},
  a = (q + 1 - omega)/2;
  b = (q + 1 + omega)/2;
  asymptoticD[omega, m] (
    2 PolyGamma[0, 1] - PolyGamma[0, a] - PolyGamma[0, b]
  )
];

kappaSpectrum[omega_?NumericQ, m_Integer] := N[
  asymptoticA[omega, m]/asymptoticC[omega, m],
  50
];

infiniteRoots[kappa_?NumericQ, m_Integer, count_Integer] := Table[
  omega /. FindRoot[
    kappaSpectrum[omega, m] == kappa,
    {omega, Abs[m] + 2 n + 0.2, Abs[m] + 2 n + 0.95},
    WorkingPrecision -> 40
  ],
  {n, 0, count - 1}
];

finiteRoots[
  kappa_?NumericQ,
  m_Integer,
  cutoff_?NumericQ,
  targets_List
] := Module[{lambda = -1/(Log[cutoff] + kappa)},
  Table[
    omega /. FindRoot[
      robinResidual[omega, m, N[cutoff, 50], N[lambda, 50]] == 0,
      {omega, target - 0.08, target + 0.08},
      WorkingPrecision -> 40
    ],
    {target, targets}
  ]
];

(* Exact algebraic checks. *)

ClearAll[A1, A2, C1, C2, x];
profile1 = (A1 + C1 Log[x])/x;
profile2 = (A2 + C2 Log[x])/x;
wronskian = FullSimplify[
  x^3 (profile1 D[profile2, x] - profile2 D[profile1, x])
];

exactChecks = <|
  "BF mass from Delta=1" -> (1 (1 - 2) == -1),
  "boundary Wronskian" -> (
    wronskian == A1 C2 - A2 C1
  ),
  "s-wave stability threshold" -> (
    FullSimplify[PolyGamma[0, 1] - PolyGamma[0, 1/2]] == Log[4]
  ),
  "m=1 stability threshold" -> (
    FullSimplify[PolyGamma[0, 1] - PolyGamma[0, 1]] == 0
  )
|>;

(* Numerical check of R=r^-1(A+C log r+...). *)

sampleOmega = 7/10;
sampleM = 0;
sampleCutoff = 10000;
asymptoticError = N[
  sampleCutoff bfRadial[sampleOmega, sampleM, sampleCutoff]
  - asymptoticC[sampleOmega, sampleM] Log[sampleCutoff]
  - asymptoticA[sampleOmega, sampleM],
  30
];

(* Stable mixed theory: kappa=2 > log(4). *)

kappaStable = 2;
targetsStable = infiniteRoots[kappaStable, 0, 3];
cutoffs = {20, 80, 300};
finiteStable = Association@Table[
  cutoff -> finiteRoots[kappaStable, 0, cutoff, targetsStable],
  {cutoff, cutoffs}
];

(* Unstable mixed theory: kappa=0 has one s-wave omega=i gamma. *)

gammaInfinite = gamma /. FindRoot[
  PolyGamma[0, 1] - Re[PolyGamma[0, (1 + I gamma)/2]] == 0,
  {gamma, 1},
  WorkingPrecision -> 40
];

gammaFinite = Association@Table[
  cutoff -> (
    gamma /. FindRoot[
      robinResidual[
        I gamma,
        0,
        N[cutoff, 50],
        N[-1/Log[cutoff], 50]
      ] == 0,
      {gamma, gammaInfinite},
      WorkingPrecision -> 40
    ]
  ),
  {cutoff, cutoffs}
];

numericalChecks = <|
  "asymptotic coefficient error" -> (Abs[asymptoticError] < 2*10^-8),
  "stable spectrum converges" -> (
    Max[Abs[finiteStable[300] - targetsStable]] < 10^-3
  ),
  "tachyon converges" -> (
    Abs[gammaFinite[300] - gammaInfinite] < 10^-3
  )
|>;

Print["exactChecks=", exactChecks];
Print["asymptoticError=", asymptoticError];
Print["kappaStable=", kappaStable];
Print["infiniteStableRoots=", N[targetsStable, 12]];
Print["finiteStableRoots=", Map[N[#, 12] &, finiteStable]];
Print["kappaZeroTachyonGamma=", N[gammaInfinite, 12]];
Print["finiteTachyonGamma=", Map[N[#, 12] &, gammaFinite]];
Print["numericalChecks=", numericalChecks];

allPassed = And @@ Values[exactChecks] && And @@ Values[numericalChecks];
Print["allPassed=", allPassed];

If[! TrueQ[allPassed], Exit[1]];
