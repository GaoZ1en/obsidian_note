(* ::Package:: *)

(* A Brown--Henneaux large-diffeomorphism representative that is identically
   zero in a collar of the BTZ bifurcation surface.  xAct is loaded so this
   script runs in the same fresh-kernel components profile as the other BTZ
   checks; the displayed operations are coordinate Lie derivatives. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  timeCoord, radialCoord, angleCoord, horizonRadius, modeNumber, chi,
  coordinateList, backgroundMetric, boundaryWave, waveFirst, waveSecond,
  baseVector, cutVector, lieDerivative, basePerturbation, cutPerturbation,
  secondCutPerturbation, collarRules, outerRules
  ];

coordinateList = {timeCoord, radialCoord, angleCoord};
backgroundMetric = {
   {-horizonRadius^2 Sinh[radialCoord]^2, 0, 0},
   {0, 1, 0},
   {0, 0, horizonRadius^2 Cosh[radialCoord]^2}
   };

boundaryWave = Cos[modeNumber (timeCoord + angleCoord)];
waveFirst = D[boundaryWave, timeCoord];
waveSecond = D[boundaryWave, {timeCoord, 2}];

(* This extension has vanishing radial components in L_zeta G and the standard
   chiral Brown--Henneaux leading vector at radial infinity. *)
baseVector = {
   boundaryWave/2 +
    waveSecond (Coth[radialCoord] - 1)/(2 horizonRadius^2),
   -waveFirst/2,
   boundaryWave/2 -
    waveSecond (1 - Tanh[radialCoord])/(2 horizonRadius^2)
   };

lieDerivative[vector_, tensor_] := Table[
   Simplify[
    Sum[
      vector[[alpha]] D[tensor[[mu, nu]], coordinateList[[alpha]]],
      {alpha, 3}
      ] +
     Sum[
      tensor[[alpha, nu]] D[vector[[alpha]], coordinateList[[mu]]],
      {alpha, 3}
      ] +
     Sum[
      tensor[[mu, alpha]] D[vector[[alpha]], coordinateList[[nu]]],
      {alpha, 3}
      ]
    ],
   {mu, 3}, {nu, 3}
   ];

basePerturbation = lieDerivative[baseVector, backgroundMetric];

(* chi is any C-infinity step with chi=0 for rho<=rho0 and chi=1 for
   rho>=2 rho0.  Only the collar and outer jets are needed below. *)
cutVector = chi[radialCoord] baseVector;
cutPerturbation = lieDerivative[cutVector, backgroundMetric];
secondCutPerturbation =
  FullSimplify[1/2 lieDerivative[cutVector, cutPerturbation]];

collarRules = {
   chi[radialCoord] -> 0,
   Derivative[1][chi][radialCoord] -> 0,
   Derivative[2][chi][radialCoord] -> 0
   };
outerRules = {
   chi[radialCoord] -> 1,
   Derivative[1][chi][radialCoord] -> 0,
   Derivative[2][chi][radialCoord] -> 0
   };

results = <|
   "BaseRadialComponents" ->
    FullSimplify[
     {basePerturbation[[2, 2]], basePerturbation[[1, 2]],
      basePerturbation[[2, 3]]}
     ],
   "CollarVector" -> FullSimplify[cutVector /. collarRules],
   "CollarLinearPerturbation" ->
    FullSimplify[cutPerturbation /. collarRules],
   "CollarSecondPerturbation" ->
    FullSimplify[secondCutPerturbation /. collarRules],
   "OuterLinearEqualsBase" ->
    FullSimplify[(cutPerturbation /. outerRules) - basePerturbation],
   "OuterSecondEqualsBase" ->
    FullSimplify[
     (secondCutPerturbation /. outerRules) -
      1/2 lieDerivative[baseVector, basePerturbation]
     ],
   "TangentialLeadingRatios" -> {
     FullSimplify[
      Limit[basePerturbation[[1, 1]]/Exp[2 radialCoord],
       radialCoord -> Infinity]
      ],
     FullSimplify[
      Limit[basePerturbation[[1, 3]]/Exp[2 radialCoord],
       radialCoord -> Infinity]
      ],
     FullSimplify[
      Limit[basePerturbation[[3, 3]]/Exp[2 radialCoord],
       radialCoord -> Infinity]
      ]
     },
   "TangentialFiniteLimits" -> {
     FullSimplify[
      Limit[basePerturbation[[1, 1]], radialCoord -> Infinity]
      ],
     FullSimplify[
      Limit[basePerturbation[[1, 3]], radialCoord -> Infinity]
      ],
     FullSimplify[
      Limit[basePerturbation[[3, 3]], radialCoord -> Infinity]
      ]
     }
   |>;

Print[results];

testReport = TestReport[{
  VerificationTest[results["BaseRadialComponents"], {0, 0, 0}],
  VerificationTest[results["CollarVector"], {0, 0, 0}],
  VerificationTest[
   results["CollarLinearPerturbation"], ConstantArray[0, {3, 3}]
   ],
  VerificationTest[
   results["CollarSecondPerturbation"], ConstantArray[0, {3, 3}]
   ],
  VerificationTest[
   results["OuterLinearEqualsBase"], ConstantArray[0, {3, 3}]
   ],
  VerificationTest[
   results["OuterSecondEqualsBase"], ConstantArray[0, {3, 3}]
   ],
  VerificationTest[results["TangentialLeadingRatios"], {0, 0, 0}],
  VerificationTest[
   FullSimplify[
    results["TangentialFiniteLimits"] -
     ConstantArray[
      -1/2 modeNumber (horizonRadius^2 + modeNumber^2)
       Sin[modeNumber (timeCoord + angleCoord)],
      3
      ]
    ],
   {0, 0, 0}
   ]
  }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
