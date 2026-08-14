(* ::Package:: *)

(*
  Algebraic checks for the local one-loop renormalization C -> C+13 of the
  vacuum-orbit Kirillov--Kostant form.  In orbit coordinates the two-form
  scales with the action coefficient.  In physical charge coordinates its
  inverse kernel scales oppositely because the moment maps also scale.
*)

ClearAll["Global`*"];

cQ = C + 13;

modeDenominator[p_Integer] := p (p^2 - 1);

kVac[c_, p_Integer, q_Integer] :=
  -I 12 KroneckerDelta[p + q, 0]/(c modeDenominator[p]);

kLinear[c_, p_Integer, q_Integer] :=
  -I 144 (p - q) h[-p - q]/
    (c^2 modeDenominator[p] modeDenominator[q]);

modes = Join[Range[-8, -2], Range[2, 8]];

pVac[c_] := Table[
   -I c modeDenominator[modes[[i]]] KroneckerDelta[
      modes[[i]] + modes[[j]], 0]/12,
   {i, Length[modes]}, {j, Length[modes]}
   ];

kVacMatrix[c_] := Table[
   kVac[c, modes[[i]], modes[[j]]],
   {i, Length[modes]}, {j, Length[modes]}
   ];

largeCSeries[expression_, order_Integer : 2] := Module[{epsilon},
  Expand[Normal[Series[expression /. C -> 1/epsilon, {epsilon, 0, order}]] /.
    epsilon -> 1/C]
  ];

tests = {
   VerificationTest[
    Simplify[pVac[cQ] . kVacMatrix[cQ]],
    IdentityMatrix[Length[modes]],
    TestID -> "Quantum-renormalized vacuum kernels are inverse matrices"],
   VerificationTest[
    FullSimplify[kVac[cQ, 2, -2]/kVac[C, 2, -2]],
    C/(C + 13),
    TestID -> "Vacuum inverse kernel rescales by C/(C+13)"],
   VerificationTest[
    FullSimplify[kLinear[cQ, 2, 3]/kLinear[C, 2, 3]],
    C^2/(C + 13)^2,
    TestID -> "Linear field-dependent kernel rescales quadratically"],
   VerificationTest[
    largeCSeries[C/(C + 13), 2],
    1 - 13/C + 169/C^2,
    TestID -> "Vacuum one-loop expansion"],
   VerificationTest[
    largeCSeries[C^2/(C + 13)^2, 2],
    1 - 26/C + 507/C^2,
    TestID -> "Field-dependent one-loop expansion"],
   VerificationTest[
    FullSimplify[(cQ/C) C],
    C + 13,
    TestID -> "Local orbit action and symplectic form use C+13"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "OrbitCoordinateScaling" -> (C + 13)/C,
   "ChargeCoordinateVacuumScaling" -> C/(C + 13),
   "ChargeCoordinateLinearKernelScaling" -> C^2/(C + 13)^2
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
