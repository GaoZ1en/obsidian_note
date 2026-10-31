(* Independent local checks. Source version 1; no parent files are read.
   Operators: A=-nabla^2, O1=A+2, O2=A-2 on S^2_0, O0=A+4.
   Coordinate order {r,t,x}; positive metric, r>0. The arbitrary-jet
   intertwiner checks are evaluated at r=1,t=x=0, a regular point. *)
ClearAll[rr, tt, xx, v1, v2, v3];
coords = {rr, tt, xx};
metric = DiagonalMatrix[{1/(1 + rr^2), 1 + rr^2, rr^2}];
inverse = Inverse[metric];
christoffel = Table[Sum[inverse[[i, l]] (D[metric[[l, k]], coords[[j]]] + D[metric[[l, j]], coords[[k]]] - D[metric[[j, k]], coords[[l]]])/2, {l, 3}], {i, 3}, {j, 3}, {k, 3}];
ricci = Table[Sum[D[christoffel[[k, i, j]], coords[[k]]] - D[christoffel[[k, i, k]], coords[[j]]] + Sum[christoffel[[k, k, l]] christoffel[[l, i, j]] - christoffel[[k, j, l]] christoffel[[l, i, k]], {l, 3}], {k, 3}], {i, 3}, {j, 3}];
cd1[v_] := Table[D[v[[j]], coords[[i]]] - Sum[christoffel[[a, i, j]] v[[a]], {a, 3}], {i, 3}, {j, 3}];
cd2[h_] := Table[D[h[[j, k]], coords[[i]]] - Sum[christoffel[[a, i, j]] h[[a, k]] + christoffel[[a, i, k]] h[[j, a]], {a, 3}], {i, 3}, {j, 3}, {k, 3}];
rough1[v_] := Module[{b = cd1[v]}, Table[-Sum[inverse[[i, i]] (D[b[[i, j]], coords[[i]]] - Sum[christoffel[[a, i, i]] b[[a, j]] + christoffel[[a, i, j]] b[[i, a]], {a, 3}]), {i, 3}], {j, 3}]];
rough2[h_] := Module[{b = cd2[h]}, Table[-Sum[inverse[[i, i]] (D[b[[i, j, k]], coords[[i]]] - Sum[christoffel[[a, i, i]] b[[a, j, k]] + christoffel[[a, i, j]] b[[i, a, k]] + christoffel[[a, i, k]] b[[i, j, a]], {a, 3}]), {i, 3}], {j, 3}, {k, 3}]];
strain[v_] := cd1[v] + Transpose[cd1[v]];
conformalStrain[v_] := Module[{b = cd1[v]}, b + Transpose[b] - (2/3) metric Tr[inverse.b]];
deDonder[h_] := Module[{b = cd2[h], tr = Tr[inverse.h]}, Table[Sum[inverse[[i, i]] b[[i, i, j]], {i, 3}] - D[tr, coords[[j]]]/2, {j, 3}]];
v = {v1[rr, tt, xx], v2[rr, tt, xx], v3[rr, tt, xx]};
point = {rr -> 1, tt -> 0, xx -> 0};
localChecks = <|
  "RicciPlus2g" -> Simplify[ricci + 2 metric, Assumptions -> rr > 0],
  "FKPlusO1_arbitraryJetAtRegularPoint" -> Simplify[(deDonder[strain[v]] + rough1[v] + 2 v) /. point],
  "O2LMinusLO1_arbitraryJetAtRegularPoint" -> Simplify[(rough2[conformalStrain[v]] - 2 conformalStrain[v] - conformalStrain[rough1[v] + 2 v]) /. point]
|>;
(* Curvature contraction responsible for the integrated Codazzi identity.
   R^i_{j a b}=-(delta^i_a delta_jb-delta^i_b delta_ja). *)
delta = IdentityMatrix[3];
riemann = Table[-delta[[i, a]] delta[[j, b]] + delta[[i, b]] delta[[j, a]], {i, 3}, {j, 3}, {a, 3}, {b, 3}];
h = {{h11, h12, h13}, {h12, h22, h23}, {h13, h23, h33}};
commutator = Table[Sum[riemann[[k, e, k, l]] h[[e, j]] + riemann[[j, e, k, l]] h[[k, e]], {k, 3}, {e, 3}], {l, 3}, {j, 3}];
localChecks = Join[localChecks, <|"CodazziCurvatureContraction" -> Simplify[commutator + 3 h - delta Tr[h]]|>];
(* Radial scalar ground-state transform and flat geodesic volume. *)
f = 1/Sqrt[1 + rr^2];
radialMinusLaplacianFOverF = FullSimplify[-D[rr (1 + rr^2) D[f, rr], rr]/(rr f), Assumptions -> rr > 0];
volumeExpansion = Expand[Pi beta (1/z - z/4)^2];
(* Full-bundle diagonal heat densities follow the H3 spin-s Plancherel
   branches m=-s,...,s. This algebra checks cancellations, not Plancherel. *)
k0 = Exp[-5 q];
k1 = Exp[-5 q] + 2 (1 + 2 q) Exp[-4 q];
k2 = Exp[-5 q] + 2 (1 + 2 q) Exp[-4 q] + 2 (1 + 8 q) Exp[-q];
gaussianHeatCombination = FullSimplify[k1 - k2/2 - k0/2];
identityCoefficientLogZ = FullSimplify[-(Gamma[-3/2] 4^(3/2) + 2 Gamma[-1/2] Sqrt[4] - Gamma[-3/2] - 8 Gamma[-1/2])/(4 Pi)^(3/2)];
<|"LocalResiduals" -> localChecks,
  "RadialMinusLaplacianFOverF" -> radialMinusLaplacianFOverF,
  "FlatCutoffVolume" -> volumeExpansion,
  "GaussianHeatNumerator" -> gaussianHeatCombination,
  "ZetaSchemeLogZIdentityCoefficientPerRenormalizedVolume" -> identityCoefficientLogZ,
  "Scope" -> "Exact component/arbitrary-jet checks and scalar algebra; not a numerical or CAS proof of self-adjointness, Plancherel, or trace interchange."
|>
