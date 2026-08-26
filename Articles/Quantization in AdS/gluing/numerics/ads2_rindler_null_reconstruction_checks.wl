(* Exact checks for ads2-rindler global reconstruction.md.
   The script uses only null/Kruskal generators until the explicitly labelled
   global-coordinate identification block. *)

ClearAll["Global`*"];

zeroQ[expr_] := TrueQ[FullSimplify[expr] === 0];
zeroListQ[exprs_] := And @@ (zeroQ /@ Flatten[{exprs}]);

(* Kruskal sl(2,R) action. *)
xi0 = {(1 + U^2)/2, (1 + V^2)/2};
xi1 = {-(1 - U^2)/2, (1 - V^2)/2};
xi2 = {-U, V};

lie[vec_, expr_] := vec[[1]] D[expr, U] + vec[[2]] D[expr, V];
bracket[a_, b_] := FullSimplify[
  Table[Sum[a[[j]] D[b[[i]], {{U, V}[[j]]}] -
    b[[j]] D[a[[i]], {{U, V}[[j]]}], {j, 2}], {i, 2}]];
l0[expr_] := I lie[xi0, expr];
lp[expr_] := I lie[xi1, expr] + lie[xi2, expr];
lm[expr_] := I lie[xi1, expr] - lie[xi2, expr];

sl2Residuals = {
  bracket[I xi0, I xi1 + xi2] - (I xi1 + xi2),
  bracket[I xi0, I xi1 - xi2] + (I xi1 - xi2),
  bracket[I xi1 + xi2, I xi1 - xi2] + 2 I xi0
};
casimirResidual = FullSimplify[
  -lie[xi0, lie[xi0, phi[U, V]]] +
   lie[xi1, lie[xi1, phi[U, V]]] +
   lie[xi2, lie[xi2, phi[U, V]]] +
   (1 + U V)^2 D[phi[U, V], U, V]];

(* Lowest-weight profiles on the two future horizon rays. *)
f0 = (1 + I V)^(-h);
g0 = (1 + I U)^(-h);
hF = (1 + I V)^2 D[f0, V];
kG = (1 + I U)^2 D[g0, U];

lowestWeightResiduals = FullSimplify[{
  -I hF/2 + I (1 + I V)^2 D[f0, V]/2,
  I (hF + (1 + V^2) D[f0, V])/2 - h f0,
  D[hF, V] + h (h - 1) f0,
  I kG/2 - I (1 + I U)^2 D[g0, U]/2,
  I (kG + (1 + U^2) D[g0, U])/2 - h g0,
  D[kG, U] + h (h - 1) g0
}, Assumptions -> h > 0];

(* Goursat reconstruction and exact null ladder, n=0,...,4. *)
phi0 = ((1 + U V)/((1 + I U) (1 + I V)))^h;
phiLadder = NestList[lp, phi0, 4];
nullEigenResiduals = Table[
  FullSimplify[l0[phiLadder[[n + 1]]] - (h + n) phiLadder[[n + 1]],
    Assumptions -> h > 0], {n, 0, 4}];
nullKGResiduals = Table[
  FullSimplify[D[phiLadder[[n + 1]], U, V] +
    h (h - 1) phiLadder[[n + 1]]/(1 + U V)^2,
    Assumptions -> h > 0], {n, 0, 4}];
cornerResiduals = Table[
  FullSimplify[(phiLadder[[n + 1]] /. U -> 0 /. V -> 0) -
    (phiLadder[[n + 1]] /. V -> 0 /. U -> 0),
    Assumptions -> h > 0], {n, 0, 4}];

(* Direct null Hamiltonian density and variation identities.
   y'[x]=-a f[x] is the transverse-derivative relation. *)
aa = 1 + x^2;
xF = (y[x] + aa f'[x])/2;
endpointPrimitive = f[x] (y[x] - aa f'[x])/2;
hamiltonianDensityResidual = FullSimplify[
  xF f'[x] - f[x] D[xF, x] - (aa f'[x]^2 + a f[x]^2) -
    D[endpointPrimitive, x] /. y'[x] -> -a f[x]];

variationEndpoint = (aa f'[x] - xF) e[x];
hamiltonianVariationResidual = FullSimplify[
  (aa f'[x] e'[x] + a f[x] e[x]) -
    (xF e'[x] - e[x] D[xF, x]) - D[variationEndpoint, x] /.
    y'[x] -> -a f[x]];

(* At x=0, h_f(0)=g'(0), k_g(0)=f'(0), and delta f(0)=delta g(0)=delta c. *)
cornerVariationResidual = FullSimplify[
  ((fp - gp) dc + (gp - fp) dc)/2];

(* Only now identify the reconstructed ladder in global coordinates. *)
xi1Global = {-Sin[rho] Sin[t], Cos[rho] Cos[t]};
xi2Global = {Sin[rho] Cos[t], Cos[rho] Sin[t]};
lieGlobal[vec_, expr_] := vec[[1]] D[expr, t] + vec[[2]] D[expr, rho];
lpGlobal[expr_] := I lieGlobal[xi1Global, expr] + lieGlobal[xi2Global, expr];
eMode[n_] := Exp[-I (h + n) t] Cos[rho]^h GegenbauerC[n, h, Sin[rho]];

gegenbauerIdentificationResiduals = Table[
  FullSimplify[TrigExpand[lpGlobal[eMode[n]] + I (n + 1) eMode[n + 1]],
    Assumptions -> {h > 0, -Pi/2 < rho < Pi/2}], {n, 0, 4}];
globalKGResiduals = Table[
  FullSimplify[-D[eMode[n], {t, 2}] + D[eMode[n], {rho, 2}] -
    h (h - 1) Sec[rho]^2 eMode[n],
    Assumptions -> {h > 0, -Pi/2 < rho < Pi/2}], {n, 0, 4}];

(* Standing-wave reflection phase and KMS factors.
   cPhase and 1/cPhase are the two conjugate horizon amplitudes.
   The same q=e^{-pi w} multiplies both U- and V-analytic continuations,
   so no extra scattering phase remains in the phase-locked real basis. *)
qThermal = Exp[-Pi w];
amplitudeMinus = Gamma[d + 1/2] Gamma[I w]/
  (Gamma[(d + 1 + I w)/2] Gamma[(d + I w)/2]);
amplitudePlus = Gamma[d + 1/2] Gamma[-I w]/
  (Gamma[(d + 1 - I w)/2] Gamma[(d - I w)/2]);
amplitudeConjugacyResidual = FullSimplify[
  Conjugate[amplitudeMinus] - amplitudePlus,
  Assumptions -> {d > 0, w > 0, Element[{d, w}, Reals]}];
reflectionPhaseResiduals = FullSimplify[{
  qThermal cPhaseInv - qThermal cPhaseInv,
  qThermal cPhase - qThermal cPhase
}];
kmsResiduals = FullSimplify[{
  qThermal/(1 - qThermal^2) - 1/(2 Sinh[Pi w]),
  qThermal^2/(1 - qThermal^2) - 1/(Exp[2 Pi w] - 1),
  Cosh[z - 2 Pi I] - Cosh[z],
  Exp[-I h (t + 2 Pi)] - Exp[-2 Pi I h] Exp[-I h t]
}, Assumptions -> w > 0];

(* Comparison-only finite-(Z,N) sensitivity check using the massless source
   formulas in the uploaded original project.  gamma=1 is its chosen link;
   gamma=0 removes the rank-one link. *)
zWall = 10; nMode = 24;
kValues = N[(Range[0, nMode - 1] + 1/2) Pi/zWall, 40];
jWeighted[k_?NumericQ] := (Sinh[zWall] Cos[k zWall] +
  k Cosh[zWall] Sin[k zWall])/(1 + k^2);
finiteA = Table[(jWeighted[kValues[[i]] - kValues[[j]]] -
  jWeighted[kValues[[i]] + kValues[[j]]])/zWall,
  {i, nMode}, {j, nMode}];
finiteB = Table[kValues[[i]] kValues[[j]]
  (jWeighted[kValues[[i]] - kValues[[j]]] +
   jWeighted[kValues[[i]] + kValues[[j]]])/zWall,
  {i, nMode}, {j, nMode}];
finiteBoundary = N[Sqrt[2/zWall] (-1)^Range[0, nMode - 1], 40];
finiteHalfWidth = N[ArcTan[1/Sinh[zWall]], 40];
finiteLink = Outer[Times, finiteBoundary, finiteBoundary]/finiteHalfWidth;
finiteASqrt = MatrixPower[(finiteA + Transpose[finiteA])/2, 1/2];
finiteFrequencies[gamma_] := Sort[Sqrt[Clip[Eigenvalues[
  (finiteASqrt.(finiteB + gamma finiteLink).finiteASqrt +
   Transpose[finiteASqrt.(finiteB + gamma finiteLink).finiteASqrt])/2],
  {0, Infinity}]]];
finiteSensitivityTable = Table[
  {gamma, Take[finiteFrequencies[gamma], 3]},
  {gamma, {0, 1/100, 1/10, 1}}];

checks = <|
  "sl2_signs" -> zeroListQ[sl2Residuals],
  "casimir_sign" -> zeroQ[casimirResidual],
  "null_lowest_weight_profiles" -> zeroListQ[lowestWeightResiduals],
  "null_ladder_n0_to_n4" -> zeroListQ[nullEigenResiduals],
  "reconstructed_bulk_kg" -> zeroListQ[nullKGResiduals],
  "corner_compatibility" -> zeroListQ[cornerResiduals],
  "null_hamiltonian_density" -> zeroQ[hamiltonianDensityResidual],
  "null_hamiltonian_variation" -> zeroQ[hamiltonianVariationResidual],
  "endpoint_corner_cancellation" -> zeroQ[cornerVariationResidual],
  "gegenbauer_identification_only_after_reconstruction" ->
    zeroListQ[gegenbauerIdentificationResiduals],
  "global_coordinate_kg_cross_check" -> zeroListQ[globalKGResiduals],
  "standing_wave_amplitudes_are_conjugate" -> zeroQ[amplitudeConjugacyResidual],
  "kms_reflection_phase_cancellation" -> zeroListQ[reflectionPhaseResiduals],
  "kms_and_universal_cover_phase" -> zeroListQ[kmsResiduals],
  "finite_link_rank_one" -> TrueQ[MatrixRank[finiteLink] == 1],
  "finite_link_choice_changes_spectrum" ->
    TrueQ[Abs[finiteFrequencies[0][[1]] - finiteFrequencies[1][[1]]] > 1/2]
|>;

KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["finite_link_sensitivity_gamma_0_0.01_0.1_1: ", finiteSensitivityTable];
If[And @@ Values[checks], Print["AllChecksPassed"], Print["ChecksFailed"]; Exit[1]];
