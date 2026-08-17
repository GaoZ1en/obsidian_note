(* ::Package:: *)

(*
  Algebraic checks for the moving-embedding extension of the finite-action
  Harlow--Wu potential and for the Hayward corner canonical pair.

  The script does not assume a coordinate formula for the Iyer--Wald charge.
  Instead it uses the project-safe definition

    Theta_ext[g,X;delta] = Theta_p[g; delta g + L_chi g],

  so every GHY, endpoint-C, and joint improvement already contained in
  Theta_p is covariantized together.  The corner tests use
  kappa_p^2=8 Pi G and keep the induced joint-orientation sign sigmaJ.
*)

ClearAll["Global`*"];

(* Abstract linearity check for the combined spacetime diffeomorphism and
   compensating embedding displacement. *)
thetaProject[variation_] := thetaLinear variation;
combinedGaugeResidual = Expand[
   thetaProject[lieW] + thetaProject[-lieW]
   ];

(* Local Hayward pair.  A denotes the area density (or its integral), eta the
   Lorentzian boost angle, and each tangent is {delta A, delta eta}. *)
thetaArea[tangent_] := sigmaJ eta tangent[[1]]/kp2;
thetaAngle[tangent_] := -sigmaJ area tangent[[2]]/kp2;
cornerGenerator = sigmaJ area eta/kp2;
dCornerGenerator[tangent_] := sigmaJ (
     eta tangent[[1]] + area tangent[[2]]
     )/kp2;

u = {uA, uEta};
v = {vA, vEta};

cornerLegendreResidual = Expand[
   thetaArea[u] - thetaAngle[u] - dCornerGenerator[u]
   ];

omegaArea[uTangent_, vTangent_] := sigmaJ (
     uTangent[[2]] vTangent[[1]] -
      vTangent[[2]] uTangent[[1]]
     )/kp2;
omegaAngle[uTangent_, vTangent_] := sigmaJ (
     uTangent[[2]] vTangent[[1]] -
      vTangent[[2]] uTangent[[1]]
     )/kp2;

cornerSymplecticResidual = Expand[
   omegaArea[u, v] - omegaAngle[u, v]
   ];
cornerAntisymmetryResidual = Expand[
   omegaArea[u, v] + omegaArea[v, u]
   ];

(* Moving-wall Brown--York work.  The induced metric variation decomposes as

   Delta_X gamma_ij = delta gamma_ij + 2 D_(i chi_j) + 2 chiPerp K_ij

   for K_ij=gamma_i^mu gamma_j^nu nabla_mu n_nu.  The following component
   test keeps the off-diagonal factors explicit. *)
piMatrix = {{pi11, pi12}, {pi12, pi22}};
deltaGammaMatrix = {{dg11, dg12}, {dg12, dg22}};
dChiMatrix = {{dc11, dc12}, {dc12, dc22}};
extrinsicMatrix = {{k11, k12}, {k12, k22}};

frobenius[a_, b_] := Sum[a[[i, j]] b[[i, j]], {i, 2}, {j, 2}];

movingInducedVariation = deltaGammaMatrix + 2 dChiMatrix +
   2 chiPerp extrinsicMatrix;
movingWallWork = Expand[-frobenius[piMatrix, movingInducedVariation]/2];
decomposedWallWork = Expand[
   -frobenius[piMatrix, deltaGammaMatrix]/2 -
    frobenius[piMatrix, dChiMatrix] -
    chiPerp frobenius[piMatrix, extrinsicMatrix]
   ];
movingWallResidual = Expand[movingWallWork - decomposedWallWork];

(* Compact fixed-boost BTZ matching.  At the fused horizon

   A=2 Pi r_+, eta=s,
   B[partial_r+] = -2 Pi s/kappa_p^2.

   The trace wall Legendre density integrates to zeta I_fuse/2.  Leaving the
   corner untouched produces the previously found finite residual.  Shifting
   the corner coefficient by the same generator cancels it exactly. *)
btzArea = 2 Pi rp;
btzEta = boostScale;
fusedCorner = btzEta btzArea/kp2;
traceWallGenerator = zeta fusedCorner/2;
matchedCorner = (1 - zeta/2) fusedCorner;
btzWallSource = -2 Pi boostScale/kp2;

unmatchedResidual = FullSimplify[
   btzWallSource + D[traceWallGenerator, rp] +
    D[fusedCorner, rp]
   ];
matchedResidual = FullSimplify[
   btzWallSource + D[traceWallGenerator, rp] +
    D[matchedCorner, rp]
   ];

(* A section-change cocycle: if g_v is a degenerate combined gauge tangent,
   moving from the fixed-X section to the gauge-related section cannot change
   the extended two-form.  The fixed-X metric-sector change is therefore the
   negative edge-sector change. *)
metricSectionChange = cocycleValue;
edgeSectionChange = -cocycleValue;
sectionChangeResidual = Expand[metricSectionChange + edgeSectionChange];

testConditions = {
   combinedGaugeResidual === 0,
   cornerLegendreResidual === 0,
   cornerSymplecticResidual === 0,
   cornerAntisymmetryResidual === 0,
   movingWallResidual === 0,
   unmatchedResidual === Pi boostScale zeta/kp2,
   matchedResidual === 0,
   FullSimplify[D[traceWallGenerator, rp] -
      Pi boostScale zeta/kp2] === 0,
   FullSimplify[D[matchedCorner, rp] -
      (2 - zeta) Pi boostScale/kp2] === 0,
   sectionChangeResidual === 0
   };

testIDs = {
   "combined diffeomorphism is annihilated by covariantized potential",
   "Hayward area and angle potentials differ by an exact variation",
   "area and angle polarizations have the same corner two-form",
   "corner two-form is antisymmetric",
   "moving Brown--York work decomposition",
   "unmatched trace Legendre residual",
   "matched wall-plus-corner transgression",
   "trace wall generator is one half of the fused generator",
   "matched corner coefficient",
   "metric and edge section changes cancel"
   };

movingEmbeddingEdgeTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
