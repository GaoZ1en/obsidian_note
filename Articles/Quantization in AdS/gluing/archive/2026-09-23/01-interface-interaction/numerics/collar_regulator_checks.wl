(* ::Package:: *)

(* ===================================================================== *)
(*  Positive-collar response and two-edge Gaussian checks                *)
(*                                                                       *)
(*  Model and notation: ../formalism.md and                              *)
(*  ../collar-interface-regulator.md.                                    *)
(*  Numerical benchmark: L = m = 1, sigma = epsilon.                     *)
(* ===================================================================== *)

ClearAll["Global`*"];

TentHat[z_] := Sinc[z/2]^2;
kernelNormSquared = 2/3;

collarSolution =
  qLeft Sin[k (2 epsilon - coordinate)]/Sin[2 k epsilon] +
  qRight Sin[k coordinate]/Sin[2 k epsilon];
responseFromSolution = {
  -D[collarSolution, coordinate] /. coordinate -> 0,
  D[collarSolution, coordinate] /. coordinate -> 2 epsilon
};
responseMatrix = k/Sin[2 k epsilon] {
  {Cos[2 k epsilon], -1},
  {-1, Cos[2 k epsilon]}
};
responseResidual = FullSimplify[
  responseFromSolution - responseMatrix.{qLeft, qRight}
];

dtNMatrixReduced = k/(2 sine cosine) {
  {cosine^2 - sine^2, -(sine^2 + cosine^2)},
  {-(sine^2 + cosine^2), cosine^2 - sine^2}
};
commonVector = {1, 1};
relativeVector = {-1, 1};
commonDtNResidual = (Cancel[Together[#]] &) /@ (
  dtNMatrixReduced.commonVector + k sine/cosine commonVector
);
relativeDtNResidual = (Cancel[Together[#]] &) /@ (
  dtNMatrixReduced.relativeVector - k cosine/sine relativeVector
);
commonDtNSeries = Series[-k Tan[k epsilon], {epsilon, 0, 3}];
relativeDtNSeries = Series[k Cot[k epsilon], {epsilon, 0, 3}];

qTransform = {{1/2, 1/2}, {-1/2, 1/2}};
pTransform = {{1, 1}, {-1, 1}};
canonicalTransformResidual = qTransform.Transpose[pTransform] -
  IdentityMatrix[2];
commonOverlapResidual = FullSimplify[
  (Sin[k (ell - center)] + Sin[k (ell + center)])/2 -
    Sin[k ell] Cos[k center]
];
relativeOverlapResidual = FullSimplify[
  (Sin[k (ell + center)] - Sin[k (ell - center)])/2 -
    Cos[k ell] Sin[k center]
];

Print["Collar symbolic checks complete."];

integralCutoff = 2000;
quadratureStep = 0.002;
quadratureGrid = Range[
  quadratureStep/2,
  integralCutoff - quadratureStep/2,
  quadratureStep
];
relativeQCompiled = Compile[{{u, _Real}}, Module[{filter},
  filter = (2 (1 - Cos[u])/u^2)^2;
  filter Sin[2 u]^2/u
]];
relativeMomentumCompiled = Compile[{{u, _Real}}, Module[{filter},
  filter = (2 (1 - Cos[u])/u^2)^2;
  u filter Sin[2 u]^2
]];
relativeQIntegral = quadratureStep Total[
  relativeQCompiled /@ quadratureGrid
];
relativeMomentumIntegral = quadratureStep Total[
  relativeMomentumCompiled /@ quadratureGrid
];
totalMomentumIntegral = 4 Log[2];
commonMomentumIntegral = totalMomentumIntegral - relativeMomentumIntegral;
relativeQTarget = relativeQIntegral/(2 Pi);
commonMomentumTarget = 2 commonMomentumIntegral/
  (Pi kernelNormSquared^2);
relativeMomentumTarget = 2 relativeMomentumIntegral/
  (Pi kernelNormSquared^2);
relativeQTailBound = 4/integralCutoff^4;
momentumIntegralTailBound = 8/integralCutoff^2;
momentumCovarianceTailBound = 2 momentumIntegralTailBound/
  (Pi kernelNormSquared^2);

Print["Collar profile quadrature complete."];

BosonEntropy[nu_] := If[
  nu <= 1/2,
  0,
  (nu + 1/2) Log[nu + 1/2] - (nu - 1/2) Log[nu - 1/2]
];

CollarData[
  epsilonValue_, ell_: 1., mass_: 1., kappa_: 1., uMax_: 200.
] := Module[
  {
    sigma, center, rMax, labels, momenta, frequencies, filters,
    commonCoefficients, relativeCoefficients, singleNormSquared,
    commonNormSquared, commonQVariance, relativeQVariance,
    commonPVariance, relativePVariance, commonCCR, relativeCCR,
    commonNu, relativeNu, localNu, probeMutualInformation
  },
  sigma = kappa epsilonValue;
  center = epsilonValue + sigma;
  rMax = Ceiling[2 ell uMax/(Pi sigma)];
  labels = Range[rMax];
  momenta = labels Pi/(2 ell);
  frequencies = Sqrt[mass^2 + momenta^2];
  filters = TentHat /@ (sigma momenta);
  commonCoefficients = MapThread[
    If[OddQ[#1], #2 Cos[#3 center]/Sqrt[ell], 0] &,
    {labels, filters, momenta}
  ];
  relativeCoefficients = MapThread[
    If[EvenQ[#1], #2 Sin[#3 center]/Sqrt[ell], 0] &,
    {labels, filters, momenta}
  ];
  singleNormSquared = kernelNormSquared/sigma;
  commonNormSquared = singleNormSquared/2;
  commonQVariance = Total[commonCoefficients^2/(2 frequencies)];
  relativeQVariance = Total[relativeCoefficients^2/(2 frequencies)];
  commonPVariance = Total[
    (commonCoefficients/commonNormSquared)^2 frequencies/2
  ];
  relativePVariance = Total[
    (relativeCoefficients/commonNormSquared)^2 frequencies/2
  ];
  commonCCR = Total[commonCoefficients^2]/commonNormSquared;
  relativeCCR = Total[relativeCoefficients^2]/commonNormSquared;
  commonNu = Sqrt[commonQVariance commonPVariance];
  relativeNu = Sqrt[relativeQVariance relativePVariance];
  localNu = Sqrt[
    (commonQVariance + relativeQVariance)
      (commonPVariance + relativePVariance)/4
  ];
  probeMutualInformation =
    2 BosonEntropy[localNu] - BosonEntropy[commonNu] -
      BosonEntropy[relativeNu];
  <|
    "Epsilon" -> N[epsilonValue, 16],
    "Sigma" -> N[sigma, 16],
    "ModeCount" -> rMax,
    "CommonQVariance" -> N[commonQVariance, 16],
    "CommonQRenormalized" -> N[
      commonQVariance - Log[ell/epsilonValue]/(2 Pi),
      16
    ],
    "RelativeQVariance" -> N[relativeQVariance, 16],
    "RelativeQTargetResidual" -> N[
      relativeQVariance - relativeQTarget,
      16
    ],
    "CommonPVariance" -> N[commonPVariance, 16],
    "CommonPTargetResidual" -> N[
      commonPVariance - commonMomentumTarget,
      16
    ],
    "RelativePVariance" -> N[relativePVariance, 16],
    "RelativePTargetResidual" -> N[
      relativePVariance - relativeMomentumTarget,
      16
    ],
    "CommonSymplecticEigenvalue" -> N[commonNu, 16],
    "RelativeSymplecticEigenvalue" -> N[relativeNu, 16],
    "LocalSymplecticEigenvalue" -> N[localNu, 16],
    "TwoProbeMutualInformation" -> N[probeMutualInformation, 16],
    "CommonCCRResidual" -> N[Abs[commonCCR - 1], 16],
    "RelativeCCRResidual" -> N[Abs[relativeCCR - 1], 16]
  |>
];

testedEpsilons = N[1/{4, 8, 16, 32, 64, 128}];
rows = CollarData /@ testedEpsilons;
Print["Collar mode sums complete."];
commonDoublingSlopes = Table[
  <|
    "Epsilon" -> rows[[j]]["Epsilon"],
    "Slope" -> N[
      (rows[[j]]["CommonQVariance"] -
        rows[[j - 1]]["CommonQVariance"])/Log[2],
      16
    ]
  |>,
  {j, 2, Length[rows]}
];

allChecksPassed = And[
  responseResidual == {0, 0},
  commonDtNResidual == {0, 0},
  relativeDtNResidual == {0, 0},
  canonicalTransformResidual == ConstantArray[0, {2, 2}],
  commonOverlapResidual == 0,
  relativeOverlapResidual == 0,
  Max[(#1["CommonCCRResidual"] &) /@ rows] < 10^-5,
  Max[(#1["RelativeCCRResidual"] &) /@ rows] < 10^-5,
  Min[(#1["CommonSymplecticEigenvalue"] &) /@ rows] >= 1/2 - 10^-8,
  Min[(#1["RelativeSymplecticEigenvalue"] &) /@ rows] >= 1/2 - 10^-8,
  Abs[Last[commonDoublingSlopes]["Slope"] - 1/(2 Pi)] < 5 10^-3,
  Abs[Last[rows]["RelativeQTargetResidual"]] < 5 10^-3,
  Abs[Last[rows]["CommonPTargetResidual"]] < 5 10^-3,
  Abs[Last[rows]["RelativePTargetResidual"]] < 5 10^-3
];

report = <|
  "ResponseResidual" -> responseResidual,
  "CommonDtNResidual" -> commonDtNResidual,
  "RelativeDtNResidual" -> relativeDtNResidual,
  "CommonDtNSeries" -> commonDtNSeries,
  "RelativeDtNSeries" -> relativeDtNSeries,
  "CanonicalTransformResidual" -> canonicalTransformResidual,
  "CommonOverlapResidual" -> commonOverlapResidual,
  "RelativeOverlapResidual" -> relativeOverlapResidual,
  "RelativeQTarget" -> N[relativeQTarget, 16],
  "CommonMomentumTarget" -> N[commonMomentumTarget, 16],
  "RelativeMomentumTarget" -> N[relativeMomentumTarget, 16],
  "RelativeQTailBound" -> N[relativeQTailBound, 16],
  "MomentumCovarianceTailBound" -> N[
    momentumCovarianceTailBound,
    16
  ],
  "Rows" -> rows,
  "CommonDoublingSlopes" -> commonDoublingSlopes,
  "LogarithmicTarget" -> N[1/(2 Pi), 16],
  "AllChecksPassed" -> allChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[allChecksPassed], Exit[0], Exit[1]];
