(* Checks for the explicit finite-rank bisolutions used in the Wick-ideal proof. *)
ClearAll["Global`*"];
assum = ell > 0 && mass > 0 && Element[{nn, kk}, Integers] && nn > 0 && kk > 0;
omega = Sqrt[(nn Pi/ell)^2 + mass^2];
mode = Sin[nn Pi x/ell] Exp[-I omega t];
checks = <|
  "NormalizedSineBasis" -> FullSimplify[
    Integrate[2 Sin[nn Pi x/ell]^2/ell, {x, 0, ell},
      Assumptions -> assum] == 1, assum],
  "DistinctSineOrthogonality" -> FullSimplify[
    Integrate[2 Sin[nn Pi x/ell] Sin[kk Pi x/ell]/ell, {x, 0, ell},
      Assumptions -> assum && nn != kk] == 0, assum && nn != kk],
  "HomogeneousWaveEquation" -> FullSimplify[
    D[mode, {t, 2}] - D[mode, {x, 2}] + mass^2 mode == 0, assum],
  "DirichletEndpoints" -> FullSimplify[
    (mode /. x -> 0) == 0 && (mode /. x -> ell) == 0, assum]
|>;
result = <|"groups" -> Length[checks], "allPassed" -> And @@ (TrueQ /@ Values[checks]),
  "checks" -> checks, "scope" -> "Mode normalization, PDE and traces only; the normal-topology convergence proof is analytic."|>;
Print[ExportString[result, "RawJSON"]];
