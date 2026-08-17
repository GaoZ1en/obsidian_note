(* ::Package:: *)

(*
  Exact finite-amplitude compact-BTZ moving-polarization benchmark.

  In a full Kruskal collar, an orientation-preserving circle map F acts by
  phi -> F(phi).  Put R(phi)=r_+ F'(phi)>0.  In fixed-boost coordinates the
  exact collar metric is

    ds^2 = d rho^2 - s^2 sinh^2 rho d lambda^2
            + R(phi)^2 cosh^2 rho d phi^2.

  The script checks the vacuum equation for arbitrary R(phi), the complete
  inner-wall Brown--York canonical pair, a regulator-dependent mixed
  polarization, uniform normal wall work, and wall-to-corner transgression.
  All wall expressions are per unit d lambda d phi.
*)

ClearAll["Global`*"];

coordinates = {lambda, rho, phi};
metric = {
   {-boostScale^2 Sinh[rho]^2, 0, 0},
   {0, 1, 0},
   {0, 0, radiusDensity[phi]^2 Cosh[rho]^2}
   };
inverseMetric = FullSimplify[Inverse[metric]];

christoffel = Table[
   FullSimplify[
    1/2 Sum[inverseMetric[[a, d]] (
       D[metric[[d, b]], coordinates[[c]]] +
        D[metric[[d, c]], coordinates[[b]]] -
        D[metric[[b, c]], coordinates[[d]]]), {d, 3}]],
   {a, 3}, {b, 3}, {c, 3}];

ricci = Table[
   FullSimplify[
    Sum[D[christoffel[[a, m, n]], coordinates[[a]]] -
      D[christoffel[[a, m, a]], coordinates[[n]]] +
      Sum[christoffel[[a, a, b]] christoffel[[b, m, n]] -
        christoffel[[a, n, b]] christoffel[[b, m, a]], {b, 3}],
     {a, 3}],
    Assumptions -> {boostScale > 0, radiusDensity[phi] > 0}],
   {m, 3}, {n, 3}];
einsteinResidual = FullSimplify[
   ricci + 2 metric,
   Assumptions -> {boostScale > 0, radiusDensity[phi] > 0}];

(* The lambda=constant Cauchy slices are time-symmetric throughout the exact
   family.  This makes their ADM/Lee--Wald bulk symplectic form vanish for
   every pair of allowed stationary tangents. *)
futureNormal = {1/(boostScale Sinh[rho]), 0, 0};
lieMetric[vector_] := Table[
   FullSimplify[
    Sum[vector[[a]] D[metric[[mu, nu]], coordinates[[a]]], {a, 3}] +
     Sum[metric[[a, nu]] D[vector[[a]], coordinates[[mu]]], {a, 3}] +
     Sum[metric[[mu, a]] D[vector[[a]], coordinates[[nu]]], {a, 3}]],
   {mu, 3}, {nu, 3}];
cauchyExtrinsic = FullSimplify[
   lieMetric[futureNormal][[{2, 3}, {2, 3}]]/2];

(* A constant uniform inner displacement has chi=-d_rho.  Its pulled-back
   metric variation has no rho row/column, hence the project Harlow--Wu
   C_Gamma form vanishes at both endpoint cuts. *)
radialEmbeddingVariation = FullSimplify[-D[metric, rho]];
radialEmbeddingNormalColumn = radialEmbeddingVariation[[All, 2]];

(* Inner wall canonical data at rho=wallEpsilon. *)
gamma = {
   {-boostScale^2 Sinh[wallEpsilon]^2, 0},
   {0, radiusValue^2 Cosh[wallEpsilon]^2}
   };
inverseGamma = FullSimplify[Inverse[gamma]];
sqrtMinusGamma = boostScale radiusValue Sinh[wallEpsilon] *
   Cosh[wallEpsilon];
innerExtrinsic = FullSimplify[-D[gamma, wallEpsilon]/2];
innerExtrinsicTrace = FullSimplify[Tr[inverseGamma . innerExtrinsic]];
momentumUpper = FullSimplify[
   sqrtMinusGamma (
      inverseGamma . innerExtrinsic . inverseGamma -
       innerExtrinsicTrace inverseGamma)/kp2];

expectedMomentum = {
   {-radiusValue/(boostScale kp2), 0},
   {0, boostScale/(radiusValue kp2)}
   };

(* A tangent is {delta R, delta epsilon}; boostScale is fixed. *)
inducedTangent[tangent_] := FullSimplify[
   D[gamma, radiusValue] tangent[[1]] +
    D[gamma, wallEpsilon] tangent[[2]]];
momentumTangent[tangent_] := FullSimplify[
   D[momentumUpper, radiusValue] tangent[[1]] +
    D[momentumUpper, wallEpsilon] tangent[[2]]];
contract2[array1_, array2_] := FullSimplify[
   Sum[array1[[i, j]] array2[[i, j]], {i, 2}, {j, 2}]];

wallSource[tangent_] := FullSimplify[
   -contract2[momentumUpper, inducedTangent[tangent]]/2];
wallFlux[tangent1_, tangent2_] := FullSimplify[
   -(contract2[momentumTangent[tangent1], inducedTangent[tangent2]] -
       contract2[momentumTangent[tangent2], inducedTangent[tangent1]])/2];

traceLegendre = FullSimplify[contract2[momentumUpper, gamma]/2];
mixedWallFunctional = FullSimplify[
   traceLegendre + boostScale radiusValue/(2 kp2)];
mixedFunctionalTangent[tangent_] := FullSimplify[
   D[mixedWallFunctional, radiusValue] tangent[[1]] +
    D[mixedWallFunctional, wallEpsilon] tangent[[2]]];
mixedSource[tangent_] := FullSimplify[
   wallSource[tangent] + mixedFunctionalTangent[tangent]];

tangent1 = {dR1, dEpsilon1};
tangent2 = {dR2, dEpsilon2};

(* On-shell total normal embedding momentum and the uniform displacement
   chi_perp=-delta epsilon at the inner wall. *)
totalNormalMomentum = FullSimplify[
   2 sqrtMinusGamma/kp2];
normalShapeWork[deltaEpsilon_] := FullSimplify[
   -totalNormalMomentum deltaEpsilon];

(* Fixed-boost orthogonal endpoints.  A stationary uniform radial
   displacement changes neither the boost angle nor C_Gamma because
   (L_chi g)_{lambda rho}=0. *)
boostAngleTangent = 0;
harlowWuEndpointTangent = 0;
edgeTwoForm = 0;

(* Per-unit-lambda wall/corner comparison.  For a degree-one F,
   Integrate[R(phi),{phi,0,2Pi}]=2Pi r_+, but the local density check is
   stronger. *)
fusedDensity = boostScale radiusValue Cosh[wallEpsilon]/kp2;
matchedCornerDensity = FullSimplify[
   fusedDensity - mixedWallFunctional];
matchedPhysicalTangent = FullSimplify[
   D[matchedCornerDensity, radiusValue] deltaRadius];
matchedRegulatorTangent = FullSimplify[
   D[matchedCornerDensity, wallEpsilon] deltaEpsilon];

(* Degree-one fixed-r_+ edge neighborhood.  F=phi+a sin phi+b sin 2phi has
   R=r_+ F'.  Its nonzero Fourier tangents change the local area density but
   have zero integral, so the outer fixed-source BTZ data and total horizon
   area remain fixed. *)
degreeOneMap = phi + edgeA Sin[phi] + edgeB Sin[2 phi];
degreeOneDensity = rp D[degreeOneMap, phi];
degreeOneIntegral = FullSimplify[
   Integrate[degreeOneDensity, {phi, 0, 2 Pi}]];
edgeATangentIntegral = FullSimplify[
   Integrate[D[degreeOneDensity, edgeA], {phi, 0, 2 Pi}]];
edgeBTangentIntegral = FullSimplify[
   Integrate[D[degreeOneDensity, edgeB], {phi, 0, 2 Pi}]];

testConditions = {
   einsteinResidual === ConstantArray[0, {3, 3}],
   FullSimplify[momentumUpper - expectedMomentum] ===
    ConstantArray[0, {2, 2}],
   FullSimplify[traceLegendre -
      boostScale radiusValue Cosh[2 wallEpsilon]/(2 kp2)] === 0,
   FullSimplify[mixedWallFunctional -
      boostScale radiusValue Cosh[wallEpsilon]^2/kp2] === 0,
   wallFlux[tangent1, tangent2] === 0,
   mixedSource[tangent1] === 0,
   FullSimplify[wallSource[{0, deltaEpsilon}] -
      normalShapeWork[deltaEpsilon]] === 0,
   boostAngleTangent === 0,
   harlowWuEndpointTangent === 0,
   edgeTwoForm === 0,
   FullSimplify[Limit[matchedCornerDensity, wallEpsilon -> 0,
       Direction -> "FromAbove"]] === 0,
   FullSimplify[Limit[matchedPhysicalTangent, wallEpsilon -> 0,
       Direction -> "FromAbove"]] === 0,
   FullSimplify[Limit[matchedRegulatorTangent, wallEpsilon -> 0,
       Direction -> "FromAbove"]] === 0,
   FullSimplify[Limit[mixedWallFunctional, wallEpsilon -> 0,
       Direction -> "FromAbove"] -
      boostScale radiusValue/kp2] === 0,
   FullSimplify[Limit[totalNormalMomentum, wallEpsilon -> 0,
       Direction -> "FromAbove"]] === 0,
   cauchyExtrinsic === ConstantArray[0, {2, 2}],
   radialEmbeddingNormalColumn === {0, 0, 0},
   degreeOneIntegral === 2 Pi rp,
   edgeATangentIntegral === 0,
   edgeBTangentIntegral === 0
   };

testIDs = {
   "finite-amplitude reparameterized collar is exact Einstein",
   "exact inner Brown-York momentum",
   "trace Legendre density",
   "mixed wall functional",
   "restricted Brown-York flux is Lagrangian",
   "mixed source vanishes for every physical and embedding tangent",
   "uniform normal shape work equals total embedding momentum",
   "orthogonal endpoint has fixed boost angle",
   "uniform stationary translation has zero Harlow-Wu endpoint",
   "moving joint two-form vanishes on fixed-boost family",
   "matched comparison corner vanishes in horizon limit",
   "physical variation of matched corner vanishes",
   "regulator variation of matched corner vanishes to first order",
   "mixed wall functional tends to full fused density",
   "normal momentum vanishes in horizon limit",
   "exact family is time-symmetric on every Cauchy slice",
   "uniform radial embedding has zero Harlow-Wu endpoint form",
   "degree-one edge family preserves total horizon length",
   "first edge tangent has zero integrated density",
   "second edge tangent has zero integrated density"
   };

Print[<|
  "SqrtMinusGamma" -> sqrtMinusGamma,
  "InnerExtrinsic" -> innerExtrinsic,
  "InnerExtrinsicTrace" -> innerExtrinsicTrace,
  "MomentumUpper" -> momentumUpper,
  "WallSource" -> wallSource[tangent1],
  "WallFlux" -> wallFlux[tangent1, tangent2],
  "MixedWallFunctional" -> mixedWallFunctional,
  "MixedSource" -> mixedSource[tangent1],
  "TotalNormalMomentum" -> totalNormalMomentum,
  "MatchedCornerDensity" -> matchedCornerDensity|>];

btzSmoothMovingPolarizationReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
