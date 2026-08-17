(* ::Package:: *)

(* Exact finite-wall check of the normal embedding momentum obtained by
   differentiating the complete vacuum BTZ action.  Expressions are per unit
   dt dphi.  The inner wall has outward normal -d_rho and no counterterm; the
   outer wall has outward normal +d_rho and the inherited AdS counterterm. *)

ClearAll["Global`*"];

sqrtWall[rho_] := rp^2 Sinh[rho] Cosh[rho];
bulkDensity[rho_] := -2 sqrtWall[rho]/kp2;
bulkAction = FullSimplify[
   Integrate[bulkDensity[rho], {rho, eps, rhoR}],
   Assumptions -> rhoR > eps > 0 && rp > 0 && kp2 > 0];
innerGHY = -rp^2 Cosh[2 eps]/kp2;
outerGHY = rp^2 Cosh[2 rhoR]/kp2;
outerCounterterm = -sqrtWall[rhoR]/kp2;
completeAction = FullSimplify[
   bulkAction + innerGHY + outerGHY + outerCounterterm];

innerShapeDerivative = FullSimplify[D[completeAction, eps]];
outerShapeDerivative = FullSimplify[D[completeAction, rhoR]];

kTrace[rho_, normalSign_] :=
  normalSign (Coth[rho] + Tanh[rho]);
kSquare[rho_] := Coth[rho]^2 + Tanh[rho]^2;

(* Gauss-reduced total coefficient, including the outer counterterm. *)
totalNormalMomentum[rho_, normalSign_, ctShift_] := FullSimplify[
   sqrtWall[rho] (kTrace[rho, normalSign]^2 - kSquare[rho] + 2)/
     (2 kp2) - ctShift sqrtWall[rho] kTrace[rho, normalSign]/kp2];

innerTotalMomentum = totalNormalMomentum[eps, -1, 0];
outerTotalMomentum = totalNormalMomentum[rhoR, 1, 1];

(* Increasing eps is opposite to the inner outward normal; increasing rhoR is
   along the outer outward normal. *)
innerDirectResidual = FullSimplify[
   innerShapeDerivative + innerTotalMomentum];
outerDirectResidual = FullSimplify[
   outerShapeDerivative - outerTotalMomentum];

innerBulkDerivative = FullSimplify[D[bulkAction, eps]];
innerGHYDerivative = FullSimplify[D[innerGHY, eps]];
outerBulkDerivative = FullSimplify[D[bulkAction, rhoR]];
outerGHYDerivative = FullSimplify[D[outerGHY, rhoR]];
outerCountertermDerivative = FullSimplify[D[outerCounterterm, rhoR]];

testConditions = {
   FullSimplify[bulkAction +
      rp^2 (Sinh[rhoR]^2 - Sinh[eps]^2)/kp2] === 0,
   FullSimplify[innerBulkDerivative - 2 sqrtWall[eps]/kp2] === 0,
   FullSimplify[innerGHYDerivative + 4 sqrtWall[eps]/kp2] === 0,
   FullSimplify[kTrace[eps, -1]^2 - kSquare[eps] - 2] === 0,
   FullSimplify[innerShapeDerivative + 2 sqrtWall[eps]/kp2] === 0,
   FullSimplify[innerTotalMomentum - 2 sqrtWall[eps]/kp2] === 0,
   innerDirectResidual === 0,
   FullSimplify[outerBulkDerivative + 2 sqrtWall[rhoR]/kp2] === 0,
   FullSimplify[outerGHYDerivative - 4 sqrtWall[rhoR]/kp2] === 0,
   FullSimplify[outerCountertermDerivative +
      rp^2 Cosh[2 rhoR]/kp2] === 0,
   FullSimplify[outerShapeDerivative +
      rp^2 Exp[-2 rhoR]/kp2] === 0,
   FullSimplify[outerTotalMomentum +
      rp^2 Exp[-2 rhoR]/kp2] === 0,
   outerDirectResidual === 0,
   FullSimplify[Limit[innerTotalMomentum, eps -> 0,
       Direction -> "FromAbove"]] === 0,
   FullSimplify[Limit[outerTotalMomentum, rhoR -> Infinity]] === 0
   };

testIDs = {
   "exact bulk radial integral",
   "inner bulk lower-limit derivative",
   "inner GHY shape derivative",
   "timelike-wall vacuum Gauss constraint",
   "complete inner coordinate-cutoff derivative",
   "inner total normal momentum",
   "inner direct derivative equals Pperp chiperp",
   "outer bulk upper-limit derivative",
   "outer GHY shape derivative",
   "outer counterterm shape derivative",
   "complete outer coordinate-cutoff derivative",
   "outer total normal momentum",
   "outer direct derivative equals Pperp chiperp",
   "inner momentum horizon limit",
   "outer momentum renormalized limit"
   };

Print[<|
  "CompleteActionDensity" -> completeAction,
  "InnerShapeDerivative" -> innerShapeDerivative,
  "InnerTotalNormalMomentum" -> innerTotalMomentum,
  "OuterShapeDerivative" -> outerShapeDerivative,
  "OuterTotalNormalMomentum" -> outerTotalMomentum|>];

movingBTZTotalEmbeddingMomentumReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
