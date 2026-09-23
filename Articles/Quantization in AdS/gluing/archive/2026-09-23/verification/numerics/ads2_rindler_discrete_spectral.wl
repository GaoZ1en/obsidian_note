(* Exact finite spectral-DVR/Jacobi consistency regression for the
   global--AdS2-Rindler Bogoliubov kernels at Delta=2.  This is not an
   independent continuum discretization: its nodes, Christoffel weights and
   kernels share the same truncated boost-Jacobi realization. *)

ClearAll["Global`*"];

args = Rest[$ScriptCommandLine];
nGlobal = If[Length[args] >= 1, ToExpression[args[[1]]], 128];
nSpectral = If[Length[args] >= 2, ToExpression[args[[2]]], nGlobal];
omegaMax = If[Length[args] >= 3, ToExpression[args[[3]]], 8];
workingPrecision = If[Length[args] >= 4, ToExpression[args[[4]]], 80];
inverseModes = If[Length[args] >= 5, ToExpression[args[[5]]], 12];

betaKMS = 2 Pi;
coreOmegaMin = 1/5;
coreOmegaMax = Min[4, omegaMax];

If[nGlobal > nSpectral,
 Print["nGlobal must not exceed nSpectral"];
 Exit[2]
 ];

(* K=(L_++L_-)/2 in the Delta=2 global basis.  Its positive Ritz values are
   Gaussian nodes for the continuous boost spectral measure. *)
boostJacobi = ConstantArray[0, {nSpectral, nSpectral}];
Do[
 boostJacobi[[n + 1, n + 2]] = Sqrt[(n + 1) (n + 4)]/2;
 boostJacobi[[n + 2, n + 1]] = boostJacobi[[n + 1, n + 2]],
 {n, 0, nSpectral - 2}
 ];
allNodes = Sort[Eigenvalues[N[boostJacobi, workingPrecision]]];
omegaNodesAll = Select[allNodes, # > 10^(-workingPrecision/3) &];
omegaNodes = Select[omegaNodesAll, # <= omegaMax &];

ClearAll[sechCos, tanhSechSin, tanh2SechCos];
sechCos[0, w_] := 0;
sechCos[p_Integer?Positive, w_] :=
  2^(p - 2) Gamma[(p + I w)/2] Gamma[(p - I w)/2]/Gamma[p];
tanhSechSin[0, w_] := Pi/(2 Sinh[Pi w/2]);
tanhSechSin[p_Integer?Positive, w_] := w sechCos[p, w]/p;
tanh2SechCos[p_Integer?NonNegative, w_] := sechCos[p, w] - sechCos[p + 2, w];

gegenbauerCoefficients = Table[CoefficientList[GegenbauerC[n, 2, y], y], {n, 0, nSpectral - 1}];

ClearAll[overlapRow];
overlapRow[w_] := Module[
  {s, c, radialNorm, alpha, beta, coeff, omegaN, common, edge,
   plus, minus, modeNorm, prefactor, maxPower},
  maxPower = nSpectral + 2;
  s = Table[N[tanhSechSin[p, w], workingPrecision], {p, 0, maxPower}];
  c = Table[N[tanh2SechCos[p, w], workingPrecision], {p, 0, maxPower}];
  radialNorm = Sqrt[2/Pi]/Sqrt[1 + w^2];
  alpha = ConstantArray[0, nSpectral];
  beta = ConstantArray[0, nSpectral];
  Do[
   coeff = gegenbauerCoefficients[[n + 1]];
   omegaN = n + 2;
   common = Table[omegaN s[[p + 2]] - w omegaN c[[p + 2]], {p, 0, n}];
   edge = Table[w s[[p + 1]] - w^2 c[[p + 1]], {p, 0, n}];
   plus = coeff . (common + edge);
   minus = coeff . (common - edge);
   modeNorm = Sqrt[4/(Pi (n + 1) (n + 2) (n + 3))];
   prefactor = modeNorm radialNorm/Sqrt[2 w];
   alpha[[n + 1]] = prefactor plus;
   beta[[n + 1]] = prefactor minus,
   {n, 0, nSpectral - 1}
   ];
  {Re[alpha], Re[beta]}
  ];

rows = overlapRow /@ omegaNodes;
alphaRaw = rows[[All, 1]];
betaRaw = rows[[All, 2]];
phaseAuditIndices = Flatten@Position[omegaNodes, w_ /; coreOmegaMin <= w <= coreOmegaMax];
thermalPhaseResidual = Max@Table[
    Norm[betaRaw[[k]] + Exp[-Pi omegaNodes[[k]]]
       alphaRaw[[k]] (-1)^Range[0, nSpectral - 1]]/
     Max[Norm[betaRaw[[k]]], 10^(-workingPrecision/2)],
    {k, phaseAuditIndices}];
recurrenceResidual = Max@Table[
    With[{w = omegaNodes[[k]], av = alphaRaw[[k]]},
     Max@Table[
       Abs[w av[[n + 1]] -
          (If[n == 0, 0, Sqrt[n (n + 3)] av[[n]]/2] +
            Sqrt[(n + 1) (n + 4)] av[[n + 2]]/2)],
       {n, 0, nSpectral - 2}]/Max[Norm[av], 10^(-workingPrecision/2)]
     ],
    {k, Length[omegaNodes]}];
(* Christoffel weights convert the delta-normalized continuum kernels into
   the finite Gaussian quadrature.  They are fixed by the nSpectral Jacobi
   rule, not by the smaller nGlobal diagnostic cutoff. *)
deltaOmega = Table[
   1/((1 - Exp[-2 Pi omegaNodes[[k]]]) Total[alphaRaw[[k]]^2]),
   {k, Length[omegaNodes]}];
scale = DiagonalMatrix[Sqrt[deltaOmega]];
aaFull = scale . alphaRaw;
bbFull = scale . betaRaw;
aa = aaFull[[All, 1 ;; nGlobal]];
bb = bbFull[[All, 1 ;; nGlobal]];

coreIndices = Flatten@Position[omegaNodes, w_ /; coreOmegaMin <= w <= coreOmegaMax];
wc = omegaNodes[[coreIndices]];
ac = aa[[coreIndices]];
bc = bb[[coreIndices]];
mc = Length[wc];
identity = IdentityMatrix[mc];

fro[m_] := Norm[m, "Frobenius"];
relative[a_, b_] := N[fro[a - b]/Max[fro[b], 10^(-workingPrecision/2)], 20];

ccr1 = ac . Transpose[ac] - bc . Transpose[bc];
ccr2 = ac . Transpose[bc] - bc . Transpose[ac];
eCCR = Max[relative[ccr1, identity], N[fro[ccr2]/Sqrt[mc], 20]];

occupation = bc . Transpose[bc];
planck = DiagonalMatrix[1/(Exp[betaKMS wc] - 1)];
offDiagonal = occupation - DiagonalMatrix[Diagonal[occupation]];
anomalous = -ac . Transpose[bc];
ePlanck = relative[occupation, planck];
eOffDiagonal = N[fro[offDiagonal]/Max[fro[planck], 10^(-workingPrecision/2)], 20];
eAnomalous = N[fro[anomalous]/Sqrt[mc], 20];
ratio = Diagonal[occupation]/Diagonal[identity + occupation];
detailed = Exp[-betaKMS wc];
eDetailed = N[Norm[ratio - detailed]/Max[Norm[detailed], 10^(-workingPrecision/2)], 20];

ni = Min[inverseModes, nGlobal];
parity = (-1)^Range[0, ni - 1];
ar = aa[[All, 1 ;; ni]];
br = bb[[All, 1 ;; ni]];
al = ar . DiagonalMatrix[parity];
bl = br . DiagonalMatrix[parity];
inverse1 = Transpose[ar] . ar + Transpose[al] . al -
   Transpose[br] . br - Transpose[bl] . bl;
inverse2 = Transpose[ar] . br + Transpose[al] . bl -
   Transpose[br] . ar - Transpose[bl] . al;
rightOnly = Transpose[ar] . ar - Transpose[br] . br;
eInverse = Max[relative[inverse1, IdentityMatrix[ni]], N[fro[inverse2]/Sqrt[ni], 20]];
eInverseRightOnly = relative[rightOnly, IdentityMatrix[ni]];

f = Exp[-1/2 ((wc - 17/20)/(7/25))^2] Exp[I 17 wc/100];
g = Exp[-1/2 ((wc - 13/10)/(17/50))^2] Exp[-I 11 wc/100];
f = f/Norm[f];
g = g/Norm[g];
cBBdag = ac . Transpose[ac];
nBdagB = Transpose[occupation];
pBB = anomalous;

ClearAll[kmsFunction];
kmsFunction[z_, ff_, gg_] := Module[{dm, dp},
  dm = Exp[-I wc z];
  dp = Exp[I wc z];
  ff . pBB . (dm gg) +
   ff . cBBdag . (dp Conjugate[gg]) +
   Conjugate[ff] . nBdagB . (dm gg) +
   Conjugate[ff] . Conjugate[Transpose[pBB]] . (dp Conjugate[gg])
  ];

sValues = {-7/10, 0, 9/10};
yValues = Subdivide[0, betaKMS, 16];
kmsPairs = Flatten[
   Table[
    {kmsFunction[s + I y, f, g],
     kmsFunction[-s + I (betaKMS - y), g, f]},
    {s, sValues}, {y, yValues}], 1];
kmsScale = Max[Abs[Flatten[kmsPairs]]];
eKMS = N[Max[Abs[(#[[1]] - #[[2]]) & /@ kmsPairs]]/Max[kmsScale, 10^(-workingPrecision/2)], 20];

result = <|
   "classification" -> "exact_finite_spectral_DVR_Jacobi_regression",
   "n_global" -> nGlobal,
   "n_spectral_basis" -> nSpectral,
   "omega_max" -> omegaMax,
   "working_precision" -> workingPrecision,
   "n_spectral" -> Length[omegaNodes],
   "n_core" -> mc,
   "E_kernel_boost_recurrence" -> N[recurrenceResidual, 20],
   "E_kernel_thermal_phase" -> N[thermalPhaseResidual, 20],
   "E_CCR" -> eCCR,
   "E_inverse_R_plus_L" -> eInverse,
   "E_inverse_R_only_control" -> eInverseRightOnly,
   "E_anomalous" -> eAnomalous,
   "E_Planck" -> ePlanck,
   "E_offdiagonal" -> eOffDiagonal,
   "E_detailed_balance" -> eDetailed,
   "E_KMS" -> eKMS,
   "strip_max_abs" -> N[kmsScale, 20]
   |>;

Print[ExportString[result, "RawJSON"]];
