(* Independent n=3 Gaussian/Fredholm checks.
   Run: wolframscript -file ising_n3_fredholm_checks.wl
   This script prints to stdout only: no Export, no JSON, no notebook writes.
   Primary convention: Gamma_ab = (I/2) Tr[rho [eta_a,eta_b]],
   so Tr[rho eta_a eta_b] = delta_ab - I Gamma_ab.
*)

ClearAll["Global`*"];
failures = 0;
assert[label_String, condition_] := If[TrueQ[condition],
  Print["PASS  ", label],
  failures++; Print["FAIL  ", label, "  result=", InputForm[condition]]
];
zeroMatrixQ[a_] := And @@ (TrueQ[Simplify[# == 0]] & /@ Flatten[a]);
pf[a_] := If[Length[a] == 0, 1,
  Sum[With[{keep = Delete[Range[Length[a]], {{1}, {j}}]},
    (-1)^j a[[1, j]] pf[a[[keep, keep]]]], {j, 2, Length[a]}]
];
gammaFromC[c_] := ArrayFlatten[{{0 c, c}, {-Transpose[c], 0 c}}];
majoranas[m_Integer] := Module[{pauli, id},
  pauli = {{{0, 1}, {1, 0}}, {{0, -I}, {I, 0}}, {{1, 0}, {0, -1}}};
  id = IdentityMatrix[2];
  Flatten[Table[Table[
    KroneckerProduct @@ Join[Table[pauli[[3]], {j - 1}],
      {pauli[[r]]}, Table[id, {m - j}]], {r, 2}], {j, m}], 1]
];
(* contractionSign=-1 is the primary convention; +1 is the old convention.
   The Wick expansion coefficient is (-I contractionSign)^k Pf(Gamma_I).
*)
gaussian[ga_, maj_, contractionSign_: -1] := Module[{m, subsets, word},
  m = Length[maj]/2;
  subsets = Select[Subsets[Range[2 m]], EvenQ[Length[#]] &];
  word[ss_] := If[ss == {}, IdentityMatrix[2^m], Dot @@ maj[[ss]]];
  2^-m Total[Table[(-I contractionSign)^(Length[ss]/2)
    pf[ga[[ss, ss]]] word[ss], {ss, subsets}]]
];
linearization[c_, t_] := Module[{id = IdentityMatrix[Length[c]], z = 0 c},
  ArrayFlatten[{{id, c, Sqrt[2] c.t}, {-Transpose[c], id, z},
    {-Sqrt[2] Transpose[c].t, z, id}}]
];
replicaA[t_] := {{0, 1, Sqrt[2] t}, {1, 0, 0}, {Sqrt[2] t, 0, 0}};

Print["Independent Ising n=3 checks; Wolfram ", $Version];
Print["Primary covariance convention: <eta_a eta_b> = delta_ab - I Gamma_ab."];

(* Exact noncommuting three-mode example. *)
m = 3;
c = {{1/5, 1/7, -1/9}, {1/11, 2/9, 1/13}, {-1/8, 1/15, 1/6}};
t = DiagonalMatrix[{-1, 1, 1}];
ga = gammaFromC[c];
gap = gammaFromC[t.c.t];
maj = majoranas[m];
g = gaussian[ga, maj, -1];
gp = gaussian[gap, maj, -1];
p1 = -I maj[[1]].maj[[m + 1]];
idMajorana = IdentityMatrix[2 m];
assert["Clifford anticommutators", And @@ Flatten[Table[
  zeroMatrixQ[maj[[a]].maj[[b]] + maj[[b]].maj[[a]] -
    2 KroneckerDelta[a, b] IdentityMatrix[2^m]], {a, 2 m}, {b, 2 m}]]];
assert["Primary Wick phase gives delta - I Gamma", And @@ Flatten[Table[
  Tr[g.maj[[a]].maj[[b]]] == KroneckerDelta[a, b] - I ga[[a, b]],
  {a, 2 m}, {b, 2 m}]]];
assert["Definition Gamma = I <commutator>/2", And @@ Flatten[Table[
  I Tr[g.(maj[[a]].maj[[b]] - maj[[b]].maj[[a]])]/2 == ga[[a, b]],
  {a, 2 m}, {b, 2 m}]]];
assert["Convention map Gamma_old = -Gamma_primary",
  zeroMatrixQ[g - gaussian[-ga, maj, 1]]];
assert["Normalized Hermitian density", Tr[g] == 1 && zeroMatrixQ[g - ConjugateTranspose[g]]];
assert["Example density strictly positive (exact Sylvester criterion)",
  And @@ Table[Det[g[[1 ;; r, 1 ;; r]]] > 0, {r, 2^m}]];
assert["Parity is a Hermitian involution", zeroMatrixQ[p1 - ConjugateTranspose[p1]] &&
  zeroMatrixQ[p1.p1 - IdentityMatrix[2^m]]];
assert["Parity conjugation gives Cprime=TCT", zeroMatrixQ[p1.g.p1 - gp]];

w0 = Tr[g.g.g];
w1 = Tr[g.g.gp];
mc = IdentityMatrix[m] + c.Transpose[c] + 2 c.t.Transpose[c].t;
assert["W0 branch-free finite determinant", w0 == 4^-m Det[IdentityMatrix[m] + 3 c.Transpose[c]]];
assert["W1 branch-free finite determinant", w1 == 4^-m Det[mc]];
assert["Final C formula invariant under C -> -C", zeroMatrixQ[
  mc - (IdentityMatrix[m] + (-c).Transpose[-c] + 2 (-c).t.Transpose[-c].t)]];
assert["Two-Gaussian Pfaffian with fixed basepoint sign", Tr[g.gp] ==
  (-1)^m 2^-m pf[ArrayFlatten[{{ga, idMajorana}, {-idMajorana, -gap}}]]];
ga2 = 2 ga.Inverse[idMajorana - ga.ga];
assert["Squared-density covariance", And @@ Flatten[Table[
  Tr[g.g.maj[[a]].maj[[b]]]/Tr[g.g] == KroneckerDelta[a, b] - I ga2[[a, b]],
  {a, 2 m}, {b, 2 m}]]];
assert["Squared overlap determinant", Det[idMajorana - ga.ga - 2 ga.gap] == (4^m w1)^2];
assert["Two sublattice determinants exactly equal", Det[mc] ==
  Det[IdentityMatrix[m] + Transpose[c].c + 2 Transpose[c].t.c.t]];

(* The conventional 6m-dimensional replica determinant is a square. *)
k = {{0, 1, -1}, {-1, 0, 1}, {1, -1, 0}};
rep = IdentityMatrix[6 m] + I KroneckerProduct[k, idMajorana].
  ArrayFlatten[{{ga, 0 ga, 0 ga}, {0 ga, ga, 0 ga}, {0 ga, 0 ga, gap}}];
assert["Conventional replica determinant is (4^m W1)^2", Det[rep] == (4^m w1)^2];

(* Our 3m-dimensional determinant is W1 itself after normalization. *)
lin = linearization[c, t];
assert["3m-dimensional exact linearization", Simplify[Det[lin] == Det[mc]]];
permutation = Join[{1, 4, 7}, {2, 3, 5, 6, 8, 9}];
linRegional = lin[[permutation, permutation]];
l1 = linRegional[[1 ;; 3, 1 ;; 3]];
l2 = linRegional[[4 ;; 9, 4 ;; 9]];
x12 = linRegional[[1 ;; 3, 4 ;; 9]];
x21 = linRegional[[4 ;; 9, 1 ;; 3]];
rel = IdentityMatrix[3] - Inverse[l1].x12.Inverse[l2].x21;
assert["Local blocks are identity plus real skew", zeroMatrixQ[l1 + Transpose[l1] - 2 IdentityMatrix[3]] &&
  zeroMatrixQ[l2 + Transpose[l2] - 2 IdentityMatrix[6]]];
assert["Local normalization A1", Simplify[Det[l1] ==
  Det[IdentityMatrix[1] + 3 c[[1 ;; 1, 1 ;; 1]].Transpose[c[[1 ;; 1, 1 ;; 1]]]]]];
assert["Local normalization A2", Simplify[Det[l2] ==
  Det[IdentityMatrix[2] + 3 c[[2 ;; 3, 2 ;; 3]].Transpose[c[[2 ;; 3, 2 ;; 3]]]]]];
assert["Exact regional Schur determinant", Simplify[Det[rel] == Det[mc]/(Det[l1] Det[l2])]];
assert["Continuum replica spectra", Sort[Eigenvalues[replicaA[-1]]] == Sort[{0, Sqrt[3], -Sqrt[3]}] &&
  Sort[Eigenvalues[replicaA[1]]] == Sort[{0, Sqrt[3], -Sqrt[3]}]];
assert["Noncommuting regional replica matrices", zeroMatrixQ[
  replicaA[-1].replicaA[1] - replicaA[1].replicaA[-1] -
    {{0, 0, 0}, {0, 0, 2 Sqrt[2]}, {0, -2 Sqrt[2], 0}}]];
Print["Exact-example W1 = ", N[w1, 18]];
Print["Exact-example normalized ratio = ", N[Det[rel], 18]];

(* A full polynomial test, not restricted to a physical covariance. *)
cSymbolic = {{aa, bb}, {cc, dd}};
tSymbolic = DiagonalMatrix[{-1, 1}];
majSymbolic = majoranas[2];
gSymbolic = gaussian[gammaFromC[cSymbolic], majSymbolic, -1];
gpSymbolic = gaussian[gammaFromC[tSymbolic.cSymbolic.tSymbolic], majSymbolic, -1];
assert["Arbitrary 2x2 C polynomial identity for W1", Expand[
  16 Tr[gSymbolic.gSymbolic.gpSymbolic] - Det[IdentityMatrix[2] +
    cSymbolic.Transpose[cSymbolic] + 2 cSymbolic.tSymbolic.Transpose[cSymbolic].tSymbolic]] === 0];

(* Actual finite critical-PBC Ising matrices; raw finite sine signs retained.
   Intervals: A1=[0,L/8), A2=[L/2,5L/8), N divisible by 8.
   This is numerical support only; convergence is proved in the review.
*)
isingRow[n_Integer] := Module[{inds, mm, tt, cm, c1, c2, numerator, denominator, zero, ratio, lower},
  inds = Join[Range[0, n/8 - 1], Range[n/2, 5 n/8 - 1]];
  mm = Length[inds];
  tt = DiagonalMatrix[Join[ConstantArray[-1, mm/2], ConstantArray[1, mm/2]]];
  cm = N[Table[1/(n Sin[Pi (j - i + 1/2)/n]), {i, inds}, {j, inds}], 40];
  c1 = cm[[1 ;; mm/2, 1 ;; mm/2]];
  c2 = cm[[mm/2 + 1 ;; mm, mm/2 + 1 ;; mm]];
  numerator = IdentityMatrix[mm] + cm.Transpose[cm] + 2 cm.tt.Transpose[cm].tt;
  zero = ConstantArray[0, {mm/2, mm/2}];
  denominator = ArrayFlatten[{{IdentityMatrix[mm/2] + 3 c1.Transpose[c1], zero},
    {zero, IdentityMatrix[mm/2] + 3 c2.Transpose[c2]}}];
  ratio = Det[LinearSolve[denominator, numerator]];
  lower = Min[Eigenvalues[denominator]];
  assert["Finite Ising positivity and diagonal bound, N=" <> ToString[n], ratio > 0 && lower >= 1];
  {n, N[ratio, 18], N[lower, 12]}
];
Print["Finite Ising rows: {N, W1/(p3(A1)p3(A2)), min eigenvalue of denominator}."];
Do[Print[InputForm[isingRow[n]]], {n, {32, 64, 128, 256, 512}}];
Print["q for these intervals = ", N[1 - Sin[Pi/8]^2, 18]];
Print["TOTAL FAILURES: ", failures];
If[failures == 0, Print["ALL CHECKS PASSED"]; Exit[0], Exit[1]];
