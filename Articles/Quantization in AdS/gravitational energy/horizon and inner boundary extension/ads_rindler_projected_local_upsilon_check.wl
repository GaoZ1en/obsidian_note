(* ::Package:: *)

(*
  Low-mode exact benchmark for the local Iyer--Wald part of the
  fixed-anchor section-change cocycle.

  This script deliberately separates three objects:

    1. unit-boundary real Brown--Henneaux vectors;
    2. their finite-rank fixed-anchor projection P_A;
    3. the physical symplectic normalization of the projected vectors.

  For a pure diffeomorphism h=L_zeta G and the local representative
  v=-zeta near gamma_A, h+L_v G=0.  Hence the local 2501-oriented corner
  form reduces to k_{-zeta}[L_xi L_zeta G].  The project convention has the
  opposite sign.  This file computes that local form.  Proper-completion,
  outer-wall, and anchor-layer uniformity are separate checks and are not
  inferred from this script.
*)

Get[FileNameJoin[{DirectoryName[$InputFileName], "..",
    "modular wedge corner benchmark", "modular_wedge_corner_benchmark.wl"}]];

ClearAll[localPotential, lieBracketLocal, rawDescendantLocal,
  normalizedGaugeModeLocal, unitComplexGaugeMode, unitCosineGauge,
  unitSineGauge, projectedCosineGauge, projectedSineGauge,
  localUpsilon2501Phi, localUpsilon2501X, physicalScaleSquared,
  localProjectQuadratic, localProjectBilinear,
  localUpsilon2501BilinearPhi, localUpsilon2501BilinearX];

lieBracketLocal[first_, second_] := Table[
   Together@Sum[
     first[[rho]] D[second[[mu]], coordinates[[rho]]] -
      second[[rho]] D[first[[mu]], coordinates[[rho]]],
     {rho, 3}],
   {mu, 3}];

loweringKillingLocal = 1/2 Exp[-I (t - phi)] {
    r/adsFactor,
    I adsFactor,
    -adsFactor/r
    };

rawDescendantLocal[0] = complexGaugeVector;
rawDescendantLocal[n_Integer?Positive] := rawDescendantLocal[n] =
  lieBracketLocal[loweringKillingLocal, rawDescendantLocal[n - 1]];
descendantNormalizationLocal[n_Integer?NonNegative] :=
  Sqrt[6/(n! (n + 3)!)];
normalizedGaugeModeLocal[n_Integer?NonNegative] := FullSimplify[
   descendantNormalizationLocal[n] rawDescendantLocal[n],
   Assumptions -> GNewton > 0 && r > 0];
physicalFrequencyLocal[n_Integer?NonNegative] := n + 2;
closedBoundaryAmplitudeLocal[n_Integer?NonNegative] := With[
   {m = physicalFrequencyLocal[n]},
   (-I)^(n + 1) Sqrt[2 GNewton/(m (m^2 - 1))]];

unitComplexGaugeMode[m_Integer?Positive] /; m >= 2 :=
  unitComplexGaugeMode[m] = FullSimplify[
    normalizedGaugeModeLocal[m - 2]/closedBoundaryAmplitudeLocal[m - 2],
    Assumptions -> GNewton > 0 && r > 0];
unitCosineGauge[m_Integer?Positive] /; m >= 2 :=
  unitCosineGauge[m] = FullSimplify[
    ComplexExpand[Re[unitComplexGaugeMode[m] /. GNewton -> 1]],
    Assumptions -> Element[{t, r, phi}, Reals] && r > 0];
unitSineGauge[m_Integer?Positive] /; m >= 2 :=
  unitSineGauge[m] = FullSimplify[
    -ComplexExpand[Im[unitComplexGaugeMode[m] /. GNewton -> 1]],
    Assumptions -> Element[{t, r, phi}, Reals] && r > 0];

anchorA = Pi/4;
projectedCosineGauge[m_Integer?Positive] /; m >= 2 :=
  FullSimplify[unitCosineGauge[m] + Cos[m anchorA] unitCosineGauge[4]];
projectedSineGauge[m_Integer?Positive] /; m >= 2 :=
  FullSimplify[unitSineGauge[m] - Sin[m anchorA] unitSineGauge[2]];

(* Only the tr and tphi components are needed after contraction with the
   future normal and the inner RT normal. *)
localPotential[vector_, variation_] := Module[
  {localTrace, localUpper, localDerivative, localDivergence,
   localTraceGradient, vectorDerivative, vectorDerivativeRaised,
   localConnectionVariation, localConnectionDerivativeVariation,
   chargeCoefficient, coefficient},
  localTrace = Together@Tr[inverseMetric . variation];
  localUpper = Map[Together, inverseMetric . variation . inverseMetric, {2}];
  localDerivative = Table[
    covariantDerivativeCovariantTwo[variation, derivative],
    {derivative, 3}];
  localDivergence = Table[
    Together@Sum[
      D[localUpper[[nu, rho]], coordinates[[rho]]] +
       Sum[christoffel[[nu, rho, lambda]] localUpper[[lambda, rho]] +
         christoffel[[rho, rho, lambda]] localUpper[[nu, lambda]],
        {lambda, 3}],
      {rho, 3}],
    {nu, 3}];
  localTraceGradient = Table[
    Together@Sum[inverseMetric[[mu, lambda]]
       D[localTrace, coordinates[[lambda]]], {lambda, 3}],
    {mu, 3}];
  vectorDerivative = Table[
    Together[D[vector[[nu]], coordinates[[rho]]] +
      Sum[christoffel[[nu, rho, lambda]] vector[[lambda]], {lambda, 3}]],
    {nu, 3}, {rho, 3}];
  vectorDerivativeRaised = Table[
    Together@Sum[inverseMetric[[mu, rho]] vectorDerivative[[nu, rho]],
      {rho, 3}],
    {nu, 3}, {mu, 3}];
  localConnectionVariation = Table[
    1/2 Sum[inverseMetric[[nu, beta]] (
       localDerivative[[alpha, rho, beta]] +
        localDerivative[[rho, alpha, beta]] -
        localDerivative[[beta, alpha, rho]]), {beta, 3}],
    {nu, 3}, {alpha, 3}, {rho, 3}];
  localConnectionDerivativeVariation = Table[
    -Sum[localUpper[[mu, alpha]] vectorDerivative[[nu, alpha]],
      {alpha, 3}] +
     Sum[inverseMetric[[mu, alpha]]
       localConnectionVariation[[nu, alpha, rho]] vector[[rho]],
      {alpha, 3}, {rho, 3}],
    {mu, 3}, {nu, 3}];
  chargeCoefficient[mu_, nu_] := Together[
    -localConnectionDerivativeVariation[[mu, nu]] -
     localTrace vectorDerivativeRaised[[nu, mu]]/2 +
     vector[[mu]] (localDivergence[[nu]] - localTraceGradient[[nu]])];
  coefficient[mu_, nu_] := Together[
    chargeCoefficient[mu, nu] - chargeCoefficient[nu, mu]]/(16 Pi);
  Table[coefficient[1, index], {index, {2, 3}}]
  ];

localUpsilon2501Phi[zeta_] := localUpsilon2501Phi[zeta] = Module[
  {h, modularH, potentialComponents},
  h = lieMetric[zeta];
  modularH = lieCovariantTwoTensor[xiInterval, h];
  potentialComponents = localPotential[-zeta, modularH];
  FullSimplify[
   rtLineElement futureNormalLower[[1]] (
      innerNormalLower[[2]] potentialComponents[[1]] +
       innerNormalLower[[3]] potentialComponents[[2]]) /.
     {t -> 0, r -> explicitRtRadius, GNewton -> 1},
   Assumptions -> -Pi/4 < phi < Pi/4]
  ];

localUpsilon2501X[zeta_] := Factor@FullSimplify[
   TrigExpand[localUpsilon2501Phi[zeta] /. phi -> ArcTan[x]]/(1 + x^2),
   Assumptions -> -1 < x < 1];

localUpsilon2501BilinearPhi[zetaOne_, zetaTwo_] :=
 localUpsilon2501BilinearPhi[zetaOne, zetaTwo] = Module[
  {variationOne, variationTwo, componentsOne, componentsTwo},
  variationOne = lieCovariantTwoTensor[xiInterval, lieMetric[zetaOne]];
  variationTwo = lieCovariantTwoTensor[xiInterval, lieMetric[zetaTwo]];
  componentsOne = localPotential[-zetaOne, variationTwo];
  componentsTwo = localPotential[-zetaTwo, variationOne];
  FullSimplify[
   rtLineElement futureNormalLower[[1]]/2 (
      innerNormalLower[[2]] (componentsOne[[1]] + componentsTwo[[1]]) +
       innerNormalLower[[3]] (componentsOne[[2]] + componentsTwo[[2]])) /.
     {t -> 0, r -> explicitRtRadius, GNewton -> 1},
   Assumptions -> -Pi/4 < phi < Pi/4]
  ];
localUpsilon2501BilinearX[zetaOne_, zetaTwo_] :=
  Factor@FullSimplify[
    TrigExpand[
       localUpsilon2501BilinearPhi[zetaOne, zetaTwo] /.
        phi -> ArcTan[x]]/(1 + x^2),
    Assumptions -> -1 < x < 1];

physicalScaleSquared[m_Integer?Positive] := 4/(m (m^2 - 1));
physicalScale[m_Integer?Positive] :=
  Sqrt[physicalScaleSquared[m]];
localProjectQuadratic[zeta_, m_Integer?Positive] := FullSimplify[
   -physicalScaleSquared[m] Integrate[
      localUpsilon2501X[zeta], {x, -1, 1},
      Assumptions -> -1 < x < 1],
   Assumptions -> m >= 2];
localProjectBilinear[zetaOne_, mOne_Integer?Positive, zetaTwo_,
   mTwo_Integer?Positive] := FullSimplify[
   -physicalScale[mOne] physicalScale[mTwo]
     Integrate[localUpsilon2501BilinearX[zetaOne, zetaTwo],
      {x, -1, 1}, Assumptions -> -1 < x < 1],
   Assumptions -> mOne >= 2 && mTwo >= 2];

If[!TrueQ[$ProjectedLocalUpsilonDefinitionsOnly] &&
   Environment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY"] =!= "1",

(* For c_0=-i |c_0|, the declared real quadrature built from zeta_0 and its
   complex conjugate is the unit-boundary cosine section, with
   physical scale Sqrt[2] |c_0|. *)
selectedUnitCosine = unitCosineGauge[2];
selectedDensityResidual = FullSimplify[
   physicalScaleSquared[2] localUpsilon2501X[selectedUnitCosine] -
    expectedInnerIntegrandX,
   Assumptions -> -1 < x < 1];
selectedProjectValue = localProjectQuadratic[selectedUnitCosine, 2];

projectedCosine3 = projectedCosineGauge[3];
projectedCosine3BoundaryResidual = FullSimplify@Table[
   Limit[projectedCosine3[[component]] /. {t -> 0, phi -> endpoint},
     r -> Infinity],
   {component, {1, 3}}, {endpoint, {-Pi/4, Pi/4}}];
projectedCosine3Density = localUpsilon2501X[projectedCosine3];
projectedCosine3ProjectValue = FullSimplify[
   -physicalScaleSquared[3] Integrate[
      projectedCosine3Density, {x, -1, 1},
      Assumptions -> -1 < x < 1]];

projectedLowModeValues = <|
   "Cosine2" -> localProjectQuadratic[projectedCosineGauge[2], 2],
   "Cosine3" -> projectedCosine3ProjectValue,
   "Sine3" -> localProjectQuadratic[projectedSineGauge[3], 3],
   "Sine4" -> localProjectQuadratic[projectedSineGauge[4], 4],
   "Cosine5" -> localProjectQuadratic[projectedCosineGauge[5], 5],
   "Sine5" -> localProjectQuadratic[projectedSineGauge[5], 5]
   |>;

projectedMatrixVectors = {
   projectedCosineGauge[2], projectedCosineGauge[3],
   projectedSineGauge[3], projectedSineGauge[4]};
projectedMatrixFrequencies = {2, 3, 3, 4};
projectedLocalMatrix = ConstantArray[0, {4, 4}];
Do[
 projectedLocalMatrix[[row, column]] = localProjectBilinear[
   projectedMatrixVectors[[row]], projectedMatrixFrequencies[[row]],
   projectedMatrixVectors[[column]], projectedMatrixFrequencies[[column]]];
 projectedLocalMatrix[[column, row]] = projectedLocalMatrix[[row, column]],
 {row, 4}, {column, row, 4}];
projectedMixedBlock = projectedLocalMatrix[[{3, 4}, {3, 4}]];
projectedMixedBlockDeterminant = FullSimplify[Det[projectedMixedBlock]];
projectedMixedBlockEigenvalues = FullSimplify[
   Eigenvalues[projectedMixedBlock]];

testConditions = {
   selectedDensityResidual === 0,
   selectedProjectValue === 32/105,
   projectedCosine3BoundaryResidual === ConstantArray[0, {2, 2}],
   FreeQ[projectedCosine3Density, Indeterminate | ComplexInfinity],
   Element[projectedCosine3ProjectValue, Reals],
   Values[projectedLowModeValues] === {
    32/105, 38/1155, 3/70, 32/165, 3826/45045,
    173629/450450},
   projectedLocalMatrix === Transpose[projectedLocalMatrix],
   Diagonal[projectedLocalMatrix] ===
    Values[projectedLowModeValues][[1 ;; 4]],
   projectedMixedBlockDeterminant === 128/121275,
   And @@ Thread[projectedMixedBlockEigenvalues > 0]
   };
testIDs = {
   "unit m=2 density reproduces selected physical calibration",
   "selected project-oriented local integral",
   "projected m=3 cosine fixes both anchors",
   "projected m=3 local density is finite in the open interval",
   "projected m=3 physical local quadratic value is real",
   "six corrected projected physical low-mode values",
   "projected four-mode local matrix is symmetric",
   "projected matrix diagonal matches direct quadratic values",
   "nontrivial projected mixed-block determinant",
   "four-mode local projected block is positive definite"
   };

Print[<|
  "SelectedProjectValue" -> selectedProjectValue,
  "ProjectedCosine3ProjectValue" -> projectedCosine3ProjectValue,
  "ProjectedCosine3Density" -> projectedCosine3Density,
  "ProjectedLowModeValues" -> projectedLowModeValues,
  "ProjectedLocalMatrix" -> projectedLocalMatrix,
  "ProjectedMixedBlockEigenvalues" -> projectedMixedBlockEigenvalues|>];

adsRindlerProjectedLocalUpsilonReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];

];
