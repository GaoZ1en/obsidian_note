(* Independent top-hat spectral-bin audit for the Delta=2 AdS2--Rindler
   Bogoliubov kernels.  The bin edges and the Gauss--Legendre rule do not use
   alpha, beta, a thermal factor, or the boost Jacobi matrix. *)

ClearAll["Global`*"];

args = Rest[$ScriptCommandLine];
nGlobal = If[Length[args] >= 1, ToExpression[args[[1]]], 64];
nBins = If[Length[args] >= 2, ToExpression[args[[2]]], 16];
omegaMin = If[Length[args] >= 3, Rationalize[ToExpression[args[[3]]], 0], 1/5];
omegaMax = If[Length[args] >= 4, Rationalize[ToExpression[args[[4]]], 0], 4];
quadOrder = If[Length[args] >= 5, ToExpression[args[[5]]], 16];
workingPrecision = If[Length[args] >= 6, ToExpression[args[[6]]], 70];
inverseModes = If[Length[args] >= 7, ToExpression[args[[7]]], 12];

If[!(0 < omegaMin < omegaMax) || nBins < 1 || nGlobal < 1 || quadOrder < 2,
 Print["Require 0 < omega_min < omega_max and positive cutoffs."];
 Exit[2]
 ];

betaKMS = 2 Pi;
coreOmegaMin = 1/5;
coreOmegaMax = Min[4, omegaMax];
tiny = 10^(-Floor[workingPrecision/2]);

ClearAll[sechCos, tanhSechSin, tanh2SechCos];
sechCos[0, w_] := 0;
sechCos[p_Integer?Positive, w_] :=
  2^(p - 2) Gamma[(p + I w)/2] Gamma[(p - I w)/2]/Gamma[p];
tanhSechSin[0, w_] := Pi/(2 Sinh[Pi w/2]);
tanhSechSin[p_Integer?Positive, w_] := w sechCos[p, w]/p;
tanh2SechCos[p_Integer?NonNegative, w_] :=
  sechCos[p, w] - sechCos[p + 2, w];

gegenbauerCoefficients =
  Table[CoefficientList[GegenbauerC[n, 2, y], y], {n, 0, nGlobal - 1}];

ClearAll[overlapRow];
overlapRow[w_] := Module[
  {s, c, alpha, beta, coeff, omegaN, common, edge, plus, minus,
   modeNorm, radialNorm, prefactor, maxPower},
  maxPower = nGlobal + 2;
  s = Table[N[tanhSechSin[p, w], workingPrecision], {p, 0, maxPower}];
  c = Table[N[tanh2SechCos[p, w], workingPrecision], {p, 0, maxPower}];
  alpha = ConstantArray[0, nGlobal];
  beta = ConstantArray[0, nGlobal];
  radialNorm = Sqrt[2/Pi]/Sqrt[1 + w^2];
  Do[
   coeff = gegenbauerCoefficients[[n + 1]];
   omegaN = n + 2;
   common = Table[
     omegaN s[[p + 2]] - w omegaN c[[p + 2]], {p, 0, n}];
   edge = Table[w s[[p + 1]] - w^2 c[[p + 1]], {p, 0, n}];
   plus = coeff . (common + edge);
   minus = coeff . (common - edge);
   modeNorm = Sqrt[4/(Pi (n + 1) (n + 2) (n + 3))];
   prefactor = modeNorm radialNorm/Sqrt[2 w];
   alpha[[n + 1]] = prefactor plus;
   beta[[n + 1]] = prefactor minus,
   {n, 0, nGlobal - 1}
   ];
  {Re[alpha], Re[beta]}
  ];

(* Golub--Welsch for the ordinary Legendre weight on [-1,1].  This Jacobi
   matrix belongs only to the requested independent Gauss--Legendre rule. *)
legendreJacobi = ConstantArray[0, {quadOrder, quadOrder}];
Do[
 legendreJacobi[[j, j + 1]] = j/Sqrt[(2 j - 1) (2 j + 1)];
 legendreJacobi[[j + 1, j]] = legendreJacobi[[j, j + 1]],
 {j, 1, quadOrder - 1}
 ];
legendreSystem = Eigensystem[N[legendreJacobi, workingPrecision]];
legendreOrder = Ordering[legendreSystem[[1]]];
legendreNodes = legendreSystem[[1, legendreOrder]];
legendreWeights = 2 legendreSystem[[2, legendreOrder, 1]]^2;
legendreMomentResidual = Max[
  Abs@Table[
    legendreWeights . legendreNodes^p - If[EvenQ[p], 2/(p + 1), 0],
    {p, 0, 2 quadOrder - 1}]
  ];

binEdges = N[Subdivide[omegaMin, omegaMax, nBins], workingPrecision];
binIntervals = Partition[binEdges, 2, 1];
binWidths = Differences[binEdges];
binCenters = Mean /@ binIntervals;

ClearAll[binRow];
binRow[{a_, b_}] := Module[{half, mid, points, weights, rows},
  half = (b - a)/2;
  mid = (a + b)/2;
  points = mid + half legendreNodes;
  weights = half legendreWeights;
  rows = overlapRow /@ points;
  {
   Total[MapThread[#1 #2[[1]] &, {weights, rows}]]/Sqrt[b - a],
   Total[MapThread[#1 #2[[2]] &, {weights, rows}]]/Sqrt[b - a]
   }
  ];

binRows = binRow /@ binIntervals;
aa = binRows[[All, 1]];
bb = binRows[[All, 2]];
parity = DiagonalMatrix[(-1)^Range[0, nGlobal - 1]];
al = aa . parity;
bl = bb . parity;

coreIndices = Flatten@Position[
   binCenters, w_ /; coreOmegaMin <= w <= coreOmegaMax];
ac = aa[[coreIndices]];
bc = bb[[coreIndices]];
coreIntervals = binIntervals[[coreIndices]];
coreWidths = binWidths[[coreIndices]];
coreCenters = binCenters[[coreIndices]];
mc = Length[coreIndices];

fro[m_] := Norm[m, "Frobenius"];
relative[a_, b_] := N[fro[a - b]/Max[fro[b], tiny], 16];

identityCore = IdentityMatrix[mc];
ccr1 = ac . Transpose[ac] - bc . Transpose[bc];
ccr2 = ac . Transpose[bc] - bc . Transpose[ac];
eCCR1 = relative[ccr1, identityCore];
eCCR2 = N[fro[ccr2]/Sqrt[mc], 16];
eCCR = Max[eCCR1, eCCR2];

occupation = bc . Transpose[bc];
bbdag = ac . Transpose[ac];
anomalous = -ac . Transpose[bc];
thermalAverage[{a_, b_}] :=
  (Log[1 - Exp[-betaKMS b]] - Log[1 - Exp[-betaKMS a]])/
   (betaKMS (b - a));
thermalDiagonal = thermalAverage /@ coreIntervals;
thermalTarget = DiagonalMatrix[thermalDiagonal];
bbdagTarget = IdentityMatrix[mc] + thermalTarget;
offDiagonal = occupation - DiagonalMatrix[Diagonal[occupation]];
eOccupation = relative[occupation, thermalTarget];
eBBdagThermal = relative[bbdag, bbdagTarget];
eOffDiagonal = N[fro[offDiagonal]/Max[fro[thermalTarget], tiny], 16];
eAnomalous = N[fro[anomalous]/Sqrt[mc], 16];

(* Bin-resolved detailed balance is the simultaneous comparison with the
   directly integrated n_B and 1+n_B covariances.  No bin-centre exponential
   and no ill-conditioned covariance inverse is used. *)
eDetailedBalance = Max[eOccupation, eBBdagThermal];

ni = Min[inverseModes, nGlobal];
ari = aa[[All, 1 ;; ni]];
bri = bb[[All, 1 ;; ni]];
ali = al[[All, 1 ;; ni]];
bli = bl[[All, 1 ;; ni]];
inverse1 = Transpose[ari] . ari + Transpose[ali] . ali -
   Transpose[bri] . bri - Transpose[bli] . bli;
inverse2 = Transpose[ari] . bri + Transpose[ali] . bli -
   Transpose[bri] . ari - Transpose[bli] . ali;
rightOnly = Transpose[ari] . ari - Transpose[bri] . bri;
eInverse1 = relative[inverse1, IdentityMatrix[ni]];
eInverse2 = N[fro[inverse2]/Sqrt[ni], 16];
eInverse = Max[eInverse1, eInverse2];
eInverseRightOnly = relative[rightOnly, IdentityMatrix[ni]];

(* Exact top-hat compression of boost multiplication. *)
ClearAll[projectedMinus, projectedPlus];
projectedMinus[z_] := MapThread[
   If[PossibleZeroQ[z], 1,
     Exp[-I #1 z] Sinc[#2 z/(2 Pi)]] &,
   {coreCenters, coreWidths}];
projectedPlus[z_] := projectedMinus[-z];

f = Sqrt[coreWidths] Exp[-1/2 ((coreCenters - 17/20)/(7/25))^2]
    Exp[I 17 coreCenters/100];
g = Sqrt[coreWidths] Exp[-1/2 ((coreCenters - 13/10)/(17/50))^2]
    Exp[-I 11 coreCenters/100];
f = f/Norm[f];
g = g/Norm[g];

(* F_fg(z)=<O_f(0) O_g(z)> with O_f=f.b+conjugate(f).b^dagger. *)
ClearAll[kmsFunctionWithCovariance, kmsFunction];
kmsFunctionWithCovariance[z_, ff_, gg_, cMatrix_, nMatrix_, mMatrix_] :=
 Module[{um, up},
  um = DiagonalMatrix[projectedMinus[z]];
  up = DiagonalMatrix[projectedPlus[z]];
  ff . mMatrix . Transpose[um] . gg +
   ff . cMatrix . Transpose[up] . Conjugate[gg] +
   Conjugate[ff] . nMatrix . Transpose[um] . gg +
   Conjugate[ff] . Conjugate[mMatrix] . Transpose[up] . Conjugate[gg]
  ];
kmsFunction[z_, ff_, gg_] :=
  kmsFunctionWithCovariance[z, ff, gg, bbdag, occupation, anomalous];
kmsTargetFunction[z_, ff_, gg_] :=
  kmsFunctionWithCovariance[z, ff, gg, bbdagTarget, thermalTarget,
   ConstantArray[0, {mc, mc}]];

sValues = {-7/10, 0, 9/10};
yValues = Subdivide[0, betaKMS, 16];
kmsPairs = Flatten[
   Table[
    {kmsFunction[s + I y, f, g],
     kmsFunction[-s + I (betaKMS - y), g, f]},
    {s, sValues}, {y, yValues}], 1];
kmsScale = Max[Abs[Flatten[kmsPairs]]];
eKMS = N[Max[Abs[(#[[1]] - #[[2]]) & /@ kmsPairs]]/
    Max[kmsScale, tiny], 16];
upperPairs = Table[
   {kmsFunction[s + I betaKMS, f, g], kmsFunction[-s, g, f]},
   {s, sValues}];
eKMSUpper = N[Max[Abs[(#[[1]] - #[[2]]) & /@ upperPairs]]/
    Max[Max[Abs[Flatten[upperPairs]]], tiny], 16];
targetKMSPairs = Flatten[
   Table[
    {kmsTargetFunction[s + I y, f, g],
     kmsTargetFunction[-s + I (betaKMS - y), g, f]},
    {s, sValues}, {y, yValues}], 1];
targetKMSScale = Max[Abs[Flatten[targetKMSPairs]]];
eKMSTargetProjection = N[
   Max[Abs[(#[[1]] - #[[2]]) & /@ targetKMSPairs]]/
    Max[targetKMSScale, tiny], 16];

result = <|
   "classification" -> "independent_spectral_bin_discretization",
   "basis" -> "uniform_normalized_top_hat_bins",
   "quadrature" -> "independent_Gauss_Legendre",
   "n_global" -> nGlobal,
   "n_bins" -> nBins,
   "omega_min" -> N[omegaMin, 10],
   "omega_max" -> N[omegaMax, 10],
   "quadrature_order_per_bin" -> quadOrder,
   "working_precision" -> workingPrecision,
   "inverse_test_modes" -> ni,
   "n_core_bins" -> mc,
   "E_Legendre_moments" -> N[legendreMomentResidual, 16],
   "E_CCR_commutator" -> eCCR1,
   "E_CCR_symplectic" -> eCCR2,
   "E_CCR" -> eCCR,
   "E_inverse_R_plus_L_primary" -> eInverse1,
   "E_inverse_R_plus_L_secondary" -> eInverse2,
   "E_inverse_R_plus_L" -> eInverse,
   "E_inverse_R_only_control" -> eInverseRightOnly,
   "E_occupation_thermal_integral" -> eOccupation,
   "E_bbdag_thermal_integral" -> eBBdagThermal,
   "E_occupation_offdiagonal" -> eOffDiagonal,
   "E_anomalous" -> eAnomalous,
   "E_detailed_balance_compressed" -> eDetailedBalance,
   "E_KMS_full_strip" -> eKMS,
   "E_KMS_upper_boundary" -> eKMSUpper,
   "E_KMS_target_projection_defect" -> eKMSTargetProjection,
   "KMS_strip_max_abs" -> N[kmsScale, 16]
   |>;

Print[ExportString[result, "RawJSON"]];
