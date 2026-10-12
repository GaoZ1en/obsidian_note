(* Algebraic support for the analytic form-density proof.
   These residual checks do not replace the Hilbert-space proof in the note.
   Run with wolframscript -file scalar_slow_representatives_form_checks.wl. *)
ClearAll["Global`*"];
assumptions = 0 < z < 1 && 0 < d < 1 && ell >= 0;
mu = z^(d - 1) (1 - z)^ell/2;
aa = 2 z^d (1 - z)^(ell + 1);
op[h_] := (ell + d)^2 h - D[aa D[h, z], z]/mu;
reduce[expr_] := FullSimplify[expr, Assumptions -> assumptions];
residuals = <|
  "Jacobi operator" -> reduce[op[H[z]] - ((ell + d)^2 H[z] -
    4 (z (1-z) H''[z] + (d-(d+ell+1)z) H'[z]))],
  "Fast conjugation" -> reduce[op[z^(1-d) H[z]]/z^(1-d) -
    ((ell+2-d)^2 H[z] - 4 (z (1-z) H''[z] +
      (2-d-(ell+3-d)z) H'[z]))],
  "Fast weight isometry" -> reduce[mu z^(2(1-d)) - z^(1-d)(1-z)^ell/2],
  "Arbitrary monomial" -> reduce[op[z^n] -
    (((ell+d)^2+4 n(n+d+ell))z^n-4n(n+d-1)z^(n-1))]
|>;

Do[
  fast = z^(1-d) JacobiP[n, 1-d, ell, 1-2z];
  alt = JacobiP[n, d-1, ell, 1-2z];
  AssociateTo[residuals, {
    "Fast equation " <> ToString[n] -> reduce[op[fast]-(ell+2-d+2n)^2 fast],
    "Alternative equation " <> ToString[n] -> reduce[op[alt]-(ell+d+2n)^2 alt],
    "Fast flux " <> ToString[n] -> FullSimplify[
      Limit[aa D[fast,z],z->0,Assumptions->0<d<1&&ell>=0] -
        2(1-d)Pochhammer[2-d,n]/n!],
    "Alternative flux " <> ToString[n] -> FullSimplify[
      Limit[aa D[alt,z],z->0,Assumptions->0<d<1&&ell>=0]]
  }], {n,0,5}];

(* The smooth cutoff C is supported in [0,1] and equals one near zero.
   The identities below give the powers of epsilon before integration. *)
b = z^(1-d) C[z/eps];
AssociateTo[residuals, {
  "Cutoff kinetic scaling" -> FullSimplify[
    ((eps mu b^2)/eps^(2-d) /. z->eps t) -
      t^(1-d)(1-eps t)^ell C[t]^2/2,
    Assumptions->0<eps<1&&0<t<1&&0<d<1&&ell>=0],
  "Cutoff energy scaling" -> FullSimplify[
    ((eps aa D[b,z]^2)/eps^(1-d) /. z->eps t) -
      2 t^(-d)(1-eps t)^(ell+1)((1-d) C[t]+t C'[t])^2,
    Assumptions->0<eps<1&&0<t<1&&0<d<1&&ell>=0]
}];
Print[residuals];
If[Length[residuals]===30 && And@@(TrueQ[#===0]& /@ Values[residuals]),
  Print["All ",Length[residuals]," symbolic residuals vanish."],
  Print["FAIL: nonzero or unevaluated residual." ]; Exit[1]
];
