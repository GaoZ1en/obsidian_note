(* Independent finite component checks. No external packages, no shell execution.
   Mathematica/Wolfram Language 14.x. All symbols are local to this Module.
   Re-run with Get["/absolute/path/finite_checks.wl"]. *)
Module[{ep, u, km, qraw, q, flux, wall, vars, lmat, gramE, gramP,
  a, s, t, h1, h2, h3, e, g, ee, jconn, jghost, jframe,
  jacMetricRotation, variations, symvars, angles, skew, dg, de,
  res, report, out, simpleChecks},
 ep[i_, j_, k_] := Signature[{i, j, k}];
 u = Array[uu, {3, 3}]; vars = Flatten[u];
 km[b_, c_, i_] := Sum[ep[b, c, d] u[[d, i]], {d, 3}];
 qraw = Expand[-Sum[ep[a0, b, c] ep[a0, i, j] km[b, d, i] km[d, c, j],
   {a0, 3}, {b, 3}, {c, 3}, {d, 3}, {i, 3}, {j, 3}]];
 q = Tr[u]^2 - Tr[u.u];
 flux = Expand[Sum[ep[b, c, d] (KroneckerDelta[b, 1] km[c, d, 2] -
     KroneckerDelta[b, 2] km[c, d, 1]), {b, 3}, {c, 3}, {d, 3}]];
 wall = Expand[-2 Sum[ep[3, b, c] (KroneckerDelta[b, 1] km[c, 3, 2] -
     KroneckerDelta[b, 2] km[c, 3, 1]), {b, 3}, {c, 3}]];
 lmat = Table[D[q, vars[[i]], vars[[j]]]/2, {i, 9}, {j, 9}];
 e = DiagonalMatrix[{s1, s2, s3}]; g = Transpose[e].e; ee = Det[e];
 gramE = ee KroneckerProduct[IdentityMatrix[3], Inverse[g]];
 gramP = ee ArrayFlatten[{{IdentityMatrix[3], ConstantArray[0, {3, 3}]},
   {ConstantArray[0, {3, 3}], g}}];
 jconn = Det[KroneckerProduct[IdentityMatrix[3], e]];
 jghost = 1/Det[e];
 (* e=R sqrt(g), at R=I and positive diagonal e. Haar angular coordinates
    use (Theta_23,Theta_31,Theta_12), not an invented metric density. *)
 symvars = {dg11, dg22, dg33, dg12, dg13, dg23};
 angles = {th1, th2, th3};
 dg = {{dg11, dg12, dg13}, {dg12, dg22, dg23}, {dg13, dg23, dg33}};
 skew = {{0, -th3, th2}, {th3, 0, -th1}, {-th2, th1, 0}};
 de = skew.e + Table[dg[[i, j]]/(e[[i, i]] + e[[j, j]]), {i, 3}, {j, 3}];
 jacMetricRotation = FullSimplify[Det[Table[D[Flatten[de][[i]],
     Join[symvars, angles][[j]]], {i, 9}, {j, 9}]],
   Assumptions -> s1 > 0 && s2 > 0 && s3 > 0];
 simpleChecks = <|
  "contorsion_bulk_residual" -> Expand[qraw - q],
  "bulk_flux_over_a" -> flux,
  "wall_flux_over_a" -> wall,
  "completed_flux_residual" -> Expand[flux + wall],
  "quadratic_form" -> Expand[q],
  "L_eigenvalues" -> Sort[Eigenvalues[lmat]],
  "det_H" -> Factor[Det[2 a lmat]],
  "inverse_L_identity" -> Simplify[Tr[Tr[u]/2 IdentityMatrix[3] - Transpose[u]] IdentityMatrix[3] -
     Transpose[Tr[u]/2 IdentityMatrix[3] - Transpose[u]] - u],
  "det_field_L2_Gram" -> Factor[Det[gramE]],
  "det_geometric_parameter_L2_Gram" -> Factor[Det[gramP]],
  "connection_coordinate_Jacobian" -> Factor[jconn],
  "odd_ghost_coordinate_Berezinian" -> Factor[jghost],
  "odd_cotangent_full_Berezinian" -> Factor[jghost^2],
  "coframe_to_metric_rotation_signed_Jacobian" -> jacMetricRotation,
  "aux_frozen_L2_conformal_series" -> Normal[Series[-9/2 Log[1 + t], {t, 0, 3}]],
  "aux_frozen_L2_metric_series" -> Normal[Series[-3/4 Total[Log[1 + t #] & /@ {h1, h2, h3}], {t, 0, 3}]],
  "combined_frozen_L2_metric_series" -> Normal[Series[-7/4 Total[Log[1 + t #] & /@ {h1, h2, h3}], {t, 0, 3}]],
  "dynamic_aux_density_cancellation" -> Simplify[(ee^(3/2) ee^3)/(ee^(9/2)), Assumptions -> s1 > 0 && s2 > 0 && s3 > 0],
  "frozen_aux_density_factor" -> Simplify[ee^3/(ee^(9/2)), Assumptions -> s1 > 0 && s2 > 0 && s3 > 0],
  "combined_base_Ber_before_aux_integration" -> Simplify[jconn jghost jacMetricRotation],
  "conformal_counterexample_s2_aux" -> 2^(-9/2),
  "conformal_counterexample_s2_combined" -> 2^(-21/2)
 |>;
 report = Block[{$Messages = {}, $MessageList = {}},
   res = simpleChecks;
   <|"Results" -> res, "Failed" -> (! FreeQ[res, $Failed | $Aborted]),
     "MessagesDuringReport" -> (ToString[#, InputForm] & /@ $MessageList)|>];
 out = FileNameJoin[{DirectoryName[$InputFileName], "finite_checks.actual.txt"}];
 Export[out, ToString[report, InputForm, PageWidth -> 100], "Text"];
 report
]
