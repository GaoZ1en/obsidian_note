(* Focused exact checks for Stage 2.1. *)

ClearAll[assertZero, assertTrue];
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

Print["Finite double-null gravity Stage 2.1: corner/area/composition checks"];

(* V15: HF normal scalar and unified initial corner. *)
Clear[m, Omega0, cG, dm, dOmega];
normalBlock = {{0, -Exp[-m]}, {-Exp[-m], 0}};
assertZero["V15 h=-m from the normal 2x2 block",
  FullSimplify[Log[Sqrt[-Det[normalBlock]]] + m,
    Assumptions -> Element[m, Reals]]];
thetaHF = cG (m - 1) dOmega;
assertZero["V15 positive HF corner curl",
  D[Coefficient[thetaHF, dOmega], m] - cG];
generatorDifferential = cG (Omega0 dm + (m - 1) dOmega);
assertZero["V15 exact area-to-boost polarization change",
  Expand[thetaHF - generatorDifferential + cG Omega0 dm]];

(* V16: two branch-adapted Hajicek forms. *)
Clear[aPlus, aMinus, dM, omegaPlus, omegaMinus, hatOmega];
omegaPlus = -Exp[m] aPlus;
omegaMinus = -Exp[m] aMinus;
normalDerivativeRule = aMinus -> Exp[-m] dM - aPlus;
assertZero["V16 branch connection sum is -D m",
  FullSimplify[omegaPlus + omegaMinus + dM /. normalDerivativeRule]];
branchDictionary = {
  omegaPlus -> hatOmega - dM/2,
  omegaMinus -> -hatOmega - dM/2
};
assertZero["V16 shared connection reproduces the sum",
  (omegaPlus + omegaMinus + dM) /. branchDictionary /. normalDerivativeRule];
assertZero["V16 affine twist is twice the shared connection",
  Expand[(hatOmega - dM/2) - (-hatOmega - dM/2) - 2 hatOmega]];

(* V17: affine-to-area focusing Jacobian mathcal B in a diagonal mode. *)
Clear[v, a, theta0, jac0];
kMatrix = DiagonalMatrix[{2 a, -2 a}];
jacArea[v_] := (2/theta0) Exp[a^2 (v^2 - 1)/2];
assertZero["V17 area focusing Jacobian",
  D[Log[jacArea[v]], v] - v Tr[kMatrix . kMatrix]/8];
assertZero["V17 initial mathcal B is 2/theta0", jacArea[1] - 2/theta0];
assertZero["V17 field variation with respect to shear amplitude",
  D[Log[jacArea[v]], a] - a (v^2 - 1)];
assertZero["V17 field variation with respect to theta0",
  D[Log[jacArea[v]], theta0] + 1/theta0];

(* V18: shared-corner conformal endpoint term. *)
Clear[phi0, phi, dPhi0];
phi[v_] := phi0 + a (v - 1);
eMetric[v_] := DiagonalMatrix[{Exp[2 phi[v]], Exp[-2 phi[v]]}];
eInverse[v_] := FullSimplify[Inverse[eMetric[v]]];
endpointContraction = FullSimplify[
  Sum[D[eInverse[v][[i, j]], v] D[eMetric[v][[i, j]], phi0],
    {i, 1, 2}, {j, 1, 2}] /. v -> 1];
assertZero["V18 inverse-metric endpoint contraction",
  endpointContraction + 8 a];
assertZero["V18 Reisenberger endpoint coefficient per branch",
  cG endpointContraction/8 + cG a];

(* V19: the corner-scale cancellation is checked at one-form level.  The
   -log(mathcal B_s0/mathcal B_*s) dOmega0 terms are the lower-scale remainder derived in the
   complete transformation in calculation 03; V23 independently obtains
   their curl from the affine one-form in a moving-endpoint finite profile. *)
Clear[lambdaR, jacPlus0, jacMinus0, jacRefPlus, jacRefMinus,
  dLambdaR, dJacPlus0, dJacMinus0];
mFromAreaNormals = lambdaR + Log[jacPlus0/jacRefPlus] +
  Log[jacMinus0/jacRefMinus];
affineCornerOneForm = cG (mFromAreaNormals - 1) dOmega;
sheetLowerScaleOneForm = -cG (Log[jacPlus0/jacRefPlus] +
  Log[jacMinus0/jacRefMinus]) dOmega;
reisenCornerOneForm = -cG Omega0 dLambdaR;
cornerGeneratorDifferential = cG (
  (lambdaR - 1) dOmega + Omega0 dLambdaR);
assertZero[
  "V19 one-form corner/normal-scale transformation",
  Expand[affineCornerOneForm + sheetLowerScaleOneForm -
    reisenCornerOneForm - cornerGeneratorDifferential]];

(* V20: full first-jet mismatch decomposes into expansion and shear jumps. *)
Clear[dTheta, dSigma];
jumpMatrix = DiagonalMatrix[{dTheta/2 + dSigma, dTheta/2 - dSigma}];
assertZero["V20 first-jet jump norm",
  Expand[Tr[jumpMatrix . jumpMatrix] -
    (dTheta^2/2 + 2 dSigma^2)]];
assertTrue["V20 unmatched expansion/shear is generically nonzero",
  (Tr[jumpMatrix . jumpMatrix] /. {dTheta -> 2, dSigma -> 3}) != 0];

(* V21: two- and three-segment additivity in a diagonal conformal mode. *)
Clear[t, rInit, pInit, amp, phiInit, L1, L2, L3];
rMode[t_] := rInit Cos[amp t] + pInit Sin[amp t]/amp;
phiMode[t_] := phiInit + amp t;
curlDensity[pi_, pj_, t_] := FullSimplify[
  2 (D[rMode[t], pi] D[D[rMode[t], t], pj] -
      D[rMode[t], pj] D[D[rMode[t], t], pi]) +
  4 rMode[t] D[phiMode[t], t]
    (D[rMode[t], pi] D[phiMode[t], pj] -
      D[rMode[t], pj] D[phiMode[t], pi]) +
  2 rMode[t]^2
    (D[D[phiMode[t], t], pi] D[phiMode[t], pj] -
      D[D[phiMode[t], t], pj] D[phiMode[t], pi])];
densityRA = FullSimplify[
  curlDensity[rInit, amp, t] /.
    {rInit -> 2, pInit -> 1, amp -> 1, phiInit -> 0}];
densityAPhi = FullSimplify[
  curlDensity[amp, phiInit, t] /.
    {rInit -> 2, pInit -> 1, amp -> 1, phiInit -> 0}];
segmentIntegral[density_, x0_, x1_] :=
  FullSimplify[Integrate[density, {t, x0, x1}]];
lengthRules = {L1 -> 1/5, L2 -> 1/7, L3 -> 1/11};
twoSegmentResidual[density_] := FullSimplify[
  segmentIntegral[density, 0, L1] +
  segmentIntegral[density, L1, L1 + L2] -
  segmentIntegral[density, 0, L1 + L2] /. lengthRules];
threeSegmentResidual[density_] := FullSimplify[
  segmentIntegral[density, 0, L1] +
  segmentIntegral[density, L1, L1 + L2] +
  segmentIntegral[density, L1 + L2, L1 + L2 + L3] -
  segmentIntegral[density, 0, L1 + L2 + L3] /. lengthRules];
assertZero["V21 two-segment subdivision additivity, area/shear pair",
  twoSegmentResidual[densityRA]];
assertZero["V21 two-segment subdivision additivity, conformal pair",
  twoSegmentResidual[densityAPhi]];
assertZero["V21 three-segment subdivision associativity, area/shear pair",
  threeSegmentResidual[densityRA]];
assertZero["V21 three-segment subdivision associativity, conformal pair",
  threeSegmentResidual[densityAPhi]];

(* V22: diagonal focusing and shear-free limit remain unchanged. *)
assertZero["V22 diagonal focusing solution",
  D[rMode[t], {t, 2}] + amp^2 rMode[t]];
assertZero["V22 shear-free area radius limit",
  FullSimplify[Limit[rMode[t], amp -> 0] - (rInit + pInit t)]];

Print["PASS all Stage-2.1 focused identities"];
Print["NOT PROVED: a closing-wall action or its port momenta,"];
Print["NOT PROVED BY THIS SCRIPT: a chart through theta=0 or spin-1 reduction; see the Stage-3.0 checks,"];
Print["NOT PROVED: full gauge nondegeneracy or functional completion."];
