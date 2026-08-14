(* ::Package:: *)

(*
  Finite-cutoff inner-wall and endpoint-joint checks for compact non-rotating
  BTZ in the finite-action/Harlow--Wu convention used by ../article/.

  The first block proves statements valid for every metric variation that
  preserves Gaussian radial gauge at the wall.  The second block specializes
  to the collar-Dirichlet fluctuation sector.  The final source calculation
  records why radial gauge alone is not a Dirichlet boundary condition.
*)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

DefManifold[MJoint, 3, {aJoint, bJoint, cJoint}];
DefChart[btzJoint, MJoint, {0, 1, 2}, {ttJoint[], rrJoint[], ppJoint[]}];
DefConstantSymbol /@ {rp, kp2, boostScale};

coordinates = {t, rho, phi};

(* A two-parameter tangential deformation in exact Gaussian radial gauge. *)
metric = {
   {-rp^2 Sinh[rho]^2 + aa htt + bb ptt, 0,
    aa htp + bb ptp},
   {0, 1, 0},
   {aa htp + bb ptp, 0,
    rp^2 Cosh[rho]^2 + aa hpp + bb ppp}
   };
inverseMetric = FullSimplify[Inverse[metric]];

innerWallNormalUp = {0, -1, 0};
innerWallNormalDown = FullSimplify[metric . innerWallNormalUp];

(* A t=constant unit normal is proportional to the raised dt covector.  Its
   normalization does not enter the orthogonality identity. *)
futureSliceNormalDown = {-lapse, 0, 0};
futureSliceNormalUp = FullSimplify[inverseMetric . futureSliceNormalDown];

normalDot = FullSimplify[innerWallNormalDown . futureSliceNormalUp];
boostAngle = FullSimplify[ArcSinh[normalDot]];
cutDensity = Sqrt[metric[[3, 3]]];
jointDensity = FullSimplify[cutDensity boostAngle];

gammaInverse = FullSimplify[
   inverseMetric - Outer[Times, innerWallNormalUp, innerWallNormalUp]
   ];

hVariation = D[metric, aa];
pVariation = D[metric, bb];

harlowWuC[variation_] := Table[
   FullSimplify[
    -1/(2 kp2) Sum[
      gammaInverse[[mu, nu]] innerWallNormalUp[[2]] variation[[nu, 2]],
      {nu, 3}
      ]
    ],
   {mu, 3}
   ];

cH = harlowWuC[hVariation];
cP = harlowWuC[pVariation];

(* For a field-space scalar joint action at fixed embeddings, the integrable
   endpoint shift has commuting mixed variations. *)
genericJointScalar =
  Sqrt[q0 + aa q1 + bb q2] ArcSinh[z0 + aa z1 + bb z2];
jointExactnessResidual = FullSimplify[
   D[D[genericJointScalar, aa], bb] -
    D[D[genericJointScalar, bb], aa]
   ];

(* Collar-Dirichlet tangent vectors have zero induced-metric variations. *)
deltaGamma1Collar = ConstantArray[0, {2, 2}];
deltaGamma2Collar = ConstantArray[0, {2, 2}];
pi0 = {{pi0tt, pi0tp}, {pi0tp, pi0pp}};
deltaPi1 = {{dpi1tt, dpi1tp}, {dpi1tp, dpi1pp}};
deltaPi2 = {{dpi2tt, dpi2tp}, {dpi2tp, dpi2pp}};

sourceCollar = FullSimplify[
   -1/2 Sum[pi0[[i, j]] deltaGamma1Collar[[i, j]], {i, 2}, {j, 2}]
   ];
fluxCollar = FullSimplify[
   -1/2 Sum[
     deltaPi1[[i, j]] deltaGamma2Collar[[i, j]] -
      deltaPi2[[i, j]] deltaGamma1Collar[[i, j]],
     {i, 2}, {j, 2}
     ]
   ];

(* Radial gauge does not kill tangential source work.  Reproduce the fixed-
   boost r_+ variation used in the area-sector calibration. *)
backgroundGammaPP = rp^2 Cosh[rho]^2;
backgroundWallDensity = boostScale rp Sinh[rho] Cosh[rho];
backgroundInnerK = -2 Coth[2 rho];
backgroundInnerKPP = -rp^2 Sinh[rho] Cosh[rho];
backgroundBrownYorkPP = FullSimplify[
   (backgroundInnerKPP - backgroundInnerK backgroundGammaPP)/kp2
   ];
backgroundBrownYorkPPUpper = FullSimplify[
   backgroundBrownYorkPP/backgroundGammaPP^2
   ];
parameterSource = FullSimplify[
   -1/2 2 Pi backgroundWallDensity backgroundBrownYorkPPUpper
    D[backgroundGammaPP, rp]
   ];

results = <|
   "InverseRadialOffDiagonal" ->
    FullSimplify[{inverseMetric[[2, 1]], inverseMetric[[2, 3]]}],
   "InnerNormalNorm" ->
    FullSimplify[innerWallNormalUp . metric . innerWallNormalUp],
   "WallSliceOrthogonality" -> normalDot,
   "BoostAngle" -> boostAngle,
   "BoostAngleFirstVariation" -> FullSimplify[D[boostAngle, aa]],
   "BoostAngleMixedVariation" ->
    FullSimplify[D[D[boostAngle, aa], bb]],
   "JointDensity" -> jointDensity,
   "JointDensityFirstVariation" -> FullSimplify[D[jointDensity, aa]],
   "JointDensityMixedVariation" ->
    FullSimplify[D[D[jointDensity, aa], bb]],
   "HarlowWuCFirstVariation" -> cH,
   "HarlowWuCSecondVariation" -> cP,
   "FixedEmbeddingJointExactness" -> jointExactnessResidual,
   "CollarDirichletSource" -> sourceCollar,
   "CollarDirichletFlux" -> fluxCollar,
   "ParameterSource" -> parameterSource
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[results["InverseRadialOffDiagonal"], {0, 0}],
   VerificationTest[results["InnerNormalNorm"], 1],
   VerificationTest[results["WallSliceOrthogonality"], 0],
   VerificationTest[results["BoostAngle"], 0],
   VerificationTest[results["BoostAngleFirstVariation"], 0],
   VerificationTest[results["BoostAngleMixedVariation"], 0],
   VerificationTest[results["JointDensity"], 0],
   VerificationTest[results["JointDensityFirstVariation"], 0],
   VerificationTest[results["JointDensityMixedVariation"], 0],
   VerificationTest[results["HarlowWuCFirstVariation"], {0, 0, 0}],
   VerificationTest[results["HarlowWuCSecondVariation"], {0, 0, 0}],
   VerificationTest[results["FixedEmbeddingJointExactness"], 0],
   VerificationTest[results["CollarDirichletSource"], 0],
   VerificationTest[results["CollarDirichletFlux"], 0],
   VerificationTest[
    results["ParameterSource"],
    -2 Pi boostScale Cosh[rho]^2/kp2
    ]
   }];

Print[testReport];
