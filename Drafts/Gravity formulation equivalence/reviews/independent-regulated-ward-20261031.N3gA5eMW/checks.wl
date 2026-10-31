(* Independent regulated one-loop Ward diagnostic. Wolfram Engine exact arithmetic.
   Fixed reference Hessian; Euclidean BV conventions are note20 (1)-(9).
   This script is new and changes no parent note. All matrix variables commute;
   graded BV parity and brackets are checked separately by graded_checks.py. *)
ClearAll["Global`*"];
Module[{report, root, home, proc, out, resultPath, previewPath, text},
 report = Block[{$Messages = {}, $MessageList = {}},
   id2 = IdentityMatrix[2]; id4 = IdentityMatrix[4];
   grading = DiagonalMatrix[{1, 1, -1, -1}];
   st[m_] := Tr[grading.m];
   comm[m_, n_] := m.n - n.m;
   diag2[m_, n_] := ArrayFlatten[{{m, ConstantArray[0, {2, 2}]}, {ConstantArray[0, {2, 2}], n}}];
   pp[m_] := m - m.m/2 + m.m.m/3;
   d = DiagonalMatrix[{1, 2}]; b = {{0, 1}, {1, 0}};
   ab = z d + t b; kb = id2 + ab;
   aa = diag2[ab, t id2]; hh = diag2[b, id2];
   rr = DiagonalMatrix[{r1, r2, ro, ro}];
   orderedLow = Expand[D[st[rr.pp[aa]], t]];
   cyclicLow = Expand[st[rr.(id4 - aa + aa.aa).hh]];
   c2 = Expand[st[comm[aa, rr].hh]];
   c3 = Expand[st[(comm[aa, rr].aa + comm[aa.aa, rr]).hh]];
   commDefect = Expand[-c2/2 + c3/3];
   tailDerivative = Together[-st[aa.aa.aa.Inverse[id4 + aa].hh]/2];
   hybridDerivative = Together[tailDerivative + orderedLow/2];
   markedInsertion = Together[tailDerivative + cyclicLow/2];
   g = Together[Tr[Inverse[kb].b]/2 - 1/(1 + t)];
   exactResidual = Factor[(hybridDerivative - g) /. ro -> 1];
   markedResidual = Factor[hybridDerivative - markedInsertion];
   subtractedResidual = Factor[tailDerivative - g];
   point = {z -> 1/5, t -> 1/7, r1 -> 1/2, r2 -> 1/4, ro -> 1};
   ww = (1 + t) x + h (Log[Det[kb]]/2 - 2 Log[1 + t]);
   gammaCoefficient = (x + h g)/(1 + t);
   gamma0Coefficient = x/(1 + t);
   gamma1Coefficient = g/(1 + t);
   w1 = Log[Det[kb]]/2 - 2 Log[1 + t];
   (* With retained (x,p), gamma=p gammaCoefficient, Delta gamma=d_x coefficient. *)
   fullWard = Together[D[ww, t] - D[ww, x] gammaCoefficient + h D[gammaCoefficient, x]];
   oneWard = Together[D[w1, t] - D[w1, x] gamma0Coefficient - (1 + t) gamma1Coefficient + D[gamma0Coefficient, x]];
   sourceOmission = Together[D[w1 + Log[1 + t], t] - D[w1 + Log[1 + t], x] gamma0Coefficient - (1 + t) gamma1Coefficient + D[gamma0Coefficient, x]];
   insertionOmission = Together[D[w1, t] - D[w1, x] gamma0Coefficient + D[gamma0Coefficient, x]];
   (* Generic non-symmetric variation, checking the complete Frechet defect. *)
   ag = {{a11, a12}, {a21, a22}}; hg = {{h11, h12}, {h21, h22}}; rg = {{r11, r12}, {r21, r22}};
   genericDirect = Expand[D[Tr[rg.pp[ag + u hg]], u] /. u -> 0];
   genericNaive = Expand[Tr[rg.(id2 - ag + ag.ag).hg]];
   genericC = Expand[-Tr[comm[ag, rg].hg]/2 + Tr[(comm[ag, rg].ag + comm[ag.ag, rg]).hg]/3];
   (* Canonical UV rotation. Generator v^T T y, Delta Gamma=Tr T=0. *)
   tt = {{0, -1}, {1, 0}};
   oo = {{Cos[theta], -Sin[theta]}, {Sin[theta], Cos[theta]}};
   arot = Transpose[oo].DiagonalMatrix[{alpha, beta}].oo;
   rfixed = DiagonalMatrix[{r1, r2}];
   rtransported = Transpose[oo].rfixed.oo;
   rotateDefect = FullSimplify[D[Tr[rfixed.pp[arot]]/2, theta]];
   rotateValue = FullSimplify[rotateDefect /. {theta -> Pi/4, alpha -> 1/5, beta -> 2/5, r1 -> 1/2, r2 -> 1/4}];
   rotateTransported = FullSimplify[D[Tr[rtransported.pp[arot]], theta]];
   heatAtPoint = DiagonalMatrix[{1/2, 1/4, 1, 1}];
   checks = <|
     "ordered variation equals naive plus commutators" -> (Expand[orderedLow - cyclicLow - commDefect] === 0),
     "generic 2x2 Frechet formula" -> (Expand[genericDirect - genericNaive - genericC] === 0),
     "quadratic commutator vanishes only in chosen symmetric model" -> (c2 === 0),
     "cubic noncyclic contribution" -> (Expand[c3 - z t (r2 - r1)] === 0),
     "exact full BV Ward coefficient" -> (fullWard === 0),
     "exact one-loop BV Ward coefficient" -> (oneWard === 0),
     "source omission is detected" -> (Together[sourceOmission - 1/(1 + t)] === 0),
     "generator insertion omission is detected" -> (Together[insertionOmission - g] === 0),
     "hybrid residual formula" -> (Together[exactResidual - (t (2 - r1 - r2)/2 + z t (4 r1 + 5 r2 - 9)/3)] === 0),
     "hybrid residual nonzero exact value" -> ((exactResidual /. point) === 29/840),
     "marked insertion residual nonzero exact value" -> ((markedResidual /. point) === -1/840),
     "tail-only subtraction residual formula" -> (Together[subtractedResidual - (1 + t^2 - 3 z t)] === 0),
     "tail-only subtraction residual exact value" -> ((subtractedResidual /. point) === 229/245),
     "actual normalized gamma1 coefficient" -> ((g /. point) === -15631/16264),
     "actual normalized gamma1 includes tree Hessian factor" -> (Together[gamma1Coefficient /. point] === -109417/130112),
     "source half-density and odd Gaussian are separate equal factors" -> (Together[D[Log[1 + t], t] - 1/(1 + t)] === 0),
     "Kb determinant at exact test point" -> ((Det[kb] /. point) === 2033/1225),
     "heat weight is specified exactly" -> (MatrixExp[-Log[2] DiagonalMatrix[{1, 2, 0, 0}]] === heatAtPoint),
     "A and heat weight do not commute" -> ((comm[aa, rr] /. point) =!= ConstantArray[0, {4, 4}]),
     "A and its variation do not commute" -> ((comm[aa, hh] /. point) =!= ConstantArray[0, {4, 4}]),
     "small relative operator at test point" -> (TrueQ[FullSimplify[Max[Abs[Eigenvalues[aa /. point]]] < 1]]),
     "rotation Hessian has commutator derivative" -> (FullSimplify[D[arot, theta] - comm[arot, tt]] === ConstantArray[0, {2, 2}]),
     "rotation regulator has matching transport derivative" -> (FullSimplify[D[rtransported, theta] - comm[rtransported, tt]] === ConstantArray[0, {2, 2}]),
     "fixed rotation weight detects exact Ward defect" -> (rotateValue === 119/6000),
     "transported weight cancels rotation defect" -> (rotateTransported === 0),
     "rotation full determinant derivative vanishes" -> (FullSimplify[D[Det[id2 + arot], theta]] === 0)
   |>;
   <|"Kernel" -> $Version, "Checks" -> checks, "AllPassed" -> And @@ Values[checks],
     "FailedLabels" -> Keys[Select[checks, Not[TrueQ[#]] &]],
     "ExactValues" -> <|"C2" -> c2, "C3" -> c3, "CommutatorCorrectionToHalfDeterminant" -> Factor[commDefect/2],
       "FullGaussianWard" -> fullWard, "OneLoopWard" -> oneWard,
       "ActualGeneratorCoefficientG" -> g, "Gamma1CoefficientAtPoint" -> (gamma1Coefficient /. point),
       "SourceOmission" -> sourceOmission, "InsertionOmission" -> insertionOmission,
       "HybridResidual" -> exactResidual, "HybridResidualAtPoint" -> (exactResidual /. point),
       "NaiveMarkedResidual" -> markedResidual, "NaiveMarkedResidualAtPoint" -> (markedResidual /. point),
       "TailOnlyResidual" -> subtractedResidual, "TailOnlyResidualAtPoint" -> (subtractedResidual /. point),
       "RotationResidual" -> rotateDefect, "RotationResidualAtPoint" -> rotateValue,
       "TransportedRotationResidual" -> rotateTransported,
       "NoncommutingAR" -> (comm[aa, rr] /. point), "NoncommutingAH" -> (comm[aa, hh] /. point)|>,
     "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ];
 home = Environment["DSH_HOME"]; If[!StringQ[home] || home == "", home = FileNameJoin[{$HomeDirectory, ".dsh"}]];
 root = FileNameJoin[{home, "research-results", "kernel-exports"}];
 If[!DirectoryQ[root], CreateDirectory[root, CreateIntermediateDirectories -> True]];
 proc = RunProcess[{"mktemp", "-d", FileNameJoin[{root, "ward-wolfram.XXXXXXXX"}]}];
 If[proc["ExitCode"] =!= 0, Return[proc]];
 out = StringTrim[proc["StandardOutput"]];
 resultPath = Export[FileNameJoin[{out, "actual-output.wxf"}], report, "WXF"];
 text = ToString[report, InputForm, PageWidth -> 100];
 previewPath = Export[FileNameJoin[{out, "actual-output.txt"}], text, "Text"];
 <|"ResultPath" -> resultPath, "PreviewPath" -> previewPath, "AllPassed" -> report["AllPassed"], "FailedLabels" -> report["FailedLabels"], "Messages" -> report["Messages"]|>
]
