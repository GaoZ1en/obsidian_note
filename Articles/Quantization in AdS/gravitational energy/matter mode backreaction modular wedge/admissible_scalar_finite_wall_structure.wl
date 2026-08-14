(* Generic structure checks for the admissible massless-scalar
   fixed-embedding finite-wall theorem.  The script verifies the universal
   Rindler/Kruskal jet algebra, endpoint functionals, collar scaling, and
   anchor asymptotics without selecting a scalar normal mode. *)

ClearAll["Global`*"];

$Assumptions =
  0 < intervalHalfWidth < Pi/2 &&
   Element[{tau, kappaXi, k00, k01, kuu}, Reals];

wallAssumptions = chi > 0 && Element[chi, Reals] && $Assumptions;

(* Background wall momentum. *)

backgroundWallMetric = DiagonalMatrix[{
    -Sinh[chi]^2,
    Cosh[chi]^2
    }];
backgroundWallInverse = FullSimplify[
   Inverse[backgroundWallMetric],
   Assumptions -> wallAssumptions
   ];
backgroundWallExtrinsicCurvature =
  FullSimplify[
   -D[backgroundWallMetric, chi]/2,
   Assumptions -> wallAssumptions
   ];
backgroundWallExtrinsicTrace = FullSimplify[
   Tr[backgroundWallInverse . backgroundWallExtrinsicCurvature],
   Assumptions -> wallAssumptions
   ];
backgroundWallMomentum = FullSimplify[
   Sqrt[-Det[backgroundWallMetric]] (
     backgroundWallInverse . backgroundWallExtrinsicCurvature .
       backgroundWallInverse
      - backgroundWallExtrinsicTrace backgroundWallInverse
     ),
   Assumptions -> wallAssumptions
   ];

(* Smooth Kruskal pullback.  e0 is the unit timelike Rindler vector and e1
   is the unit radial vector. *)

rK = Sinh[chi];
metricTauTau = rK^2 k00;
metricTauChi = rK k01;
metricUU = kuu;

wallGravitySource = (metricTauTau - metricUU)/2;
wallLengthVariation = metricUU/(2 Cosh[chi]);
wallTransgression = FullSimplify[
   kappaXi (wallGravitySource + wallLengthVariation)
   ];
expectedWallTransgression =
  kappaXi/2 (
    Sinh[chi]^2 k00 + (Sech[chi] - 1) kuu
    );
wallTransgressionQuadraticCoefficient = FullSimplify[
   Limit[wallTransgression/chi^2, chi -> 0, Direction -> "FromAbove"]
   ];
expectedWallTransgressionQuadraticCoefficient =
  kappaXi (k00 - kuu/2)/2;

(* Fixed-cut Hayward and Harlow--Wu endpoint densities, with the common
   1/kappa_p^2 and the Hayward orientation sign stripped. *)

haywardEndpointDensity = FullSimplify[
   Cosh[chi] metricTauChi/Sinh[chi]
   ];
harlowWuEndpointDensity = haywardEndpointDensity/2;
horizonHaywardEndpointDensity = FullSimplify[
   Limit[haywardEndpointDensity, chi -> 0, Direction -> "FromAbove"]
   ];
horizonHarlowWuEndpointDensity = FullSimplify[
   Limit[harlowWuEndpointDensity, chi -> 0, Direction -> "FromAbove"]
   ];

(* Collar matter scaling for a chi-independent leading orthonormal energy
   coefficient t00. *)

collarMatterIntegral = FullSimplify[
   Integrate[
    kappaXi Sinh[chi] Cosh[chi] t00,
    {chi, 0, chi0},
    Assumptions -> chi0 > 0 && Element[{kappaXi, t00}, Reals]
    ]
   ];
collarMatterQuadraticCoefficient = FullSimplify[
   Limit[
    collarMatterIntegral/chi0^2,
    chi0 -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> Element[{kappaXi, t00}, Reals]
   ];

(* Integrable longitudinal majorants. *)

metricMajorantIntegral = Integrate[Sech[u]^2, {u, -Infinity, Infinity}];
stressMajorantIntegral = Integrate[Sech[u]^4, {u, -Infinity, Infinity}];
metricRightTail = FullSimplify[
   Integrate[Sech[u]^2, {u, cutoffU, Infinity}],
   Assumptions -> cutoffU > 0
   ];
metricRightTailCoefficient = FullSimplify[
   Limit[
    Exp[2 cutoffU] metricRightTail,
    cutoffU -> Infinity
    ]
   ];

(* Global embedding and anchor asymptotics. *)

embeddingY = Sinh[chi] Cosh[tau];
embeddingZ = Cosh[chi] Cosh[u];
embeddingX1 =
  (embeddingY + Cos[intervalHalfWidth] embeddingZ)/
   Sin[intervalHalfWidth];
embeddingX2 = Cosh[chi] Sinh[u];
globalRadius = Sqrt[embeddingX1^2 + embeddingX2^2];
globalRadiusCoefficient = FullSimplify[
   Limit[Exp[-u] globalRadius, u -> Infinity],
   Assumptions ->
    chi > 0 && 0 < intervalHalfWidth < Pi/2 &&
     Element[tau, Reals]
   ];
anchorSineNumerator = FullSimplify[
   Sin[intervalHalfWidth] embeddingX1
    - Cos[intervalHalfWidth] embeddingX2
   ];
anchorGapCoefficient = FullSimplify[
   Limit[anchorSineNumerator, u -> Infinity],
   Assumptions ->
    chi > 0 && 0 < intervalHalfWidth < Pi/2 &&
     Element[tau, Reals]
   ];
outerStripModel = Integrate[s, {s, 0, 1/Rcut}];

checks = <|
   "background wall momentum is diag(-1,1)" ->
    (backgroundWallMomentum === DiagonalMatrix[{-1, 1}]),
   "smooth k_tau_tau has quadratic horizon zero" ->
    (Limit[metricTauTau/chi^2, chi -> 0, Direction -> "FromAbove"] ===
      k00),
   "smooth k_tau_chi has linear horizon zero" ->
    (Limit[metricTauChi/chi, chi -> 0, Direction -> "FromAbove"] ===
      k01),
   "exact source-corner transgression" ->
    (FullSimplify[
       wallTransgression - expectedWallTransgression
       ] === 0),
   "transgression has no constant term" ->
    (Limit[wallTransgression, chi -> 0, Direction -> "FromAbove"] === 0),
   "transgression has no linear term" ->
    (Limit[
       wallTransgression/chi,
       chi -> 0,
       Direction -> "FromAbove"
       ] === 0),
   "transgression quadratic coefficient" ->
    (FullSimplify[
       wallTransgressionQuadraticCoefficient
        - expectedWallTransgressionQuadraticCoefficient,
       Assumptions -> Element[{kappaXi, k00, kuu}, Reals]
       ] === 0),
   "Hayward endpoint has finite horizon limit" ->
    (horizonHaywardEndpointDensity === k01),
   "Harlow-Wu endpoint is half Hayward on fixed cut" ->
    (FullSimplify[
       haywardEndpointDensity - 2 harlowWuEndpointDensity
       ] === 0),
   "Harlow-Wu endpoint horizon limit" ->
    (horizonHarlowWuEndpointDensity === k01/2),
   "collar matter exact leading integral" ->
    (collarMatterIntegral ===
      kappaXi t00 Sinh[chi0]^2/2),
   "collar matter is quadratic" ->
    (collarMatterQuadraticCoefficient === kappaXi t00/2),
   "metric majorant is integrable" ->
    (metricMajorantIntegral === 2),
   "stress majorant is integrable" ->
    (stressMajorantIntegral === 4/3),
   "metric tail is order exp(-2u)" ->
    (metricRightTailCoefficient === 2),
   "global radius grows as exp(u)" ->
    (globalRadiusCoefficient ===
      Cosh[chi]/(2 Sin[intervalHalfWidth])),
   "anchor sine gap has finite coefficient" ->
    (anchorGapCoefficient === Sinh[chi] Cosh[tau]),
   "linear outer density gives R^-2 strip" ->
    (outerStripModel === 1/(2 Rcut^2))
   |>;

failedChecks = Select[checks, Not[TrueQ[#]] &];

Print["checks passed: ", Count[Values[checks], True], "/", Length[checks]];
If[failedChecks =!= <||>,
 Print["failed checks: ", failedChecks];
 Exit[1]
 ];

Print["wall transgression: ", wallTransgression];
Print["Hayward/Harlow-Wu horizon densities: ",
  {horizonHaywardEndpointDensity, horizonHarlowWuEndpointDensity}];
Print["global radius coefficient: ", globalRadiusCoefficient];
Print["anchor gap coefficient: ", anchorGapCoefficient];
