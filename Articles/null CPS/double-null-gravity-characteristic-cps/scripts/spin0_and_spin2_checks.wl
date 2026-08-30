(* Exact checks for Stage 1.1 and the coupled finite double-null spin-0+2 pullback. *)

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

Print["Finite double-null gravity Stage 1.1/2: exact identity checks"];

(* V0: exact matrix realization of the corrected projector. *)
Clear[mu];
g = {{0, mu, 0, 0}, {mu, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}};
ellPlus = {1, 0, 0, 0};
ellMinus = {0, 1, 0, 0};
ellPlusCov = g . ellPlus;
ellMinusCov = g . ellMinus;
qCov = FullSimplify[g - (Outer[Times, ellPlusCov, ellMinusCov] +
      Outer[Times, ellMinusCov, ellPlusCov])/mu];
qMixed = FullSimplify[qCov . Inverse[g]];
assertZero["V0 projector annihilates ell_+", qCov . ellPlus];
assertZero["V0 projector annihilates ell_-", qCov . ellMinus];
assertZero["V0 projector is idempotent", qMixed . qMixed - qMixed];

(* V1: nonlinear affine Raychaudhuri and area reconstruction. *)
Clear[lambda, theta0, Omega0, L];
F[lambda_] := 1 + lambda theta0/2;
theta[lambda_] := theta0/F[lambda];
area[lambda_] := Omega0 F[lambda]^2;
assertZero["V1 Raychaudhuri dtheta + theta^2/2",
  D[theta[lambda], lambda] + theta[lambda]^2/2];
assertZero["V1 area transport dOmega - theta Omega",
  D[area[lambda], lambda] - theta[lambda] area[lambda]];
assertZero["V1 initial expansion", theta[0] - theta0];
assertZero["V1 initial area", area[0] - Omega0];

(* V2: one-form pullback and its field-space curl. *)
deltaArea = D[area[lambda], Omega0] dOmega0 +
  D[area[lambda], theta0] dTheta0;
pullbackIntegrand = FullSimplify[theta[lambda] deltaArea];
pullback = FullSimplify[Integrate[pullbackIntegrand, {lambda, 0, L}],
  Assumptions -> L > 0];
expectedPullback = (theta0 L + theta0^2 L^2/4) dOmega0 +
  Omega0 theta0 L^2 dTheta0/2;
assertZero["V2 exact pullback integral", pullback - expectedPullback];

(* Theta = A dOmega0 + B dtheta0 with the physical factor -C_G/2 omitted.
   Curl coefficient before that factor is dB/dOmega0 - dA/dtheta0 = -L. *)
Acoef = Coefficient[expectedPullback, dOmega0];
Bcoef = Coefficient[expectedPullback, dTheta0];
curlBare = FullSimplify[D[Bcoef, Omega0] - D[Acoef, theta0]];
assertZero["V2 nonlinear curl collapses to -L", curlBare + L];
assertZero["V2 physical curl coefficient is C_G L/2",
  (-cG/2) curlBare - cG L/2];

(* Outer area differential and initial/outer-area form of the sheet two-form. *)
outerArea = area[L];
outerDifferential = D[outerArea, Omega0] dOmega0 +
  D[outerArea, theta0] dTheta0;
expectedOuterDifferential = F[L]^2 dOmega0 + Omega0 F[L] L dTheta0;
assertZero["V2 outer-cut area differential", outerDifferential - expectedOuterDifferential];

areaWedgeCoefficient = FullSimplify[
  (cG L/2)/D[outerArea, theta0],
  Assumptions -> {Omega0 > 0, F[L] > 0}];
expectedAreaWedgeCoefficient = FullSimplify[
  cG/(2 Sqrt[Omega0 outerArea]),
  Assumptions -> {Omega0 > 0, F[L] > 0}];
assertZero["V2 sheet form in initial/outer areas",
  areaWedgeCoefficient - expectedAreaWedgeCoefficient];
assertZero["V2 square-root area coefficient is 2 C_G",
  FullSimplify[4 Sqrt[Omega0 outerArea] areaWedgeCoefficient - 2 cG,
    Assumptions -> {Omega0 > 0, F[L] > 0}]];

(* V3: initial null-null endpoint plus joint cancellation. *)
Clear[a0, da0];
initialPlusEndpoint = -cG Omega0 da0/2;
initialMinusEndpoint = -cG Omega0 da0/2;
initialJointVariation = cG (Omega0 da0 + a0 dOmega0);
initialCombined = Expand[
  initialPlusEndpoint + initialMinusEndpoint + initialJointVariation];
assertZero["V3 initial normalization variation cancels",
  Coefficient[initialCombined, da0]];
assertZero["V3 residual initial corner potential",
  initialCombined - cG a0 dOmega0];

(* V4: kappa versus kappa+theta, including both endpoint shifts. *)
thetaBoundaryIntegral = FullSimplify[Integrate[area[lambda] theta[lambda],
    {lambda, 0, L}], Assumptions -> L > 0];
assertZero["V4 integral Omega theta is outer minus initial area",
  thetaBoundaryIntegral - (area[L] - area[0])];
sheetRepresentativeShift = thetaBoundaryIntegral;
jointRepresentativeShift = -area[L] + area[0];
assertZero["V4 sheet plus both joint shifts cancel",
  sheetRepresentativeShift + jointRepresentativeShift];
assertZero["V4 variation in Omega0 also cancels",
  D[sheetRepresentativeShift + jointRepresentativeShift, Omega0]];
assertZero["V4 variation in theta0 also cancels",
  D[sheetRepresentativeShift + jointRepresentativeShift, theta0]];

(* V5: extended-port rank and fixed-area kernel. *)
Clear[OmegaP, OmegaM, cP, cM];
cP = 1/(2 Sqrt[Omega0 OmegaP]);
cM = 1/(2 Sqrt[Omega0 OmegaM]);
extendedMatrix = {
  {0, 1, cP, 0, cM, 0},
  {-1, 0, 0, 0, 0, 0},
  {-cP, 0, 0, -1, 0, 0},
  {0, 0, 1, 0, 0, 0},
  {-cM, 0, 0, 0, 0, -1},
  {0, 0, 0, 0, 1, 0}
};
assertZero["V5 extended-port determinant is one", Det[extendedMatrix] - 1];
assertZero["V5 extended-port rank is six", MatrixRank[extendedMatrix] - 6];
assertTrue["V5 extended-port kernel is empty", NullSpace[extendedMatrix] === {}];

fixedAreaJacobian = {
  {1, 0, 0, 0},
  {0, 1, 0, 0},
  {0, 0, 0, 0},
  {0, 0, 1, 0},
  {0, 0, 0, 0},
  {0, 0, 0, 1}
};
fixedAreaMatrix = FullSimplify[
  Transpose[fixedAreaJacobian] . extendedMatrix . fixedAreaJacobian];
assertZero["V5 fixed-area rank is two", MatrixRank[fixedAreaMatrix] - 2];
assertZero["V5 b_+ is a fixed-source kernel direction",
  fixedAreaMatrix . {0, 0, 1, 0}];
assertZero["V5 b_- is a fixed-source kernel direction",
  fixedAreaMatrix . {0, 0, 0, 1}];

(* V6: composition of two affine spin-0 sheet segments. *)
Clear[L1, L2];
compositionMatrix = {
  {0, 2, 0},
  {-2, 0, 2},
  {0, -2, 0}
};
compositionJacobian = {
  {1, 0},
  {L2/(L1 + L2), L1/(L1 + L2)},
  {0, 1}
};
directMatrix = {{0, 2}, {-2, 0}};
assertZero["V6 two sheet segments compose",
  FullSimplify[
    Transpose[compositionJacobian] . compositionMatrix . compositionJacobian -
      directMatrix,
    Assumptions -> {L1 > 0, L2 > 0}]];

(* V7: local unimodular spin-2 chart and the remaining area density. *)
Clear[phi, phiDot, deltaPhi, Omega, OmegaDot];
barq = DiagonalMatrix[{Exp[2 phi], Exp[-2 phi]}];
barqInv = Inverse[barq];
barqDot = D[barq, phi] phiDot;
deltaBarq = D[barq, phi] deltaPhi;
q = Omega barq;
qInv = Inverse[q];
qDot = OmegaDot barq + Omega barqDot;
Bcov = qDot/2;
thetaFromMetric = FullSimplify[Tr[qInv . Bcov]];
sigmaCov = FullSimplify[Bcov - thetaFromMetric q/2];
sigmaContra = FullSimplify[qInv . sigmaCov . qInv];
sigmaTilde = FullSimplify[Omega sigmaContra];
assertZero["V7 det bar q is one", Det[barq] - 1];
assertZero["V7 conformal velocity is tracefree", Tr[barqInv . barqDot]];
assertZero["V7 expansion is OmegaDot/Omega",
  thetaFromMetric - OmegaDot/Omega];
assertZero["V7 shear is Omega barqDot/2",
  sigmaCov - Omega barqDot/2];
pureSpin2Contraction = FullSimplify[
  Tr[Transpose[sigmaTilde] . deltaBarq]/2];
assertZero["V7 pure densitized-shear contraction",
  pureSpin2Contraction - 2 phiDot deltaPhi];
assertZero["V7 full bare-measure spin-2 density",
  Omega pureSpin2Contraction - 2 Omega phiDot deltaPhi];

(* V8: shear-free Damour transport on the exact Raychaudhuri background. *)
Clear[omega0, dTheta0];
omegaDamour[lambda_] := (omega0 + lambda dTheta0/2)/F[lambda]^2;
dTheta[lambda_] := dTheta0/F[lambda]^2;
assertZero["V8 Damour solution",
  D[omegaDamour[lambda], lambda] + theta[lambda] omegaDamour[lambda] -
    dTheta[lambda]/2];
assertZero["V8 twist-free restriction",
  omegaDamour[lambda] /. {omega0 -> 0, dTheta0 -> 0}];

(* V9: unrestricted composition mismatch and slope-matched pullback. *)
directEmbeddedMatrix = {
  {0, 0, 2},
  {0, 0, 0},
  {-2, 0, 0}
};
uSlopeLeft = {-1, 1, 0};
uSlopeRight = {0, -1, 1};
mismatchMatrix = compositionMatrix - directEmbeddedMatrix;
expectedMismatchMatrix = 2 (Outer[Times, uSlopeLeft, uSlopeRight] -
    Outer[Times, uSlopeRight, uSlopeLeft]);
assertZero["V9 composition mismatch identity",
  mismatchMatrix - expectedMismatchMatrix];
assertTrue["V9 area matching alone leaves a rank-two mismatch",
  MatrixRank[mismatchMatrix] === 2];
assertZero["V9 slope matching kills the composition mismatch",
  FullSimplify[
    Transpose[compositionJacobian] . mismatchMatrix . compositionJacobian,
    Assumptions -> {L1 > 0, L2 > 0}]];

(* V10: a non-diagonal unimodular chart checks sigma^2 and V=Tr[A^2]/8. *)
Clear[chi, chiDot];
barqND = {
  {Exp[2 phi], Exp[2 phi] chi},
  {Exp[2 phi] chi, Exp[-2 phi] + Exp[2 phi] chi^2}
};
barqNDInv = FullSimplify[Inverse[barqND]];
barqNDDot = D[barqND, phi] phiDot + D[barqND, chi] chiDot;
qND = Omega barqND;
qNDInv = FullSimplify[Inverse[qND]];
qNDDot = OmegaDot barqND + Omega barqNDDot;
BcovND = qNDDot/2;
thetaND = FullSimplify[Tr[qNDInv . BcovND]];
sigmaCovND = FullSimplify[BcovND - thetaND qND/2];
sigmaContraND = FullSimplify[qNDInv . sigmaCovND . qNDInv];
sigmaSquaredND = FullSimplify[Tr[sigmaCovND . sigmaContraND]];
AND = FullSimplify[barqNDInv . barqNDDot];
assertZero["V10 non-diagonal chart determinant",
  Det[barqND] - 1];
assertZero["V10 non-diagonal shear norm",
  sigmaSquaredND - Tr[AND . AND]/4];
assertZero["V10 Raychaudhuri potential coefficient",
  sigmaSquaredND/2 - Tr[AND . AND]/8];

(* V11: constant-potential finite mode checks the linearized Green map. *)
Clear[amp, rInit, pInit, tau];
rMode[t_] := rInit Cos[amp t] + pInit Sin[amp t]/amp;
chiAmp[t_] := D[rMode[t], amp];
assertZero["V11 linearized focusing residual",
  FullSimplify[D[chiAmp[lambda], {lambda, 2}] +
    amp^2 chiAmp[lambda] + 2 amp rMode[lambda],
    Assumptions -> amp > 0]];
greenAmp = FullSimplify[
  -Integrate[(Sin[amp (lambda - tau)]/amp) rMode[tau] 2 amp,
    {tau, 0, lambda}], Assumptions -> amp > 0];
assertZero["V11 retarded Green identity",
  FullSimplify[chiAmp[lambda] - greenAmp, Assumptions -> amp > 0]];

(* V12: finite-dimensional curl of the complete diagonal-chart one-form. *)
params = {rInit, pInit, amp};
phiMode[t_] := amp t;
thetaComponent[param_] := FullSimplify[
  2 rMode[lambda]^2 D[phiMode[lambda], lambda]
      D[phiMode[lambda], param] -
    2 D[rMode[lambda], lambda] D[rMode[lambda], param]];
expectedCurl[pi_, pj_] := FullSimplify[
  2 (D[rMode[lambda], pi] D[D[rMode[lambda], lambda], pj] -
      D[rMode[lambda], pj] D[D[rMode[lambda], lambda], pi]) +
  4 rMode[lambda] D[phiMode[lambda], lambda]
    (D[rMode[lambda], pi] D[phiMode[lambda], pj] -
      D[rMode[lambda], pj] D[phiMode[lambda], pi]) +
  2 rMode[lambda]^2
    (D[D[phiMode[lambda], lambda], pi] D[phiMode[lambda], pj] -
      D[D[phiMode[lambda], lambda], pj] D[phiMode[lambda], pi])];
Do[
  assertZero[
    "V12 full reduced curl pair " <> ToString[i] <> "," <> ToString[j],
    FullSimplify[
      D[thetaComponent[params[[j]]], params[[i]]] -
      D[thetaComponent[params[[i]]], params[[j]]] -
      expectedCurl[params[[i]], params[[j]]],
      Assumptions -> amp > 0]],
  {i, 1, Length[params] - 1}, {j, i + 1, Length[params]}];

(* V12b: non-diagonal profile checks the A B wedge B matrix term. *)
Clear[ampND, skewND];
qProfileND = barqND /. {phi -> ampND lambda, chi -> skewND lambda};
qProfileNDInv = FullSimplify[Inverse[qProfileND]];
AProfileND = FullSimplify[qProfileNDInv . D[qProfileND, lambda]];
rProfileND = rInit + pInit lambda;
paramsND = {rInit, pInit, ampND, skewND};
BProfileND[param_] := FullSimplify[qProfileNDInv . D[qProfileND, param]];
thetaComponentND[param_] := FullSimplify[
  rProfileND^2 Tr[AProfileND . BProfileND[param]]/4 -
    2 D[rProfileND, lambda] D[rProfileND, param]];
expectedCurlND[pi_, pj_] := Module[
  {ri, rj, bi, bj},
  ri = D[rProfileND, pi];
  rj = D[rProfileND, pj];
  bi = BProfileND[pi];
  bj = BProfileND[pj];
  FullSimplify[
    2 (ri D[rj, lambda] - rj D[ri, lambda]) +
    rProfileND (ri Tr[AProfileND . bj] -
        rj Tr[AProfileND . bi])/2 +
    rProfileND^2 Tr[
      D[bi, lambda] . bj - D[bj, lambda] . bi +
      AProfileND . (bi . bj - bj . bi)]/4]
  ];
Do[
  assertZero[
    "V12b non-diagonal curl pair " <> ToString[i] <> "," <> ToString[j],
    FullSimplify[
      D[thetaComponentND[paramsND[[j]]], paramsND[[i]]] -
      D[thetaComponentND[paramsND[[i]]], paramsND[[j]]] -
      expectedCurlND[paramsND[[i]], paramsND[[j]]]]],
  {i, 1, Length[paramsND] - 1}, {j, i + 1, Length[paramsND]}];
Do[
  assertZero[
    "V12b physical commutator trace pair " <>
      ToString[i] <> "," <> ToString[j],
    FullSimplify[Tr[AProfileND .
      (BProfileND[paramsND[[i]]] . BProfileND[paramsND[[j]]] -
       BProfileND[paramsND[[j]]] . BProfileND[paramsND[[i]]])]]],
  {i, 1, Length[paramsND] - 1}, {j, i + 1, Length[paramsND]}];

(* V13: shared-corner diagonal pullback has one conformal coordinate. *)
sharedConformalJacobian = {{1}, {1}};
cornerDifference = {{1, -1}};
assertZero["V13 shared conformal corner constraint",
  cornerDifference . sharedConformalJacobian];
assertZero["V13 shared conformal corner has rank one",
  MatrixRank[sharedConformalJacobian] - 1];

(* V14: representative endpoint identity is independent of shear. *)
Clear[rr];
assertZero["V14 generic Omega theta endpoint derivative",
  D[rr[lambda]^2, lambda] -
    2 rr[lambda] D[rr[lambda], lambda]];

Print["PASS all declared identities"];
Print["NOT PROVED: full gauge nondegeneracy, a concrete closing wall,"];
Print["NOT PROVED: full Reisenberger equivalence, spin-1 reduction,"];
Print["NOT PROVED: completeness, surjectivity, or continuum topology."];
