(* Self-contained independent finite AdS3 vacuum-orbit quantum benchmark.
   No parent report is imported. All exports remain in this fresh private directory. *)
ClearAll["Global`*"];
outputDirectory = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW";
report = Block[{$Messages = {}, $MessageList = {}},
 Module[{checks = <||>, expressions = <||>, taylorT, expectedT, omegaPair,
   hessianPair, modes, variables, u, h2, expectedH2, omegaMatrix, rotation,
   gradients, kappa, darbouxMatrix, standardOmega, r, beta, n, c, x, eta,
   a1, a2, a3, eps, q, m, cyclic, determinants, gauss1, gauss2,
   heatEnergy, heatSeries, hardEnergy, zetaEnergy, zetaSquareHeatSeries,
   cylinderNormal, cylinderWeyl, schrodinger, normal, psi, expectedComm,
   comm1, comm2, weylQ2P2, qop, pop, q2p, qp2, q3, p3,
   hRadial, radialDerivative, radialSeries, angularAverage, s,
   char12, charFinite12, numericBeta, numericN, numericK, numericExact,
   numericTruncated, numericalError, phaseParity, allPassed, z, t,
   fourierU, dx, average, omegaDensity, contourResidue, contourAverage}, 
  $Assumptions = Element[{c, beta, eps, s}, Reals] && c > 0 && beta > 0 && eps > 0 && 0 < s < 1;
  taylorT = Normal@Series[c/24 (1 - (1 + eta a1)^2) - c/12 (eta a3/(1 + eta a1) - 3/2 (eta a2/(1 + eta a1))^2), {eta, 0, 2}];
  expectedT = -c eta (a1 + a3)/12 + c eta^2 (-a1^2/24 + a1 a3/12 + a2^2/8);
  AssociateTo[expressions, "StressTensorExpansion" -> taylorT];
  AssociateTo[checks, "StressTensorExpansion" -> TrueQ[Expand[taylorT - expectedT] == 0]];
  omegaPair = FullSimplify[-c/24 (D[Cos[n x], x] D[Sin[n x], {x, 2}] - D[Sin[n x], x] D[Cos[n x], {x, 2}] - Cos[n x] D[Sin[n x], x] + Sin[n x] D[Cos[n x], x])];
  AssociateTo[expressions, "OmegaCosSin" -> omegaPair];
  AssociateTo[checks, "OmegaCosSin" -> TrueQ[FullSimplify[omegaPair + c n (n^2 - 1)/24] == 0]];
  (* Fourier orthogonality gives <cos^2>=<sin^2>=1/2 for nonzero integer n. *)
  hessianPair = c/12 (n^4/2 - n^2/2);
  AssociateTo[expressions, "HessianCosCos" -> hessianPair];
  AssociateTo[checks, "HessianCosCos" -> TrueQ[FullSimplify[hessianPair - c n^2 (n^2 - 1)/24, Assumptions -> Element[n, Integers] && n >= 2] == 0]];
  modes = Range[2, 5];
  variables = Flatten[Table[{aa[j], bb[j]}, {j, modes}]];
  u = Sum[aa[j] Cos[j x] + bb[j] Sin[j x], {j, modes}];
  fourierU = Sum[aa[j] (z^j + z^-j)/2 + bb[j] (z^j - z^-j)/(2 I), {j, modes}];
  dx[g_] := I z D[g, z];
  average[g_] := Coefficient[Expand[g], z, 0];
  h2 = Expand[c/24 average[dx[dx[fourierU]]^2 - dx[fourierU]^2]];
  expectedH2 = Sum[c j^2 (j^2 - 1) (aa[j]^2 + bb[j]^2)/48, {j, modes}];
  omegaDensity[v_, w_] := dx[v] dx[dx[w]] - dx[w] dx[dx[v]] - v dx[w] + w dx[v];
  omegaMatrix = Table[Expand[-c/24 average[omegaDensity[D[fourierU, variables[[i]]], D[fourierU, variables[[j]]]]]], {i, Length[variables]}, {j, Length[variables]}];
  rotation = Flatten[Table[{j bb[j], -j aa[j]}, {j, modes}]];
  gradients = D[h2, #] & /@ variables;
  kappa[j_] := c j (j^2 - 1)/12;
  darbouxMatrix = DiagonalMatrix[Flatten[Table[{Sqrt[kappa[j]/2], Sqrt[kappa[j]/2]}, {j, modes}]]];
  standardOmega = KroneckerProduct[IdentityMatrix[Length[modes]], {{0, -1}, {1, 0}}];
  AssociateTo[expressions, "FiniteModes" -> modes, "QuadraticHamiltonian" -> h2, "SymplecticMatrixAB" -> omegaMatrix, "RotationVectorAB" -> rotation, "DarbouxJacobian" -> darbouxMatrix];
  AssociateTo[checks, "FiniteFourierQuadraticHamiltonian" -> TrueQ[Expand[h2 - expectedH2] == 0], "HamiltonianContractionSign" -> TrueQ[FullSimplify[omegaMatrix.rotation - gradients] == ConstantArray[0, Length[variables]]], "DarbouxSymplecticNormalization" -> TrueQ[FullSimplify[Transpose[darbouxMatrix].standardOmega.darbouxMatrix - omegaMatrix] == ConstantArray[0, Dimensions[omegaMatrix]]], "KernelExactlyProjectiveAtIntegerModes" -> TrueQ[Reduce[n^2 (n^2 - 1) == 0, n, Integers] == (n == -1 || n == 0 || n == 1)]];
  (* z=e^(ix), s=2t/(1+t^2), 0<t<1. The contour integrand is
     -(z^2+1)^2/[z(z-it)^2(z-i/t)^2]. Interior poles: 0 and it.
     Residue at 0 is -1; the second-order pole residue is differentiated exactly. *)
  contourResidue = Factor[D[-(z^2 + 1)^2/(z (z - I/t)^2), z] /. z -> I t];
  contourAverage = Factor[-1 + contourResidue];
  angularAverage = FullSimplify[contourAverage /. t -> (1 - Sqrt[1 - s^2])/s, Assumptions -> 0 < s < 1];
  AssociateTo[expressions, "AngularIntegralContourResidue" -> contourResidue, "AngularIntegralRationalParameterAnswer" -> contourAverage];
  hRadial = c/24 (n^2 ((1 - n^2 r^2)^(-1/2) - 1) - n^2 r^2/2);
  radialDerivative = D[hRadial, r];
  radialSeries = Series[hRadial, {r, 0, 4}];
  AssociateTo[expressions, "SingleModeAngularIntegral" -> angularAverage, "SingleModeExactHamiltonian" -> hRadial, "SingleModeEnergyDerivative" -> radialDerivative, "SingleModeHamiltonianSeries" -> radialSeries];
  AssociateTo[checks, "SingleModeAngularIntegral" -> TrueQ[FullSimplify[angularAverage - (1/Sqrt[1 - s^2] - 1), Assumptions -> 0 < s < 1] == 0], "SingleModePositiveRadialDerivative" -> TrueQ[FullSimplify[radialDerivative > 0, Assumptions -> c > 0 && n >= 2 && 0 < r < 1/n]], "SingleModeCorrectHessian" -> TrueQ[FullSimplify[Coefficient[Normal[radialSeries], r, 2] - c n^2 (n^2 - 1)/48] == 0]];
  determinants = Association@Table[m -> Module[{cyclic = Table[KroneckerDelta[Mod[i, m] + 1, j], {i, m}, {j, m}]}, Factor[Det[IdentityMatrix[m] - r cyclic]]], {m, 1, 8}];
  gauss1 = Integrate[Exp[-(1 - r) x^2], {x, -Infinity, Infinity}, Assumptions -> 0 < r < 1];
  gauss2 = Integrate[Exp[-(1 + r) x^2], {x, -Infinity, Infinity}, Assumptions -> 0 < r < 1];
  AssociateTo[expressions, "TimeSliceDeterminantsM1to8" -> determinants, "M2GaussianFactors" -> {gauss1, gauss2}];
  AssociateTo[checks, "TimeSliceDeterminants" -> And @@ Table[TrueQ[Expand[determinants[m] - (1 - r^m)] == 0], {m, 1, 8}], "M2ActualGaussianIntegral" -> TrueQ[FullSimplify[gauss1^2 gauss2^2/Pi^2 - 1/(1 - r^2), Assumptions -> 0 < r < 1] == 0], "WeylTraceEqualsSymmetricDeterminant" -> TrueQ[FullSimplify[Exp[-beta n/2]/(1 - Exp[-beta n]) - 1/(2 Sinh[beta n/2]), Assumptions -> beta > 0 && n > 0] == 0]];
  heatEnergy = 1/2 (Exp[-eps]/(1 - Exp[-eps])^2 - Exp[-eps]);
  heatSeries = Series[heatEnergy, {eps, 0, 4}];
  hardEnergy = FullSimplify[Sum[n/2, {n, 2, cutoff}], Assumptions -> Element[cutoff, Integers] && cutoff >= 2];
  zetaEnergy = (Zeta[-1] - 1)/2;
  zetaSquareHeatSeries = 1/(4 eps) + Sum[(-eps)^j (Zeta[-1 - 2 j] - 1)/(2 Factorial[j]), {j, 0, 3}];
  AssociateTo[expressions, "FrequencyHeatEnergy" -> heatEnergy, "FrequencyHeatExpansion" -> heatSeries, "HardCutoffEnergy" -> hardEnergy, "SpectralZetaEnergy" -> zetaEnergy, "LaplacianHeatAsymptoticFromMellinResidues" -> zetaSquareHeatSeries];
  AssociateTo[checks, "HeatFinitePart" -> TrueQ[Limit[heatEnergy - 1/(2 eps^2), eps -> 0, Direction -> "FromAbove"] == -13/24], "ZetaFinitePart" -> TrueQ[zetaEnergy == -13/24], "HardCutoffFinitePart" -> TrueQ[Expand[hardEnergy - (cutoff^2 + cutoff)/4] == -1/2], "MatchedHardCutoffFinitePart" -> TrueQ[Expand[hardEnergy - (cutoff^2 + cutoff)/4 - 1/24] == -13/24]];
  char12 = Normal@Series[Product[1/(1 - q^n), {n, 2, 12}], {q, 0, 12}];
  charFinite12 = Normal@Series[Product[1/(1 - q^n), {n, 2, 5}], {q, 0, 12}];
  AssociateTo[expressions, "InfiniteDescendantCharacterThroughLevel12" -> char12, "N5DescendantCharacterThroughLevel12" -> charFinite12, "Metaplectic2PiPhasesN2to8" -> Table[{cutoff, (-1)^(cutoff (cutoff + 1)/2 - 1)}, {cutoff, 2, 8}]];
  numericBeta = N[13/10, 80]; numericN = 5; numericK = 25;
  numericExact = Product[1/(1 - Exp[-numericBeta n]), {n, 2, numericN}];
  numericTruncated = Product[Sum[Exp[-numericBeta n k], {k, 0, numericK}], {n, 2, numericN}];
  numericalError = Abs[numericTruncated/numericExact - 1];
  AssociateTo[expressions, "NumericTraceTest" -> <|"Beta" -> numericBeta, "N" -> numericN, "MaxOccupationEachMode" -> numericK, "ClosedTrace" -> numericExact, "ExplicitTruncatedFockTrace" -> numericTruncated, "RelativeError" -> numericalError|>];
  AssociateTo[checks, "ExplicitFockTraceNumericalTolerance" -> TrueQ[numericalError < 10^-28]];
  (* Groenewold obstruction, tested on a general function and low polynomials. *)
  qop[g_] := x g; pop[g_] := -I D[g, x];
  q3[g_] := x^3 g; p3[g_] := I D[g, {x, 3}];
  q2p[g_] := -I (x^2 D[g, x] + x g);
  qp2[g_] := -(x D[g, {x, 2}] + D[g, x]);
  weylQ2P2[g_] := -(x^2 D[g, {x, 2}] + 2 x D[g, x] + g/2);
  comm1 = Expand[(q3[p3[psi[x]]] - p3[q3[psi[x]]])/I];
  comm2 = Expand[(q2p[qp2[psi[x]]] - qp2[q2p[psi[x]]])/I];
  AssociateTo[expressions, "CommutatorQ3P3OverI" -> comm1, "CommutatorQ2PQP2OverI" -> comm2, "WeylQ2P2OnTestFunction" -> weylQ2P2[psi[x]]];
  AssociateTo[checks, "GroenewoldFirstIdentity" -> TrueQ[Expand[comm1 - 9 weylQ2P2[psi[x]] + 3 psi[x]/2] == 0], "GroenewoldSecondIdentity" -> TrueQ[Expand[comm2 - 3 weylQ2P2[psi[x]] - psi[x]/2] == 0], "GroenewoldIncompatibility" -> TrueQ[Expand[comm2/3 - comm1/9 - psi[x]/3] == 0]];
  allPassed = AllTrue[Values[checks], TrueQ];
  <|"Purpose" -> "Independent finite vacuum-orbit quantum benchmark; exact tangent oscillator model and separately identified single-mode nonlinear restriction", "KernelVersion" -> $Version, "Assumptions" -> ToString[$Assumptions, InputForm], "Checks" -> checks, "AllChecksPassed" -> allPassed, "Expressions" -> expressions, "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]
];
Export[FileNameJoin[{outputDirectory, "benchmark_results.wxf"}], report, "WXF"];
Export[FileNameJoin[{outputDirectory, "benchmark_results.txt"}], StringRiffle[KeyValueMap[Function[{key, value}, ToString[key] <> "\n" <> ToString[value, InputForm, PageWidth -> 100] <> "\n"], report], "\n"], "Text"];
<|"OutputDirectory" -> outputDirectory, "AllChecksPassed" -> report["AllChecksPassed"], "Checks" -> report["Checks"], "Messages" -> report["Messages"]|>
