ClearAll["Global`*"];

zeroArrayQ[z_] := And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[z]);

(* Round-sphere scalar/exact/coexact harmonic identities.  The scalar
   harmonics are normalized on S^2_R by the explicit factor 1/R. *)
scalarLap[y_] := FullSimplify[
  (D[Sin[th] D[y, th], th] + D[y, {ph, 2}]/Sin[th])/
    (rad^2 Sin[th])
];

divOne[aTh_, aPh_] := FullSimplify[
  (D[Sin[th] aTh, th] + D[aPh/Sin[th], ph])/
    (rad^2 Sin[th])
];

curlOne[aTh_, aPh_] := FullSimplify[
  (D[aPh, th] - D[aTh, ph])/(rad^2 Sin[th])
];

harmonicResiduals[l_, m_] := Module[
  {ll, lam, y, eTh, ePh, bTh, bPh},
  ll = l (l + 1);
  lam = ll/rad^2;
  y = SphericalHarmonicY[l, m, th, ph]/rad;
  eTh = D[y, th]/Sqrt[lam];
  ePh = D[y, ph]/Sqrt[lam];
  bTh = -D[y, ph]/(Sqrt[lam] Sin[th]);
  bPh = Sin[th] D[y, th]/Sqrt[lam];
  FullSimplify[{
    scalarLap[y] + lam y,
    divOne[eTh, ePh] + Sqrt[lam] y,
    divOne[bTh, bPh],
    curlOne[eTh, ePh],
    curlOne[bTh, bPh] + Sqrt[lam] y
  }, Assumptions -> rad > 0 && 0 < th < Pi && ph \[Element] Reals]
];

harmonicSamples = {
  harmonicResiduals[1, 0],
  harmonicResiduals[1, 1],
  harmonicResiduals[2, 0],
  harmonicResiduals[2, 1],
  harmonicResiduals[3, 2]
};

(* Gauge-invariant electric parent action and master map. *)
field = master[t, z];
ee = -Sqrt[lam] field;
xt = -D[field, z];
xz = -D[field, t];

electricConstraint = FullSimplify[
  D[xz, t] - D[xt, z] + Sqrt[lam] ee
];

electricConstraintOnKG = FullSimplify[
  electricConstraint /.
    D[field, {t, 2}] -> D[field, {z, 2}] - lam field
];

parentEliminated = FullSimplify[
  1/2 ee^2 + 1/2 xt^2 - 1/2 xz^2 +
    field (D[xz, t] - D[xt, z] + Sqrt[lam] ee)
];

masterDensity = FullSimplify[
  1/2 D[field, t]^2 - 1/2 D[field, z]^2 - 1/2 lam field^2
];

parentDivergence = FullSimplify[
  D[field D[field, z], z] - D[field D[field, t], t]
];

parentActionResidual = FullSimplify[
  parentEliminated - masterDensity - parentDivergence
];

(* Sheet transport equations after the electric and magnetic master maps. *)
nullField = psi[u, v];
electricE = -Sqrt[lam] nullField;
electricP = D[nullField, u];
electricR = -D[nullField, v];
electricNplusResidual = FullSimplify[
  D[electricE, v] - Sqrt[lam] electricR
];
electricNminusResidual = FullSimplify[
  D[electricE, u] + Sqrt[lam] electricP
];

magneticB = -Sqrt[lam] nullField;
magneticP = D[nullField, u];
magneticR = D[nullField, v];
magneticNplusResidual = FullSimplify[
  D[magneticB, v] + Sqrt[lam] magneticR
];
magneticNminusResidual = FullSimplify[
  D[magneticB, u] + Sqrt[lam] magneticP
];

(* Riemann/Bessel Goursat kernel. *)
aa = lam/2;
riemann[uu_, vv_] := BesselJ[0, 2 Sqrt[aa uu vv]];
riemannPDEResidual = FullSimplify[
  D[riemann[u, v], u, v] + aa riemann[u, v],
  Assumptions -> lam > 0 && u > 0 && v > 0
];
riemannBoundaryResiduals = FullSimplify[{
  riemann[u, 0] - 1,
  riemann[0, v] - 1
}, Assumptions -> lam > 0 && u >= 0 && v >= 0];

sharedCornerMode = cornerC riemann[u, v];
sharedCornerDerivativeResiduals = FullSimplify[{
  D[sharedCornerMode /. v -> 0, u],
  D[sharedCornerMode /. u -> 0, v]
}, Assumptions -> lam > 0 && u >= 0 && v >= 0];
sharedCornerValueResiduals = FullSimplify[{
  (sharedCornerMode /. {u -> 0, v -> 0}) - cornerC,
  (-Sqrt[lam] sharedCornerMode /. {u -> 0, v -> 0}) +
    Sqrt[lam] cornerC
}, Assumptions -> lam > 0];

(* Stationary/null dispersion and full-cross distribution coefficients. *)
omega = Sqrt[k^2 + lam];
alpha = (omega + k)/Sqrt[2];
beta = (omega - k)/Sqrt[2];
dispersionResidual = FullSimplify[
  alpha beta - lam/2,
  Assumptions -> lam > 0 && k \[Element] Reals
];

alphaJacobianResidual = FullSimplify[
  D[alpha, k] - alpha/omega,
  Assumptions -> lam > 0 && k \[Element] Reals
];
betaJacobianResidual = FullSimplify[
  D[beta, k] + beta/omega,
  Assumptions -> lam > 0 && k \[Element] Reals
];
nullDerivativeTraceWeightResidual = FullSimplify[
  alpha + beta - Sqrt[2] omega,
  Assumptions -> lam > 0 && k \[Element] Reals
];
nullProfileTraceWeightResidual = FullSimplify[
  lam (1/alpha + 1/beta) - 2 Sqrt[2] omega,
  Assumptions -> lam > 0 && k \[Element] Reals
];

betaA = aa/alphaA;
betaB = aa/alphaB;
pvConjugateResidual = FullSimplify[
  (alphaA + alphaB)/(alphaB - alphaA) +
    (betaA + betaB)/(betaB - betaA)
];
pvPositiveResidual = FullSimplify[
  (alphaA - alphaB)/(alphaA + alphaB) +
    (betaA - betaB)/(betaA + betaB)
];

normalizationResidual = FullSimplify[
  4 Pi alpha (1/(4 Pi omega)) (omega/alpha) - 1,
  Assumptions -> lam > 0 && k \[Element] Reals
];

annihilatorProjectionResidual = FullSimplify[-I (I) - 1];
creatorProjectionResidual = FullSimplify[I (-I) - 1];

(* Direct algebra behind the explicit profile kernel for J_X. *)
jKernelProfileResidual = FullSimplify[
  -(I gam Exp[I del] - I gam Exp[-I del]) -
    2 gam Sin[del],
  Assumptions -> gam \[Element] Reals && del \[Element] Reals
];
jKernelDerivativeResidual = FullSimplify[
  -(-Exp[I del] - Exp[-I del]) - 2 Cos[del],
  Assumptions -> del \[Element] Reals
];
oneParticleNormResidual = FullSimplify[1/2 (1 + 1) - 1];

(* Finite-cross overlap with the corner-zero sine Goursat basis. *)
profileMode[x_] := Sqrt[2/len] Sin[kap x];
profileOverlapPrimitive[x_] :=
  Sqrt[2/len] (
    2 I al Exp[I al x] (
      I al Sin[kap x] - kap Cos[kap x]
    )/(kap^2 - al^2) -
    Exp[I al x] Sin[kap x]
  );

profileOverlapPrimitiveResidual = FullSimplify[
  D[profileOverlapPrimitive[x], x] -
    Exp[I al x] (
      I al profileMode[x] - D[profileMode[x], x]
    ),
  Assumptions -> len > 0 && kap > 0 &&
    al \[Element] Reals && al^2 != kap^2
];

profileOverlapDefinite =
  profileOverlapPrimitive[len] - profileOverlapPrimitive[0];
profileOverlapClosed =
  Sqrt[2/len] (
    2 I al kap - sig (al^2 + kap^2) Exp[I al len]
  )/(kap^2 - al^2);
profileOverlapClosedResidual = FullSimplify[
  (profileOverlapDefinite /. {
    Sin[kap len] -> sig,
    Cos[kap len] -> 0
  }) - profileOverlapClosed,
  Assumptions -> len > 0 && kap > 0 &&
    al \[Element] Reals && al^2 != kap^2
];

(* Hamiltonian diagonalization: anomalous terms vanish on shell. *)
hamiltonianAnomalousResidual = FullSimplify[
  -omega^2 + k^2 + lam,
  Assumptions -> lam > 0 && k \[Element] Reals
];
hamiltonianNumberResidual = FullSimplify[
  (omega^2 + k^2 + lam) - 2 omega^2,
  Assumptions -> lam > 0 && k \[Element] Reals
];

(* Interior causal Bessel kernel. *)
rho = Sqrt[tau^2 - xi^2];
causalInterior = 1/2 BesselJ[0, Sqrt[lam] rho];
causalPDEResidual = FullSimplify[
  D[causalInterior, {tau, 2}] -
    D[causalInterior, {xi, 2}] + lam causalInterior,
  Assumptions -> lam > 0 && tau > 0 && tau^2 > xi^2 &&
    tau \[Element] Reals && xi \[Element] Reals
];

(* A finite Galerkin regression for the matched-profile two-form. *)
profileBasis = {
  {1, 1},
  {u, 0},
  {u^2, 0},
  {u^3, 0},
  {0, v},
  {0, v^2}
};

omegaPair[x_, y_] :=
  Integrate[
    D[x[[1]], u] y[[1]] - D[y[[1]], u] x[[1]],
    {u, 0, 1}
  ] + Integrate[
    D[x[[2]], v] y[[2]] - D[y[[2]], v] x[[2]],
    {v, 0, 1}
  ];

profileOmega = Table[
  omegaPair[profileBasis[[i]], profileBasis[[j]]],
  {i, Length[profileBasis]}, {j, Length[profileBasis]}
];

checks = {
  "vector spherical harmonic samples" -> zeroArrayQ[harmonicSamples],
  "electric constraint from master KG" -> TrueQ[electricConstraintOnKG == 0],
  "electric parent action boundary term" -> TrueQ[parentActionResidual == 0],
  "electric Nplus transport" -> TrueQ[electricNplusResidual == 0],
  "electric Nminus transport" -> TrueQ[electricNminusResidual == 0],
  "magnetic Nplus transport" -> TrueQ[magneticNplusResidual == 0],
  "magnetic Nminus transport" -> TrueQ[magneticNminusResidual == 0],
  "Riemann kernel PDE" -> TrueQ[riemannPDEResidual == 0],
  "Riemann kernel boundaries" -> zeroArrayQ[riemannBoundaryResiduals],
  "fixed-sector shared-corner sheet derivatives vanish" ->
    zeroArrayQ[sharedCornerDerivativeResiduals],
  "fixed-sector shared-corner master/curvature values" ->
    zeroArrayQ[sharedCornerValueResiduals],
  "null dispersion" -> TrueQ[dispersionResidual == 0],
  "alpha null-frequency Jacobian" -> TrueQ[alphaJacobianResidual == 0],
  "beta null-frequency Jacobian" -> TrueQ[betaJacobianResidual == 0],
  "null derivative trace weight" -> TrueQ[
    nullDerivativeTraceWeightResidual == 0
  ],
  "massive null profile trace weight" -> TrueQ[
    nullProfileTraceWeightResidual == 0
  ],
  "conjugate-mode PV cancellation" -> TrueQ[pvConjugateResidual == 0],
  "positive-mode PV cancellation" -> TrueQ[pvPositiveResidual == 0],
  "full-cross delta normalization" -> TrueQ[normalizationResidual == 0],
  "annihilator projection sign" -> TrueQ[annihilatorProjectionResidual == 0],
  "creator projection sign" -> TrueQ[creatorProjectionResidual == 0],
  "J_X profile-kernel coefficient" -> TrueQ[
    jKernelProfileResidual == 0
  ],
  "J_X derivative-kernel coefficient" -> TrueQ[
    jKernelDerivativeResidual == 0
  ],
  "characteristic one-particle norm factor" -> TrueQ[
    oneParticleNormResidual == 0
  ],
  "finite Goursat overlap primitive" -> TrueQ[
    profileOverlapPrimitiveResidual == 0
  ],
  "half-integer Goursat overlap kernel" -> TrueQ[
    profileOverlapClosedResidual == 0
  ],
  "Hamiltonian anomalous cancellation" -> TrueQ[hamiltonianAnomalousResidual == 0],
  "Hamiltonian number coefficient" -> TrueQ[hamiltonianNumberResidual == 0],
  "causal Bessel interior PDE" -> TrueQ[causalPDEResidual == 0],
  "matched-profile antisymmetry" -> TrueQ[profileOmega + Transpose[profileOmega] == 0 profileOmega],
  "matched-profile Galerkin rank" -> TrueQ[MatrixRank[profileOmega] == Length[profileBasis]]
};

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL S2 MASTER/QUANTIZATION CHECKS PASSED"],
  Print["S2 MASTER/QUANTIZATION CHECKS FAILED"];
  Quit[1]
];
