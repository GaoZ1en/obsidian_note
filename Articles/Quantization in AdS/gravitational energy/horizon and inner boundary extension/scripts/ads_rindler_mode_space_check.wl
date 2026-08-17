(* ::Package:: *)

(*
  Finite Brown--Henneaux mode-space probe on the a=Pi/4 RT geodesic.

  The normalized right-moving tower is generated from the (2,0) primary by

    zeta_n = sqrt(6/(n! (n+3)!)) ad_{xi_-1}^n zeta_0.

  For a pure diffeomorphism, the extremal-gauge normal value is
  v_perp=-zeta_perp.  The area/edge part of the section-change cocycle is
  controlled by the Jacobi bilinear form

    J_mn = integral du [(D_u v_m)^* . eta . D_u v_n
                        + v_m^* . eta . v_n].

  The script computes the n=0,1 matrix, checks Hermiticity, positivity of this
  finite block, and exact endpoint indicial coefficients.  It also checks the
  cross-frequency fixed-anchor counterexample and the explicit projection
  onto the codimension-two t=0 endpoint kernel.  It does not identify the
  overall project Upsilon normalization without a separate one-mode
  calibration.
*)

ClearAll["Global`*"];

$Assumptions = Element[{t, r, phi, geodesicU}, Reals] && r > 0;

coordinates = {t, r, phi};
metric = DiagonalMatrix[{-(1 + r^2), 1/(1 + r^2), r^2}];

lieBracket[x_, y_] := Table[
   FullSimplify[
    Sum[x[[a]] D[y[[mu]], coordinates[[a]]] -
      y[[a]] D[x[[mu]], coordinates[[a]]], {a, 3}]
    ],
   {mu, 3}];

modeAmplitude = Sqrt[3 gNewton]/3;
primaryGaugeVector = {
   I modeAmplitude Exp[-2 I (t - phi)] r^4/(1 + r^2)^2,
   -modeAmplitude Exp[-2 I (t - phi)] r (3 + 2 r^2)/(1 + r^2),
   -I modeAmplitude Exp[-2 I (t - phi)] (3 + r^2)/(1 + r^2)
   };

adsFactor = Sqrt[1 + r^2];
loweringKilling = 1/2 Exp[-I (t - phi)] {
    r/adsFactor,
    I adsFactor,
    -adsFactor/r
    };

rawDescendant[0] = primaryGaugeVector;
rawDescendant[n_Integer?Positive] := rawDescendant[n] =
  lieBracket[loweringKilling, rawDescendant[n - 1]];
normalization[n_Integer?NonNegative] := Sqrt[6/(n! (n + 3)!)];
gaugeMode[n_Integer?NonNegative] := FullSimplify[
   normalization[n] rawDescendant[n]
   ];

rtRadius = Sqrt[Cosh[2 geodesicU]];
rtAngle = ArcTan[Tanh[geodesicU]];
rtRules = {t -> 0, r -> rtRadius, phi -> rtAngle};
metricOnRt = FullSimplify[metric /. rtRules];

normalTime = {1/Sqrt[1 + rtRadius^2], 0, 0};
normalSpace = {
   0,
   Sqrt[2] Cosh[geodesicU]/rtRadius,
   -Sqrt[2] Sinh[geodesicU]/rtRadius^2
   };
normalFrame = {normalTime, normalSpace};
normalMetric = DiagonalMatrix[{-1, 1}];

normalUpper[n_Integer?NonNegative] := normalUpper[n] = FullSimplify[
   normalMetric . Table[
     normalFrame[[a]] . metricOnRt . (gaugeMode[n] /. rtRules),
     {a, 2}],
   Assumptions -> Element[geodesicU, Reals] && gNewton > 0
   ];
extremalNormal[n_Integer?NonNegative] := -normalUpper[n];

conjugateReal[expression_] := FullSimplify[
   ComplexExpand[Conjugate[expression]],
   Assumptions -> Element[geodesicU, Reals] && gNewton > 0
   ];

jacobiDensity[m_Integer?NonNegative, n_Integer?NonNegative] :=
  jacobiDensity[m, n] = FullSimplify[
    conjugateReal[D[extremalNormal[m], geodesicU]] . normalMetric .
      D[extremalNormal[n], geodesicU] +
     conjugateReal[extremalNormal[m]] . normalMetric . extremalNormal[n],
    Assumptions -> Element[geodesicU, Reals] && gNewton > 0
    ];

modeRange = Range[0, 1];

(* Tanh[u]=x rationalizes every entry for these finite descendants. *)
rationalizedDensity[m_, n_] := FullSimplify[
   TrigToExp[jacobiDensity[m, n]] /.
     {
      Exp[geodesicU] -> Sqrt[(1 + x)/(1 - x)],
      Exp[-geodesicU] -> Sqrt[(1 - x)/(1 + x)]
      } /. gNewton -> 1,
   Assumptions -> -1 < x < 1
   ];

numericJacobiEntry[m_, n_] := NIntegrate[
   Evaluate[jacobiDensity[m, n] /. gNewton -> 1],
   {geodesicU, -20, 20},
   WorkingPrecision -> 40, AccuracyGoal -> 16, PrecisionGoal -> 16,
   Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
   ];

jacobiMatrix = Table[
   numericJacobiEntry[m, n], {m, modeRange}, {n, modeRange}];
hermiticityResidual = Chop[jacobiMatrix - ConjugateTranspose[jacobiMatrix],
   10^-14];
jacobiEigenvalues = Eigenvalues[N[jacobiMatrix, 30]];
minimumJacobiEigenvalue = Min[Re[jacobiEigenvalues]];

(* A real mode A Cos[m phi]+B Sin[m phi] fixes both t=0 interval anchors
   phi=+-a only when the 2x2 endpoint-value matrix has zero determinant.
   For a=Pi/4 this selects even physical frequency m. *)
anchorValueMatrix[physicalMode_] := {
   {Cos[physicalMode Pi/4], Sin[physicalMode Pi/4]},
   {Cos[physicalMode Pi/4], -Sin[physicalMode Pi/4]}
   };
anchorDeterminant[physicalMode_] := FullSimplify[
   Det[anchorValueMatrix[physicalMode]]];
primaryAnchorDeterminant = anchorDeterminant[2];
firstDescendantAnchorDeterminant = anchorDeterminant[3];
oddModeEndpointNorm = FullSimplify[
   Total[(anchorValueMatrix[3] . {phaseCos, phaseSin})^2]];
nextOddModeEndpointNorm = FullSimplify[
   Total[(anchorValueMatrix[5] . {phaseCos, phaseSin})^2]];

anchorA = Pi/4;
fixedAnchorCounterexample[angle_] := Cos[3 angle] - Cos[5 angle];
counterexampleEndpoints = FullSimplify[
   {fixedAnchorCounterexample[anchorA],
    fixedAnchorCounterexample[-anchorA]}];

endpointMap[function_] := FullSimplify[
   {function /. phi -> anchorA, function /. phi -> -anchorA}];
anchorProjection[function_] := FullSimplify[
   function
    + Total[endpointMap[function]]/2 Cos[4 phi]
    - Subtract @@ endpointMap[function]/2 Sin[2 phi]];
projectionProbe = phaseCos Cos[3 phi] + phaseSin Sin[5 phi];
projectedProbe = anchorProjection[projectionProbe];
projectedProbeEndpoints = FullSimplify[endpointMap[projectedProbe]];
projectionIdempotenceResidual = FullSimplify[
   anchorProjection[projectedProbe] - projectedProbe];

(* Exact coefficients of the predicted e^-2|u| density tails. *)
rightDensityTails = Table[
   Block[{$Assumptions = True}, FullSimplify[
     Limit[Exp[2 geodesicU] jacobiDensity[m, n] /. gNewton -> 1,
      geodesicU -> Infinity]]],
   {m, modeRange}, {n, modeRange}];
leftDensityTails = Table[
   Block[{$Assumptions = True}, FullSimplify[
     Limit[Exp[-2 geodesicU] jacobiDensity[m, n] /. gNewton -> 1,
      geodesicU -> -Infinity]]],
   {m, modeRange}, {n, modeRange}];

testConditions = {
   hermiticityResidual === ConstantArray[0, {2, 2}],
   Max[Abs[Im[jacobiEigenvalues]]] < 10^-14,
   minimumJacobiEigenvalue > 0,
   primaryAnchorDeterminant === 0,
   firstDescendantAnchorDeterminant =!= 0,
   oddModeEndpointNorm === phaseCos^2 + phaseSin^2,
   nextOddModeEndpointNorm === phaseCos^2 + phaseSin^2,
   counterexampleEndpoints === {0, 0},
   projectedProbeEndpoints === {0, 0},
   projectionIdempotenceResidual === 0,
   And @@ Flatten[Map[FreeQ[#, Indeterminate | ComplexInfinity] &,
       rightDensityTails, {2}]],
   And @@ Flatten[Map[FreeQ[#, Indeterminate | ComplexInfinity] &,
       leftDensityTails, {2}]]
   };

testIDs = {
   "finite Jacobi mode matrix is Hermitian",
   "finite Jacobi mode matrix has real spectrum",
   "finite two-mode Jacobi block is positive definite",
   "physical m=2 mode has a fixed-anchor real quadrature",
   "physical m=3 mode has no fixed-anchor real quadrature",
   "normalized m=3 phase has a uniform endpoint obstruction",
   "normalized m=5 phase has the same endpoint obstruction",
   "m=3 and m=5 cancel across frequencies at both anchors",
   "explicit anchor projection lands in the endpoint kernel",
   "explicit anchor projection is idempotent",
   "right density tails have finite exact e^-2u coefficients",
   "left density tails have finite exact e^2u coefficients"
   };

Print["Jacobi matrix (G=1): ", MatrixForm[N[jacobiMatrix, 18]]];
Print["Jacobi eigenvalues: ", N[jacobiEigenvalues, 18]];
Print["anchor determinants for physical m=2,3: ",
 {primaryAnchorDeterminant, firstDescendantAnchorDeterminant}];
Print["exact right density coefficients: ", rightDensityTails];
Print["exact left density coefficients: ", leftDensityTails];

adsRindlerModeSpaceTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
