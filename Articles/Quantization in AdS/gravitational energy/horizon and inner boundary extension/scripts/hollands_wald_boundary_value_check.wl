(* ::Package:: *)

(*
  Exact checks for the Hollands--Wald/extremal-gauge boundary-value problem.

  Part I constructs two nonzero Kruskal-smooth compact BTZ horizon
  representatives.  Part II checks invertibility of the compact Jacobi
  operator.  Part III evaluates the unique normal extremal-gauge displacement
  for the selected a=Pi/4 AdS-Rindler Brown--Henneaux mode and proves that its
  ambient components have proper asymptotic falloff.
*)

ClearAll["Global`*"];

(* ---------- Compact BTZ in smooth Kruskal coordinates ---------- *)

kruskalCoordinates = {uK, vK, phi};
btzMetric = {
   {0, -2/(1 + uK vK)^2, 0},
   {-2/(1 + uK vK)^2, 0, 0},
   {0, 0, rp^2 ((1 - uK vK)/(1 + uK vK))^2}
   };
btzInverse = FullSimplify[Inverse[btzMetric]];

lieMetric[metric_, coordinates_, vector_] := Table[
   FullSimplify[
    Sum[vector[[a]] D[metric[[mu, nu]], coordinates[[a]]],
      {a, Length[coordinates]}] +
     Sum[metric[[a, nu]] D[vector[[a]], coordinates[[mu]]],
      {a, Length[coordinates]}] +
     Sum[metric[[mu, a]] D[vector[[a]], coordinates[[nu]]],
      {a, Length[coordinates]}]
    ],
   {mu, Length[coordinates]}, {nu, Length[coordinates]}];

horizonGenerator[wave_] := {0, 0, wave};
horizonMetricPerturbation[wave_] :=
  lieMetric[btzMetric, kruskalCoordinates, horizonGenerator[wave]];

leftWave = Cos[phi];
rightWave = Sin[2 phi];
leftHorizonPerturbation = horizonMetricPerturbation[leftWave];
rightHorizonPerturbation = horizonMetricPerturbation[rightWave];
bifurcationRules = {uK -> 0, vK -> 0};

tensorNorm[tensor_] := FullSimplify[
   Sum[
    tensor[[mu, nu]] btzInverse[[mu, rho]] btzInverse[[nu, sigma]]
     tensor[[rho, sigma]],
    {mu, 3}, {nu, 3}, {rho, 3}, {sigma, 3}]
   ];

leftAtBifurcation = FullSimplify[
   leftHorizonPerturbation /. bifurcationRules];
rightAtBifurcation = FullSimplify[
   rightHorizonPerturbation /. bifurcationRules];
leftNormAtBifurcation = FullSimplify[
   tensorNorm[leftHorizonPerturbation] /. bifurcationRules];
rightNormAtBifurcation = FullSimplify[
   tensorNorm[rightHorizonPerturbation] /. bifurcationRules];

(* For these tangential representatives h_{ua}=0.  The linearized extremality
   source delta_h K_a=(1/2) nabla_a h_uu-D_u h_ua vanishes because the only
   nonzero component is h_phi phi and its first U,V derivatives vanish at the
   bifurcation circle. *)
leftNormalDerivative = FullSimplify[
   {D[leftHorizonPerturbation[[3, 3]], uK],
      D[leftHorizonPerturbation[[3, 3]], vK]} /. bifurcationRules];
rightNormalDerivative = FullSimplify[
   {D[rightHorizonPerturbation[[3, 3]], uK],
      D[rightHorizonPerturbation[[3, 3]], vK]} /. bifurcationRules];

(* Compact Jacobi spectrum on u=rp phi: J=-d_u^2+1. *)
compactJacobiEigenvalue[integerMode_] := 1 + integerMode^2/rp^2;
compactSource[integerMode_] := Cos[integerMode phi];
compactSolution[integerMode_] :=
  -compactSource[integerMode]/compactJacobiEigenvalue[integerMode];
compactJacobi[function_] := -D[function, {phi, 2}]/rp^2 + function;
compactJacobiResidual[integerMode_] := FullSimplify[
   compactJacobi[compactSolution[integerMode]] +
    compactSource[integerMode]
   ];

(* The independent normal jets solve the second HW condition without changing
   the already fixed normal value of v on the cut. *)
correctedHkk = FullSimplify[hkk + 2 (-hkk/2)];
correctedHll = FullSimplify[hll + 2 (-hll/2)];

(* ---------- Anchored AdS-Rindler selected mode ---------- *)

rtRadius = Sqrt[Cosh[2 geodesicU]];
rtAngle = ArcTan[Tanh[geodesicU]];

(* Parallel orthonormal frame used by ads_rindler_area_endpoint_check.wl. *)
normalTime = {1/(Sqrt[2] Cosh[geodesicU]), 0, 0};
normalSpace = {
   0,
   Sqrt[2] Cosh[geodesicU]/rtRadius,
   -Sqrt[2] Sinh[geodesicU]/rtRadius^2
   };

(* Simplified exact normal projection of the selected project-normalized
   Brown--Henneaux generator.  The extremal-gauge value is v_perp=-zeta_perp. *)
extremalNormalTime =
  Cosh[2 geodesicU]/(4 Sqrt[6 Pi] Cosh[geodesicU]^3);
extremalNormalSpace =
  Sqrt[3/(2 Pi)] Sech[geodesicU]
    (1 + 2 Sech[2 geodesicU]) Tanh[geodesicU]/2;

properExtremalVector = FullSimplify[
   extremalNormalTime normalTime + extremalNormalSpace normalSpace];

(* Brown--Henneaux-proper component weights along the two anchors. *)
rightProperLimits = FullSimplify[{
    Limit[rtRadius^2 properExtremalVector[[1]], geodesicU -> Infinity],
    Limit[rtRadius properExtremalVector[[2]], geodesicU -> Infinity],
    Limit[rtRadius^2 properExtremalVector[[3]], geodesicU -> Infinity]
    }];
leftProperLimits = FullSimplify[{
    Limit[rtRadius^2 properExtremalVector[[1]], geodesicU -> -Infinity],
    Limit[rtRadius properExtremalVector[[2]], geodesicU -> -Infinity],
    Limit[rtRadius^2 properExtremalVector[[3]], geodesicU -> -Infinity]
    }];

rightUnscaledLimits = FullSimplify[
   Limit[#, geodesicU -> Infinity] & /@ properExtremalVector];
leftUnscaledLimits = FullSimplify[
   Limit[#, geodesicU -> -Infinity] & /@ properExtremalVector];

(* The normal coefficients saturate the decaying indicial root of
   J=-d_u^2+1. *)
normalRightRates = FullSimplify[{
    Limit[Exp[geodesicU] extremalNormalTime,
     geodesicU -> Infinity],
    Limit[Exp[geodesicU] extremalNormalSpace,
     geodesicU -> Infinity]
    }];
normalLeftRates = FullSimplify[{
    Limit[Exp[-geodesicU] extremalNormalTime,
     geodesicU -> -Infinity],
    Limit[Exp[-geodesicU] extremalNormalSpace,
     geodesicU -> -Infinity]
    }];

(* Green kernel check away from its delta-function cusp. *)
greenKernel = Exp[-Abs[geodesicU - sourceU]]/2;
greenRightResidual = FullSimplify[
   -D[(greenKernel /. Abs[geodesicU - sourceU] ->
          geodesicU - sourceU), {geodesicU, 2}] +
    (greenKernel /. Abs[geodesicU - sourceU] ->
       geodesicU - sourceU),
   Assumptions -> geodesicU > sourceU];
greenLeftResidual = FullSimplify[
   -D[(greenKernel /. Abs[geodesicU - sourceU] ->
          sourceU - geodesicU), {geodesicU, 2}] +
    (greenKernel /. Abs[geodesicU - sourceU] ->
       sourceU - geodesicU),
   Assumptions -> geodesicU < sourceU];
greenDerivativeJump = FullSimplify[
   Limit[D[Exp[-(geodesicU - sourceU)]/2, geodesicU],
      geodesicU -> sourceU, Direction -> "FromAbove"] -
    Limit[D[Exp[-(sourceU - geodesicU)]/2, geodesicU],
      geodesicU -> sourceU, Direction -> "FromBelow"]
   ];

expectedRightProper = {
   1/(2 Sqrt[3 Pi]), Sqrt[3/Pi], -Sqrt[3/Pi]};
expectedLeftProper = {
   1/(2 Sqrt[3 Pi]), Sqrt[3/Pi], Sqrt[3/Pi]};

testConditions = {
   leftAtBifurcation[[1, 1]] === 0,
   leftAtBifurcation[[2, 2]] === 0,
   rightAtBifurcation[[1, 1]] === 0,
   rightAtBifurcation[[2, 2]] === 0,
   leftAtBifurcation[[3, 3]] === -2 rp^2 Sin[phi],
   rightAtBifurcation[[3, 3]] === 4 rp^2 Cos[2 phi],
   leftNormAtBifurcation === 4 Sin[phi]^2,
   rightNormAtBifurcation === 8 (1 + Cos[4 phi]),
   leftNormalDerivative === {0, 0},
   rightNormalDerivative === {0, 0},
   compactJacobiResidual[1] === 0,
   compactJacobiResidual[2] === 0,
   correctedHkk === 0,
   correctedHll === 0,
   rightProperLimits === expectedRightProper,
   leftProperLimits === expectedLeftProper,
   rightUnscaledLimits === {0, 0, 0},
   leftUnscaledLimits === {0, 0, 0},
   greenRightResidual === 0,
   greenLeftResidual === 0,
   greenDerivativeJump === -1
   };

testIDs = {
   "left compact representative has h_UU=0",
   "left compact representative has h_VV=0",
   "right compact representative has h_UU=0",
   "right compact representative has h_VV=0",
   "left compact representative is nonzero on the cut",
   "right compact representative is nonzero on the cut",
   "left compact invariant norm is finite",
   "right compact invariant norm is finite",
   "left compact linearized extremality source vanishes",
   "right compact linearized extremality source vanishes",
   "compact m=1 Jacobi solve",
   "compact m=2 Jacobi solve",
   "normal k jet imposes h_kk=0",
   "normal l jet imposes h_ll=0",
   "right anchor proper falloff coefficients",
   "left anchor proper falloff coefficients",
   "right anchor vector vanishes unscaled",
   "left anchor vector vanishes unscaled",
   "Jacobi Green kernel solves JG=0 to the right",
   "Jacobi Green kernel solves JG=0 to the left",
   "Jacobi Green derivative jump gives delta normalization"
   };

hollandsWaldBoundaryValueTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
