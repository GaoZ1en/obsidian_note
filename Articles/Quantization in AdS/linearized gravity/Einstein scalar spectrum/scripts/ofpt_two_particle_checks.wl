(* A fresh constraint-reduced OFPT calculation. No previous spectrum or radial
   implementation is loaded. All radial integrals are exact polynomial moments.
   Loading defines functions; run OFPTRunChecks[] explicitly to write the report.
   kappa^2 = 16 Pi G; matrices and primary shifts returned below are in units of G. *)
ClearAll[OFPTMoment, OFPTRadialElement, OFPTRadialMatrix, OFPTHahn,
 OFPTWeight, OFPTNorm, OFPTReconstruct, OFPTClosed, OFPTRunChecks];
ofptScriptDirectory = DirectoryName[$InputFileName];

OFPTMoment[poly_, x_, power_] := Module[{c = CoefficientList[Expand[poly], x]},
 Sum[c[[j + 1]]/(power + j), {j, 0, Length[c] - 1}]];

OFPTRadialElement[ij_List, kl_List, delta_] := Module[
 {x, z, modes, signs, q, timeDerivative, kinetic, source, primitive,
  coefficients, fourLeg, first, second, norm},
 z = Array[Unique["leg"] &, 4];
 modes = Join[ij, kl]; signs = {-1, -1, 1, 1};
 q = Sum[z[[a]] JacobiP[modes[[a]], delta - 1, 0, 1 - 2 x], {a, 4}];
 timeDerivative = Sum[signs[[a]] (delta + 2 modes[[a]]) z[[a]]
   JacobiP[modes[[a]], delta - 1, 0, 1 - 2 x], {a, 4}];
 (* X = x^(delta+1)/(2 Pi) kinetic, at fixed canonical momentum. *)
 kinetic = Expand[4 (1 - x) (delta q/2 + x D[q, x])^2
   - x timeDerivative^2];
 source = Expand[kinetic + delta (delta - 2) q^2];
 coefficients = CoefficientList[source, x];
 primitive = Sum[coefficients[[j + 1]] x^j/(delta - 1 + j),
   {j, 0, Length[coefficients] - 1}];
 fourLeg[expr_] := Fold[Coefficient[#1, #2, 1] &, Expand[expr], z];
 first = OFPTMoment[fourLeg[kinetic (primitive /. x -> 1)], x, delta];
 second = OFPTMoment[fourLeg[kinetic primitive], x, 2 delta - 1];
 norm = Sqrt[(1 + Boole[ij[[1]] == ij[[2]]])
   (1 + Boole[kl[[1]] == kl[[2]]])];
 (* H4 coefficient = -(first-second)/(32 Pi); multiply by 16 Pi. *)
 Factor[-(first - second)/(2 norm)]
];

OFPTRadialMatrix[level_Integer?NonNegative, delta_] := Module[{pairs},
 pairs = Table[{r, level - r}, {r, 0, Floor[level/2]}];
 Table[OFPTRadialElement[i, j, delta], {i, pairs}, {j, pairs}]];

OFPTHahn[level_, k_, p_, delta_] := Factor[Sum[
 Pochhammer[-k, j] Pochhammer[k + 2 delta - 1, j] Pochhammer[-p, j]/
  (Pochhammer[delta, j] Pochhammer[-level, j] j!),
 {j, 0, Min[k, p]}]];
OFPTWeight[level_, p_, delta_] :=
 Binomial[level, p] Pochhammer[delta, p] Pochhammer[delta, level - p]/
  Pochhammer[2 delta, level];
OFPTNorm[level_, k_, delta_] := Factor[Sum[
 OFPTWeight[level, p, delta] OFPTHahn[level, k, p, delta]^2,
 {p, 0, level}]];

OFPTReconstruct[maxLevel_Integer?NonNegative, delta_] := Module[
 {gamma, records = {}, matrices = {}, checks = {}, n, rs, ks, q, w, norm,
  sw, radial, known, z, transformed, off, values},
 Do[
  rs = Range[0, Floor[n/2]]; ks = Range[n, 0, -2];
  q = Table[OFPTHahn[n, k, p, delta], {p, 0, n}, {k, 0, n}];
  w = Table[OFPTWeight[n, p, delta], {p, 0, n}];
  norm = Table[Factor[Sum[w[[p + 1]] q[[p + 1, k + 1]]^2,
     {p, 0, n}]], {k, 0, n}];
  sw = Sqrt[2/(1 + Boole[2 # == n])] & /@ rs;
  radial = OFPTRadialMatrix[n, delta];
  known = Table[sw[[r + 1]] sw[[s + 1]] w[[r + 1]] w[[s + 1]]
    Sum[If[EvenQ[k + l],
      q[[r + 1, k + 1]] q[[r + 1, l + 1]]
       q[[s + 1, k + 1]] q[[s + 1, l + 1]]
       gamma[Min[k, l], Abs[k - l]]/(norm[[k + 1]] norm[[l + 1]]), 0],
     {k, 0, n - 1}, {l, 0, n - 1}], {r, rs}, {s, rs}];
  z = Table[sw[[r + 1]] q[[r + 1, k + 1]]/q[[r + 1, n + 1]],
    {r, rs}, {k, ks}];
  transformed = Map[Factor, Transpose[z].Map[Factor, radial - known, {2}].z, {2}];
  off = Map[Factor, transformed - DiagonalMatrix[Diagonal[transformed]], {2}];
  If[!AllTrue[Flatten[off], SameQ[#, 0] &],
   Return[Failure["NonInvariantCompression", <|"level" -> n, "residual" -> off|>]]];
  values = Table[Factor[norm[[n + 1]] transformed[[j, j]]/
     (norm[[ks[[j]] + 1]] (2 - Boole[ks[[j]] == n]))], {j, Length[ks]}];
  Do[gamma[ks[[j]], n - ks[[j]]] = values[[j]];
   AppendTo[records, <|"n" -> ks[[j]], "spin" -> n - ks[[j]],
     "gammaOverG" -> values[[j]]|>], {j, Length[ks]}];
  AppendTo[matrices, radial];
  AppendTo[checks, <|"level" -> n, "offDiagonal" -> off,
    "Hermiticity" -> Map[Factor, radial - Transpose[radial], {2}]|>],
  {n, 0, maxLevel}];
 <|"primaryShifts" -> records, "radialMatrices" -> matrices, "checks" -> checks|>
];

(* This target is used only AFTER extracting the primary shifts. *)
OFPTClosed[n_, spin_, delta_] := With[
 {h = delta + n, u = -4 (delta^2 + 2 n (2 delta + n - 1)),
  mass = delta (delta - 2)},
 Switch[spin,
  0, u (2 h - 2)/(2 h - 1)
    - 2 (h (h - 1) + mass)^2/((2 h - 3) (2 h - 1) (2 h + 1)),
  2, u + (n + 1) (n + 2) (2 delta + n - 1) (2 delta + n)/
    ((2 h - 1) (2 h + 1) (2 h + 3)),
  _, u]];

OFPTRunChecks[maxLevel_: 8] := Module[
 {delta, r, x, b, bc, s, om, nu, duration, t, tt, mass, k2, pp, rr,
  field, eps, ff, mode, ph, momentum, kinetic, mass0, massExpected,
  coefficient, target, dyson, energy, data, residuals, report, pass},
 ff = 1 + r^2; mode = ff^(-delta/2)/Sqrt[2 Pi];
 ph = mode (b + bc); momentum = -I delta mode (b - bc)/ff;
 kinetic = Expand[D[ph, r]^2 + momentum^2];
 mass0 = FullSimplify[Integrate[
    (r (ff kinetic + delta (delta - 2) ph^2)/2) /. r -> s,
    {s, 0, r}, Assumptions -> delta > 1 && r > 0]];
 massExpected = delta/(4 Pi) (2 b bc (1 - ff^(1 - delta))
    - r^2 ff^(-delta) (b^2 + bc^2));
 coefficient = FullSimplify[Integrate[
    Coefficient[Coefficient[Expand[-Pi r kinetic mass0], b, 2], bc, 2],
    {r, 0, Infinity}, Assumptions -> delta > 1]];
 target = delta^2 (7 + 2 delta - 8 delta^2)/(16 Pi (4 delta^2 - 1));
 dyson = Integrate[Integrate[Exp[I om (t - tt)], {tt, 0, t}],
   {t, 0, duration}, Assumptions -> om != 0 && duration > 0 && Element[om, Reals]];
 energy = FullSimplify[Limit[4 Pi/k2 (r Sqrt[ff - k2 mass] - (ff - k2 mass)),
     r -> Infinity] + 2 Pi/k2 - 2 Pi mass, Assumptions -> k2 > 0 && Element[mass, Reals]];
 residuals = <|
   "Boundary energy above AdS" -> energy,
   "Fixed canonical momentum quartic source" ->
    Expand[Coefficient[r/2 ((ff - eps mass) (pp^2 + rr^2) + delta (delta - 2) field^2),
       eps] + r mass (pp^2 + rr^2)/2],
   "Lowest KG norm" -> FullSimplify[4 Pi delta Integrate[r/ff mode^2,
       {r, 0, Infinity}, Assumptions -> delta > 1] - 1],
   "Lowest mass primitive" -> FullSimplify[mass0 - massExpected, Assumptions -> delta > 1 && r > 0],
   "Lowest H4 coefficient" -> FullSimplify[coefficient - target],
   "Dyson secular coefficient" -> FullSimplify[
     dyson - (I duration/om + (1 - Exp[I om duration])/om^2),
     Assumptions -> om != 0 && duration > 0 && Element[om, Reals]],
   "Two time orderings of an oscillator" ->
    Factor[(1/(om - nu) - 1/(om + nu))/(2 nu) - 1/(om^2 - nu^2)],
   "Two identical bosons" -> D[x^2, {x, 2}] - 2,
   "Lowest closed expression" -> Factor[32 Pi target - OFPTClosed[0, 0, delta]],
   "First degenerate diagonal" -> Factor[OFPTRadialElement[{0, 1}, {0, 1}, delta]
     + 4 delta^2 (8 delta^3 + 26 delta^2 + 7 delta - 17)/
       ((2 delta - 1) (2 delta + 1) (2 delta + 3))],
   "Removable limit Delta=3/2" -> Limit[OFPTClosed[0, 0, delta], delta -> 3/2] + 9/2
   |>;
 Print["Direct Hamiltonian and OFPT checks computed."];
 data = OFPTReconstruct[maxLevel, delta];
 If[FailureQ[data], Print[data]; Return[data]];
 Do[AppendTo[residuals,
   "Primary_" <> ToString[row["n"]] <> "_" <> ToString[row["spin"]] ->
    Factor[row["gammaOverG"] - OFPTClosed[row["n"], row["spin"], delta]]],
  {row, data["primaryShifts"]}];
 AppendTo[residuals, "All compression residuals" ->
   Flatten[Values[KeyDrop[#, "level"]] & /@ data["checks"]]];
 If[maxLevel >= 2, AppendTo[residuals, "N2 Delta2 matrix" ->
    FullSimplify[(data["radialMatrices"][[3]] /. delta -> 2) -
      {{-32, -264 Sqrt[2]/35}, {-264 Sqrt[2]/35, -1376/35}}]]];
 pass = AllTrue[Flatten[Values[residuals]], SameQ[#, 0] &];
 report = <|"engine" -> $Version, "method" -> "constraint-reduced OFPT; fresh polynomial Hamiltonian",
   "assumptions" -> "Delta>1; physical single-scalar mass; connected tree scalar-primary branch",
   "maxLevel" -> maxLevel, "primaryCount" -> Length[data["primaryShifts"]],
   "allPassed" -> pass, "scalarResidualCount" -> Length[Flatten[Values[residuals]]],
   "residuals" -> Map[ToString[#, InputForm] &, residuals],
   "primaryShifts" -> (Map[If[NumericQ[#], #, ToString[#, InputForm]] &, #] & /@ data["primaryShifts"]),
   "notVerified" -> {"all-index closed-form summation proof", "full boundary-graviton mixing",
     "special-mass enlarged primary blocks", "bare self-energies and higher orders"}|>;
 Export[FileNameJoin[{ofptScriptDirectory, "ofpt_two_particle_results.json"}], report, "RawJSON"];
 Print[KeyTake[report, {"allPassed", "maxLevel", "primaryCount", "scalarResidualCount"}]];
 report
];
