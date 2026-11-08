ClearAll["Global`*"];

(* Exact Mellin/Bogoliubov/KMS regression for calculation 07. *)

assumptions = w > 0 && kap > 0 && sig > 0 && eps > 0 && L > 0 &&
  Element[{w, kap, sig, eps, L, d}, Reals] && d != 0;

zeroQ[expr_] := TrueQ[FullSimplify[Together[expr] == 0, assumptions]];
checks = {};
addCheck[name_, value_] := AppendTo[checks, name -> TrueQ[value]];

(* Regulated Mellin transforms before taking the affine boundary value. *)
mellinMinus = Integrate[
  x^(eps + I w - 1) Exp[-(sig + I kap) x],
  {x, 0, Infinity},
  Assumptions -> assumptions,
  GenerateConditions -> False
];
mellinPlus = Integrate[
  x^(eps + I w - 1) Exp[-(sig - I kap) x],
  {x, 0, Infinity},
  Assumptions -> assumptions,
  GenerateConditions -> False
];
addCheck["regulated negative-phase Mellin transform",
  zeroQ[mellinMinus - Gamma[eps + I w]/(sig + I kap)^(eps + I w)]];
addCheck["regulated positive-phase Mellin transform",
  zeroQ[mellinPlus - Gamma[eps + I w]/(sig - I kap)^(eps + I w)]];

negativeBoundary = Exp[-I w (Log[kap] + I Pi/2)];
positiveBoundary = Exp[-I w (Log[kap] - I Pi/2)];
addCheck["negative-phase Mellin boundary factor",
  zeroQ[negativeBoundary - Exp[Pi w/2] kap^(-I w)]];
addCheck["positive-phase Mellin boundary factor",
  zeroQ[positiveBoundary - Exp[-Pi w/2] kap^(-I w)]];

alpha = Sqrt[w/kap] Exp[Pi w/2] Gamma[I w] kap^(-I w)/(2 Pi);
beta = -Sqrt[w/kap] Exp[-Pi w/2] Gamma[I w] kap^(-I w)/(2 Pi);
addCheck["Bogoliubov beta/alpha ratio",
  zeroQ[beta + Exp[-Pi w] alpha]];

gammaProduct = Gamma[I w] Gamma[-I w];
addCheck["imaginary Gamma product",
  zeroQ[gammaProduct - Pi/(w Sinh[Pi w])]];

(* The log-kappa integral contributes 2 Pi delta(omega-omega'). *)
canonicalDeltaCoefficient =
  2 Pi (w/(4 Pi^2)) gammaProduct (Exp[Pi w] - Exp[-Pi w]);
occupationCoefficient =
  2 Pi (w/(4 Pi^2)) gammaProduct Exp[-Pi w];
nPlanck = 1/(Exp[2 Pi w] - 1);
addCheck["Bogoliubov canonical delta coefficient",
  zeroQ[canonicalDeltaCoefficient - 1]];
addCheck["Planck occupation coefficient",
  zeroQ[occupationCoefficient - nPlanck]];
addCheck["coth covariance factor",
  zeroQ[1 + 2 nPlanck - Coth[Pi w]]];
addCheck["dimensionless detailed balance",
  zeroQ[nPlanck - Exp[-2 Pi w] (1 + nPlanck)]];
addCheck["physical beta conversion",
  zeroQ[Exp[-(2 Pi L) w/L] - Exp[-2 Pi w]]];

(* V=-exp(-v), with v'=0 and v=d. *)
affineRatio = Exp[-d]/(1 - Exp[-d])^2;
staticRatio = 1/(4 Sinh[d/2]^2);
addCheck["affine-to-static derivative correlator",
  zeroQ[affineRatio - staticRatio]];

addCheck["imaginary 2Pi periodicity",
  zeroQ[Sinh[(z + 2 Pi I)/2]^2 - Sinh[z/2]^2]];

irLimit = FullSimplify[
  Limit[w Coth[Pi w], w -> 0, Direction -> "FromAbove"]
];
addCheck["BD infrared covariance limit", TrueQ[irLimit == 1/Pi]];

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL KMS/MELLIN CHECKS PASSED"],
  Print["KMS/MELLIN CHECKS FAILED"];
  Quit[1]
];
