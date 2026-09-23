(* Exact convention checks for ads2-rindler regulated partial trace.md. *)

ClearAll["Global`*"];
$Assumptions = L > 0 && -Pi/2 < rho < Pi/2 && Element[{t, rho, L, m, eps}, Reals] && eps > 0;

xm1 = L Sec[rho] Cos[t];
x0 = L Sec[rho] Sin[t];
x1 = L Tan[rho];

zetaT = Sin[rho] Cos[t];
zetaRho = Cos[rho] Sin[t];

(* Embedding boost: delta X^(-1)=0, delta X^0=X^1, delta X^1=X^0. *)
boostResidual = FullSimplify[{
    zetaT D[xm1, t] + zetaRho D[xm1, rho],
    zetaT D[x0, t] + zetaRho D[x0, rho] - x1,
    zetaT D[x1, t] + zetaRho D[x1, rho] - x0
    }];

metric = L^2 Sec[rho]^2 DiagonalMatrix[{-1, 1}];
inverseMetric = FullSimplify[Inverse[metric]];
lieMetricResidual = FullSimplify@Table[
    zetaT D[metric[[mu, nu]], t] + zetaRho D[metric[[mu, nu]], rho]
      + metric[[1, nu]] D[zetaT, {t, rho}[[mu]]]
      + metric[[2, nu]] D[zetaRho, {t, rho}[[mu]]]
      + metric[[mu, 1]] D[zetaT, {t, rho}[[nu]]]
      + metric[[mu, 2]] D[zetaRho, {t, rho}[[nu]]],
    {mu, 2}, {nu, 2}];

(* T_tt from T_mn = d_m phi d_n phi - 1/2 g_mn[(d phi)^2+m^2 phi^2]. *)
kineticScalar = FullSimplify[inverseMetric[[1, 1]] phit^2 + inverseMetric[[2, 2]] phirho^2];
tTT = FullSimplify[phit^2 - metric[[1, 1]] (kineticScalar + m^2 phi^2)/2];
expectedTtt = (phit^2 + phirho^2 + m^2 L^2 Sec[rho]^2 phi^2)/2;
stressResidual = FullSimplify[tTT - expectedTtt];

(* On t=0, sqrt(h) n^t = 1 and zeta^t=sin(rho). *)
sliceMeasureNormal = FullSimplify[(L Sec[rho]) (Cos[rho]/L)];
boostDensityResidual = FullSimplify[
   (sliceMeasureNormal zetaT tTT /. t -> 0)
    - Sin[rho] expectedTtt];

nu = Coth[eps/2]/2;
williamsonEnergyResidual = FullSimplify[2 ArcCoth[2 nu] - eps];
thermalTraceResidual = FullSimplify[
   Sum[(1 - Exp[-eps]) Exp[-eps n], {n, 0, Infinity}] - 1];
thermalOccupationResidual = FullSimplify[
   Sum[n (1 - Exp[-eps]) Exp[-eps n], {n, 0, Infinity}]
    - (nu - 1/2)];

checks = <|
   "embedding_boost" -> (boostResidual === {0, 0, 0}),
   "boost_is_killing" -> (lieMetricResidual === ConstantArray[0, {2, 2}]),
   "stress_tensor_density" -> (stressResidual === 0),
   "slice_lapse_measure" -> (sliceMeasureNormal === 1),
   "right_boost_charge_density" -> (boostDensityResidual === 0),
   "williamson_energy" -> (williamsonEnergyResidual === 0),
   "thermal_trace" -> (thermalTraceResidual === 0),
   "thermal_occupation" -> (thermalOccupationResidual === 0)
   |>;

KeyValueMap[Print[#1, ": ", #2] &, checks];

ClearAll[uniformModularPairing];
uniformModularPairing[n_Integer, collar_?NumericQ, prec_Integer : 80] := Module[
  {nn = n, h, sites, weights, k, a = 2, op, vals, vecs, xcov, pcov,
   right, xr, pr, xs, xis, mid, nu2, oRows, nu, epsList, trans,
   gq, gp, rrho, kb, j, coeff, dist, bq, bp, qfun, pfun, qvec, pvec,
   qmod, qboost, pmod, pboost, smoothBump},
  h = N[Pi/nn, prec];
  sites = N[Table[-Pi/2 + (j - 1/2) Pi/nn, {j, 1, nn}], prec];
  weights = ConstantArray[h, nn];
  k = ConstantArray[0, {nn, nn}];
  k[[1, 1]] += 2/h; k[[-1, -1]] += 2/h;
  Do[
   coeff = 1/h;
   k[[j, j]] += coeff; k[[j + 1, j + 1]] += coeff;
   k[[j, j + 1]] -= coeff; k[[j + 1, j]] -= coeff,
   {j, 1, nn - 1}];
  k += DiagonalMatrix[h a Sec[sites]^2];
  op = N[k/h, prec];
  {vals, vecs} = Eigensystem[op];
  xcov = Transpose[vecs].DiagonalMatrix[1/(2 Sqrt[vals])].vecs;
  pcov = Transpose[vecs].DiagonalMatrix[Sqrt[vals]/2].vecs;
  right = Range[nn/2 + 1, nn];
  xr = xcov[[right, right]]; pr = pcov[[right, right]];
  xs = MatrixPower[xr, 1/2]; xis = MatrixPower[xr, -1/2];
  mid = (xs.pr.xs + Transpose[xs.pr.xs])/2;
  {nu2, oRows} = Eigensystem[mid];
  nu = Sqrt[nu2];
  epsList = Log[(nu + 1/2)/(nu - 1/2)];
  trans = DiagonalMatrix[Sqrt[nu]].oRows.xis;
  gq = Transpose[trans].DiagonalMatrix[epsList].trans;
  gp = Inverse[trans].DiagonalMatrix[epsList].Transpose[Inverse[trans]];

  rrho = sites[[right]];
  kb = ConstantArray[0, {nn/2, nn/2}];
  Do[
   coeff = (Cos[rrho[[j]]] - Cos[rrho[[j + 1]]])/(rrho[[j + 1]] - rrho[[j]])^2;
   kb[[j, j]] += coeff; kb[[j + 1, j + 1]] += coeff;
   kb[[j, j + 1]] -= coeff; kb[[j + 1, j]] -= coeff,
   {j, 1, nn/2 - 1}];
  dist = Pi/2 - rrho[[-1]];
  kb[[-1, -1]] += (Cos[rrho[[-1]]] - Cos[Pi/2])/dist^2;
  kb += DiagonalMatrix[h Sin[rrho] a Sec[rrho]^2];
  bq = kb/h; bp = DiagonalMatrix[Sin[rrho]];
  smoothBump[x_, left_, rightEdge_] := If[left < x < rightEdge,
    Exp[-(rightEdge - left)^2/(4 (x - left) (rightEdge - x))], 0];
  qfun = smoothBump[#, collar, 1.18] & /@ rrho;
  pfun = smoothBump[#, Max[collar + 0.08, 0.22], 1.28] & /@ rrho;
  qfun = qfun/Sqrt[h qfun.qfun]; pfun = pfun/Sqrt[h pfun.pfun];
  qvec = Sqrt[h] qfun; pvec = Sqrt[h] pfun;
  qmod = qvec.gq.qvec; qboost = 2 Pi qvec.bq.qvec;
  pmod = pvec.gp.pvec; pboost = 2 Pi pvec.bp.pvec;
  {N[Abs[qmod - qboost]/Abs[qboost], 12],
   N[Abs[pmod - pboost]/Abs[pboost], 12],
   N[Min[nu] - 1/2, 6]}
  ];

Print["HighPrecisionModularKernelTable N epsilon qPairRel pPairRel minNuMinusHalf"];
Do[
  result = uniformModularPairing[nn, collar, 90];
  Print[nn, " ", ToString[N[collar, 3], InputForm], " ",
    ToString[N[result[[1]], 6], InputForm], " ", ToString[N[result[[2]], 6], InputForm], " ",
    ToString[N[result[[3]], 6], InputForm]],
  {nn, {12, 16, 20, 24, 32}}, {collar, {0.12, 0.24}}];

If[And @@ Values[checks], Print["ExactChecksPassed"], Print["ExactChecksFailed"]; Exit[1]];
