(* Independent checks of displayed Cotler-Jensen 1808.03263v3 equations.
   All output files belong to this new audit directory. No source files modified. *)
ClearAll[cb, bb, w, eps, a, beta, y, th, tau2, t, prop, exch, loop, expected, hk, cutoff, phi, dens, quad, result];
result = Block[{$Messages = {}, $MessageList = {}},
  prop = -12/cb Log[1 - Exp[I w]]; (* Eq. (5.56), y>0 branch, away from coincidences *)
  exch = cb^2/144 (D[prop, {w, 4}] - bb D[prop, {w, 2}]);
  loop = 2 (cb/24)^2 D[prop, {w, 2}]^2;
  expected = (cb + 1)/(32 Sin[w/2]^4) - cb (bb + 1)/(48 Sin[w/2]^2);
  hk = (4 Pi)^(-3/2) (Gamma[-3/2] (1 - 4^(3/2)) + Gamma[-1/2] (8 - 2 Sqrt[4]));
  cutoff = (4 Pi)^(-3/2) (Gamma[-3/2, eps] + 8 Gamma[-1/2, eps] - 8 Gamma[-3/2, 4 eps] - 4 Gamma[-1/2, 4 eps]);
  phi = th + a Cos[2 th]; (* single real static mode, tau = i tau2 *)
  dens = cb/(48 Pi) ((D[phi, {th, 2}]/D[phi, th])^2 - D[phi, th]^2);
  quad = FullSimplify[2 Pi tau2 Integrate[Coefficient[Normal[Series[dens, {a, 0, 2}]], a, 2], {th, 0, 2 Pi}], Assumptions -> cb > 0 && tau2 > 0];
  <|
    "Kernel" -> $Version,
    "Assumptions" -> "C=cb>0; B=bb real. TT formulas at separated w on the y>0 analytic branch. eps>0 approaches zero. beta>0, a real. Quadratic check uses tau=i*tau2, tau2>0, phi=theta+a cos(2theta).",
    "ZetaVacuumSum" -> (Zeta[-1] - 1),
    "SmoothCutoffVacuumSum" -> Series[Exp[-eps]/(1 - Exp[-eps])^2 - Exp[-eps], {eps, 0, 2}],
    "HeatKernelGammaFinitePart" -> FullSimplify[hk],
    "HeatKernelCutoffExpansion" -> FullSimplify[Series[cutoff, {eps, 0, 0}], Assumptions -> eps > 0],
    "TTExchangeResidual" -> FullSimplify[exch - (cb/(32 Sin[w/2]^4) - cb (bb + 1)/(48 Sin[w/2]^2)), Assumptions -> cb > 0 && Element[bb, Reals]],
    "TTLoopResidual" -> FullSimplify[loop - 1/(32 Sin[w/2]^4), Assumptions -> cb > 0],
    "TTTotalResidual" -> FullSimplify[exch + loop - expected, Assumptions -> cb > 0 && Element[bb, Reals]],
    "TTLeadingSingularity" -> Limit[w^4 (exch + loop), w -> 0],
    "CylinderPointSplitCurrentFinitePart" -> FullSimplify[Limit[-D[prop, {w, 2}] + 12/(cb w^2), w -> 0], Assumptions -> cb > 0],
    "LocalizationBosonCounterexample" -> FullSimplify[Integrate[-D[a Cos[2 Pi y/beta], y]^2, {y, 0, beta}], Assumptions -> beta > 0 && Element[a, Reals]],
    "StaticN2QuadraticActionCoefficientFrom58" -> quad,
    "StaticN2QuadraticActionCoefficientPrinted518" -> FullSimplify[cb tau2/(96 Pi^3) * 2 * 2^2*(2^2 - 1)*(2 Pi^2)^2],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/audit-checks-output.txt", ToString[result, InputForm, PageWidth -> 110], "Text"];
result
