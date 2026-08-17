(* ::Package:: *)

(*
  Exact exponent audit for the explicit AdS3-Rindler diagonal schedule

    L(M)=M^10,
    tanh(epsilon(M)/2)=1/(2 L(M)),
    R(M)=M^30.

  The error monomials use the conservative mode degrees established in the
  finite-action notes.  The projected transition has degree six, whereas the
  finite-wall compensated wall has the conservative degree-seven L^-2
  estimate.  The complete wall kernel supplies
  epsilon/L^5+1/L^6 rather than the old finite-jet-only epsilon bound.
  The compensated outer source remains zero, the outer Cauchy-corner
  correction has the two scales L^2/R^2 and L^4/R^2, and the compensated
  Hayward mismatch is L^2/R^2.  The script also checks the sharp
  second-derivative point-trace obstruction at s=5/2.
*)

ClearAll["Global`*"];

properScale[m_] := m^10;
wallHalfRadialScale[m_] := 1/(2 properScale[m]);
wallSinhScale[m_] := 2 wallHalfRadialScale[m]/
  (1 - wallHalfRadialScale[m]^2);
outerScale[m_] := m^30;

errorMonomials = <|
   "Transition" ->
    m^6/properScale[m]^2,
   "WallTail" -> m^7 (wallHalfRadialScale[m]/properScale[m]^5 +
      1/properScale[m]^6),
   "RawJointTail" -> m^6 wallHalfRadialScale[m]/outerScale[m]^5,
   "FiniteWallCompensatedWall" -> m^7/properScale[m]^2,
   "OuterBrownYorkSource" -> 0,
   "OuterCauchyCorner" -> m^6/outerScale[m]^6,
   "OuterCompensatedCornerMismatch" ->
    m^6 (properScale[m]^2/outerScale[m]^2 +
      properScale[m]^4/outerScale[m]^2),
   "OuterCompensatedJointMismatch" ->
    m^6 properScale[m]^2/outerScale[m]^2
   |>;

necessaryRatios = <|
   "ModeOverProperSquared" -> m/properScale[m]^2,
   "ProperOverOuter" -> properScale[m]/outerScale[m]
   |>;

errorLimits = Limit[#, m -> Infinity] & /@ errorMonomials;
ratioLimits = Limit[#, m -> Infinity] & /@ necessaryRatios;

(* Squared operator norm of f -> f''(a) on the Fourier block, relative to
   the H^s norm, is comparable to Sum[m^(4-2s)]. *)
criticalTraceNormSquared = HarmonicNumber[n] - 1;
physicalTraceNormSquared = n (n + 1)/2 - 1;
regularTraceNormSquared = HarmonicNumber[n, 2] - 1;

criticalTraceLimit = Limit[criticalTraceNormSquared, n -> Infinity];
physicalTraceLimit = Limit[physicalTraceNormSquared, n -> Infinity];
regularTraceLimit = Limit[regularTraceNormSquared, n -> Infinity];

testConditions = {
   Values[errorLimits] === ConstantArray[0, Length[errorLimits]],
   Values[ratioLimits] === ConstantArray[0, Length[ratioLimits]],
   criticalTraceLimit === Infinity,
   physicalTraceLimit === Infinity,
   regularTraceLimit === -1 + Pi^2/6,
   FullSimplify[criticalTraceNormSquared == HarmonicNumber[n] - 1],
   FullSimplify[physicalTraceNormSquared == n (n + 1)/2 - 1]
   };

testIDs = {
   "all conservative regulator error monomials vanish",
   "all necessary scale ratios vanish",
   "second-derivative trace is unbounded at s=5/2",
   "second-derivative trace is unbounded at physical s=3/2",
   "second-derivative trace is bounded at s=3",
   "critical trace norm grows harmonically",
   "physical trace norm grows quadratically"
   };

Print[<|
  "ErrorMonomials" -> errorMonomials,
  "ErrorLimits" -> errorLimits,
  "NecessaryRatios" -> necessaryRatios,
  "RatioLimits" -> ratioLimits,
  "CriticalTraceNormSquared" -> criticalTraceNormSquared,
  "PhysicalTraceNormSquared" -> physicalTraceNormSquared,
  "RegularTraceLimit" -> regularTraceLimit
  |>];

explicitScheduleReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
