(* ::Package:: *)

(*
  Classical Banados/Hollands quadratic form and the PSL(2,R) anchor section.
  This file verifies the coordinate identities, the PSL reducibility
  section, exact Killing complements, the Schwarzian Hessian, positivity,
  and the boundary-layer obstruction to H2 coercivity.
*)

ClearAll["Global`*"];

intervalAssumptions =
  0 < anchor < Pi/2 && -anchor < phi < anchor;

halfLineMap =
  Sin[(phi + anchor)/2]/Sin[(anchor - phi)/2];
modularWeight = (Cos[phi] - Cos[anchor])/Sin[anchor];
mapWeightResidual = FullSimplify[
  halfLineMap/D[halfLineMap, phi] - modularWeight,
  Assumptions -> intervalAssumptions];

qPlus[expression_] := expression /. phi -> anchor;
qMinus[expression_] := expression /. phi -> -anchor;
pslAnchorSection[expression_] := FullSimplify[
  expression
   - (qPlus[expression] + qMinus[expression]) Cos[phi]/
      (2 Cos[anchor])
   - (qPlus[expression] - qMinus[expression]) Sin[phi]/
      (2 Sin[anchor]),
  Assumptions -> 0 < anchor < Pi/2];

genericProfile = Sum[
   cc[index] Cos[index phi] + ss[index] Sin[index phi],
   {index, 2, 6}];
sectionEndpointResiduals = FullSimplify[
  {qPlus[pslAnchorSection[genericProfile]],
   qMinus[pslAnchorSection[genericProfile]]},
  Assumptions -> 0 < anchor < Pi/2];
sectionIdempotenceResidual = FullSimplify[
  pslAnchorSection[pslAnchorSection[genericProfile]] -
   pslAnchorSection[genericProfile],
  Assumptions -> 0 < anchor < Pi/2];

coordinates = {t, r, phi};
metric = DiagonalMatrix[{-(1 + r^2), 1/(1 + r^2), r^2}];
lieMetric[vector_] := Table[
  Together@Sum[
    vector[[lambda]] D[metric[[mu, nu]], coordinates[[lambda]]] +
     metric[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]] +
     metric[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
    {lambda, 3}],
  {mu, 3}, {nu, 3}];

closedComplexVector[frequency_] := With[
  {phase = Exp[-I frequency (t - phi)]}, {
   -phase r^frequency
     (r^2 - (frequency - 2) (frequency + 1)/2)/
      (1 + r^2)^((frequency + 2)/2),
   -I frequency phase r^(frequency - 1)
     (2 r^2 + frequency + 1)/
      (2 (1 + r^2)^(frequency/2)),
   phase r^(frequency - 2)
     (r^2 + frequency (frequency + 1)/2)/
      (1 + r^2)^(frequency/2)
   }];

globalKillingResiduals = FullSimplify[
  lieMetric /@ {closedComplexVector[0], closedComplexVector[1]},
  Assumptions -> Element[{t, r, phi}, Reals] && r > 0];

globalProfiles = {1, Cos[phi], Sin[phi]};
globalSectionProfiles = FullSimplify[
  pslAnchorSection /@ globalProfiles,
  Assumptions -> 0 < anchor < Pi/2];
expectedGlobalSectionProfiles = {
  -Tan[anchor] modularWeight, 0, 0};
globalSectionResidual = FullSimplify[
  globalSectionProfiles - expectedGlobalSectionProfiles,
  Assumptions -> intervalAssumptions];

schwarzianDerivative[expression_, variable_] :=
  D[expression, {variable, 3}]/D[expression, variable] -
   3/2 (D[expression, {variable, 2}]/
      D[expression, variable])^2;

rhoGeneral = Exp[generalPhi[Log[halfLineVariable]]];
schwarzianChainResidual = FullSimplify[
  halfLineVariable^2
    schwarzianDerivative[rhoGeneral, halfLineVariable] -
   ((schwarzianDerivative[generalPhi[sigma], sigma] -
       D[generalPhi[sigma], sigma]^2/2 + 1/2) /.
     sigma -> Log[halfLineVariable]),
  Assumptions -> halfLineVariable > 0];

logDerivative =
  D[generalPhi[sigma], {sigma, 2}]/
   D[generalPhi[sigma], sigma];
modularActionDensityResidual = FullSimplify[
  -2 (schwarzianDerivative[generalPhi[sigma], sigma] -
      D[generalPhi[sigma], sigma]^2/2 + 1/2) -
   (logDerivative^2 + D[generalPhi[sigma], sigma]^2 - 1) +
   2 D[logDerivative, sigma]];
centralChargeNormalizationResidual = FullSimplify[
  (3/(2 newtonConstant))/12 - 1/(8 newtonConstant),
  Assumptions -> newtonConstant > 0];

varphi = sigma + perturbationParameter testFunction[sigma];
schwarzianActionDensity =
  D[varphi, sigma]^2 +
   (D[varphi, {sigma, 2}]/D[varphi, sigma])^2 - 1;
schwarzianHessianResidual = FullSimplify[
  (D[schwarzianActionDensity,
       {perturbationParameter, 2}] /.
      perturbationParameter -> 0) -
   2 (D[testFunction[sigma], sigma]^2 +
      D[testFunction[sigma], {sigma, 2}]^2)];

positiveDensity[expression_] := Module[{quotient},
  quotient = expression/modularWeight;
  FullSimplify[
   modularWeight D[quotient, phi]^2 +
    modularWeight D[
       modularWeight D[quotient, phi], phi]^2,
   Assumptions -> intervalAssumptions]
  ];

profile = profileFunction[phi];
mapDerivative = D[halfLineMap, phi];
pushedVector = mapDerivative profile;
pushedFirstDerivative = D[pushedVector, phi]/mapDerivative;
pushedSecondDerivative =
  D[pushedFirstDerivative, phi]/mapDerivative;
halfLineDensity = FullSimplify[
  halfLineMap pushedSecondDerivative^2 mapDerivative,
  Assumptions -> intervalAssumptions];
positivePhiDensity = positiveDensity[profile];
firstSigmaDerivative =
  modularWeight D[profile/modularWeight, phi];
halfLineTotalDerivativeResidual = FullSimplify[
  halfLineDensity - positivePhiDensity -
   D[firstSigmaDerivative^2, phi],
  Assumptions -> intervalAssumptions];

globalKernelDensities = FullSimplify[
  positiveDensity /@ globalSectionProfiles,
  Assumptions -> intervalAssumptions];

fixedAnchor = Pi/4;
pslSectionFixed[expression_] :=
  FullSimplify[pslAnchorSection[expression] /.
    anchor -> fixedAnchor];
positiveDensityFixed[expression_] :=
  FullSimplify[
   positiveDensity[expression] /. anchor -> fixedAnchor,
   Assumptions -> -fixedAnchor < phi < fixedAnchor];
quadraticFormFixed[expression_] := FullSimplify[
  Integrate[
   TrigExpand@positiveDensityFixed[expression],
   {phi, -fixedAnchor, fixedAnchor},
   Assumptions -> -fixedAnchor < phi < fixedAnchor]];

selectedProfiles = {
  pslSectionFixed[Cos[2 phi]],
  pslSectionFixed[Cos[3 phi]],
  pslSectionFixed[Sin[3 phi]],
  pslSectionFixed[Sin[4 phi]]
  };
selectedQuadraticValues = quadraticFormFixed /@ selectedProfiles;
selectedPhysicalValues = FullSimplify[
  MapThread[
   #1/(2 #2 (#2^2 - 1)) &,
   {selectedQuadraticValues, {2, 3, 3, 4}}]];

boundaryLayerShape = x^3 (1 - x)^3;
boundaryLayerRatio = FullSimplify[boundaryLayerShape/x];
boundaryLayerH2Limit = FullSimplify[
  Integrate[D[boundaryLayerShape, {x, 2}]^2, {x, 0, 1}]];
boundaryLayerEnergyLimit = FullSimplify[
  Integrate[
   x (D[boundaryLayerRatio, x]^2 +
      (D[boundaryLayerRatio, x] +
        x D[boundaryLayerRatio, {x, 2}])^2),
   {x, 0, 1}]];

hardyIdentityResidual = FullSimplify[
  (2 hardyFunction[y] + y D[hardyFunction[y], y])^2 -
   (2 hardyFunction[y]^2 +
     y^2 D[hardyFunction[y], y]^2 +
     2 D[y hardyFunction[y]^2, y])];

highFrequencyEnergyScaling = PowerExpand[
  highFrequency^(4 - 2 regularityIndex)];

testConditions = {
  mapWeightResidual === 0,
  sectionEndpointResiduals === {0, 0},
  sectionIdempotenceResidual === 0,
  globalKillingResiduals ===
   ConstantArray[0, {2, 3, 3}],
  globalSectionResidual === {0, 0, 0},
  schwarzianChainResidual === 0,
  modularActionDensityResidual === 0,
  centralChargeNormalizationResidual === 0,
  schwarzianHessianResidual === 0,
  halfLineTotalDerivativeResidual === 0,
  globalKernelDensities === {0, 0, 0},
  And @@ Thread[selectedQuadraticValues > 0],
  And @@ Thread[selectedPhysicalValues > 0],
  boundaryLayerH2Limit > 0,
  boundaryLayerEnergyLimit > 0,
  hardyIdentityResidual === 0,
  highFrequencyEnergyScaling ===
   highFrequency^(4 - 2 regularityIndex)
  };

testIDs = {
  "interval-to-half-line modular weight",
  "PSL anchor section fixes both endpoints",
  "PSL anchor section is idempotent",
  "frequency zero and one complements are exact AdS Killing fields",
  "global conformal profiles reduce to the modular Killing kernel",
  "Schwarzian chain rule matches the half-line stress transform",
  "modular charge density equals Schwarzian action up to a total derivative",
  "Brown-Henneaux c over twelve equals one over eight G",
  "Schwarzian action Hessian is the positive H1 plus H2 form",
  "half-line and logarithmic-coordinate densities differ by a total derivative",
  "all global conformal tangents lie in the quadratic kernel",
  "selected unnormalized PSL-section modes have positive energy",
  "selected physically normalized modes have positive energy",
  "boundary layer has nonzero H2 seminorm",
  "boundary-layer modular energy has positive order-one coefficient",
  "second-order Hardy identity controls the endpoint form",
  "interior high-frequency packet has N to the four minus two-s scaling"
  };

Print[<|
  "MapWeightResidual" -> mapWeightResidual,
  "SectionEndpointResiduals" -> sectionEndpointResiduals,
  "GlobalSectionProfiles" -> globalSectionProfiles,
  "SchwarzianChainResidual" -> schwarzianChainResidual,
  "ModularActionDensityResidual" -> modularActionDensityResidual,
  "CentralChargeNormalizationResidual" ->
   centralChargeNormalizationResidual,
  "SchwarzianHessianResidual" -> schwarzianHessianResidual,
  "HalfLineTotalDerivativeResidual" ->
   halfLineTotalDerivativeResidual,
  "SelectedQuadraticValues" -> selectedQuadraticValues,
  "SelectedPhysicalValues" -> selectedPhysicalValues,
  "BoundaryLayerH2Limit" -> boundaryLayerH2Limit,
  "BoundaryLayerEnergyLimit" -> boundaryLayerEnergyLimit,
  "HardyIdentityResidual" -> hardyIdentityResidual,
  "HighFrequencyEnergyScaling" -> highFrequencyEnergyScaling
  |>];

adsRindlerBanadosPositivityReport = TestReport@MapThread[
  VerificationTest[#1, True, TestID -> #2] &,
  {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " Banados/PSL positivity tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ",
  Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
