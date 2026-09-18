(* Two tensor identities used in the Noether/constraint argument.
   Requires xAct/xTras; the companion scalar/matrix suite is independent.
   The third slot in fstr is only an algebraic spectator for the second
   identity: no spacetime/colour identification is asserted. *)
Needs["xAct`xTras`"];
SetOptions[DefCovD, SymCovDQ -> True];
DefManifold[MM, 4, {aa,bb,cc,dd,ee,ff}];
DefMetric[-1, gmet[-aa,-bb], nabla];
DefTensor[f2[-aa,-bb], MM, Antisymmetric[{-aa,-bb}]];
DefTensor[fstr[-aa,-bb,cc], MM, Antisymmetric[{-aa,-bb}]];
DefTensor[epss[-cc,-dd,-ee], MM, Antisymmetric[{-cc,-dd,-ee}]];
normalize[expr_] := FullSimplification[][ToCanonical[ContractMetric[ToCanonical[expr]]]];
residuals = {
 normalize[SymmetrizeCovDs[nabla[aa][nabla[bb][f2[-aa,-bb]]],nabla]],
 normalize[epss[-cc,-dd,-ee] fstr[aa,bb,dd] fstr[-aa,-bb,ee]]
};
Print[InputForm[residuals]];
If[!And @@ (TrueQ[# === 0] & /@ residuals), Exit[1]];
