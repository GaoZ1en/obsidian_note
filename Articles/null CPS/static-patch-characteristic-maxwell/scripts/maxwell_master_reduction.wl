ClearAll["Global`*"];

(* Action-first vector-harmonic reduction and component regression for the
   two dS4 Maxwell master fields.  The reduction is performed before the
   optional q_E=0 reconstruction representative is tested. *)

assumptions = rho > 0 && 0 < th < Pi &&
  Element[{tau, rho, th, ph}, Reals];
zeroArrayQ[z_] := And @@ (TrueQ[FullSimplify[# == 0, assumptions]] & /@ Flatten[z]);

coords = {tau, rho, th, ph};
a = Sinh[rho];
g = DiagonalMatrix[{-1, 1, a^2, a^2 Sin[th]^2}];
ginv = FullSimplify[Inverse[g], assumptions];
sqrtg = a^2 Sin[th];
eps4 = LeviCivitaTensor[4];

raiseTwo[f_] := FullSimplify[ginv . f . ginv, assumptions];
hodge[f_] := Module[{fup = raiseTwo[f]},
  Table[
    FullSimplify[
      sqrtg/2 Sum[eps4[[mu, nu, al, be]] fup[[al, be]], {al, 4}, {be, 4}],
      assumptions
    ],
    {mu, 4}, {nu, 4}
  ]
];

bianchi[f_] := Table[
  With[{i = tri[[1]], j = tri[[2]], k = tri[[3]]},
    FullSimplify[
      D[f[[j, k]], coords[[i]]] + D[f[[k, i]], coords[[j]]] +
        D[f[[i, j]], coords[[k]]], assumptions
    ]
  ],
  {tri, Subsets[Range[4], {3}]}
];

maxwell[f_] := Module[{fup = raiseTwo[f]},
  Table[
    FullSimplify[
      Sum[D[sqrtg fup[[mu, nu]], coords[[mu]]], {mu, 4}]/sqrtg,
      assumptions
    ],
    {nu, 4}
  ]
];

masterRule[lam_] := HoldPattern[Derivative[2, 0][psi][tau, rho]] :>
  Derivative[0, 2][psi][tau, rho] - lam psi[tau, rho]/a^2;

harmonics[j_] := Module[{lam = j (j + 1), y, eTh, ePh, bTh, bPh},
  y = SphericalHarmonicY[j, 0, th, ph];
  eTh = D[y, th]/Sqrt[lam];
  ePh = D[y, ph]/Sqrt[lam];
  (* This orientation gives 2 D_[A B_B] = -sqrt(lam) Y epsilon_AB. *)
  bTh = -D[y, ph]/(Sqrt[lam] Sin[th]);
  bPh = Sin[th] D[y, th]/Sqrt[lam];
  {lam, y, {eTh, ePh}, {bTh, bPh}}
];

electricField[j_] := Module[{lam, y, e, b, f},
  {lam, y, e, b} = harmonics[j];
  f = ConstantArray[0, {4, 4}];
  f[[1, 2]] = -Sqrt[lam] psi[tau, rho] y/a^2;
  f[[1, 3]] = -D[psi[tau, rho], rho] e[[1]];
  f[[1, 4]] = -D[psi[tau, rho], rho] e[[2]];
  f[[2, 3]] = -D[psi[tau, rho], tau] e[[1]];
  f[[2, 4]] = -D[psi[tau, rho], tau] e[[2]];
  f - Transpose[f]
];

magneticField[j_] := Module[{lam, y, e, b, f},
  {lam, y, e, b} = harmonics[j];
  f = ConstantArray[0, {4, 4}];
  f[[1, 3]] = D[psi[tau, rho], tau] b[[1]];
  f[[1, 4]] = D[psi[tau, rho], tau] b[[2]];
  f[[2, 3]] = D[psi[tau, rho], rho] b[[1]];
  f[[2, 4]] = D[psi[tau, rho], rho] b[[2]];
  f[[3, 4]] = -Sqrt[lam] psi[tau, rho] y Sin[th];
  f - Transpose[f]
];

potentialElectricField[j_] := Module[{lam, y, e, b, avec},
  {lam, y, e, b} = harmonics[j];
  avec = {
    D[psi[tau, rho], rho] y/Sqrt[lam],
    D[psi[tau, rho], tau] y/Sqrt[lam],
    0,
    0
  };
  Table[D[avec[[nu]], coords[[mu]]] - D[avec[[mu]], coords[[nu]]],
    {mu, 4}, {nu, 4}]
];

harmonicResiduals[j_] := Module[{lam, y, e, b, divE, divB, curlE, curlB},
  {lam, y, e, b} = harmonics[j];
  divE = (D[Sin[th] e[[1]], th] + D[e[[2]]/Sin[th], ph])/Sin[th];
  divB = (D[Sin[th] b[[1]], th] + D[b[[2]]/Sin[th], ph])/Sin[th];
  curlE = D[e[[2]], th] - D[e[[1]], ph];
  curlB = D[b[[2]], th] - D[b[[1]], ph];
  FullSimplify[{
    (D[Sin[th] D[y, th], th] + D[y, {ph, 2}]/Sin[th])/Sin[th] + lam y,
    divE + Sqrt[lam] y,
    divB,
    curlE,
    curlB + Sqrt[lam] y Sin[th]
  }, assumptions]
];

fieldEquationResiduals[j_] := Module[{lam = j (j + 1), fe, fb, rule},
  fe = electricField[j];
  fb = magneticField[j];
  rule = masterRule[lam];
  {
    FullSimplify[bianchi[fe] /. rule, assumptions],
    FullSimplify[maxwell[fe] /. rule, assumptions],
    FullSimplify[bianchi[fb] /. rule, assumptions],
    FullSimplify[maxwell[fb] /. rule, assumptions]
  }
];

potentialResidual[j_] := Module[{lam = j (j + 1)},
  FullSimplify[
    potentialElectricField[j] - electricField[j] /. masterRule[lam],
    assumptions
  ]
];

dualityResiduals[j_] := Module[{fe = electricField[j], fb = magneticField[j], psineg},
  psineg = fb /. psi -> Function[{x, y}, -psi[x, y]];
  {
    FullSimplify[hodge[fe] - psineg, assumptions],
    FullSimplify[hodge[fb] - fe, assumptions]
  }
];

(* Direct angular integration of the unreduced electric and magnetic action
   densities for j=1,2,3. *)
electricUnreducedDensity[j_] := Module[{lam, y, e, b, f, fup, dens},
  {lam, y, e, b} = harmonics[j];
  f = ConstantArray[0, {4, 4}];
  f[[1, 2]] = el y;
  f[[1, 3]] = xt e[[1]]; f[[1, 4]] = xt e[[2]];
  f[[2, 3]] = xr e[[1]]; f[[2, 4]] = xr e[[2]];
  f = f - Transpose[f];
  fup = raiseTwo[f];
  dens = -sqrtg Sum[f[[mu, nu]] fup[[mu, nu]], {mu, 4}, {nu, 4}]/4;
  FullSimplify[Integrate[dens, {ph, 0, 2 Pi}, {th, 0, Pi}], assumptions]
];

magneticReducedDensity[j_] := Module[{f = magneticField[j], fup, dens},
  fup = raiseTwo[f];
  dens = -sqrtg Sum[f[[mu, nu]] fup[[mu, nu]], {mu, 4}, {nu, 4}]/4;
  FullSimplify[Integrate[dens, {ph, 0, 2 Pi}, {th, 0, Pi}], assumptions]
];

parentEliminationResidual[lam_] := Module[{p = psi[tau, rho], eliminated, target, div},
  eliminated = FullSimplify[
    1/2 a^2 (-Sqrt[lam] p/a^2)^2 +
    1/2 (-D[p, rho])^2 - 1/2 (-D[p, tau])^2 +
    p (D[-D[p, tau], tau] - D[-D[p, rho], rho] +
      Sqrt[lam] (-Sqrt[lam] p/a^2)), assumptions
  ];
  target = 1/2 D[p, tau]^2 - 1/2 D[p, rho]^2 - lam p^2/(2 a^2);
  div = -D[p D[p, tau], tau] + D[p D[p, rho], rho];
  FullSimplify[eliminated - target - div, assumptions]
];

samples = {1, 2, 3};
harmonicChecks = harmonicResiduals /@ samples;
equationChecks = fieldEquationResiduals /@ samples;
potentialChecks = potentialResidual /@ samples;
dualityChecks = dualityResiduals /@ samples;

electricActionChecks = Table[
  FullSimplify[electricUnreducedDensity[j] -
    (a^2 el^2/2 + xt^2/2 - xr^2/2), assumptions],
  {j, samples}
];

magneticActionChecks = Table[
  With[{lam = j (j + 1)},
    FullSimplify[magneticReducedDensity[j] -
      (D[psi[tau, rho], tau]^2/2 - D[psi[tau, rho], rho]^2/2 -
        lam psi[tau, rho]^2/(2 a^2)), assumptions]
  ],
  {j, samples}
];

checks = {
  "j=1,2,3 vector-harmonic identities" -> zeroArrayQ[harmonicChecks],
  "j=1,2,3 Maxwell/Bianchi residuals" -> zeroArrayQ[equationChecks],
  "j=1,2,3 unreduced electric action" -> zeroArrayQ[electricActionChecks],
  "j=1,2,3 reduced magnetic action" -> zeroArrayQ[magneticActionChecks],
  "electric parent action boundary term" -> And @@ Table[
    TrueQ[parentEliminationResidual[j (j + 1)] == 0], {j, samples}
  ],
  "optional q_E=0 potential reconstruction" -> zeroArrayQ[potentialChecks],
  "EM duality dictionary" -> zeroArrayQ[dualityChecks],
  "Lorentzian Hodge squared" -> zeroArrayQ[
    hodge[hodge[electricField[2]]] + electricField[2]
  ]
};

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];
If[!zeroArrayQ[equationChecks],
  Print["nonzero Maxwell/Bianchi residuals: ",
    DeleteCases[Flatten[equationChecks], 0]]
];
If[!zeroArrayQ[potentialChecks],
  Print["nonzero potential residuals: ",
    DeleteCases[Flatten[potentialChecks], 0]]
];

If[And @@ (Last /@ checks),
  Print["ALL MAXWELL MASTER-REDUCTION CHECKS PASSED"],
  Print["MAXWELL MASTER-REDUCTION CHECKS FAILED"];
  Quit[1]
];
