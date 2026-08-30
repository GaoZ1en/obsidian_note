(* Exact finite-mode checks for Stage 3.0 endpoint maps and twist. *)

ClearAll[assertZero, assertTrue, curlMatrix];
assertZero[label_, expr_] := Module[{r = FullSimplify[expr]},
  If[TrueQ[r === 0] || TrueQ[And @@ Thread[Flatten[{r}] == 0]],
    Print["PASS ", label],
    Print["FAIL ", label, ": residual = ", InputForm[r]]; Exit[1]
  ]
];
assertTrue[label_, expr_] := Module[{r = FullSimplify[expr]},
  If[TrueQ[r],
    Print["PASS ", label],
    Print["FAIL ", label, ": value = ", InputForm[r]]; Exit[1]
  ]
];
curlMatrix[theta_, vars_] := Table[
  FullSimplify[D[theta[[j]], vars[[i]]] - D[theta[[i]], vars[[j]]]],
  {i, Length[vars]}, {j, Length[vars]}];

Print["Finite double-null gravity Stage 3.0: endpoint/twist checks"];

(* V26: fixed reference scales change Y and gamma separately but leave the
   exact-plus-port combination unchanged. *)
Clear[outerP, outerM, cP, cM, cOmega];
yReferenceShift = (cP - cOmega/2) outerP +
  (cM - cOmega/2) outerM;
gammaReferenceShift = {-cP + cOmega/2, -cM + cOmega/2};
referenceOneFormShift = {
  D[yReferenceShift, outerP] + gammaReferenceShift[[1]],
  D[yReferenceShift, outerM] + gammaReferenceShift[[2]]};
assertZero[
  "V26 reference-scale change cancels between dY and endpoint ports",
  referenceOneFormShift];
Clear[vEnd, cRef];
assertZero[
  "V26 dimensionless Jacobian integral shift",
  Integrate[-cRef v, {v, 1, vEnd}] + cRef (vEnd^2 - 1)/2];

(* V27: the ordinary tensor pullback of an optional target-side covector
   density to a common-cut one-form density is functorial for
   orientation-preserving invertible linear endpoint maps.  This is p, not
   the source-density/target-covector canonical momentum pi. *)
Clear[a, b, c, d, e, f, g, h, t1, t2];
mapOne = {{a, b}, {c, d}};
mapTwo = {{e, f}, {g, h}};
targetCovector = {t1, t2};
directPullback = Det[mapTwo . mapOne] Transpose[mapTwo . mapOne] .
  targetCovector;
iteratedPullback = Det[mapOne] Transpose[mapOne] .
  (Det[mapTwo] Transpose[mapTwo] . targetCovector);
assertZero["V27 optional target covector-density pullbacks compose",
  directPullback - iteratedPullback];
assertZero["V27 pullback determinant is multiplicative",
  Det[mapTwo . mapOne] - Det[mapTwo] Det[mapOne]];

(* V28: integrating-factor solution with a finite nonzero shear contribution
   to the Damour source. *)
Clear[lam, tau, omegaInitial, shear0, shear1];
areaProfile[lam_] := (1 + lam + lam^2)^2;
thetaProfile[lam_] := D[Log[areaProfile[lam]], lam];
shearDivergence[lam_] := shear0 + shear1 lam;
angularExpansionGradient[lam_] := 1 + 2 lam;
damourSource[lam_] := angularExpansionGradient[lam]/2 -
  shearDivergence[lam];
omegaSolution[lam_] := FullSimplify[
  (omegaInitial + Integrate[
      areaProfile[tau] damourSource[tau], {tau, 0, lam}])/
    areaProfile[lam]];
assertZero[
  "V28 Damour integrating-factor solution with nonzero shear source",
  D[omegaSolution[lam], lam] + thetaProfile[lam] omegaSolution[lam] -
    damourSource[lam]];
assertTrue["V28 shear part of the source is nonzero",
  (shearDivergence[lam] /. {shear0 -> 2, shear1 -> 3, lam -> 1}) != 0];

(* V29: nonredundant reconstruction of tau_v, hat omega, and both affine
   branch initial values. *)
Clear[omega0, dLambda, tauV, dLogBP, dLogBM];
pPlus = omega0 (dLambda - tauV);
pMinus = omega0 (dLambda + tauV);
tauReconstructed = (pMinus - pPlus)/(2 omega0);
constraintReconstructed = pPlus + pMinus - 2 omega0 dLambda;
hatOmega = (tauReconstructed - (dLogBP - dLogBM))/2;
dM = dLambda + dLogBP + dLogBM;
omegaPlusFromMomentum = -pPlus/(2 omega0) - dLogBP;
omegaMinusFromMomentum = -pMinus/(2 omega0) - dLogBM;
assertZero["V29 generator-chart constraint reconstructs exactly",
  constraintReconstructed];
assertZero["V29 tau_v reconstructs from the momentum difference",
  tauReconstructed - tauV];
assertZero["V29 plus branch initial normal connection",
  omegaPlusFromMomentum - (hatOmega - dM/2)];
assertZero["V29 minus branch initial normal connection",
  omegaMinusFromMomentum - (-hatOmega - dM/2)];

(* V30: field-space curl and the diagonal moment map in a local translation
   truncation. *)
Clear[area0, lambda0, sP1, sP2, pP1, pP2, sM1, sM2, pM1, pM2,
  grad1, grad2, xi1, xi2];
cornerVars = {area0, lambda0, sP1, sP2, pP1, pP2,
  sM1, sM2, pM1, pM2};
cornerTheta = {0, -area0, pP1/2, pP2/2, 0, 0,
  pM1/2, pM2/2, 0, 0};
cornerMatrix = curlMatrix[cornerTheta, cornerVars];
expectedCornerMatrix = ConstantArray[0, {10, 10}];
expectedCornerMatrix[[1, 2]] = -1;
expectedCornerMatrix[[2, 1]] = 1;
expectedCornerMatrix[[5, 3]] = 1/2;
expectedCornerMatrix[[3, 5]] = -1/2;
expectedCornerMatrix[[6, 4]] = 1/2;
expectedCornerMatrix[[4, 6]] = -1/2;
expectedCornerMatrix[[9, 7]] = 1/2;
expectedCornerMatrix[[7, 9]] = -1/2;
expectedCornerMatrix[[10, 8]] = 1/2;
expectedCornerMatrix[[8, 10]] = -1/2;
diagonalVector = {0, -(grad1 xi1 + grad2 xi2),
  -xi1, -xi2, 0, 0, -xi1, -xi2, 0, 0};
momentMap = (xi1 (pP1 + pM1 - 2 area0 grad1) +
    xi2 (pP2 + pM2 - 2 area0 grad2))/2;
momentMapGradient = Table[D[momentMap, z], {z, cornerVars}];
assertZero["V30 endpoint-map/twist potential has the displayed curl",
  cornerMatrix - expectedCornerMatrix];
assertZero["V30 diagonal relabelling contraction equals d moment map",
  FullSimplify[diagonalVector . cornerMatrix - momentMapGradient]];

(* V31: rank and kernel before the constraint, on its surface, and after a
   diagonal gauge slice. *)
assertZero["V31 extended local corner block has rank ten",
  MatrixRank[cornerMatrix] - 10];
reducedVars = {area0, lambda0, sP1, sP2, pP1, pP2, sM1, sM2};
constraintMap = {area0, lambda0, sP1, sP2, pP1, pP2,
  sM1, sM2, 2 area0 grad1 - pP1, 2 area0 grad2 - pP2};
constraintJacobian = Table[D[constraintMap[[i]], reducedVars[[j]]],
  {i, 10}, {j, 8}];
constraintMatrix = FullSimplify[
  Transpose[constraintJacobian] .
    (cornerMatrix /. Thread[cornerVars -> constraintMap]) .
    constraintJacobian];
assertZero["V31 constrained corner block has rank six",
  MatrixRank[constraintMatrix] - 6];
assertZero["V31 constrained block has two diagonal kernel directions",
  Length[NullSpace[constraintMatrix]] - 2];
kernelOne = {0, -grad1, -1, 0, 0, 0, -1, 0};
kernelTwo = {0, -grad2, 0, -1, 0, 0, 0, -1};
assertZero["V31 first diagonal relabelling is in the kernel",
  constraintMatrix . kernelOne];
assertZero["V31 second diagonal relabelling is in the kernel",
  constraintMatrix . kernelTwo];
quotientVars = {area0, lambda0, sP1, sP2, pP1, pP2};
quotientMap = {area0, lambda0, sP1, sP2, pP1, pP2,
  0, 0, 2 area0 grad1 - pP1, 2 area0 grad2 - pP2};
quotientJacobian = Table[D[quotientMap[[i]], quotientVars[[j]]],
  {i, 10}, {j, 6}];
quotientMatrix = FullSimplify[
  Transpose[quotientJacobian] .
    (cornerMatrix /. Thread[cornerVars -> quotientMap]) .
    quotientJacobian];
assertZero["V31 diagonal quotient leaves rank six",
  MatrixRank[quotientMatrix] - 6];

Clear[hatW, logRatioGradient, relSP, relSM, boostGradient];
boostVars = {hatW, logRatioGradient, relSP, relSM};
boostTau = 2 hatW + logRatioGradient;
boostTheta = {0, 0, -boostTau/2, boostTau/2};
boostMatrix = curlMatrix[boostTheta, boostVars];
boostVector = {boostGradient, -2 boostGradient, 0, 0};
assertZero["V31 opposite boost is invisible in the reconstructed corner block",
  boostVector . boostMatrix];

(* V32: opposite interface incidences cancel after diagonal cotangent
   matching. *)
Clear[sOne1, sOne2, pOne1, pOne2, sTwo1, sTwo2, pTwo1, pTwo2];
interfaceVars = {sOne1, sOne2, pOne1, pOne2,
  sTwo1, sTwo2, pTwo1, pTwo2};
interfaceTheta = {pOne1/2, pOne2/2, 0, 0,
  -pTwo1/2, -pTwo2/2, 0, 0};
interfaceMatrix = curlMatrix[interfaceTheta, interfaceVars];
matchedVars = {sOne1, sOne2, pOne1, pOne2};
interfaceMatchingMap = {sOne1, sOne2, pOne1, pOne2,
  sOne1, sOne2, pOne1, pOne2};
interfaceJacobian = Table[
  D[interfaceMatchingMap[[i]], matchedVars[[j]]], {i, 8}, {j, 4}];
assertZero["V32 matched interface endpoint potential cancels",
  (interfaceTheta /. Thread[interfaceVars -> interfaceMatchingMap]) .
    interfaceJacobian];
assertZero["V32 matched interface spin-1 two-form cancels",
  Transpose[interfaceJacobian] .
    (interfaceMatrix /. Thread[interfaceVars -> interfaceMatchingMap]) .
    interfaceJacobian];

Print["PASS all Stage-3.0 finite-mode checks"];
Print["NOT PROVED: a closing-wall action, a full functional gauge quotient,"];
Print["or nondegeneracy of the completed spin-0+1+2 characteristic CPS."];
