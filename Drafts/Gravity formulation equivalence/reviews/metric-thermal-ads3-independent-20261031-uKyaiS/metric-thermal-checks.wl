(* Independent metric thermal-AdS3 audit. New private output directory only.
   All definitions self-contained. No pre-existing outputs may be overwritten. *)
ClearAll["Global`*"];
auditDir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS";
outputFiles = FileNameJoin[{auditDir, #}] & /@ {"metric-thermal-diagnostics.wxf", "metric-thermal-diagnostics.txt"};
If[!DirectoryQ[auditDir] || AnyTrue[outputFiles, FileExistsQ], Print["REFUSED: output directory absent or target exists"]; Abort[]];
report = Block[{$Messages = {}, $MessageList = {}}, Module[
 {properTime, gaussian, pairedCharacter, literalHalfLine, algebra, densityAC,
  uvSeries, volume, vacuumShift, sharpSum, smoothSeries, qCases, qChecks,
  quadratureCases, quadratures, cutoffChecks, cutoffDensity, mainKernel,
  exactImage, winding, productLog, windingBound, productBound, ncut = 2500,
  mcut = 800, tests, chiralSeries, literalNumeric, result, failed, unevaluated},
 properTime = Integrate[u^(-3/2) Exp[-b^2/(4 u) - a^2 u], {u, 0, Infinity},
   Assumptions -> a > 0 && b > 0];
 gaussian = Integrate[Exp[-u lam^2] Cos[b lam], {lam, 0, Infinity},
   Assumptions -> u > 0 && Element[b, Reals]];
 pairedCharacter = FullSimplify[(Cos[A - B] + Cos[-A - B])/2 - Cos[A] Cos[B],
   Assumptions -> Element[{A, B}, Reals]];
 literalHalfLine = Integrate[Exp[-u lam^2] Sin[b lam], {lam, 0, Infinity},
   Assumptions -> u > 0 && b > 0];
 literalNumeric = N[(Sin[7/5] literalHalfLine /. {u -> 2/5, b -> 13/10}), 40];
 algebra = Together[(x^2 + y^2 - x y (x + y))/((1 - x) (1 - y)) - x^2/(1 - x) - y^2/(1 - y)];
 densityAC = FullSimplify[(Gamma[-3/2] (1 - 8) + Gamma[-1/2] (8 - 4))/(4 Pi)^(3/2)];
 uvSeries = Series[((1 + 8 u) Exp[-u] - (1 + 2 u) Exp[-4 u]), {u, 0, 4}];
 volume = Limit[Pi beta R^2 - Pi beta R Sqrt[1 + R^2], R -> Infinity,
   Assumptions -> beta > 0];
 vacuumShift = FullSimplify[densityAC volume, Assumptions -> beta > 0];
 sharpSum = Sum[n, {n, 2, nn}, Assumptions -> Element[nn, Integers] && nn >= 2];
 smoothSeries = Series[Exp[-eps]/(1 - Exp[-eps])^2 - Exp[-eps], {eps, 0, 4}];
 chiralSeries = Series[Product[1/(1 - z^n), {n, 2, 12}], {z, 0, 12}];
 winding[qq_, mm_] := Total[Table[Re[2 qq^(2 m)/(m (1 - qq^m))], {m, 1, mm}]];
 productLog[qq_, nn_] := -Total[Table[Log[Abs[1 - qq^n]^2], {n, 2, nn}]];
 windingBound[rr_, mm_] := 2 rr^(2 (mm + 1))/((mm + 1) (1 - rr) (1 - rr^2));
 productBound[rr_, nn_] := 2 rr^(nn + 1)/((1 - rr) (1 - rr^(nn + 1)));
 qCases = {7 I/10, 23/100 + 2 I/5, -37/100 + 11 I/100, 49/100 + 3 I/100, I/50};
 qChecks = Table[Module[{tau = tc, qq, rr, w, p, eb},
   qq = N[Exp[2 Pi I tau], 90]; rr = Abs[qq];
   w = winding[qq, mcut]; p = productLog[qq, ncut];
   eb = windingBound[rr, mcut] + productBound[rr, ncut];
   <|"TauExact" -> tau, "AbsQ" -> rr, "M" -> mcut, "N" -> ncut,
     "WindingLog" -> w, "ProductLog" -> p, "Residual" -> w - p,
     "AnalyticTruncationBound" -> eb,
     "WithinTailPlus1e-75" -> (Abs[w - p] < eb + 10^-75)|>], {tc, qCases}];
 mainKernel[tt_, bb_, th_, mm_] := bb/(2 Sqrt[4 Pi] Abs[Sin[mm (th + I bb)/2]]^2)
   tt^(-3/2) Exp[-(mm bb)^2/(4 tt)] (Exp[-tt] Cos[2 mm th] - Exp[-4 tt] Cos[mm th]);
 exactImage[bb_, th_, mm_] := (Exp[-mm bb] Cos[2 mm th] - Exp[-2 mm bb] Cos[mm th])/
   (2 mm Abs[Sin[mm (th + I bb)/2]]^2);
 quadratureCases = {{17/10, 2/5, 1}, {17/10, 2/5, 3}, {17/10, 2/5, 7},
   {3/10, 6/5, 1}, {3/10, 6/5, 3}, {3/10, 6/5, 7}, {31/10, 0, 1}, {31/10, 0, 3}};
 quadratures = Table[Module[{bb = cc[[1]], th = cc[[2]], mm = cc[[3]], ni, ex},
   ni = NIntegrate[mainKernel[tt, bb, th, mm], {tt, 0, 1, Infinity},
     WorkingPrecision -> 75, AccuracyGoal -> 55, PrecisionGoal -> 55,
     MaxRecursion -> 35, Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}];
   ex = N[exactImage[bb, th, mm], 75];
   <|"BetaThetaM" -> cc, "Quadrature" -> ni, "ClosedForm" -> ex,
     "Residual" -> ni - ex, "Pass1e-50" -> (Abs[ni - ex] < 10^-50)|>], {cc, quadratureCases}];
 cutoffDensity[ee_] := (Gamma[-3/2, ee] - 8 Gamma[-3/2, 4 ee] +
   8 Gamma[-1/2, ee] - 4 Gamma[-1/2, 4 ee])/(4 Pi)^(3/2);
 cutoffChecks = Table[Module[{raw, sub, accelerated},
   raw = N[cutoffDensity[ee], 80];
   sub = raw - N[18/(4 Pi)^(3/2)/Sqrt[ee], 80];
   accelerated = sub - N[15 Sqrt[ee]/(4 Pi)^(3/2), 80];
   <|"EpsilonExact" -> ee, "CutoffDensity" -> raw, "PowerSubtracted" -> sub,
     "TargetDensity" -> N[densityAC, 80], "Residual" -> sub - N[densityAC, 80],
     "SubtractLeadingSqrtEpsilonResidual" -> accelerated - N[densityAC, 80]|>],
   {ee, {1/10^4, 1/10^8, 1/10^12}}];
 tests = <|
   "ProperTimeIntegral" -> TrueQ[FullSimplify[properTime == 2 Sqrt[Pi] Exp[-a b]/b, Assumptions -> a > 0 && b > 0]],
   "GaussianCosineIntegral" -> TrueQ[FullSimplify[gaussian == Sqrt[Pi] Exp[-b^2/(4 u)]/(2 Sqrt[u]), Assumptions -> u > 0 && b > 0]],
   "HelicityPairing" -> (pairedCharacter === 0), "QAlgebra" -> (algebra === 0),
   "IdentityDensity" -> TrueQ[densityAC == -13/(6 Pi)],
   "RenormalizedVolume" -> TrueQ[volume == -Pi beta/2],
   "VacuumLogFactor" -> TrueQ[vacuumShift == 13 beta/12],
   "SharpFiniteSum" -> TrueQ[FullSimplify[sharpSum == nn (nn + 1)/2 - 1, Assumptions -> Element[nn, Integers] && nn >= 2]],
   "SmoothFinitePart" -> TrueQ[SeriesCoefficient[Exp[-eps]/(1 - Exp[-eps])^2 - Exp[-eps], {eps, 0, 0}] == -13/12],
   "AllQProducts" -> AllTrue[qChecks, TrueQ[#["WithinTailPlus1e-75"]] &],
   "AllQuadratures" -> AllTrue[quadratures, TrueQ[#["Pass1e-50"]] &]|>;
 result = <|"KernelVersion" -> $Version, "Assumptions" ->
   "ell=1; beta=2pi tau2>0; theta=2pi tau1 real; q=exp(-beta+i theta); full two-helicity trace; proper gauge diffeomorphisms only; identity AC and Vren are separately named prescriptions",
   "ProperTimeIntegral" -> properTime, "GaussianCosineIntegral" -> gaussian,
   "HelicityPairResidual" -> pairedCharacter,
   "LiteralUnpairedHalfLineSineContribution" -> literalHalfLine,
   "LiteralMissingSineTermExample" -> literalNumeric,
   "QAlgebraResidual" -> algebra, "IdentityDensityAC" -> densityAC,
   "IdentityBracketUVSeries" -> uvSeries, "RenormalizedVolume" -> volume,
   "IdentityLogVacuumFactor" -> vacuumShift, "FiniteOscillatorSum" -> sharpSum,
   "SmoothOscillatorSeries" -> smoothSeries, "ChiralVacuumCharacterThrough12" -> chiralSeries,
   "QProductChecks" -> qChecks, "ProperTimeQuadratures" -> quadratures,
   "IdentityCutoffChecks" -> cutoffChecks, "Tests" -> tests,
   "AllTestsPassed" -> AllTrue[Values[tests], TrueQ]|>;
 failed = !FreeQ[result, $Failed | $Aborted];
 unevaluated = Cases[result, _Integrate | _NIntegrate | _Sum | _Limit, Infinity];
 Join[result, <|"FailedOrAborted" -> failed, "UnevaluatedComputations" -> unevaluated,
   "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>]
]];
exportWXF = Export[outputFiles[[1]], report, "WXF"];
exportTXT = Export[outputFiles[[2]], ToString[report, InputForm, PageWidth -> 110], "Text"];
<|"Text" -> exportTXT, "WXF" -> exportWXF,
  "AllTestsPassed" -> report["AllTestsPassed"], "FailedOrAborted" -> report["FailedOrAborted"],
  "UnevaluatedComputations" -> report["UnevaluatedComputations"], "Messages" -> report["Messages"]|>
