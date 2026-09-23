(* Finite algebraic diagnostics for compatible-history classical sewing.
   These checks do not prove trace theorems, PDE regularity, or exact onto. *)
ClearAll["Global`*"];
allZero[expr_] := And @@ (TrueQ[# == 0] & /@ Flatten[{FullSimplify[expr]}]);

incl = {{1, 0}, {0, 1}, {1, 0}};
lambda = {l1, l2, l3};
ann = {1, 0, -1};
coords = {a, b};
family[x_, y_, z_] := x^2 y + Sin[z];
ambientGradient = D[family[r, s, t], #] & /@ {r, s, t};
restriction = Thread[{r, s, t} -> incl.coords];
lowerIntegral = Integrate[1/(2 s), {s, eps, 1}, Assumptions -> 0 < eps < 1];
lowerLimit = Limit[lowerIntegral, eps -> 0, Direction -> "FromAbove"];

checks = <|
  "jointHistoryAnnihilator" -> allZero[Transpose[incl].ann],
  "fullCovectorRelease" -> allZero[Transpose[incl].lambda - {l1 + l3, l2}],
  "compatibleHistoryChainRule" -> allZero[
    (D[family[a, b, a], #] & /@ coords) -
      Transpose[incl].(ambientGradient /. restriction)],
  "covectorRepresentativeIndependence" -> allZero[
    Transpose[incl].(lambda + r ann) - Transpose[incl].lambda],
  "cornerLogarithmicLowerBound" -> allZero[lowerIntegral + Log[eps]/2],
  "cornerConstantJumpDiverges" -> TrueQ[lowerLimit === Infinity],
  "selfSewingCountsRegionalActionOnce" -> allZero[
    D[u r + v s, r] + D[u r + v s, s] - (u + v)],
  "torusHamiltonianDomainMismatch" -> allZero[
    (1 - r/a /. r -> 0) - (1 - r/a /. r -> a) - 1]
|>;

result = <|
  "scope" -> "Finite compatible-history identities and explicit mismatch diagnostics only",
  "checks" -> checks,
  "groupCount" -> Length[checks],
  "allPassed" -> And @@ Values[checks],
  "cornerLowerBound" -> ToString[lowerIntegral, InputForm],
  "cornerLimit" -> ToString[lowerLimit, InputForm],
  "notVerified" -> {
    "Joint Sobolev trace theorem and its norm equivalence",
    "Regional PDE existence or corner regularity",
    "Smooth regular-dual extension and exact full-family surjectivity"
  }
|>;
Export[FileNameJoin[{DirectoryName[$InputFileName], "corner_classical_check_results.json"}], result, "RawJSON"];
Print[ExportString[result, "RawJSON"]];
If[!TrueQ[result["allPassed"]], Exit[1]];
