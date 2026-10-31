(* Finite check of the antifield source and the cubic canonical shift.
   xx[mu,a,nu] represents the even product e*_(mu,a) xi^nu;
   linearity means no Grassmann relations are needed in this file. *)
Module[{ep, x, source, shift, l, residual, y, inv, saddle, aval, vv, q, result, out},
 ep[i_, j_, k_] := Signature[{i, j, k}];
 x = Array[xx, {3, 3, 3}];
 source = Table[Expand[Sum[ep[a, b, c] x[[mu, a, nu]]
   (KroneckerDelta[nu, d] KroneckerDelta[mu, c] -
    KroneckerDelta[mu, d] KroneckerDelta[nu, c]),
   {a, 3}, {c, 3}, {mu, 3}, {nu, 3}]], {b, 3}, {d, 3}];
 shift = Table[Sum[ep[nu, mu, d] x[[mu, b, nu]], {nu, 3}, {mu, 3}], {b, 3}, {d, 3}];
 l[z_] := Tr[z] IdentityMatrix[3] - Transpose[z];
 inv[z_] := Tr[z]/2 IdentityMatrix[3] - Transpose[z];
 q[z_] := Tr[z]^2 - Tr[z.z];
 residual = Map[Expand, l[shift] - source, {2}];
 y = Array[yy, {3, 3}];
 saddle = -inv[y]/(2 aval vv);
 result = <|
   "cubic_source_equals_L_of_generator_shift" -> (residual === ConstantArray[0, {3, 3}]),
   "auxiliary_stationary_equation_residual" -> Map[Simplify, 2 aval vv l[saddle] + y, {2}],
   "auxiliary_substitution_residual" -> Simplify[aval vv q[saddle] + Tr[Transpose[y].saddle] +
      Tr[Transpose[y].inv[y]]/(4 aval vv)],
   "trace_example_q" -> q[t IdentityMatrix[3]],
   "symmetric_traceless_example_q" -> q[DiagonalMatrix[{t, -t, 0}]],
   "antisymmetric_example_q" -> q[{{0, t, 0}, {-t, 0, 0}, {0, 0, 0}}]
 |>;
 out = FileNameJoin[{DirectoryName[$InputFileName], "auxiliary_source_checks.actual.txt"}];
 Export[out, ToString[result, InputForm, PageWidth -> 100], "Text"];
 result
]
