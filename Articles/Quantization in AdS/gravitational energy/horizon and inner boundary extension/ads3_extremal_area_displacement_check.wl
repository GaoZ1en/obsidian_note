(* ::Package:: *)

(* Quadratic area expansion for a displaced spacelike geodesic in AdS3.
   Work at a point in a parallel Fermi frame along the background geodesic:

     ds^2 = eta_ab dy^a dy^b
            + (1 + eta_ab y^a y^b) dx^2 + O(y^3),

   with eta_ab = diag(-1,1).  The curve is displaced by

     y^a(x) = amp V^a(x) + O(amp^2),

   and the metric family is G + amp p + amp^2 r.  The script verifies the
   coefficient split into fixed-surface, metric-displacement, and Jacobi
   pieces, including the endpoint terms exposed by integration by parts. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  amp, v0, v1, dv0, dv1, ddv0, ddv1,
  pxx, d0pxx, d1pxx, px0, px1, dpx0, dpx1, rxx,
  normalMetric, displacement, displacementPrime,
  displacementSecond, inducedMetric, areaDensity,
  areaCoefficients, fixedSurfacePiece, crossPiece,
  embeddingPiece, deltaK, jacobiV, crossEndpointDerivative,
  embeddingEndpointDerivative, crossBulkResidual,
  embeddingBulkResidual, gaugeVector, gaugeVectorSecond,
  pureGaugeDeltaK, pureGaugeDisplacement, gaugeExtremalityResidual,
  results, testReport
  ];

normalMetric = DiagonalMatrix[{-1, 1}];
displacement = {v0, v1};
displacementPrime = {dv0, dv1};
displacementSecond = {ddv0, ddv1};

(* Pull back G + amp p + amp^2 r to y^a=amp V^a. *)
inducedMetric =
  1 + amp pxx + amp^2 (
     rxx + v0 d0pxx + v1 d1pxx +
      2 (px0 dv0 + px1 dv1) +
      displacementPrime . normalMetric . displacementPrime +
      displacement . normalMetric . displacement
     );

areaDensity = Series[Sqrt[inducedMetric], {amp, 0, 2}] // Normal //
   Expand;
areaCoefficients = Table[
   FullSimplify[SeriesCoefficient[areaDensity, {amp, 0, order}]],
   {order, 0, 2}
   ];

fixedSurfacePiece = rxx/2 - pxx^2/8;
crossPiece = (v0 d0pxx + v1 d1pxx)/2 + px0 dv0 + px1 dv1;
embeddingPiece = 1/2 (
    displacementPrime . normalMetric . displacementPrime +
     displacement . normalMetric . displacement
    );

(* Bulk form after integration by parts.  Indices on deltaK are lower
   normal indices in this parallel frame. *)
deltaK = {d0pxx/2 - dpx0, d1pxx/2 - dpx1};
jacobiV = normalMetric . (-displacementSecond + displacement);
crossEndpointDerivative =
  dpx0 v0 + px0 dv0 + dpx1 v1 + px1 dv1;
embeddingEndpointDerivative =
  displacementPrime . normalMetric . displacementPrime +
   displacement . normalMetric . displacementSecond;

crossBulkResidual = FullSimplify[
   crossPiece - (displacement . deltaK + crossEndpointDerivative)
   ];
embeddingBulkResidual = FullSimplify[
   embeddingPiece -
    (1/2 displacement . jacobiV +
      1/2 embeddingEndpointDerivative)
   ];

(* A pure normal diffeomorphism p=L_w G has, on the geodesic,
   p_xx=0, partial_a p_xx=2 w_a, and p_xa=D_x w_a.  Hence
   delta K_a[p]=(-D_x^2+1)w_a.  Because the metric convention is
   h -> h+L_w G, the same geometric curve has V -> V-w. *)
gaugeVector = {v0, v1};
gaugeVectorSecond = {ddv0, ddv1};
pureGaugeDeltaK = normalMetric . (gaugeVector - gaugeVectorSecond);
pureGaugeDisplacement = -gaugeVector;
gaugeExtremalityResidual = FullSimplify[
   normalMetric .
     (-(-gaugeVectorSecond) + pureGaugeDisplacement) +
    pureGaugeDeltaK
   ];

results = <|
   "AreaCoefficientResidual" -> FullSimplify[
     areaCoefficients[[3]] -
      (fixedSurfacePiece + crossPiece + embeddingPiece)
     ],
   "CrossIntegrationByPartsResidual" -> crossBulkResidual,
   "EmbeddingIntegrationByPartsResidual" -> embeddingBulkResidual,
   "GaugeExtremalityResidual" -> gaugeExtremalityResidual,
   "LinearAreaCoefficient" -> areaCoefficients[[2]],
   "QuadraticAreaCoefficient" -> areaCoefficients[[3]]
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[
    results["AreaCoefficientResidual"], 0
    ],
   VerificationTest[
    results["CrossIntegrationByPartsResidual"], 0
    ],
   VerificationTest[
    results["EmbeddingIntegrationByPartsResidual"], 0
    ],
   VerificationTest[
    results["GaugeExtremalityResidual"], ConstantArray[0, 2]
    ],
   VerificationTest[
    results["LinearAreaCoefficient"], pxx/2
    ],
   VerificationTest[
    FreeQ[fixedSurfacePiece, v0 | v1 | dv0 | dv1], True
    ],
   VerificationTest[
    FreeQ[crossPiece, rxx], True
    ],
   VerificationTest[
    FreeQ[embeddingPiece,
     pxx | d0pxx | d1pxx | px0 | px1 | rxx], True
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
