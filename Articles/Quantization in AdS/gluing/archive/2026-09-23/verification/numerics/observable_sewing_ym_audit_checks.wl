(* Finite exact checks. General-group, distribution and PDE proofs are in the notes. *)
ClearAll["Global`*"];
checks = <||>; residuals = <||>;
add[label_, expr_] := Module[{v = FullSimplify[expr]},
  AssociateTo[checks, label -> And @@ (TrueQ[# == 0] & /@ Flatten[{v}])];
  AssociateTo[residuals, label -> ToString[v, InputForm]]];

vars = {q, p, z, w}; xx = {q, p}; jj = {{0, 1}, {-1, 0}};
oo = -jj; bm = {{1, 0, 0, 0}, {0, 1, 0, 0}};
rm = {q, p, q^2 p, q p^2}; dr = D[rm, {xx}];
aa = jj.Transpose[dr]; bf = Transpose[bm].oo; pp = dr.aa;
ff = q^2 z + p w^2 + z w; gg = p^2 w + q z^2 + p z;
uf = D[ff, {vars}]; ug = D[gg, {vars}];
da[v_, u_] := Sum[v[[a]] D[aa, xx[[a]]], {a, 2}].u;
gradient = D[uf, {vars}].pp.ug - D[ug, {vars}].pp.uf +
  bf.(da[aa.ug, uf] - da[aa.uf, ug]);
add["NonlinearFullGradient", D[uf.pp.ug, {vars}] - gradient];
add["TransposeLeftInverse", aa.bf - IdentityMatrix[2]];
add["MismatchCasimirs", D[{z, w} - {q^2 p, q p^2}, {vars}].pp];
add["NonlinearJacobi", Table[Sum[pp[[i, l]] D[pp[[j, k]], vars[[l]]] +
  pp[[j, l]] D[pp[[k, i]], vars[[l]]] + pp[[k, l]] D[pp[[i, j]], vars[[l]]],
  {l, 4}], {i, 4}, {j, 4}, {k, 4}]];
rm2 = {q, p, q^2, 0}; dr2 = D[rm2, {xx}];
pc = (dr2.jj.Transpose[dr2]) /. q -> q + cc w;
add["OffMatchingNonuniqueness", pc[[2, 3]] - (-2 (q + cc w))];
add["FullSolutionShiftFlux", -(-mm Cosh[mm x]) Sinh[mm x] +
  Sinh[mm x] (-mm Cosh[mm x])];
add["OmittedCurrentCounterexample", (-(-mm Cosh[mm x]) Sinh[mm x]) -
  mm Sinh[mm x] Cosh[mm x]];

tb = Table[-I PauliMatrix[a]/2, {a, 3}];
mat[v_] := Sum[v[[a]] tb[[a]], {a, 3}];
ip[a_, b_] := -2 Tr[a.b]; comm[a_, b_] := a.b - b.a;
ad[u_, a_] := u.a.Inverse[u];
u1 = (3 IdentityMatrix[2] + 4 I PauliMatrix[1])/5;
u2 = (5 IdentityMatrix[2] + 12 I PauliMatrix[2])/13;
u3 = (8 IdentityMatrix[2] + 15 I PauliMatrix[3])/17;
pm = mat[{p1, p2, p3}]; pn = mat[{n1, n2, n3}];
xa = mat[{a1, a2, a3}]; xb = mat[{b1, b2, b3}];
xc = mat[{c1, c2, c3}]; xd = mat[{d1, d2, d3}];
ea = mat[{e1, e2, e3}]; eb = mat[{f1, f2, f3}];
pairOmega[m_, xi_, eta_, ze_, nu_] :=
  ip[eta, ze] - ip[nu, xi] - ip[m, comm[xi, ze]];
add["SU2GroupMatrices", Table[{ConjugateTranspose[u].u - IdentityMatrix[2],
  Det[u] - 1}, {u, {u1, u2, u3}}]];
add["LiePairingInvariance", ip[comm[pm, xa], xb] - ip[pm, comm[xa, xb]]];
add["MomentCovariance", ad[u3.u1, pm] - ad[u3, pn] -
  ad[u3, ad[u1, pm] - pn]];
muDerivative = ad[u1, ea + comm[xa, pm]] - eb;
add["CutMomentIdentity", pairOmega[pm, ad[Inverse[u1], xc], 0 pm, xa, ea] +
  pairOmega[pn, -xc, comm[xc, pn], xb, eb] + ip[xc, muDerivative]];
add["SewnPotential", ip[pm, xa] + ip[ad[u1, pm], xb] -
  ip[pm, xa + ad[Inverse[u1], xb]]];
add["SewnSymplecticForm", pairOmega[pm, xa, ea, xc, eb] +
  pairOmega[ad[u1, pm], xb, ad[u1, ea + comm[xa, pm]],
    xd, ad[u1, eb + comm[xc, pm]]] -
  pairOmega[pm, xa + ad[Inverse[u1], xb], ea,
    xc + ad[Inverse[u1], xd], eb]];
ux = ad[Inverse[u1], xa]; uy = ad[Inverse[u1], xb];
add["RightEndpointMomentBracket", ip[comm[pm, ux], uy] -
  ip[comm[pm, uy], ux] - ip[pm, comm[ux, uy]] - ip[ad[u1, pm], comm[xa, xb]]];
add["OppositeEndpointMomentsCommute", ip[comm[pm, ux], xa] + ip[pm, comm[xa, ux]]];
add["WilsonCompositionInvariant", (u2.Inverse[u3]).(u3.u1) - u2.u1];
add["ElectricInsertion", {u2.ad[u1, pm].u1 - u2.u1.pm,
  u2.ad[u3.u1, pm].u3.u1 - u2.u3.u1.pm}];
add["GlobalSection", {Inverse[u1].u1 - IdentityMatrix[2],
  u2.Inverse[Inverse[u1]] - u2.u1,
  ad[Inverse[u1], ad[u1, pm]] - pm}];
add["HamiltonianAdditivity", ec^2/2 (ll1 ip[pm, pm] +
  ll2 ip[ad[u1, pm], ad[u1, pm]]) - ec^2 (ll1 + ll2) ip[pm, pm]/2];
v1 = -xa.u1 + ec^2 ll1 u1.pm;
v2 = u2.xa + ec^2 ll2 u2.ad[u1, pm];
dk = u3.xc; q2 = ad[u3, xa] - dk.Inverse[u3];
v2k = u2.q2 + ec^2 ll2 u2.ad[u3.u1, pm];
add["DynamicsSewing", {v2.u1 + u2.v1 - ec^2 (ll1 + ll2) u2.u1.pm,
  v2k.u3.u1 + u2.dk.u1 + u2.u3.v1 - ec^2 (ll1 + ll2) u2.u3.u1.pm}];
add["ConstraintPropagation", ad[u1, comm[Inverse[u1].v1, pm]] -
  comm[ad[u1, pm], xa]];
add["ThreeRegionPotential", ip[pm, xa] + ip[ad[u1, pm], xb] +
  ip[ad[u2.u1, pm], xc] - ip[pm, xa + ad[Inverse[u1], xb] +
    ad[Inverse[u2.u1], xc]]];
add["ThreeRegionProduct", (u3.u2).u1 - u3.(u2.u1)];

result = <|"groups" -> Length[checks], "allPassed" -> And @@ Values[checks],
  "checks" -> checks, "residuals" -> residuals,
  "scope" -> "Finite exact identities only. No general-group, microlocal, PDE or renormalization existence theorem is machine-proved."|>;
Print[ExportString[result, "RawJSON"]];
