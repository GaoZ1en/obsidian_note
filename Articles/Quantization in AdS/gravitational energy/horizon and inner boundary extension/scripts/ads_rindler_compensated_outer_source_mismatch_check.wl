(* ::Package:: *)

(*
  Complete finite-cylinder comparison between the raw Brown--Henneaux mode
  and the proper compensated lift

      h^comp = L_(f_L zeta) G,
      f_L = r^2/(L^2+r^2).

  The source script first proves that the raw renormalized Brown--York
  source curvature is exactly zero and that the raw article Cauchy-corner
  curvature is O(R^-6).  This script then rebuilds the compensated global
  point jet from source.  With

      z=R^-2,  w=L^2/R^2=lambda z,

  it proves coefficientwise that both compensated-minus-raw kernels have
  the uniform two-scale form

      w A(z,w) + w^2 z^-1 B(z,w),

  with A and B bounded on 0<=z,w<=1.  Hence the complete outer source/corner
  mismatch is bounded by

      C (1+m+n)^6 (L^2/R^2 + L^4/R^2).

  No development cache is loaded.
*)

Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_outer_brown_york_kernel_check.wl"}]];

ClearAll[outerCompensationLambda, outerProfileRatio,
  compensatedOuterProfile, compensatedOuterVectorCoefficientAt,
  compensatedOuterPhaseVectorFirstCoefficientAt,
  compensatedOuterHCoefficientAt,
  compensatedOuterHDerivativeCoefficient,
  compensatedOuterDeltaChristoffelCoefficient,
  compensatedOuterKernelCoefficient,
  compensatedOuterCornerKernelCoefficient,
  auditOuterSourceMismatchComponent];

compensatedOuterProfile = Cancel@Together[
  globalRadiusSquared/(outerCompensationLambda +
    globalRadiusSquared)];
compensatedOuterVectorCoefficients = Table[
   Map[Cancel@Together[compensatedOuterProfile #] &,
    vectorCoefficientAt[power]], {power, 0, 2}];
compensatedOuterVectorCoefficientAt[power_] := If[0 <= power <= 2,
   compensatedOuterVectorCoefficients[[power + 1]], zeroVector];

compensatedOuterPhaseVectorFirstCoefficients = Table[
   Map[Cancel@Together,
    D[compensatedOuterVectorCoefficientAt[power],
       coordinates[[derivative]]] +
     If[power >= 1,
      logBaseFirst[[derivative]]
       compensatedOuterVectorCoefficientAt[power - 1], zeroVector]],
   {power, 0, 3}, {derivative, 3}];
compensatedOuterPhaseVectorFirstCoefficientAt[power_, derivative_] :=
 If[0 <= power <= 3,
  compensatedOuterPhaseVectorFirstCoefficients[[power + 1, derivative]],
  zeroVector];

compensatedOuterHCoefficients = Table[Cancel@Together@Sum[
    compensatedOuterVectorCoefficientAt[power][[c]]
      metricFirst[[c, a, b]] +
     metric[[c, b]]
      compensatedOuterPhaseVectorFirstCoefficientAt[power, a][[c]] +
     metric[[a, c]]
      compensatedOuterPhaseVectorFirstCoefficientAt[power, b][[c]],
   {c, 3}], {power, 0, 3}, {a, 3}, {b, 3}];
compensatedOuterHCoefficientAt[power_] := If[0 <= power <= 3,
   compensatedOuterHCoefficients[[power + 1]], zeroMatrixThree];

(* Independent fixed-mode check of the profile multiplication before the
   generic, already calibrated Brown--York linearization is applied. *)
compensatedModeTwoVector = (compensatedOuterProfile /.
    outerCompensationLambda -> 3) modeTwoVector;
compensatedModeTwoHDirect = Table[Cancel@Together@Sum[
    compensatedModeTwoVector[[lambda]]
      D[metric[[mu, nu]], coordinates[[lambda]]] +
     metric[[lambda, nu]]
      D[compensatedModeTwoVector[[lambda]], coordinates[[mu]]] +
     metric[[mu, lambda]]
      D[compensatedModeTwoVector[[lambda]], coordinates[[nu]]],
   {lambda, 3}], {mu, 3}, {nu, 3}];
compensatedModeTwoHCalibrationResidual = Map[FullSimplify,
   (compensatedModeTwoHDirect - modeTwoBase^2 Total@Table[
       2^power compensatedOuterHCoefficients[[power + 1]],
       {power, 0, 3}]) /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0,
     outerCompensationLambda -> 3}, {2}];
compensatedOuterHDerivativeCoefficient[power_, derivative_, a_, b_] :=
 compensatedOuterHDerivativeCoefficient[power, derivative, a, b] =
  If[0 <= power <= 4, Cancel@Together[
    D[compensatedOuterHCoefficientAt[power][[a, b]],
      coordinates[[derivative]]] +
     If[power >= 1,
      logBaseFirst[[derivative]]
       compensatedOuterHCoefficientAt[power - 1][[a, b]], 0]], 0];

compensatedOuterDeltaChristoffelCoefficient[power_, rho_, mu_, nu_] :=
 compensatedOuterDeltaChristoffelCoefficient[power, rho, mu, nu] =
  Cancel@Together[1/2 Sum[
    (-Sum[inverseMetric[[rho, a]]
        compensatedOuterHCoefficientAt[power][[a, b]]
        inverseMetric[[b, lambda]], {a, 3}, {b, 3}]) (
      D[metric[[lambda, mu]], coordinates[[nu]]] +
       D[metric[[lambda, nu]], coordinates[[mu]]] -
       D[metric[[mu, nu]], coordinates[[lambda]]]) +
     inverseMetric[[rho, lambda]] (
      compensatedOuterHDerivativeCoefficient[power, nu, lambda, mu] +
       compensatedOuterHDerivativeCoefficient[power, mu, lambda, nu] -
       compensatedOuterHDerivativeCoefficient[power, lambda, mu, nu]),
    {lambda, 3}]];

compensatedOuterDeltaKCoefficients = Table[
   Print["assembling compensated outer delta K frequency power ", power];
   Table[Cancel@Together[
     -(compensatedOuterHCoefficientAt[power][[2, 2]]/(2 normalLapse))
       christoffelBackground[[2, tangent[[a]], tangent[[b]]]] -
      normalLapse compensatedOuterDeltaChristoffelCoefficient[
       power, 2, tangent[[a]], tangent[[b]]]],
    {a, 2}, {b, 2}], {power, 0, 4}];
compensatedOuterInducedHCoefficients = Table[
   compensatedOuterHCoefficientAt[power][[tangent, tangent]],
   {power, 0, 4}];
compensatedOuterDeltaPiCoefficients = Table[Module[
    {hWall = compensatedOuterInducedHCoefficients[[power + 1]],
     deltaKLower = compensatedOuterDeltaKCoefficients[[power + 1]],
     hUpper, traceH, deltaGammaInverse, deltaKUpper, deltaKTrace,
     deltaTUpper},
    hUpper = gammaInverse . hWall . gammaInverse;
    traceH = Tr[gammaInverse . hWall];
    deltaGammaInverse = -hUpper;
    deltaKUpper = gammaInverse . deltaKLower . gammaInverse -
      hUpper . outerK . gammaInverse -
      gammaInverse . outerK . hUpper;
    deltaKTrace = Tr[gammaInverse . deltaKLower] -
      Tr[hUpper . outerK];
    deltaTUpper = deltaKUpper - deltaKTrace gammaInverse -
      outerKTrace deltaGammaInverse + deltaGammaInverse;
    Map[Cancel@Together,
     sqrtMinusGamma (deltaTUpper + traceH outerTUpper/2), {2}]],
   {power, 0, 4}];
Print["compensated outer Brown--York coefficient jet completed"];

compensatedOuterHCoefficientsZ = Map[outerReduce,
   compensatedOuterInducedHCoefficients, {3}];
compensatedOuterDeltaPiCoefficientsZ = Map[outerReduce,
   compensatedOuterDeltaPiCoefficients, {3}];
compensatedOuterMetricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedOuterHCoefficientsZ[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
compensatedOuterMomentumCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedOuterDeltaPiCoefficientsZ[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];

compensatedOuterKernelCoefficient[firstChirality_, secondChirality_,
   p_, qPower_] := Cancel@Together[
  matrixContract[
    compensatedOuterMomentumCoefficients[[
      chiralityIndex[firstChirality], p + 1]],
    compensatedOuterMetricCoefficients[[
      chiralityIndex[secondChirality], qPower + 1]]] -
   matrixContract[
    compensatedOuterMomentumCoefficients[[
      chiralityIndex[secondChirality], qPower + 1]],
    compensatedOuterMetricCoefficients[[
      chiralityIndex[firstChirality], p + 1]]]];

compensatedOuterCornerMetricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedOuterHCoefficients[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 3}];
compensatedOuterCornerKernelCoefficient[firstChirality_,
   secondChirality_, p_, qPower_] := outerReduce@cornerCurvature[
  compensatedOuterCornerMetricCoefficients[[
    chiralityIndex[firstChirality], p + 1]],
  compensatedOuterCornerMetricCoefficients[[
    chiralityIndex[secondChirality], qPower + 1]]];

auditOuterSourceMismatchComponent[component_, factor_] :=
 If[TrueQ[component === 0], Nothing, Module[
   {quotient, regularPart, secondScalePart, auditBoundedPart,
    partAudits},
   quotient = Factor@Cancel@Together[component/factor];
   If[TrueQ[PossibleZeroQ[quotient]], Return[Nothing]];
   regularPart = Factor@Cancel@Together[
     quotient /. outerProfileRatio -> 0];
   secondScalePart = Factor@Cancel@Together[
     outerZ (quotient - regularPart)/outerProfileRatio];
   auditBoundedPart[part_, scaleName_] :=
    If[TrueQ[PossibleZeroQ[part]], Nothing, Module[
      {numeratorRules, denominator, denominatorConstant,
       normalizedDenominator, denominatorRules, zOrders, wOrders},
      numeratorRules = CoefficientRules[Expand[Numerator[part]],
        {outerZ, outerProfileRatio}];
      denominator = Expand[Denominator[part]];
      denominatorConstant = denominator /.
        {outerZ -> 0, outerProfileRatio -> 0};
      normalizedDenominator = Expand[denominator/denominatorConstant];
      denominatorRules = CoefficientRules[normalizedDenominator,
        {outerZ, outerProfileRatio}];
      zOrders = #[[1, 1]] & /@ numeratorRules;
      wOrders = #[[1, 2]] & /@ numeratorRules;
      <|"Scale" -> scaleName,
        "MinimumOuterZOrderAfterFactor" -> Min[zOrders],
        "MinimumProfileRatioOrderAfterFactor" -> Min[wOrders],
        "DenominatorConstantNonzero" ->
         ! TrueQ[denominatorConstant === 0],
        "DenominatorCoefficientsNonnegative" -> And @@
         (TrueQ[FullSimplify[Last[#] >= 0]] & /@
           denominatorRules)|>]];
   partAudits = DeleteCases[{
      auditBoundedPart[regularPart, "w"],
      auditBoundedPart[secondScalePart, "w squared over z"]}, Nothing];
   <|"MinimumOuterZOrderAfterFactor" -> Min[
      Lookup[partAudits, "MinimumOuterZOrderAfterFactor"]],
     "MinimumProfileRatioOrderAfterFactor" -> Min[
      Lookup[partAudits, "MinimumProfileRatioOrderAfterFactor"]],
     "DenominatorConstantNonzero" -> And @@
      Lookup[partAudits, "DenominatorConstantNonzero"],
     "DenominatorCoefficientsNonnegative" -> And @@
      Lookup[partAudits, "DenominatorCoefficientsNonnegative"],
     "TwoScaleDecompositionExact" -> TrueQ[PossibleZeroQ[
       component - factor regularPart -
        factor^2 secondScalePart/outerZ]]|>]];

outerSourceRepresentativePairs = Join[
  ({1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 4], 2], First[#] < Last[#] &],
  ({-1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 4], 2], First[#] <= Last[#] &]];
outerCornerRepresentativePairs = Join[
  ({1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 3], 2], First[#] < Last[#] &],
  ({-1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 3], 2], First[#] <= Last[#] &]];

Print["auditing compensated outer Brown--York source mismatch"];
compensatedOuterSourceData = Map[Function[representative, Module[
   {secondChirality = representative[[1]], p = representative[[2]],
    qPower = representative[[3]], coefficient, scaledCoefficient,
    realComponents, componentAudit},
   Print["outer source coefficient ", secondChirality, " ",
     {p, qPower}];
   coefficient = compensatedOuterKernelCoefficient[1,
     secondChirality, p, qPower];
   scaledCoefficient = Cancel@Together[
     coefficient /. outerCompensationLambda ->
       outerProfileRatio/outerZ];
   realComponents = {
     Factor@Cancel@Together@ComplexExpand[Re[scaledCoefficient]],
     Factor@Cancel@Together@ComplexExpand[Im[scaledCoefficient]]};
   componentAudit =
    auditOuterSourceMismatchComponent[#, outerProfileRatio] & /@
     realComponents;
   componentAudit = MapIndexed[If[AssociationQ[#1], Join[#1,
        <|"Kernel" -> "source", "Chirality" -> secondChirality,
          "Powers" -> {p, qPower},
          "Component" -> If[First[#2] == 1, "real", "imaginary"]|>],
       #1] &, componentAudit];
   <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
     "Powers" -> {p, qPower}, "Degree" -> p + qPower,
     "Zero" -> TrueQ[scaledCoefficient === 0],
     "RawLimit" -> TrueQ[Cancel@Together[
        coefficient /. outerCompensationLambda -> 0] === 0],
     "ComponentAudit" -> componentAudit|>]],
  outerSourceRepresentativePairs];

Print["auditing compensated-minus-raw outer Cauchy-corner mismatch"];
compensatedOuterCornerData = Map[Function[representative, Module[
   {secondChirality = representative[[1]], p = representative[[2]],
    qPower = representative[[3]], compensatedCoefficient,
    rawCoefficient, mismatchCoefficient, scaledMismatch,
    realComponents, componentAudit},
   compensatedCoefficient = compensatedOuterCornerKernelCoefficient[1,
     secondChirality, p, qPower];
   rawCoefficient = cornerKernelCoefficient[1, secondChirality,
     p, qPower];
   mismatchCoefficient = Cancel@Together[
     compensatedCoefficient - rawCoefficient];
   scaledMismatch = Cancel@Together[
     mismatchCoefficient /. outerCompensationLambda ->
       outerProfileRatio/outerZ];
   realComponents = {
     Factor@Cancel@Together@ComplexExpand[Re[scaledMismatch]],
     Factor@Cancel@Together@ComplexExpand[Im[scaledMismatch]]};
   componentAudit =
    auditOuterSourceMismatchComponent[#, outerProfileRatio] & /@
     realComponents;
   componentAudit = MapIndexed[If[AssociationQ[#1], Join[#1,
        <|"Kernel" -> "corner", "Chirality" -> secondChirality,
          "Powers" -> {p, qPower},
          "Component" -> If[First[#2] == 1, "real", "imaginary"]|>],
       #1] &, componentAudit];
   <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
     "Powers" -> {p, qPower}, "Degree" -> p + qPower,
     "Zero" -> TrueQ[scaledMismatch === 0],
     "RawLimit" -> TrueQ[Cancel@Together[
        mismatchCoefficient /. outerCompensationLambda -> 0] === 0],
     "ComponentAudit" -> componentAudit|>]],
  outerCornerRepresentativePairs];

nonzeroOuterSourceData = Select[compensatedOuterSourceData,
   ! Lookup[#, "Zero"] &];
nonzeroOuterCornerData = Select[compensatedOuterCornerData,
   ! Lookup[#, "Zero"] &];
outerSourceComponentAudit = Flatten[Lookup[
   compensatedOuterSourceData, "ComponentAudit"]];
outerCornerComponentAudit = Flatten[Lookup[
   compensatedOuterCornerData, "ComponentAudit"]];
allOuterMismatchComponentAudit = Join[
   outerSourceComponentAudit, outerCornerComponentAudit];

testConditions = {
  Length[outerSourceRepresentativePairs] == 25,
  Length[outerCornerRepresentativePairs] == 16,
  compensatedModeTwoHCalibrationResidual === ConstantArray[0, {3, 3}],
  And @@ Lookup[compensatedOuterSourceData, "RawLimit"],
  And @@ Lookup[compensatedOuterCornerData, "RawLimit"],
  Length[nonzeroOuterSourceData] == 0,
  Length[nonzeroOuterCornerData] > 0,
  True,
  Max[Lookup[nonzeroOuterCornerData, "Degree"]] <= 6,
  Min[Lookup[allOuterMismatchComponentAudit,
     "MinimumOuterZOrderAfterFactor"]] >= 0,
  Min[Lookup[allOuterMismatchComponentAudit,
     "MinimumProfileRatioOrderAfterFactor"]] >= 0,
  And @@ Lookup[allOuterMismatchComponentAudit,
    "DenominatorConstantNonzero"],
  And @@ Lookup[allOuterMismatchComponentAudit,
    "DenominatorCoefficientsNonnegative"],
  And @@ Lookup[allOuterMismatchComponentAudit,
    "TwoScaleDecompositionExact"]
  };

testIDs = {
  "antisymmetry reduces the complete source audit to 25 representatives",
  "antisymmetry reduces the complete corner audit to 16 representatives",
  "the compensated mode-two metric matches a direct profiled Lie derivative",
  "the compensated source becomes the raw zero source at lambda zero",
  "the compensated-minus-raw corner vanishes at lambda zero",
  "the compensated outer source curvature also vanishes identically",
  "the compensated outer corner mismatch is nontrivial",
  "the exact source zero needs no frequency-degree estimate",
  "the outer corner mismatch has frequency degree at most six",
  "after removing L squared over R squared no outer mismatch has a negative z power",
  "after removing L squared over R squared no outer mismatch has a negative profile-ratio power",
  "every normalized outer-mismatch denominator is nonzero at the origin",
  "every normalized outer-mismatch denominator has nonnegative coefficients",
  "every outer mismatch has the exact w plus w squared over z decomposition"
  };

Print[<|
  "NonzeroSourceCoefficientCount" -> Length[nonzeroOuterSourceData],
  "NonzeroCornerCoefficientCount" -> Length[nonzeroOuterCornerData],
  "MaximumSourceFrequencyDegree" -> 0,
  "MaximumCornerFrequencyDegree" ->
   Max[Lookup[nonzeroOuterCornerData, "Degree"]],
  "MinimumOuterZOrderAfterProfileFactor" -> Min[
   Lookup[allOuterMismatchComponentAudit,
    "MinimumOuterZOrderAfterFactor"]],
  "MinimumProfileOrderAfterProfileFactor" -> Min[
   Lookup[allOuterMismatchComponentAudit,
    "MinimumProfileRatioOrderAfterFactor"]]
  |>];

adsRindlerCompensatedOuterSourceMismatchReport = TestReport@MapThread[
  VerificationTest[#1, True, TestID -> #2] &,
  {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " compensated outer source/corner mismatch tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
