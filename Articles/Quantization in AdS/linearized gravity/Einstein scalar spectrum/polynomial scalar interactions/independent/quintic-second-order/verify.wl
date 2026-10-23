(* Independent quintic O(lambda5^2) verification. Wolfram Language, no external project code. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{x, s, nu, dd = 4/3, jac, radial, overlap, omega, alloc,
   terms, wick, uv, uvExpected, allChecks, kappa, contact, z, powerChecks,
   delta, aa, generalRadialChecks, co, r, alpha, om, xr, h, radialResidual},
  jac[n_] := JacobiP[n, 1/3, 0, 1 - 2 x];
  radial = Table[Integrate[x^(4/3) jac[n], {x, 0, 1}], {n, 0, 8}];
  overlap[n_] := Pochhammer[1 - 3 dd/2, n]/Pochhammer[5 dd/2, n];
  omega[n_] := dd + 2 n;
  alloc[n_] := Sum[24/(Factorial[a]^2 Factorial[4 - a]^2
      ((2 a - 4) dd - omega[n])), {a, 0, 4}];
  terms = Table[Together[overlap[n]^2 alloc[n]/(8 Pi^3 (5 dd - 2)^2)],
    {n, 0, 1}];
  wick = Table[Binomial[5, k]^2 Factorial[k]/(2 Factorial[5]^2), {k, 1, 5}];
  uv = Table[Normal[Series[Exp[-k nu s]/Sinh[s]^(k - 2), {s, 0, -1}]],
    {k, 3, 5}];
  uvExpected = {1/s, 1/s^2 - 4 nu/s,
    1/s^3 - 5 nu/s^2 + (25 nu^2 - 1)/(2 s)};
  kappa = 1/(8 Pi (2 dd - 1));
  contact = Integrate[x^(2 dd - 2)/(4 Pi), {x, 0, 1}];
  powerChecks = Table[
    Normal[Series[(1 - z)^(-(k - 1)), {z, 0, 8}]] ===
      Sum[Binomial[a + k - 2, k - 2] z^a, {a, 0, 8}], {k, 2, 5}];
  aa = 5 delta/2 - 1;
  generalRadialChecks = Table[
    co = CoefficientList[Expand[JacobiP[n, delta - 1, 0, 1 - 2 x]], x];
    Together[Sum[co[[j + 1]]/(aa + j), {j, 0, Length[co] - 1}] -
      Pochhammer[1 - 3 delta/2, n]/(aa Pochhammer[5 delta/2, n])] === 0,
    {n, 0, 6}];
  xr = 1/(1 + r^2); h = xr^alpha;
  radialResidual = FullSimplify[
    -1/r D[r (1 + r^2) D[h, r], r] - om^2/(1 + r^2) h -
      (-4 alpha (alpha - 1) xr^alpha + (4 alpha^2 - om^2) xr^(alpha + 1)),
    Assumptions -> {r > 0, alpha > 1, Element[om, Reals]}];
  allChecks = <|
    "WickCombinatorics" -> (wick === {1/1152, 1/144, 1/48, 1/48, 1/240}),
    "UVLocalSeries" -> (Together[uv - uvExpected] === {0, 0, 0}),
    "DirectJacobiIntegrals" -> (radial === {3/7, -9/70, 0, 0, 0, 0, 0, 0, 0}),
    "RadialSourceNormalization" -> (Together[(radial[[2]]/radial[[1]]) + 3/10] === 0),
    "FourBodyExact" -> (Together[Total[terms] + 61947/(11648000 Pi^3)] === 0),
    "QuarticContactNormalization" -> (Together[contact - 2 kappa] === 0),
    "PropagatorPowerCoefficients" -> And @@ powerChecks,
    "GeneralDeltaJacobiCoefficientsN0Through6" -> And @@ generalRadialChecks,
    "RadialOperatorIdentity" -> (radialResidual === 0)
    |>;
  <|"checks" -> allChecks, "allPassed" -> And @@ Values[allChecks],
   "WickCoefficients" -> wick, "UVSeries" -> uv, "JacobiRadialIntegrals" -> radial,
   "B4Contributions" -> terms, "B4" -> Total[terms],
   "B4Decimal" -> N[Total[terms], 30],
   "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]
]
