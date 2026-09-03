(* Independent exact arithmetic on the FULL generated rational matrices.
   Set stage46MatrixFile before Get, or pass the data .wl as CLI argument.
   Generate it with stage46_characteristic_split_checks.py --wolfram PATH. *)
If[!ValueQ[stage46MatrixFile], stage46MatrixFile = Last[$ScriptCommandLine]];
Get[stage46MatrixFile];
Clear[p1, p2, p3, p4, lam];
zeroQ[m_] := And @@ (TrueQ[# == 0] & /@ Flatten[Expand[m]]);
wedge = ConstantArray[0, {6, 24}];
Do[wedge[[i, 18 + i]] = p1; wedge[[i, 12 + i]] = -p2;
   wedge[[i, 6 + i]] = p3; wedge[[i, i]] = -p4, {i, 6}];
fpoly = p1 F11 + p2 F12 + p3 F13 + p4 F14;
epoly = p1 E1 + p2 E2 + p3 E3 + p4 E4;
vr = Inverse[AtF1].(F14 - F13);
mixedReduced = ArrayFlatten[{{At18, ConstantArray[0, {18, 16}]},
  {(AC3 + AC4).copySelector, S}}];
lambdaAdd = Array[ll, {18, 6}];
rowAdd = ArrayFlatten[{{IdentityMatrix[18], lambdaAdd},
  {ConstantArray[0, {6, 18}], IdentityMatrix[6]}}];
rowUndo = ArrayFlatten[{{IdentityMatrix[18], -lambdaAdd},
  {ConstantArray[0, {6, 18}], IdentityMatrix[6]}}];
checks = <|
 "source determinant" -> (Det[S] == -16),
 "source 6+10 basis" -> zeroQ[sourcePermutation.S.BfromBprime - IdentityMatrix[16]],
 "Schur elimination all 34 rows" -> zeroQ[SchurElimination.mixedTime - mixedReduced],
 "rank 34 of mixed 34x40" -> (MatrixRank[mixedTime] == 34),
 "rank 18 of evolved and padded time matrices" -> (MatrixRank[At18] == 18 && MatrixRank[AtPadded] == 18),
 "all six copy time jets free" -> (zeroQ[At18.timeKernel] && Take[timeKernel, -6] == IdentityMatrix[6]),
 "all 24 curvature jet rows independent" -> (MatrixRank[Join[F11[[All, 1 ;; 18]], F12[[All, 1 ;; 18]], F13[[All, 1 ;; 18]], F14[[All, 1 ;; 18]], 2]] == 24),
 "bare exterior identity" -> zeroQ[wedge.epoly],
 "full eliminated copy wave identity" -> zeroQ[wedge.fpoly - (p3 p4 - p1^2 - p2^2) waveMap.copySelector],
 "invertible wave coefficient" -> (Det[waveMap] != 0),
 "F1 time determinant" -> (Det[AtF1] == 2),
 "F1 radial polynomial" -> (Expand[CharacteristicPolynomial[vr, lam] - (lam - 1)^12 (lam + 1)^12] == 0),
 "F1 radial Jordan witness" -> (MatrixRank[vr + IdentityMatrix[24]] == 14 && MatrixRank[vr - IdentityMatrix[24]] == 12 && zeroQ[(vr - IdentityMatrix[24]).MatrixPower[vr + IdentityMatrix[24], 2]] && !zeroQ[vr.vr - IdentityMatrix[24]]),
 "constant constraint family inverse" -> zeroQ[rowAdd.rowUndo - IdentityMatrix[24]],
 "nonzero constraint forcing on evolution shell" -> (!zeroQ[constraintTimeKernel[[All, {5}]]])
|>;
KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["OVERALL: ", If[And @@ Values[checks], "PASS", "FAIL"],
 " (", Count[Values[checks], True], "/", Length[checks], ")"];
If[!And @@ Values[checks], Exit[1]];
