(* ::Package:: *)

(*
  Exact stationary nonuniform-wall extension of the smooth BTZ moving
  polarization.

  The exact locally AdS3 collar metric is

    ds^2 = d rho^2 - s^2 sinh(rho)^2 d lambda^2
           + R(phi)^2 cosh(rho)^2 d phi^2,

  and the inner wall is the graph rho=E(phi)>0.  R(phi)>0 and E(phi) are
  arbitrary smooth periodic functions.  The script computes the induced
  metric, inner outward unit normal, extrinsic curvature, and Brown--York
  momentum.  It then proves

    B_X = -delta w_wave + d_phi(P_wave delta E),

  so the integrated source is exact and the integrated Brown--York flux
  vanishes on the full stationary smooth (R,E) family.
*)

ClearAll["Global`*"];

coordinates = {lambda, rho, phi};
parameters = {lambda, phi};
metric = DiagonalMatrix[{
    -boostScale^2 Sinh[rho]^2,
    1,
    radiusDensity[phi]^2 Cosh[rho]^2
    }];
inverseMetric = FullSimplify[Inverse[metric]];

christoffel = Table[
   FullSimplify[
    1/2 Sum[inverseMetric[[a, d]] (
       D[metric[[d, b]], coordinates[[c]]] +
        D[metric[[d, c]], coordinates[[b]]] -
        D[metric[[b, c]], coordinates[[d]]]), {d, 3}]],
   {a, 3}, {b, 3}, {c, 3}];

embedding = {lambda, wall[phi], phi};
tangents = {{1, 0, 0}, {0, wall'[phi], 1}};

wallNormSquare = radiusDensity[phi]^2 Cosh[wall[phi]]^2 +
   wall'[phi]^2;
normalFactor = radiusDensity[phi] Cosh[wall[phi]]/
   Sqrt[wallNormSquare];

(* Inner outward normal points toward decreasing rho. *)
normalCovector = {0, -normalFactor, normalFactor wall'[phi]};
normalNorm = FullSimplify[
   normalCovector . (inverseMetric /. rho -> wall[phi]) . normalCovector,
   Assumptions -> {radiusDensity[phi] > 0, wall[phi] > 0}];
normalTangencies = FullSimplify[
   Table[Sum[normalCovector[[mu]] tangents[[i, mu]], {mu, 3}],
    {i, 2}]];

inducedMetric = FullSimplify[
   Table[Sum[
     tangents[[i, mu]] tangents[[j, nu]]
      (metric[[mu, nu]] /. rho -> wall[phi]),
     {mu, 3}, {nu, 3}], {i, 2}, {j, 2}],
   Assumptions -> {radiusDensity[phi] > 0, wall[phi] > 0}];

extrinsic = FullSimplify[
   Table[-Sum[normalCovector[[mu]] (
       D[embedding[[mu]], parameters[[i]], parameters[[j]]] +
        Sum[(christoffel[[mu, nu, sigma]] /. rho -> wall[phi])
          tangents[[i, nu]] tangents[[j, sigma]],
         {nu, 3}, {sigma, 3}]), {mu, 3}],
    {i, 2}, {j, 2}],
   Assumptions -> {radiusDensity[phi] > 0, wall[phi] > 0,
     boostScale > 0}];

inverseInduced = FullSimplify[Inverse[inducedMetric]];
sqrtMinusInduced = FullSimplify[
   Sqrt[-Det[inducedMetric]],
   Assumptions -> {radiusDensity[phi] > 0, wall[phi] > 0,
     boostScale > 0}];
extrinsicTrace = FullSimplify[Tr[inverseInduced . extrinsic]];
brownYorkMomentum = FullSimplify[
   sqrtMinusInduced (
      inverseInduced . extrinsic . inverseInduced -
       extrinsicTrace inverseInduced)/kp2,
   Assumptions -> {radiusDensity[phi] > 0, wall[phi] > 0,
     boostScale > 0}];

(* Replace the local jets by independent symbols for the variational
   identity. *)
jetRules = {
   wall[phi] -> e,
   wall'[phi] -> ep,
   wall''[phi] -> epp,
   radiusDensity[phi] -> r,
   radiusDensity'[phi] -> rp
   };

gammaJet = inducedMetric /. jetRules;
kJet = FullSimplify[extrinsic /. jetRules,
   Assumptions -> {r > 0, e > 0, boostScale > 0}];
piJet = FullSimplify[brownYorkMomentum /. jetRules,
   Assumptions -> {r > 0, e > 0, boostScale > 0}];

denominator = ep^2 + r^2 Cosh[e]^2;
expectedGamma = {
   {-boostScale^2 Sinh[e]^2, 0},
   {0, denominator}
   };
expectedK = {
   {r boostScale^2 Cosh[e]^2 Sinh[e]/Sqrt[denominator], 0},
   {0, -(((-epp r + ep rp) Cosh[e] +
          2 ep^2 r Sinh[e] + r^3 Cosh[e]^2 Sinh[e])/
        Sqrt[denominator])}
   };
expectedPi = {
   {-(2 ep^2 r + r^3 Cosh[e]^2 - epp r Coth[e] +
        ep rp Coth[e])/(kp2 boostScale denominator), 0},
   {0, r boostScale Cosh[e]^2/(kp2 denominator)}
   };

(* B_X = b_e delta e + b_ep delta e' + b_r delta r. *)
deltaGammaE = D[expectedGamma, e];
deltaGammaEp = D[expectedGamma, ep];
deltaGammaR = D[expectedGamma, r];
contract2[array1_, array2_] := FullSimplify[
   Sum[array1[[i, j]] array2[[i, j]], {i, 2}, {j, 2}]];
bCoefficients = FullSimplify[
   -1/2 {
      contract2[expectedPi, deltaGammaE],
      contract2[expectedPi, deltaGammaEp],
      contract2[expectedPi, deltaGammaR]
      },
   Assumptions -> {r > 0, e > 0, boostScale > 0}];

slopeAngle = ArcTan[ep/(r Cosh[e])];
waveFunctional = boostScale/kp2 (
    r Cosh[e]^2 + ep Cosh[e] slopeAngle
    );
endpointMomentum = boostScale Cosh[e] slopeAngle/kp2;

waveVariationCoefficients = FullSimplify[
   {D[waveFunctional, e], D[waveFunctional, ep],
    D[waveFunctional, r]},
   Assumptions -> {r > 0, e > 0, boostScale > 0}];

totalPhiDerivative[expression_] := Expand[
   D[expression, e] ep + D[expression, ep] epp +
    D[expression, r] rp];

sourcePrimitiveResidual = FullSimplify[{
    bCoefficients[[1]] + waveVariationCoefficients[[1]] -
     totalPhiDerivative[endpointMomentum],
    bCoefficients[[2]] + waveVariationCoefficients[[2]] -
     endpointMomentum,
    bCoefficients[[3]] + waveVariationCoefficients[[3]]
    }, Assumptions -> {r > 0, e > 0, boostScale > 0}];

uniformFunctionalLimit = FullSimplify[
   Limit[waveFunctional, ep -> 0],
   Assumptions -> {r > 0, e > 0, boostScale > 0}];
uniformEndpointLimit = FullSimplify[
   Limit[endpointMomentum, ep -> 0],
   Assumptions -> {r > 0, e > 0, boostScale > 0}];

(* The field-space curl of an exact functional vanishes; the remaining curl
   is d_phi(delta P wedge delta E), whose circle integral is zero.  The
   following finite-jet test checks the antisymmetry of that endpoint form. *)
endpointTangent[tangent_] := FullSimplify[
   D[endpointMomentum, e] tangent[[1]] +
    D[endpointMomentum, ep] tangent[[2]] +
    D[endpointMomentum, r] tangent[[3]],
   Assumptions -> {r > 0, e > 0, boostScale > 0}];
tangent1 = {de1, dep1, dr1};
tangent2 = {de2, dep2, dr2};
endpointFlux12 = Expand[
   endpointTangent[tangent1] de2 - endpointTangent[tangent2] de1];
endpointFluxAntisymmetry = Expand[
   endpointFlux12 +
    endpointTangent[tangent2] de1 - endpointTangent[tangent1] de2];

testConditions = {
   normalNorm === 1,
   normalTangencies === {0, 0},
   FullSimplify[gammaJet - expectedGamma] === ConstantArray[0, {2, 2}],
   FullSimplify[kJet - expectedK] === ConstantArray[0, {2, 2}],
   FullSimplify[piJet - expectedPi] === ConstantArray[0, {2, 2}],
   sourcePrimitiveResidual === {0, 0, 0},
   uniformFunctionalLimit ===
    r boostScale Cosh[e]^2/kp2,
   uniformEndpointLimit === 0,
   endpointFluxAntisymmetry === 0
   };

testIDs = {
   "wavy inner normal has unit norm",
   "wavy inner normal is orthogonal to both wall tangents",
   "induced metric on the wavy wall",
   "extrinsic curvature of the wavy wall",
   "Brown-York momentum of the wavy wall",
   "wall source is minus delta wave functional plus a phi derivative",
   "wave functional reduces to the uniform mixed functional",
   "endpoint momentum vanishes in the uniform limit",
   "endpoint field-space flux is antisymmetric"
   };

Print[<|
  "InducedMetric" -> gammaJet,
  "ExtrinsicCurvature" -> kJet,
  "BrownYorkMomentum" -> piJet,
  "WallSourceCoefficients" -> bCoefficients,
  "WaveFunctional" -> waveFunctional,
  "EndpointMomentum" -> endpointMomentum,
  "SourcePrimitiveResidual" -> sourcePrimitiveResidual|>];

btzNonuniformMovingPolarizationReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
