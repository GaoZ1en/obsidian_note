(* Exact finite-mode checks for the Stage-2.2 hardening audit. *)

ClearAll[assertZero, assertTrue, curlMatrix];
assertZero[label_, expr_] := Module[{r = FullSimplify[TrigExpand[expr]]},
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

Print["Finite double-null gravity Stage 2.2: hardening checks"];

(* V23: derive the affine-to-area pullback in a nontrivial diagonal profile.
   The outer areas and affine lengths are fixed.  Hence the area endpoints
   V_s=sqrt[Omega_s/Omega0] move, while the Jacobian mathcal B_s is fixed by
   the common-domain condition integral_1^V mathcal B_s dv=L_s. *)
Clear[omega0, lambdaR, aP, aM, phi0, v];
areaVars = {omega0, lambdaR, aP, aM, phi0};
outerP = 4;
outerM = 9;
lengthP = 1;
lengthM = 1;
jacRefP = 2;
jacRefM = 3;
areaRef = 5;

ClearAll[areaEndpoint, jacInitial, jacProfile, lambdaProfile, phiProfile,
  affineSheetIntegrand, areaSheetIntegrand, movingCurl];
areaEndpoint[outer_] := Sqrt[outer/omega0];
jacInitial[a_, outer_, len_] :=
  len (a^2 + 1)/(areaEndpoint[outer]^(a^2 + 1) - 1);
jacProfile[a_, outer_, len_][v_] := jacInitial[a, outer, len] v^(a^2);
lambdaProfile[a_, outer_, len_][v_] :=
  jacInitial[a, outer, len] (v^(a^2 + 1) - 1)/(a^2 + 1);
phiProfile[a_][v_] := phi0 + a Log[v];

affineSheetIntegrand[a_, outer_, len_, param_] := Module[
  {jacNow, chi, dPhiFixedV, dOmega},
  jacNow = jacProfile[a, outer, len][v];
  chi = D[lambdaProfile[a, outer, len][v], param];
  dPhiFixedV = D[phiProfile[a][v], param];
  dOmega = D[omega0, param];
  2 omega0 a v dPhiFixedV - v dOmega
    + 2 omega0 (1 - a^2) chi/jacNow
  ];

areaSheetIntegrand[a_, outer_, param_] := Module[
  {vEnd, dPhiFixedV, dLogV},
  vEnd = areaEndpoint[outer];
  dPhiFixedV = D[phiProfile[a][v], param];
  dLogV = D[Log[vEnd], param];
  2 omega0 a v (dPhiFixedV + a dLogV)
  ];

jac0P = jacInitial[aP, outerP, lengthP];
jac0M = jacInitial[aM, outerM, lengthM];
mAffine = lambdaR + Log[jac0P/jacRefP] + Log[jac0M/jacRefM];
baseProfile = {omega0 -> 1, aP -> 1, aM -> 2, phi0 -> 0,
  lambdaR -> 0};
movingCurl[integrand_, vEnd_] := Table[Module[
  {bulkCurl, upperCurl, endValue},
  bulkCurl = D[integrand[[j]], areaVars[[i]]] -
    D[integrand[[i]], areaVars[[j]]];
  upperCurl = integrand[[j]] D[vEnd, areaVars[[i]]] -
    integrand[[i]] D[vEnd, areaVars[[j]]];
  endValue = vEnd /. baseProfile;
  FullSimplify[
    Integrate[bulkCurl /. baseProfile, {v, 1, endValue}] +
      (upperCurl /. v -> vEnd /. baseProfile)]
  ], {i, Length[areaVars]}, {j, Length[areaVars]}];

plusResidualIntegrand = Table[
  affineSheetIntegrand[aP, outerP, lengthP, p] -
    areaSheetIntegrand[aP, outerP, p], {p, areaVars}];
minusResidualIntegrand = Table[
  affineSheetIntegrand[aM, outerM, lengthM, p] -
    areaSheetIntegrand[aM, outerM, p], {p, areaVars}];
cornerResidualTheta = Table[
  (mAffine - 1) D[omega0, p] + omega0 D[lambdaR, p],
  {p, areaVars}];
areaResidualAtProfile = FullSimplify[
  movingCurl[plusResidualIntegrand, areaEndpoint[outerP]] +
    movingCurl[minusResidualIntegrand, areaEndpoint[outerM]] +
    (curlMatrix[cornerResidualTheta, areaVars] /. baseProfile)];
assertZero[
  "V23 derived affine/area curl agrees on the common fixed-endpoint sector",
  areaResidualAtProfile];

ClearAll[integralIAtBase, integralIDerivativeAtBase];
integralIAtBase[a_, outer_, len_] := FullSimplify[Integrate[
  v Log[jacProfile[a, outer, len][v]/
    If[outer === outerP, jacRefP, jacRefM]] /. baseProfile,
  {v, 1, areaEndpoint[outer] /. baseProfile}]];
integralIDerivativeAtBase[a_, outer_, len_, param_] := Module[
  {vEnd = areaEndpoint[outer],
   hNow = Log[jacProfile[a, outer, len][v]/
     If[outer === outerP, jacRefP, jacRefM]]},
  FullSimplify[
    Integrate[(v D[hNow, param]) /. baseProfile,
      {v, 1, vEnd /. baseProfile}] +
    (vEnd hNow D[vEnd, param] /. v -> vEnd /. baseProfile)]
  ];
thetaDifferenceAtBase = Table[FullSimplify[
  Integrate[plusResidualIntegrand[[i]] /. baseProfile,
    {v, 1, areaEndpoint[outerP] /. baseProfile}] +
  Integrate[minusResidualIntegrand[[i]] /. baseProfile,
    {v, 1, areaEndpoint[outerM] /. baseProfile}] +
  (cornerResidualTheta[[i]] /. baseProfile)], {i, Length[areaVars]}];
yDerivativeAtBase = Table[FullSimplify[
  (D[omega0 lambdaR, p] /. baseProfile)
  - 2 ((D[omega0, p] /. baseProfile) (
      integralIAtBase[aP, outerP, lengthP] +
      integralIAtBase[aM, outerM, lengthM])
    + (omega0 /. baseProfile) (
      integralIDerivativeAtBase[aP, outerP, lengthP, p] +
      integralIDerivativeAtBase[aM, outerM, lengthM, p]))
  + (outerP + outerM) (D[Log[omega0/areaRef], p] /. baseProfile)/2],
  {p, areaVars}];
assertZero[
  "V23 affine/area one-form difference equals the explicit dY",
  thetaDifferenceAtBase - yDerivativeAtBase];
assertZero[
  "V23 area endpoint variation is retained",
  D[areaEndpoint[outerP], omega0] +
    areaEndpoint[outerP]/(2 omega0)];
assertZero[
  "V23 conformal-amplitude variation is retained",
  D[phiProfile[aP][v], aP] - Log[v]];
Do[
  assertZero[
    "V23 plus fixed-length constraint for parameter " <> ToString[p],
    FullSimplify[
      D[lambdaProfile[aP, outerP, lengthP][areaEndpoint[outerP]], p],
      Assumptions -> omega0 > 0]],
  {p, areaVars}];
Do[
  assertZero[
    "V23 minus fixed-length constraint for parameter " <> ToString[p],
    FullSimplify[
      D[lambdaProfile[aM, outerM, lengthM][areaEndpoint[outerM]], p],
      Assumptions -> omega0 > 0]],
  {p, areaVars}];

(* V24: two segments start with independent constant-slope conformal profiles.
   The matching map is imposed only after the product two-form is built. *)
Clear[x, r0, p0, f0, a0, rR, pR, fR, aR, l1, l2];
ClearAll[rSegment, phiSegment, segmentTheta];
rSegment[ri_, pi_, aa_][x_] := ri Cos[aa x] + pi Sin[aa x]/aa;
phiSegment[fi_, aa_][x_] := fi + aa x;
segmentTheta[vars_, len_] := Module[{ri, pi, fi, aa, rr, ff},
  {ri, pi, fi, aa} = vars;
  rr = rSegment[ri, pi, aa][x];
  ff = phiSegment[fi, aa][x];
  Table[FullSimplify[Integrate[
    2 rr^2 D[ff, x] D[ff, z] - 2 D[rr, x] D[rr, z],
    {x, 0, len}]], {z, vars}]
  ];

leftVars = {r0, p0, f0, a0};
rightVars = {rR, pR, fR, aR};
productVars = Join[leftVars, rightVars];
thetaLeft = segmentTheta[leftVars, l1];
thetaRight = segmentTheta[rightVars, l2];
productMatrix = ArrayFlatten[{
  {curlMatrix[thetaLeft, leftVars], ConstantArray[0, {4, 4}]},
  {ConstantArray[0, {4, 4}], curlMatrix[thetaRight, rightVars]}
  }];

matchingMap = {
  r0, p0, f0, a0,
  rSegment[r0, p0, a0][l1],
  D[rSegment[r0, p0, a0][x], x] /. x -> l1,
  phiSegment[f0, a0][l1],
  a0
  };
matchingJacobian = Table[D[matchingMap[[i]], leftVars[[j]]],
  {i, 8}, {j, 4}];
matchingRules = Thread[productVars -> matchingMap];
reducedProductMatrix = FullSimplify[
  Transpose[matchingJacobian] . (productMatrix /. matchingRules) .
    matchingJacobian];
longMatrix = curlMatrix[segmentTheta[leftVars, l1 + l2], leftVars];
assertZero[
  "V24 independent two-segment product pulls back to the long two-form",
  FullSimplify[reducedProductMatrix - longMatrix,
    Assumptions -> {a0 != 0}]];

matchingConstraints = {
  rR - rSegment[r0, p0, a0][l1],
  pR - (D[rSegment[r0, p0, a0][x], x] /. x -> l1),
  fR - phiSegment[f0, a0][l1],
  aR - a0
  };
constraintJacobian = Table[D[matchingConstraints[[i]], productVars[[j]]],
  {i, 4}, {j, 8}];
assertZero[
  "V24 the explicit matching-locus Jacobian has four independent constraints",
  MatrixRank[constraintJacobian] - 4];
assertTrue[
  "V24 the independent data are generically off the matching locus",
  (matchingConstraints /. {r0 -> 1, p0 -> 1, f0 -> 0, a0 -> 1,
      rR -> 3, pR -> 2, fR -> 1, aR -> 2, l1 -> 1/3}) =!=
      {0, 0, 0, 0}];

(* V25: three independently declared segments give the same reduced form,
   and the two parenthesizations use the same matching-locus pullback. *)
Clear[r2, p2, f2, a2, r3, p3, f3, a3, l3];
cell2Vars = {r2, p2, f2, a2};
cell3Vars = {r3, p3, f3, a3};
threeProductVars = Join[leftVars, cell2Vars, cell3Vars];
threeProductMatrix = ArrayFlatten[{
  {curlMatrix[segmentTheta[leftVars, l1], leftVars],
    ConstantArray[0, {4, 4}], ConstantArray[0, {4, 4}]},
  {ConstantArray[0, {4, 4}],
    curlMatrix[segmentTheta[cell2Vars, l2], cell2Vars],
    ConstantArray[0, {4, 4}]},
  {ConstantArray[0, {4, 4}], ConstantArray[0, {4, 4}],
    curlMatrix[segmentTheta[cell3Vars, l3], cell3Vars]}
  }];
stateAt[len_] := {
  rSegment[r0, p0, a0][len],
  D[rSegment[r0, p0, a0][x], x] /. x -> len,
  phiSegment[f0, a0][len], a0};
threeMatchingMap = Join[leftVars, stateAt[l1], stateAt[l1 + l2]];
threeJacobian = Table[D[threeMatchingMap[[i]], leftVars[[j]]],
  {i, 12}, {j, 4}];
threeRules = Thread[threeProductVars -> threeMatchingMap];
threeReduced = FullSimplify[
  Transpose[threeJacobian] . (threeProductMatrix /. threeRules) .
    threeJacobian];
threeLong = curlMatrix[segmentTheta[leftVars, l1 + l2 + l3], leftVars];
assertZero[
  "V25 three independent cells reduce associatively to the long two-form",
  FullSimplify[threeReduced - threeLong, Assumptions -> a0 != 0]];

leftGroupedProduct = ArrayFlatten[{
  {curlMatrix[segmentTheta[leftVars, l1 + l2], leftVars],
    ConstantArray[0, {4, 4}]},
  {ConstantArray[0, {4, 4}],
    curlMatrix[segmentTheta[cell3Vars, l3], cell3Vars]}
  }];
leftGroupedMap = Join[leftVars, stateAt[l1 + l2]];
leftGroupedJacobian = Table[D[leftGroupedMap[[i]], leftVars[[j]]],
  {i, 8}, {j, 4}];
leftGroupedRules = Thread[Join[leftVars, cell3Vars] -> leftGroupedMap];
leftParenthesization = FullSimplify[
  Transpose[leftGroupedJacobian] .
    (leftGroupedProduct /. leftGroupedRules) . leftGroupedJacobian];

rightGroupedProduct = ArrayFlatten[{
  {curlMatrix[segmentTheta[leftVars, l1], leftVars],
    ConstantArray[0, {4, 4}]},
  {ConstantArray[0, {4, 4}],
    curlMatrix[segmentTheta[cell2Vars, l2 + l3], cell2Vars]}
  }];
rightGroupedMap = Join[leftVars, stateAt[l1]];
rightGroupedJacobian = Table[D[rightGroupedMap[[i]], leftVars[[j]]],
  {i, 8}, {j, 4}];
rightGroupedRules = Thread[Join[leftVars, cell2Vars] -> rightGroupedMap];
rightParenthesization = FullSimplify[
  Transpose[rightGroupedJacobian] .
    (rightGroupedProduct /. rightGroupedRules) . rightGroupedJacobian];
assertZero[
  "V25 left and right parenthesized reductions agree",
  FullSimplify[leftParenthesization - rightParenthesization,
    Assumptions -> a0 != 0]];
assertZero[
  "V25 each parenthesization equals the long two-form",
  FullSimplify[leftParenthesization - threeLong,
    Assumptions -> a0 != 0]];

Print["PASS all Stage-2.2 finite-mode checks"];
Print["NOT PROVED BY V23 ALONE: the continuum functional identity;"];
Print["its proof is the explicit one-form transformation in calculation 04."];
Print["NOT PROVED: a closing-wall action or a full finite-cell quotient."];
