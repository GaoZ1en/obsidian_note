(* ::Package:: *)

(*
  Exact endpoint check for the unprojected fixed-region extremal/HW normal
  trace.  The nonproper e^|u| part of -zeta_perp is a Jacobi-homogeneous
  endpoint-displacement mode.  Adding the unique two-sided homogeneous
  combination fixed by q_+/- cancels both growing traces while leaving the
  extremality equation unchanged.

  This proves the normal-value part of the unprojected HW solver.  It does
  not by itself derive the full moving-anchor wall/joint symplectic form.
*)

ClearAll["Global`*"];

a = Pi/4;

qTimesComplexNormalJet[m_, sign_] := Module[
  {phase, radialJet, aa, bb, z0Jet, z1Jet},
  phase = Cos[sign m Pi/4] + I Sin[sign m Pi/4];
  radialJet = 1 - m (1 + I sign) q^2 +
    (m + I sign m^2) q^4;
  aa = (m - 2) (m + 1)/2;
  bb = m (m + 1)/2;
  z0Jet = -phase/Sqrt[2] radialJet (
      1 - (2 aa + 1) q^2 + (2 aa + 2) q^4);
  z1Jet = -phase radialJet (
      sign/Sqrt[2] (1 + (2 bb - 1) q^2 - 2 bb q^4) +
       I m Sqrt[2] q^2 (1 + m q^2));
  Expand[Normal@Series[#, {q, 0, 4}]] & /@ {z0Jet, z1Jet}
  ];

endpointValue[m_, sign_] :=
  Cos[sign m Pi/4] + I Sin[sign m Pi/4];

(* q=e^-|u|.  This is q times the Jacobi-homogeneous vector

   H0=-(q_+ e^u+q_- e^-u)/sqrt(2),
   H1=(-q_+ e^u+q_- e^-u)/sqrt(2).
*)
qTimesHomogeneousTrace[m_, 1] := {
   -(endpointValue[m, 1] + endpointValue[m, -1] q^2)/Sqrt[2],
   (-endpointValue[m, 1] + endpointValue[m, -1] q^2)/Sqrt[2]
   };
qTimesHomogeneousTrace[m_, -1] := {
   -(endpointValue[m, 1] q^2 + endpointValue[m, -1])/Sqrt[2],
   (-endpointValue[m, 1] q^2 + endpointValue[m, -1])/Sqrt[2]
   };

(* V=-zeta_perp+H. *)
qTimesCompensatedTrace[m_, sign_] := Expand[
   -qTimesComplexNormalJet[m, sign] +
    qTimesHomogeneousTrace[m, sign]];

compensatedJets = Table[
   Coefficient[qTimesCompensatedTrace[mode, sign][[component]], q, order] //
    FullSimplify,
   {sign, {-1, 1}}, {component, 2}, {order, 0, 4}];

leadingResiduals = compensatedJets[[All, All, 1]];
constantResiduals = compensatedJets[[All, All, 2]];
firstProperCoefficients = compensatedJets[[All, All, 3]];

residueDegrees = Table[
   Max@Table[
     Exponent[Together[
        firstProperCoefficients[[sector, component]] /.
         mode -> 8 quotient + residue] // Numerator, quotient],
     {component, 2}],
   {sector, 2}, {residue, 2, 9}];

jacobi[function_] := -D[function, {u, 2}] + function;
homogeneousTrace = {
   -(qp Exp[u] + qm Exp[-u])/Sqrt[2],
   (-qp Exp[u] + qm Exp[-u])/Sqrt[2]
   };
jacobiResidual = FullSimplify[jacobi /@ homogeneousTrace];

(* For fixed frequencies, compare the endpoint leading coefficient before
   and after the homogeneous completion. *)
rawLeading[m_Integer, sign_] := FullSimplify[
   Table[Coefficient[qTimesComplexNormalJet[m, sign][[component]], q, 0],
     {component, 2}]];
completedLeading[m_Integer, sign_] := FullSimplify[
   Table[Coefficient[qTimesCompensatedTrace[m, sign][[component]], q, 0],
     {component, 2}]];

testConditions = {
   jacobiResidual === {0, 0},
   leadingResiduals === ConstantArray[0, {2, 2}],
   constantResiduals === ConstantArray[0, {2, 2}],
   FreeQ[firstProperCoefficients, Indeterminate | ComplexInfinity],
   Max[residueDegrees] <= 2,
   completedLeading[2, 1] === {0, 0},
   completedLeading[3, -1] === {0, 0},
   rawLeading[3, 1] =!= {0, 0}
   };

testIDs = {
   "endpoint compensator is Jacobi homogeneous",
   "homogeneous completion cancels both e^|u| normal traces",
   "completed trace has no constant endpoint term",
   "first proper e^-|u| coefficients are finite",
   "first proper coefficients grow at most quadratically with frequency",
   "right endpoint cancellation holds in the exact m=2 jet",
   "left endpoint cancellation holds in the exact m=3 jet",
   "the unprojected m=3 trace is nonproper before completion"
   };

Print[<|
  "JacobiResidual" -> jacobiResidual,
  "LeadingResiduals" -> leadingResiduals,
  "ConstantResiduals" -> constantResiduals,
  "FirstProperCoefficients" -> firstProperCoefficients,
  "ResidueDegrees" -> residueDegrees
  |>];

unprojectedHWTraceReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
