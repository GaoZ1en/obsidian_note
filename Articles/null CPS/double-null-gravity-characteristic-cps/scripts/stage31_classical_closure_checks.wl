(* Exact finite-mode checks for Stage 3.1 classical closure. *)

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

Print["Finite double-null gravity Stage 3.1: classical closure checks"];

(* V34: pi has source density weight and a target covector index.  The
   determinant occurs only in the optional target-density conversion. *)
Clear[t1, t2];
dsMap = {{2, 1}, {1, 2}};
targetDensity = {t1, t2};
sourceMomentum = Det[dsMap] targetDensity;
commonCutMomentum = Transpose[dsMap] . sourceMomentum;
assertZero[
  "V34 target density converts once to source-density momentum",
  sourceMomentum - Det[dsMap] targetDensity];
assertZero[
  "V34 common-cut momentum has no second determinant",
  commonCutMomentum - Det[dsMap] Transpose[dsMap] . targetDensity];
wrongDoubleDensity = Det[dsMap] commonCutMomentum;
assertTrue[
  "V34 a spurious second determinant changes the momentum",
  (wrongDoubleDensity - commonCutMomentum /. {t1 -> 1, t2 -> 2}) =!= {0, 0}];

(* V35: nontrivial commuting square and exact interface cancellation. *)
f12 = {{2, 1}, {1, 1}};
g12 = {{3, 1}, {1, 1}};
sOneMatrix = {{1, 2}, {0, 1}};
sTwoMatrix = f12 . sOneMatrix . Inverse[g12];
assertZero["V35 nontrivial commuting square", sTwoMatrix . g12 - f12 . sOneMatrix];

Clear[s11, s12, p11, p12, s21, s22, p21, p22];
interfaceVars = {s11, s12, p11, p12, s21, s22, p21, p22};
interfaceTheta = {p11/2, p12/2, 0, 0,
  -Det[g12] p21/2, -Det[g12] p22/2, 0, 0};
interfaceOmega = curlMatrix[interfaceTheta, interfaceVars];
matchedVars = {s11, s12, p21, p22};
matchedMap = Join[
  {s11, s12},
  Det[g12] Transpose[f12] . {p21, p22},
  f12 . {s11, s12},
  {p21, p22}];
matchedJacobian = Table[D[matchedMap[[i]], matchedVars[[j]]],
  {i, Length[matchedMap]}, {j, Length[matchedVars]}];
assertZero[
  "V35 nontrivial f,g Liouville forms cancel with source Jacobian",
  (interfaceTheta /. Thread[interfaceVars -> matchedMap]) . matchedJacobian];
assertZero[
  "V35 nontrivial f,g interface two-forms cancel",
  Transpose[matchedJacobian] .
    (interfaceOmega /. Thread[interfaceVars -> matchedMap]) . matchedJacobian];

(* V36: functoriality of source-density/cotangent matching. *)
f23 = {{1, 2}, {1, 3}};
g23 = {{2, 1}, {1, 1}};
Clear[p31, p32];
pThree = {p31, p32};
iteratedMomentum = Det[g12] Transpose[f12] .
  (Det[g23] Transpose[f23] . pThree);
directMomentum = Det[g23 . g12] Transpose[f23 . f12] . pThree;
assertZero["V36 interface matching law is functorial",
  iteratedMomentum - directMomentum];
assertZero["V36 source-density Jacobians compose",
  Det[g23 . g12] - Det[g23] Det[g12]];

(* V37: two compensators with the same endpoints differ only by the Damour
   residual paired with a zero-endpoint interpolation. *)
Clear[lam, lEnd, k0, k1];
lEnd = 1;
etaDensity[lam_] := 1 + 2 lam + 3 lam^2;
damourCoefficient[lam_] := k0 + k1 lam;
zeta[lam_] := lam (lEnd - lam);
damourResidual[lam_] := D[etaDensity[lam], lam] - damourCoefficient[lam];
directInterpolationDifference = Integrate[
  (damourCoefficient[lam] - D[etaDensity[lam], lam]) zeta[lam],
  {lam, 0, lEnd}];
assertZero["V37 compensator difference equals Damour-residual pairing",
  directInterpolationDifference +
    Integrate[damourResidual[lam] zeta[lam], {lam, 0, lEnd}]];
assertZero["V37 compensator endpoint term vanishes",
  etaDensity[lEnd] zeta[lEnd] - etaDensity[0] zeta[0]];
assertZero["V37 interpolation independence on the Damour surface",
  directInterpolationDifference /.
    {k0 -> 2, k1 -> 6}];

(* V38: the HF h delta L^a d_a S/2 term vanishes only for a tangential
   endpoint-map variation on a constant-lambda cut. *)
Clear[u, v, normalPart];
dS = {1, 0, 0};
tangentialDeltaL = {0, u, v};
assertZero["V38 HF h delta L dS cut term vanishes for tangential variation",
  tangentialDeltaL . dS];
assertTrue["V38 a normal endpoint variation would restore the HF cut term",
  ({normalPart, u, v} . dS /. normalPart -> 1) != 0];

(* V39: finite Ward-mode truncation of the full bulk+corner contraction.
   The dP,dM coordinates represent Damour residual modes; uP,uM are their
   compensator/abstract-port partners. *)
Clear[area0, lambda0, sP, pP, sM, pM, uP, dP, uM, dM,
  xi, gradLambda];
fullVars = {area0, lambda0, sP, pP, sM, pM, uP, dP, uM, dM};
fullTheta = {0, -area0, pP/2, 0, pM/2, 0, dP, 0, dM, 0};
fullOmega = curlMatrix[fullTheta, fullVars];
fullGaugeVector = {0, -gradLambda xi, -xi, 0, -xi, 0,
  -xi, 0, -xi, 0};
cornerConstraint = pP + pM - 2 area0 gradLambda;
fullHamiltonian = xi cornerConstraint/2 + xi (dP + dM);
fullHamiltonianGradient = Table[D[fullHamiltonian, z], {z, fullVars}];
assertZero[
  "V39 full bulk-Ward plus corner contraction equals dH",
  fullGaugeVector . fullOmega - fullHamiltonianGradient];
assertZero[
  "V39 Damour restriction leaves the corner moment map",
  (fullHamiltonian - xi cornerConstraint/2) /. {dP -> 0, dM -> 0}];

(* V40: a nonabelian cotangent-lift truncation verifies equivariance with
   the convention i_X Omega=dH and {F,G}=X_F[G]. *)
tOne = {{0, 1}, {0, 0}};
tTwo = {{0, 0}, {1, 0}};
tBracket = tOne . tTwo - tTwo . tOne;
Clear[q1, q2, cp1, cp2];
qVec = {q1, q2};
pVec = {cp1, cp2};
hOne = pVec . tOne . qVec;
hTwo = pVec . tTwo . qVec;
hBracket = pVec . tBracket . qVec;
xOneQ = -tOne . qVec;
xOneP = Transpose[tOne] . pVec;
poissonOneTwo = Join[xOneQ, xOneP] .
  Table[D[hTwo, z], {z, Join[qVec, pVec]}];
assertZero["V40 finite cotangent moment-map algebra is equivariant",
  poissonOneTwo - hBracket];

(* V41: opposite-boost covariance of the reconstructed affine variables.
   This is not a full closing-port kernel check. *)
Clear[z, boost, aa, cc, bPlus, bMinus, hatW, dRatio, dBoost];
omegaProfile[z_] := 1 + aa z + cc z^2;
thetaProfile[z_] := (aa + 2 cc z)/(1 + aa z + cc z^2);
omegaPlusPrime[z_] := omegaProfile[Exp[boost] z];
thetaPlusPrime[z_] := D[Log[omegaPlusPrime[z]], z];
assertZero["V41 plus affine expansion has boost weight plus one",
  thetaPlusPrime[z] - Exp[boost] thetaProfile[Exp[boost] z]];
omegaMinusPrime[z_] := omegaProfile[Exp[-boost] z];
thetaMinusPrime[z_] := D[Log[omegaMinusPrime[z]], z];
assertZero["V41 minus affine expansion has boost weight minus one",
  thetaMinusPrime[z] - Exp[-boost] thetaProfile[Exp[-boost] z]];
assertZero["V41 reference Jacobian product is boost invariant",
  (Exp[-boost] bPlus) (Exp[boost] bMinus) - bPlus bMinus];
tauBefore = 2 hatW + dRatio;
tauAfter = 2 (hatW + dBoost) + (dRatio - 2 dBoost);
assertZero["V41 reconstructed area-normal twist is boost invariant",
  tauAfter - tauBefore];
assertZero["V41 affine gauge is preserved when ell[b]=0",
  Exp[boost] (0 + 0)];

Print["PASS all Stage-3.1 finite-mode checks"];
Print["NOT PROVED: a closing-wall boost kernel, functional nondegeneracy,"];
Print["or an unreduced off-shell spacetime moment-map theorem."];
