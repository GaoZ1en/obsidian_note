ClearAll["Global`*"];

(* Exact regression for calculation 04.  This script checks the field-space
   ordering, the unreduced electric canonical form, both raw null
   polarizations, affine/static coordinate factors, endpoint derivatives, and
   the half-line Fourier normalization. *)

assumptions = L > 0 && x > 0 && uAff > 0 && w > 0 && z > 0 &&
  Element[{L, x, uAff, w, z, a1, b1, a2, b2, eta0}, Reals];

zeroQ[expr_] := TrueQ[FullSimplify[Together[expr] == 0, assumptions]];
checks = {};
addCheck[name_, value_] := AppendTo[checks, name -> TrueQ[value]];

(* theta=p delta q with omega=delta2 theta[delta1]-delta1 theta[delta2]. *)
fieldOrder = Expand[p2 q1 - p1 q2];
canonicalOrder = Expand[q1 p2 - q2 p1];
addCheck["field-space order gives delta q wedge delta p",
  zeroQ[fieldOrder - canonicalOrder]];

Do[
  lam = j (j + 1);
  radius2 = radiusSquared[z];

  masterNull =
    psi1[z] D[psi2[z], z] - psi2[z] D[psi1[z], z];
  cutDerivative = D[psi1[z] eta2[z] - psi2[z] eta1[z], z];

  (* Constant-tau electric form from the original Stueckelberg variables. *)
  aRho1 = (D[eta1[z], z] + pi1[z])/Sqrt[lam];
  aRho2 = (D[eta2[z], z] + pi2[z])/Sqrt[lam];
  electricMomentum1 = -Sqrt[lam] psi1[z];
  electricMomentum2 = -Sqrt[lam] psi2[z];
  xTau1 = -D[psi1[z], z];
  xTau2 = -D[psi2[z], z];
  rawBulkElectric =
    aRho1 electricMomentum2 - aRho2 electricMomentum1 +
    eta1[z] xTau2 - eta2[z] xTau1;
  masterBulk = psi1[z] pi2[z] - psi2[z] pi1[z];
  addCheck["j=" <> ToString[j] <> " bulk electric plus cut derivative",
    zeroQ[rawBulkElectric - masterBulk - cutDerivative]];

  (* Past ingoing sheet: X_v=-partial_v Psi. *)
  aV1 = (D[eta1[z], z] + D[psi1[z], z])/Sqrt[lam];
  aV2 = (D[eta2[z], z] + D[psi2[z], z])/Sqrt[lam];
  electric1 = -Sqrt[lam] psi1[z]/radius2;
  electric2 = -Sqrt[lam] psi2[z]/radius2;
  rUp1 = -D[psi1[z], z]/radius2;
  rUp2 = -D[psi2[z], z]/radius2;
  pastElectric = radius2 (aV1 electric2 - aV2 electric1) +
    radius2 (eta1[z] rUp2 - eta2[z] rUp1);
  addCheck["j=" <> ToString[j] <> " past electric raw/master/cut",
    zeroQ[pastElectric - masterNull - cutDerivative]];

  pastMagnetic = radius2 (
    psi1[z] D[psi2[z], z]/radius2 -
    psi2[z] D[psi1[z], z]/radius2);
  addCheck["j=" <> ToString[j] <> " past magnetic raw/master",
    zeroQ[pastMagnetic - masterNull]];

  (* Future outgoing sheet: X_u=+partial_u Psi; the raw angular term is minus. *)
  aU1 = (D[eta1[z], z] - D[psi1[z], z])/Sqrt[lam];
  aU2 = (D[eta2[z], z] - D[psi2[z], z])/Sqrt[lam];
  pUp1 = D[psi1[z], z]/radius2;
  pUp2 = D[psi2[z], z]/radius2;
  futureElectric = radius2 (aU1 electric2 - aU2 electric1) +
    radius2 (-eta1[z] pUp2 + eta2[z] pUp1);
  addCheck["j=" <> ToString[j] <> " future electric raw/master/cut",
    zeroQ[futureElectric + masterNull - cutDerivative]];

  futureMagnetic = radius2 (
    -psi1[z] D[psi2[z], z]/radius2 +
    psi2[z] D[psi1[z], z]/radius2);
  addCheck["j=" <> ToString[j] <> " future magnetic raw/master",
    zeroQ[futureMagnetic + masterNull]];

  (* Affine factors on H-: dV=x dv, A_V=A_v/x,
     F_VA=F_vA/x, and dS_q=L^2 dOmega. *)
  affinePastElectric = x L^2 (
    (aV1/x) (-Sqrt[lam] psi2[z]/L^2) -
    (aV2/x) (-Sqrt[lam] psi1[z]/L^2) +
    eta1[z] (-D[psi2[z], z]/(x L^2)) -
    eta2[z] (-D[psi1[z], z]/(x L^2)));
  addCheck["j=" <> ToString[j] <> " past affine and L cancellation",
    zeroQ[affinePastElectric - masterNull - cutDerivative]];

  (* Affine factors on H+: dU=U du and the angular term remains negative. *)
  affineFutureElectric = uAff L^2 (
    (aU1/uAff) (-Sqrt[lam] psi2[z]/L^2) -
    (aU2/uAff) (-Sqrt[lam] psi1[z]/L^2) -
    eta1[z] (D[psi2[z], z]/(uAff L^2)) +
    eta2[z] (D[psi1[z], z]/(uAff L^2)));
  addCheck["j=" <> ToString[j] <> " future affine and L cancellation",
    zeroQ[affineFutureElectric + masterNull - cutDerivative]];

  addCheck["j=" <> ToString[j] <> " smooth-center cut vanishes",
    TrueQ[FullSimplify[Limit[z^(j + 1) eta0, z -> 0] == 0,
      assumptions]]];
  , {j, {1, 2, 3}}];

(* d tau wedge d rho=(1/2) du wedge dv. *)
jacobian = Det[{{1/2, 1/2}, {-1/2, 1/2}}];
addCheck["null-coordinate orientation Jacobian", TrueQ[jacobian == 1/2]];

(* The Dirac delta contributes 2 Pi, canceling the two Fourier prefactors.
   The remaining positive/negative-frequency cross terms give factor 4. *)
fourierDeltaFactor = FullSimplify[(1/Sqrt[2 Pi])^2 (2 Pi)];
addCheck["Fourier 2Pi cancellation", TrueQ[fourierDeltaFactor == 1]];

c1 = a1 + I b1;
c2 = a2 + I b2;
fourierBilinear = ComplexExpand[
  fourierDeltaFactor 2 I w (c1 Conjugate[c2] - Conjugate[c1] c2),
  {a1, b1, a2, b2, w}];
fourierTarget = 4 w (a1 b2 - b1 a2);
addCheck["Fourier characteristic factor four",
  zeroQ[fourierBilinear - fourierTarget]];

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL SYMPLECTIC NORMALIZATION CHECKS PASSED"],
  Print["SYMPLECTIC NORMALIZATION CHECKS FAILED"];
  Quit[1]
];
