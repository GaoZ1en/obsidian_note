(* Exact checks for the finite constrained quantum-mechanical model.
   Units hbar = 1. Dimensionless time x = omega t; no numerical tolerance. *)
ClearAll["Global`*"];
checks = {};
add[label_, condition_] := AppendTo[checks, <|"label" -> label, "passed" -> TrueQ[condition]|>];
zero[expr_] := And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[{expr}]);
ket[d_, n_] := UnitVector[d, n + 1];
tensorKet[a_, b_] := Flatten[KroneckerProduct[a, b]];
embed[d_] := Transpose[Table[tensorKet[ket[d, n], ket[d, n]], {n, 0, d - 1}]];
clockKet[d_, x_] := Table[Exp[I n x], {n, 0, d - 1}]/Sqrt[d];
clockBra[d_, x_] := Table[Exp[-I n x], {n, 0, d - 1}]/Sqrt[d];
unitary[d_, x_] := DiagonalMatrix[Table[Exp[-I n x], {n, 0, d - 1}]];

(* The local first-order action: I_A theta_A' + I_B theta_B'
   - lambda omega (I_A-I_B) - omega I_B. *)
lag = ia va + ib vb - lam w (ia - ib) - w ib;
add["classical local gauge invariance", zero[(lag /. {va -> va + w ds, vb -> vb - w ds, lam -> lam + ds}) - lag]];
add["classical lapse equation gives charge matching", zero[D[lag, lam] + w (ia - ib)]];
add["classical reduced action", zero[(lag /. {ia -> jj, ib -> jj, vb -> vv - va}) - (jj vv - w jj)]];
add["classical gauge flow has opposite interface signs", zero[{D[w (ia - ib), ia], D[w (ia - ib), ib]} - {w, -w}]];

Do[
  h = DiagonalMatrix[Range[0, d - 1]];
  c = KroneckerProduct[h, IdentityMatrix[d]] - KroneckerProduct[IdentityMatrix[d], h];
  ho = KroneckerProduct[IdentityMatrix[d], h];
  v = embed[d]; p = v.Transpose[v];
  pIntegral = DiagonalMatrix[Table[Integrate[Exp[-I k s], {s, 0, 2 Pi}]/(2 Pi), {k, Diagonal[c]}]];
  pDiscrete = Sum[MatrixExp[-2 Pi I k c/d], {k, 0, d - 1}]/d;
  add["d=" <> ToString[d] <> " continuous Haar projection", zero[pIntegral - p]];
  add["d=" <> ToString[d] <> " exact d-point projection without aliasing", zero[pDiscrete - p]];
  add["d=" <> ToString[d] <> " projector and full physical dimension", zero[p.p - p] && zero[c.p] && MatrixRank[p] == d && MatrixRank[c] == d^2 - d];
  add["d=" <> ToString[d] <> " isometric encoding", zero[Transpose[v].v - IdentityMatrix[d]]];
  seed = Array[cc, d]; alpha = ConstantArray[1/Sqrt[d], d];
  add["d=" <> ToString[d] <> " group-averaged seed normalization", zero[p.tensorKet[seed, alpha] - v.seed/Sqrt[d]]];
  reduction = Sqrt[d] KroneckerProduct[IdentityMatrix[d], {clockBra[d, x]}].p;
  add["d=" <> ToString[d] <> " conditional state and reduction", zero[reduction - unitary[d, x].Transpose[v]]];
  add["d=" <> ToString[d] <> " Schrodinger equation", zero[I D[reduction, x] - h.reduction]];
  povmIntegral = Table[Integrate[Exp[I (n - m) x], {x, 0, 2 Pi}]/(2 Pi), {n, 0, d - 1}, {m, 0, d - 1}];
  add["d=" <> ToString[d] <> " covariant clock POVM normalization", zero[povmIntegral - IdentityMatrix[d]]];
  ticks = Transpose[Table[clockKet[d, 2 Pi k/d], {k, 0, d - 1}]];
  add["d=" <> ToString[d] <> " d orthogonal clock ticks", zero[ConjugateTranspose[ticks].ticks - IdentityMatrix[d]]];
  add["d=" <> ToString[d] <> " surviving outer Hamiltonian", zero[c.ho - ho.c] && zero[Transpose[v].ho.v - h]];
  add["d=" <> ToString[d] <> " two-time propagator", zero[unitary[d, y].Transpose[v].v.unitary[d, -x] - unitary[d, y - x]]];
, {d, 2, 6}];

(* A completely general two-level physical density matrix; positivity is
   a separate assumption r00,r11>=0, r10=Conjugate[r01], det(r)>=0. *)
d = 2; v = embed[d]; p = v.Transpose[v]; h = DiagonalMatrix[{0, 1}];
c = KroneckerProduct[h, IdentityMatrix[d]] - KroneckerProduct[IdentityMatrix[d], h];
r = {{r00, r01}, {r10, r11}}; phys = v.r.Transpose[v];
f = {{1, gg Exp[-I x]}, {gb Exp[I x], 1}}/(2 Pi);
sigma = Table[Sum[phys[[2 (a - 1) + b, 2 (aa - 1) + bb]] f[[bb, b]], {b, 1, 2}, {bb, 1, 2}], {a, 1, 2}, {aa, 1, 2}];
filtered = {{r00, gb r01}, {gg r10, r11}};
add["general covariant POVM is a fixed Schur filter followed by unitary evolution", zero[2 Pi sigma - unitary[2, x].filtered.unitary[2, -x]]];
add["uniform clock outcome density", zero[Tr[sigma] - Tr[r]/(2 Pi)]];
add["von Neumann equation for every covariant seed", zero[I D[sigma, x] - (h.sigma - sigma.h)]];
o = {{o00, o01}, {o10, o11}};
clockP = Outer[Times, clockKet[2, x], clockBra[2, x]];
dirac = 2 p.KroneckerProduct[o, clockP].p;
add["Dirac observable matches conditional observable", zero[dirac - v.unitary[2, -x].o.unitary[2, x].Transpose[v]] && zero[c.dirac - dirac.c]];
add["relational observable preserves multiplication", zero[dirac.dirac - v.unitary[2, -x].o.o.unitary[2, x].Transpose[v]]];
partialT = Table[phys[[2 (a - 1) + bb, 2 (aa - 1) + b]], {a, 1, 2}, {b, 1, 2}, {aa, 1, 2}, {bb, 1, 2}];
pt = ArrayReshape[partialT, {4, 4}];
add["partial-transpose spectrum and entanglement witness", zero[CharacteristicPolynomial[pt, z] - (z - r00) (z - r11) (z^2 - r01 r10)]];

(* Smallest counterexamples and experimentally readable signal. *)
plus = {1, 1}/Sqrt[2]; pair = v.plus;
rhoPair = Outer[Times, pair, pair];
twirl = Table[Integrate[Exp[-I (c[[a, a]] - c[[b, b]]) s], {s, 0, 2 Pi}]/(2 Pi)/4, {a, 1, 4}, {b, 1, 4}];
add["twirling has nonzero weight outside the constraint kernel", Tr[(IdentityMatrix[4] - p).twirl] == 1/2];
add["coherent projection of the product state yields the Bell history", zero[p.Outer[Times, tensorKet[plus, plus], tensorKet[plus, plus]].p - rhoPair/2]];
add["twirling remains PPT in this separable example", Min[Eigenvalues[ArrayReshape[Table[twirl[[2 (a - 1) + bb, 2 (aa - 1) + b]], {a, 1, 2}, {b, 1, 2}, {aa, 1, 2}, {bb, 1, 2}], {4, 4}]]] >= 0];
conditionalPlus = unitary[2, x].plus;
signal = (plus.conditionalPlus) (clockBra[2, -x].plus);
add["qubit interference signal", zero[ComplexExpand[signal] - (1 + Cos[x])/2]];
add["finite clock overlap", zero[clockBra[2, x].clockKet[2, y] - (1 + Exp[I (y - x)])/2]];
add["wrong positive-positive charge convention kills the excited history", MatrixRank[NullSpace[KroneckerProduct[h, IdentityMatrix[2]] + KroneckerProduct[IdentityMatrix[2], h]]] == 1];

(* Only coherence is needed for nontrivial unitary time dependence;
   finite stationary readout error damps amplitude but not unitarity. *)
blur = FullSimplify[Integrate[Exp[I k u], {u, -delta/2, delta/2}]/delta, Assumptions -> {Element[{k, delta}, Reals], k != 0, delta > 0}];
add["uniform timing bin Fourier multiplier", zero[blur - 2 Sin[k delta/2]/(k delta)]];
badAverage = Integrate[Exp[-I s/2], {s, 0, 2 Pi}]/(2 Pi);
add["a one-period integral is not a projector for an unmatched frequency", !TrueQ[FullSimplify[badAverage^2 == badAverage]] && !TrueQ[FullSimplify[badAverage == 0]]];
add["cyclic sampling aliases an extra charge equal to d", FullSimplify[Sum[Exp[-2 Pi I k 2/2], {k, 0, 1}]/2] == 1];

summary = <|"dimensionlessConvention" -> "hbar=1; x=omega t; omega>0", "dimensionsChecked" -> Range[2, 6], "checkCount" -> Length[checks], "allPassed" -> And @@ Lookup[checks, "passed"], "checks" -> checks|>;
Print[ExportString[summary, "RawJSON"]];
