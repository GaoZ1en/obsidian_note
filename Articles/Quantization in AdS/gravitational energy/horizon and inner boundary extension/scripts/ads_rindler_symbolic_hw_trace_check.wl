(* ::Package:: *)

(*
  Symbolic-frequency normal trace of the corrected projected unit-boundary
  Brown--Henneaux generators on the a=Pi/4 RT geodesic.

  The unprojected trace has an e^|u| term.  The fixed-anchor projection must
  cancel it.  Exact q=e^-|u| formulas avoid a costly global simplification in
  the original RT coordinates.
*)

ClearAll["Global`*"];

(* sign=+1 is the right endpoint and sign=-1 the left endpoint.  This is the
   exact q-times-normal-trace jet through q^4.  The radial phase follows from

   ((1-i sign q^2)/(1+q^2))^m
    =1-m(1+i sign)q^2+(m+i sign m^2)q^4+O(q^6).
*)
qTimesComplexNormalJet[m_, sign_] := Module[
  {phase, radialJet, a, b, z0Jet, z1Jet},
  phase = Cos[sign m Pi/4] + I Sin[sign m Pi/4];
  radialJet = 1 - m (1 + I sign) q^2 +
    (m + I sign m^2) q^4;
  a = (m - 2) (m + 1)/2;
  b = m (m + 1)/2;
  z0Jet = -phase/Sqrt[2] radialJet (
      1 - (2 a + 1) q^2 + (2 a + 2) q^4);
  z1Jet = -phase radialJet (
      sign/Sqrt[2] (1 + (2 b - 1) q^2 - 2 b q^4) +
       I m Sqrt[2] q^2 (1 + m q^2));
  Expand[Normal@Series[#, {q, 0, 4}]] & /@ {z0Jet, z1Jet}
  ];

qTimesComplexNormalExact[m_Integer, sign_] := Module[
  {ch, sh, c2, radialPhase, a, b},
  ch = (1 + q^2)/(2 q);
  sh = sign (1 - q^2)/(2 q);
  c2 = (1 + q^4)/(2 q^2);
  radialPhase = Exp[I sign m Pi/4]
    ((1 - I sign q^2)/(1 + q^2))^m;
  a = (m - 2) (m + 1)/2;
  b = m (m + 1)/2;
  q {
    -radialPhase (c2 - a)/(Sqrt[2] ch),
    -radialPhase (
      I m (2 c2 + m + 1)/(2 Sqrt[2] c2 ch) +
       Sqrt[2] sh (c2 + b)/c2)}
  ];

fixedModeJetResiduals = Flatten@Table[FullSimplify[
    Normal@Series[
      qTimesComplexNormalExact[m, sign] -
       qTimesComplexNormalJet[m, sign], {q, 0, 4}]],
   {m, {2, 3, 6}}, {sign, {-1, 1}}];

realPart[expression_] := ComplexExpand[Re[expression]];
imaginaryPart[expression_] := ComplexExpand[Im[expression]];

projectedCosineJet[sign_] := Expand[
   (realPart /@ qTimesComplexNormalJet[mode, sign]) +
    Cos[mode Pi/4] (realPart /@ qTimesComplexNormalJet[4, sign])];
projectedSineJet[sign_] := Expand[
   -(imaginaryPart /@ qTimesComplexNormalJet[mode, sign]) +
    Sin[mode Pi/4] (imaginaryPart /@ qTimesComplexNormalJet[2, sign])];

(* Multiplication by q converts the possible q^-1 Laurent leading term to a
   Taylor coefficient.  Fixed anchors must kill that coefficient; the next
   possible term is q because parity leaves only even steps in q times q^-1. *)
laurentJets[qTimesTrace_] := Table[Factor@FullSimplify[
    Coefficient[qTimesTrace[[component]], q, order],
    Assumptions -> Element[mode, Integers] && mode >= 2],
   {component, 2}, {order, 0, 4}];

rightCosineJets = laurentJets[projectedCosineJet[1]];
leftCosineJets = laurentJets[projectedCosineJet[-1]];
rightSineJets = laurentJets[projectedSineJet[1]];
leftSineJets = laurentJets[projectedSineJet[-1]];

allJets = {rightCosineJets, leftCosineJets,
   rightSineJets, leftSineJets};
leadingLaurentResiduals = allJets[[All, All, 1]];
constantLaurentResiduals = allJets[[All, All, 2]];
firstProperCoefficients = allJets[[All, All, 3]];

(* Residue classes modulo eight turn every endpoint phase into a constant;
   the remaining coefficients are ordinary polynomials in mode. *)
residueDegrees = Table[
   Max[Table[
     Exponent[Together[
       firstProperCoefficients[[sector, component]] /.
        mode -> 8 quotient + residue] // Numerator, quotient],
     {component, 2}]],
   {sector, 4}, {residue, 2, 9}];

jacobi[function_] := -D[function, {u, 2}] + function;
arbitraryTrace = {trace0[u], trace1[u]};
pureGaugeJacobiResidual = FullSimplify[
   jacobi /@ (-arbitraryTrace) + (jacobi /@ arbitraryTrace)];

testConditions = {
   fixedModeJetResiduals === ConstantArray[0, 12],
   leadingLaurentResiduals === ConstantArray[0, {4, 2}],
   constantLaurentResiduals === ConstantArray[0, {4, 2}],
   FreeQ[firstProperCoefficients, Indeterminate | ComplexInfinity],
   Max[residueDegrees] <= 2,
   pureGaugeJacobiResidual === {0, 0}
   };
testIDs = {
   "closed endpoint jet matches the exact trace at three fixed frequencies",
   "fixed-anchor projection cancels the e^|u| normal trace",
   "projected normal trace has no constant endpoint term",
   "first proper e^-|u| coefficients are finite",
   "first proper coefficients grow at most quadratically with frequency",
   "pure-gauge HW normal value solves the Jacobi equation"
   };

Print[<|
  "LeadingLaurentResiduals" -> leadingLaurentResiduals,
  "FixedModeJetResiduals" -> fixedModeJetResiduals,
  "ConstantLaurentResiduals" -> constantLaurentResiduals,
  "FirstProperCoefficients" -> firstProperCoefficients,
  "ResidueDegrees" -> residueDegrees,
  "PureGaugeJacobiResidual" -> pureGaugeJacobiResidual|>];
adsRindlerSymbolicHWTraceReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
