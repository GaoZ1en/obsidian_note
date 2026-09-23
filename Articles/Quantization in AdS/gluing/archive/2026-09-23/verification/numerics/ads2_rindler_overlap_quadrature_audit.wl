(* Independent Abel-damped spatial-quadrature audit for the Delta=2 kernel. *)

ClearAll["Global`*"];
args = Rest[$ScriptCommandLine];
workingPrecision = If[Length[args] >= 1, ToExpression[args[[1]]], 60];
epsilonValues = SetPrecision[{1/5, 1/10, 1/20, 1/40}, workingPrecision];
cases = {{0, 1}, {1, 7/10}, {2, 7/5}, {3, 11/5}};

ClearAll[sechCos, tanhSechSin, tanh2SechCos];
sechCos[0, w_] := 0;
sechCos[p_Integer?Positive, w_] :=
  2^(p - 2) Gamma[(p + I w)/2] Gamma[(p - I w)/2]/Gamma[p];
tanhSechSin[0, w_] := Pi/(2 Sinh[Pi w/2]);
tanhSechSin[p_Integer?Positive, w_] := w sechCos[p, w]/p;
tanh2SechCos[p_Integer?NonNegative, w_] := sechCos[p, w] - sechCos[p + 2, w];

ClearAll[semiAnalytic];
semiAnalytic[n_, w_] := Module[
  {coeff, omegaN, radialNorm, modeNorm, common, edge, plus, minus},
  coeff = CoefficientList[GegenbauerC[n, 2, y], y];
  omegaN = n + 2;
  radialNorm = Sqrt[2/Pi]/Sqrt[1 + w^2];
  modeNorm = Sqrt[4/(Pi (n + 1) (n + 2) (n + 3))];
  common = Table[
    omegaN tanhSechSin[p + 1, w] - w omegaN tanh2SechCos[p + 1, w],
    {p, 0, n}];
  edge = Table[
    w tanhSechSin[p, w] - w^2 tanh2SechCos[p, w],
    {p, 0, n}];
  plus = coeff . (common + edge);
  minus = coeff . (common - edge);
  N[modeNorm radialNorm {plus, minus}/Sqrt[2 w], workingPrecision]
  ];

ClearAll[directDamped];
directDamped[n_, w_, epsilon_] := Module[
  {omegaN, radial, modeNorm, spatial, base, integrand},
  omegaN = n + 2;
  radial[x_?NumericQ] := Sqrt[2/Pi]
    (Coth[x] Sin[w x] - w Cos[w x])/Sqrt[1 + w^2];
  modeNorm = Sqrt[4/(Pi (n + 1) (n + 2) (n + 3))];
  spatial[x_?NumericQ] := modeNorm Tanh[x]^2 GegenbauerC[n, 2, Sech[x]];
  base[x_?NumericQ] := radial[x] spatial[x]/Sqrt[2 w]
    {omegaN Sech[x] + w, omegaN Sech[x] - w};
  integrand[x_?NumericQ, component_Integer] := base[x][[component]] Exp[-epsilon x];
  Table[
   NIntegrate[
    integrand[x, component], {x, 0, 40/epsilon},
    WorkingPrecision -> workingPrecision,
    AccuracyGoal -> Floor[workingPrecision/2],
    PrecisionGoal -> Floor[workingPrecision/2],
    Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0},
    MaxRecursion -> 24],
   {component, 1, 2}]
  ];

results = Table[
   Module[{n, w, target, damped, extrapolated},
    {n, w} = oneCase;
    w = SetPrecision[w, workingPrecision];
    target = Re[semiAnalytic[n, w]];
    damped = Re@Table[directDamped[n, w, epsilon], {epsilon, epsilonValues}];
    extrapolated = Table[
      InterpolatingPolynomial[
        Transpose[{epsilonValues, damped[[All, component]]}], epsilon] /. epsilon -> 0,
      {component, 1, 2}];
    <|
     "n" -> n,
     "omega" -> N[w, 12],
     "epsilon_values" -> N[epsilonValues, 8],
     "damped_alpha_beta" -> N[damped, 16],
     "extrapolated_alpha_beta" -> N[extrapolated, 20],
     "semi_analytic_alpha_beta" -> N[target, 20],
     "relative_error" -> N[Norm[extrapolated - target]/Norm[target], 12]
     |>
    ],
   {oneCase, cases}];

Print[ExportString[
  <|"working_precision" -> workingPrecision, "results" -> results|>,
  "RawJSON"]];
