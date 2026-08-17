(* ::Package:: *)

(*
  AdS3-Rindler double-cutoff and anchor geometry for a=Pi/4.

  Coordinates are {tau, chi, u}, with rho_Rindler=Cosh[chi].  The brick wall
  is chi=eps and the asymptotic cutoff is the global cylinder r=Rcut.  The
  script also translates the corrected raw x-space density into its Rindler
  u-density and checks that both raw and proper endpoint tails vanish.
*)

Needs["xAct`xTensor`"];

ClearAll["Global`*"];

$Assumptions = Rcut > 2 && wallEpsilon > 0 && regulatorLength > 0;

rindlerCoordinates = {tau, chi, u};
ambientMetric = DiagonalMatrix[{-1, -1, 1, 1}];

(* Embedding-space form of Appendix G.1 at cosh[eta]=Sqrt[2], sinh[eta]=1. *)
embedding = {
   Sqrt[2] Cosh[chi] Cosh[u] + Sinh[chi] Cosh[tau],
   Sinh[chi] Sinh[tau],
   Sqrt[2] Sinh[chi] Cosh[tau] + Cosh[chi] Cosh[u],
   Cosh[chi] Sinh[u]
   };

embeddingResidual = FullSimplify[
   embedding . ambientMetric . embedding + 1
   ];
embeddingJacobian = Table[
   D[embedding[[A]], rindlerCoordinates[[mu]]],
   {A, 4}, {mu, 3}
   ];
rindlerMetricFromEmbedding = FullSimplify[
   Transpose[embeddingJacobian] . ambientMetric . embeddingJacobian
   ];
expectedRindlerMetric = DiagonalMatrix[{
    -Sinh[chi]^2,
    1,
    Cosh[chi]^2
    }];

globalRadiusSquared = FullSimplify[embedding[[3]]^2 + embedding[[4]]^2];
globalTanPhi = FullSimplify[embedding[[4]]/embedding[[3]]];

radiusOnTimeSymmetricSlice = FullSimplify[globalRadiusSquared /. tau -> 0];

(* Exact positive-anchor intersection of chi=wallEpsilon with r=Rcut. *)
yMax = (Sqrt[Rcut^2 + 1] - Sinh[wallEpsilon])/
  (Sqrt[2] Cosh[wallEpsilon]);
uMax = ArcCosh[yMax];
radiusPolynomial = (
   2 Cosh[chi]^2 radialY^2 +
    2 Sqrt[2] Sinh[chi] Cosh[chi] radialY +
    Sinh[chi]^2 - 1
   );
radiusIntersectionResidual = FullSimplify[
   (radiusPolynomial /. {chi -> wallEpsilon, radialY -> yMax}) - Rcut^2
   ];

anchorX = FullSimplify[
   Cosh[wallEpsilon] Sqrt[yMax^2 - 1]/
    (Sqrt[2] Sinh[wallEpsilon] + Cosh[wallEpsilon] yMax)
   ];
rtAnchorX = FullSimplify[anchorX /. wallEpsilon -> 0];
expectedRtAnchorX = Sqrt[(Rcut^2 - 1)/(Rcut^2 + 1)];

uMaxLeadingResidual = FullSimplify[
   Limit[
    uMax - Log[Sqrt[2] Rcut/Cosh[wallEpsilon]],
    Rcut -> Infinity
    ]
   ];

fixedWallStripLimit = FullSimplify[
   Limit[
    Rcut (Pi/4 - ArcTan[anchorX]),
    Rcut -> Infinity
    ]
   ];
rtStripLimit = FullSimplify[
   Limit[
    Rcut^2 (Pi/4 - ArcTan[rtAnchorX]),
    Rcut -> Infinity
    ]
   ];
correlatedStripLimit = FullSimplify[
   Limit[
    Rcut^2 (
      Pi/4 - ArcTan[anchorX /. wallEpsilon -> scalingParameter/Rcut]
      ),
    Rcut -> Infinity
    ],
   Assumptions -> scalingParameter > 0
   ];

(* Invariant angle data of the timelike-wall/timelike-wall anchor joint. *)
cutoffFunctionY = radiusPolynomial - Rcut^2;
cutoffGradientChi = D[cutoffFunctionY, chi];
cutoffGradientU = D[cutoffFunctionY, radialY] Sqrt[radialY^2 - 1];
cutoffGradientNorm = FullSimplify[Sqrt[
    cutoffGradientChi^2 + cutoffGradientU^2/Cosh[chi]^2
    ]];

(* n_eps=-partial_chi; n_R is the normalized outward gradient of r-Rcut. *)
anchorNormalDot = FullSimplify[-cutoffGradientChi/cutoffGradientNorm];
anchorNormalDotAtIntersection = FullSimplify[
   anchorNormalDot /. {chi -> wallEpsilon, radialY -> yMax}
   ];

rtNormalDot = FullSimplify[
   anchorNormalDotAtIntersection /. wallEpsilon -> 0
   ];
fixedWallNormalLimit = FullSimplify[
   Limit[anchorNormalDotAtIntersection, Rcut -> Infinity]
   ];

(* At tau=0 the anchor worldline has du/dtau=0, so its induced time density
   per unit tau is Sinh[wallEpsilon].  Any convention for the bounded corner
   angle therefore has vanishing background weight as wallEpsilon->0. *)
anchorJointDensity = Sinh[wallEpsilon];
anchorAngleWeightSequentialLimit = FullSimplify[
   Limit[
    Limit[
     anchorJointDensity ArcCos[anchorNormalDotAtIntersection],
     Rcut -> Infinity
     ],
    wallEpsilon -> 0,
    Direction -> "FromAbove"
    ]
   ];

(* The corrected declared Brown--Henneaux quadrature has a regular raw
   project density.  The horizon coordinate is x=Tanh[u]. *)
rawDensityX = -(1 - x^2)^2 (1 + x^2)/8;
rawRightDensityU = FullSimplify[
   (rawDensityX /. x -> Tanh[u]) Sech[u]^2];
rawLeftDensityU = rawRightDensityU;
rawRightTail = FullSimplify[Limit[rawRightDensityU, u -> Infinity]];
rawLeftTail = FullSimplify[Limit[rawLeftDensityU, u -> -Infinity]];

properDensityX = (-5 + 13 x^2 - 11 x^4 + 3 x^6)/16;
properDensityU = FullSimplify[
   (properDensityX /. x -> Tanh[u]) Sech[u]^2
   ];
properRightTail = FullSimplify[Limit[properDensityU, u -> Infinity]];
properLeftTail = FullSimplify[Limit[properDensityU, u -> -Infinity]];

properProfileAtOuterCutoff = regulatorLength^2/(
   regulatorLength^2 + Rcut^2
   );

results = <|
   "EmbeddingResidual" -> embeddingResidual,
   "MetricResidual" ->
    FullSimplify[rindlerMetricFromEmbedding - expectedRindlerMetric],
   "RadiusIntersectionResidual" -> radiusIntersectionResidual,
   "RtAnchorXResidual" -> FullSimplify[rtAnchorX - expectedRtAnchorX],
   "UMaxLeadingResidual" -> uMaxLeadingResidual,
   "FixedWallStripLimit" -> fixedWallStripLimit,
   "RtStripLimit" -> rtStripLimit,
   "CorrelatedStripLimit" -> correlatedStripLimit,
   "RtNormalDot" -> rtNormalDot,
   "FixedWallNormalLimit" -> fixedWallNormalLimit,
   "AnchorAngleWeightSequentialLimit" -> anchorAngleWeightSequentialLimit,
   "RawRightTail" -> rawRightTail,
   "RawLeftTail" -> rawLeftTail,
   "ProperRightTail" -> properRightTail,
   "ProperLeftTail" -> properLeftTail,
   "ProperProfileOuterLimit" ->
    FullSimplify[Limit[properProfileAtOuterCutoff, Rcut -> Infinity]]
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[results["EmbeddingResidual"], 0],
   VerificationTest[results["MetricResidual"], ConstantArray[0, {3, 3}]],
   VerificationTest[results["RadiusIntersectionResidual"], 0],
   VerificationTest[results["RtAnchorXResidual"], 0],
   VerificationTest[results["UMaxLeadingResidual"], 0],
   VerificationTest[results["FixedWallStripLimit"], Sinh[wallEpsilon]],
   VerificationTest[results["RtStripLimit"], 1/2],
   VerificationTest[
    results["CorrelatedStripLimit"], scalingParameter + 1/2
    ],
   VerificationTest[results["RtNormalDot"], -1/Rcut],
   VerificationTest[
    results["FixedWallNormalLimit"], -Tanh[wallEpsilon]
    ],
   VerificationTest[results["AnchorAngleWeightSequentialLimit"], 0],
   VerificationTest[results["RawRightTail"], 0],
   VerificationTest[results["RawLeftTail"], 0],
   VerificationTest[results["ProperRightTail"], 0],
   VerificationTest[results["ProperLeftTail"], 0],
   VerificationTest[results["ProperProfileOuterLimit"], 0]
   }];

Print[testReport];
If[testReport["TestsFailedCount"] =!= 0, Exit[1]];
