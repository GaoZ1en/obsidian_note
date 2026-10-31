(* Reproduction input for the successful balanced operator check. Wolfram Engine 14.3. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{ep, ind, e, j, d, c, k, g, b, tq, tp, s, b0, b1, z, mul,
   proj0, proj1, proj2, curv, weitz},
  ep = Normal[LeviCivitaTensor[3]];
  ind = Flatten[Table[{i, a}, {i, 3}, {a, 3}], 1];
  z[n_, m_] := ConstantArray[0, {n, m}];
  e = Table[
    KroneckerDelta[ind[[r, 1]], ind[[r, 2]]] KroneckerDelta[ind[[t, 1]], ind[[t, 2]]] -
    KroneckerDelta[ind[[r, 1]], ind[[t, 2]]] KroneckerDelta[ind[[r, 2]], ind[[t, 1]]],
    {r, 9}, {t, 9}];
  j = Table[ep[[ind[[r, 2]], ind[[r, 1]], h]], {r, 9}, {h, 3}];
  d = Table[I Sum[xi[h] KroneckerDelta[ind[[r, 1]], h], {h, 3}]
    KroneckerDelta[ind[[r, 2]], a], {r, 9}, {a, 3}];
  c = Table[I Sum[ep[[ind[[r, 1]], h, ind[[t, 1]]]] xi[h], {h, 3}]
    KroneckerDelta[ind[[r, 2]], ind[[t, 2]]], {r, 9}, {t, 9}];
  mul[x_] := ComplexExpand[x];
  k = ArrayFlatten[{{e, c}, {c, -e}}];
  g = ArrayFlatten[{{d, -j}, {j, d}}];
  b = ArrayFlatten[{{k, g}, {mul[ConjugateTranspose[g]], z[6, 6]}}];
  tq = ArrayFlatten[{{z[9, 9], IdentityMatrix[9]}, {-IdentityMatrix[9], z[9, 9]}}];
  tp = ArrayFlatten[{{z[3, 3], IdentityMatrix[3]}, {-IdentityMatrix[3], z[3, 3]}}];
  s = ArrayFlatten[{{tq, z[18, 6]}, {z[6, 18], -tp}}];
  b0 = b /. {xi[1] -> 0, xi[2] -> 0, xi[3] -> 0}; b1 = b - b0;
  proj0 = Table[KroneckerDelta[ind[[r, 1]], ind[[r, 2]]]
    KroneckerDelta[ind[[t, 1]], ind[[t, 2]]]/3, {r, 9}, {t, 9}];
  proj1 = j.Transpose[j]/2; proj2 = IdentityMatrix[9] - proj0 - proj1;
  curv = -2 IdentityMatrix[9] + e; weitz = curv + e.e + j.Transpose[j];
  <|"E_eigenvalues" -> Tally[Eigenvalues[e]], "jdag_j" -> Transpose[j].j,
   "B_Hermitian" -> (Simplify[b - mul[ConjugateTranspose[b]]] === z[24, 24]),
   "S_anticommutes_B" -> (Simplify[s.b + b.s] === z[24, 24]),
   "S_squared_minus_one" -> (s.s === -IdentityMatrix[24]),
   "principal_square" -> (Simplify[b1.b1 - Sum[xi[h]^2, {h, 3}] IdentityMatrix[24]] === z[24, 24]),
   "Q_offdiagonal_zero" -> (Simplify[e.c - c.e + d.Transpose[j] - j.mul[ConjugateTranspose[d]]] === z[9, 9]),
   "Weitzenbock_potential" -> (weitz === 4 proj0 + 2 proj1 - 2 proj2),
   "potential_eigenvalues" -> Tally[Eigenvalues[weitz]],
   "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]]
