(* Independent exact verification. No project synthesis/candidate files read.
   Coordinates/internal labels 0,1,2,3 are array indices 1,2,3,4.
   eta=(-,+,+,+), eps0123=+1, vol=dt^dx^dy^dz; outward wall n=+dz.
   kappa=kap, real nonzero Immirzi beta=bet. d delta = delta d.
   Run in a fresh Wolfram/xAct core kernel: Get[absolute path]. *)
$Context = "FreshBoundary9c37`";
ClearAll["FreshBoundary9c37`*"];
eta = {-1, 1, 1, 1}; emat = DiagonalMatrix[eta];
zero = ConstantArray[0, 16];
bas = Table[UnitVector[16, 2^(i - 1) + 1], {i, 4}];
bits[m_] := Select[Range[4], BitAnd[m, 2^(# - 1)] != 0 &];
wsign[m_, n_] := (-1)^Total[Flatten[Table[Boole[i > j], {i, bits[m]}, {j, bits[n]}]]];
wed[f_, g_] := Module[{out = zero},
 Do[If[BitAnd[m, n] == 0 && f[[m + 1]] =!= 0 && g[[n + 1]] =!= 0,
   out[[m + n + 1]] += wsign[m, n] f[[m + 1]] g[[n + 1]]], {m, 0, 15}, {n, 0, 15}];
 Expand /@ out];
vol = UnitVector[16, 16];
int[i_, f_] := Module[{out = zero, is},
 Do[If[BitAnd[m, 2^(i - 1)] != 0, is = bits[m];
   out[[m - 2^(i - 1) + 1]] += (-1)^(First[FirstPosition[is, i]] - 1) f[[m + 1]]], {m, 0, 15}]; out];
hodge[f_] := Module[{out = zero, is, js},
 Do[is = bits[m]; js = Complement[Range[4], is];
  out[[15 - m + 1]] += Times @@ eta[[is]] Signature[Join[is, js]] f[[m + 1]], {m, 0, 15}]; Expand /@ out];
eps[i_, j_, k_, l_] := Signature[{i, j, k, l}];
pbwall[f_] := Table[If[BitAnd[m, 8] == 0, f[[m + 1]], 0], {m, 0, 15}];
pbcorner[f_] := Table[If[BitAnd[m, 9] == 0, f[[m + 1]], 0], {m, 0, 15}];
zq[x_] := And @@ (TrueQ[# == 0] & /@ Flatten[Expand[x]]);
checks = <||>; values = <||>;
checks["Lorentzian Hodge star squared on every 2-form"] = And @@ Table[If[Length[bits[m]] == 2, zq[hodge[hodge[UnitVector[16, m + 1]]] + UnitVector[16, m + 1]], True], {m, 0, 15}];

(* Universal first jets of an arbitrary tetrad variation in an inertial frame. *)
amat = Array[av, {4, 4}]; da = Array[dav, {4, 4, 4}];
hm = Table[eta[[i]] amat[[i, j]] + eta[[j]] amat[[j, i]], {i, 4}, {j, 4}];
dh = Table[eta[[i]] da[[i, j, r]] + eta[[j]] da[[j, i, r]], {i, 4}, {j, 4}, {r, 4}];
delE = Table[Sum[amat[[i, j]] bas[[j]], {j, 4}], {i, 4}];
delOmega = Table[Sum[eta[[j]] (eta[[i]] (dh[[i, j, r]] + dh[[i, r, j]] - dh[[r, j, i]])/2 - da[[i, j, r]]) bas[[r]], {r, 4}], {i, 4}, {j, 4}];
checks["Linear Levi-Civita spin connection is antisymmetric"] = zq[delOmega + Transpose[delOmega, {2, 1, 3}]];
ddelE = Table[Sum[da[[i, j, r]] wed[bas[[r]], bas[[j]]], {j, 4}, {r, 4}], {i, 4}];
checks["Linear torsion vanishes for arbitrary tetrad first jets"] = zq[Table[ddelE[[i]] + Sum[eta[[j]] wed[delOmega[[i, j]], bas[[j]]], {j, 4}], {i, 4}]];
evariation = Sum[eta[[i]] wed[bas[[i]], delE[[i]]], {i, 4}];
dev = Sum[wed[bas[[r]], Sum[eta[[i]] da[[i, j, r]] wed[bas[[i]], bas[[j]]], {i, 4}, {j, 4}]], {r, 4}];
dstarev = Sum[wed[bas[[r]], hodge[Sum[eta[[i]] da[[i, j, r]] wed[bas[[i]], bas[[j]]], {i, 4}, {j, 4}]]], {r, 4}];
thetaE = Sum[eps[i, j, k, l] wed[wed[bas[[i]], bas[[j]]], delOmega[[k, l]]], {i, 4}, {j, 4}, {k, 4}, {l, 4}]/(4 kap);
thetaH = Sum[eta[[i]] eta[[j]] wed[wed[bas[[i]], bas[[j]]], delOmega[[i, j]]], {i, 4}, {j, 4}]/(2 kap bet);
vflat = Table[Sum[eta[[i]] eta[[j]] (dh[[i, j, j]] - dh[[j, j, i]]), {j, 4}], {i, 4}];
thetaG = Sum[vflat[[i]] int[i, vol], {i, 4}]/(2 kap);
checks["theta_E = theta_g - d star(e_I wedge delta e^I)/(2 kappa)"] = zq[thetaE - thetaG + dstarev/(2 kap)];
checks["theta_H = -d(e_I wedge delta e^I)/(2 kappa beta)"] = zq[thetaH + dev/(2 kap bet)];

(* Algebraic wall/corner identities for arbitrary tetrad variations. *)
epsGamma = int[4, vol];
bwall = Table[If[i == 4, 0, eta[[i]] hm[[i, 4]]], {i, 4}];
deln = Table[amat[[i, 4]] - eta[[i]] hm[[i, 4]] + If[i == 4, hm[[4, 4]]/2, 0], {i, 4}];
cg = -Sum[bwall[[i]] int[i, epsGamma], {i, 4}]/(2 kap);
cn = Sum[eps[i, j, 4, l] deln[[l]] wed[bas[[i]], bas[[j]]], {i, 4}, {j, 4}, {l, 4}]/(2 kap);
checks["C_n = C_g - star(e_I wedge delta e^I)/(2 kappa), including mixed h"] = zq[pbwall[cn - cg + hodge[evariation]/(2 kap)]];
kk = Array[kv, {3, 3}];
dnforms = Table[If[l == 4, zero, Sum[eta[[l]] kk[[i, l]] bas[[i]], {i, 3}]], {l, 4}];
ellE = Sum[eps[i, j, 4, l] wed[wed[bas[[i]], bas[[j]]], dnforms[[l]]], {i, 4}, {j, 4}, {l, 4}]/(2 kap);
traceK = Sum[eta[[i]] kk[[i, i]], {i, 3}];
checks["Covariant Palatini wall term has +K epsilon_Gamma/kappa sign"] = zq[pbwall[ellE - traceK epsGamma/kap]];

(* Fully general first metric jets at a point, with g=eta there but arbitrary
   derivatives, so this also tests nongeodesic normal acceleration. *)
hh = Table[h0[Min[i, j], Max[i, j]], {i, 4}, {j, 4}];
gd = Table[g1[Min[i, j], Max[i, j], r], {i, 4}, {j, 4}, {r, 4}];
hd = Table[h1[Min[i, j], Max[i, j], r], {i, 4}, {j, 4}, {r, 4}];
ginv = emat - ss emat.hh.emat; dmetric = gd + ss hd;
chr = Table[Sum[ginv[[u, l]] (dmetric[[l, k, j]] + dmetric[[l, j, k]] - dmetric[[j, k, l]]), {l, 4}]/2, {u, 4}, {j, 4}, {k, 4}];
chr0 = chr /. ss -> 0;
nvec = ginv[[All, 4]]/Sqrt[ginv[[4, 4]]];
dnvec = Table[-Sum[ginv[[u, a]] ginv[[b, 4]] dmetric[[a, b, r]], {a, 4}, {b, 4}]/Sqrt[ginv[[4, 4]]] + ginv[[u, 4]] Sum[ginv[[4, a]] ginv[[b, 4]] dmetric[[a, b, r]], {a, 4}, {b, 4}]/(2 ginv[[4, 4]]^(3/2)), {u, 4}, {r, 4}];
kexpr = Sum[dnvec[[u, u]], {u, 4}] + Sum[chr[[u, u, v]] nvec[[v]], {u, 4}, {v, 4}];
deltaK = Expand[D[kexpr, ss] /. ss -> 0];
n0 = UnitVector[4, 4]; qi = DiagonalMatrix[{-1, 1, 1, 0}];
dgi = Table[-emat.gd[[All, All, r]].emat, {r, 4}];
dn0 = Table[dgi[[r, All, 4]] - n0 dgi[[r, 4, 4]]/2, {r, 4}];
dqi = Table[dgi[[r]] - Outer[Times, dn0[[r]], n0] - Outer[Times, n0, dn0[[r]]], {r, 4}];
b0 = qi.hh.n0;
db0 = Table[dqi[[r]].hh.n0 + qi.hd[[All, All, r]].n0 + qi.hh.dn0[[r]], {r, 4}];
divb = Expand[Sum[db0[[i, i]], {i, 3}] + Sum[chr0[[i, i, j]] b0[[j]], {i, 3}, {j, 3}]];
nt = Expand[Tr[dqi[[4]].hh] + Tr[qi.hd[[All, All, 4]]]];
accel = dn0[[4]] + chr0[[All, 4, 4]];
ab = Expand[accel.emat.b0];
kij = Table[-chr0[[4, i, j]], {i, 3}, {j, 3}];
k0 = Sum[eta[[i]] kij[[i, i]], {i, 3}];
kh = Sum[eta[[i]] eta[[j]] kij[[i, j]] hh[[i, j]], {i, 3}, {j, 3}];
ttr = Tr[qi.hh];
cdh = Table[hd[[a, b, r]] - Sum[chr0[[l, r, a]] hh[[l, b]] + chr0[[l, r, b]] hh[[a, l]], {l, 4}], {a, 4}, {b, 4}, {r, 4}];
vnormal = Sum[eta[[j]] (cdh[[4, j, j]] - cdh[[j, j, 4]]), {j, 4}];
metricResiduals = <|
 "normal theta numerator" -> Expand[vnormal - (divb - nt + hh[[4, 4]] k0 - kh - 2 ab)],
 "delta K with normal and mixed h" -> Expand[deltaK - (nt/2 - divb + ab - hh[[4, 4]] k0/2)],
 "off-shell theta_g + delta ell_g = BY + d C_g" -> Expand[vnormal + 2 deltaK + k0 ttr - ((k0 ttr - kh) - divb)]|>;
KeyValueMap[(checks[#1] = TrueQ[#2 == 0]) &, metricResiduals];
values["metric residuals"] = metricResiduals;

(* Field-space two-forms for arbitrary Lorentz variations, not coordinate
   second derivatives of a noncommuting vector field. *)
gen[a_, b_] := Module[{up = ConstantArray[0, {4, 4}]}, up[[a, b]] = 1; up[[b, a]] = -1; up.emat];
lor1 = Sum[l1[i, j] gen[i, j], {i, 1, 3}, {j, i + 1, 4}];
lor2 = Sum[l2[i, j] gen[i, j], {i, 1, 3}, {j, i + 1, 4}];
le[m_, i_] := Sum[m[[i, j]] bas[[j]], {j, 4}];
twoE[m_, p_] := 2 Sum[eta[[i]] wed[le[m, i], le[p, i]], {i, 4}];
sigma = Table[Sum[eps[i, j, k, l] wed[bas[[k]], bas[[l]]], {k, 4}, {l, 4}]/2, {i, 4}, {j, 4}];
dsigma[m_] := Table[Sum[eps[i, j, k, l] (wed[le[m, k], bas[[l]]] + wed[bas[[k]], le[m, l]]), {k, 4}, {l, 4}]/2, {i, 4}, {j, 4}];
dcn[m_, p_] := Module[{ds1 = dsigma[m], ds2 = dsigma[p], nn1 = m.n0, nn2 = p.n0},
 Sum[ds1[[i, j]] n0[[i]] nn2[[j]] - ds2[[i, j]] n0[[i]] nn1[[j]] + sigma[[i, j]] (nn1[[i]] nn2[[j]] - nn2[[i]] nn1[[j]]), {i, 4}, {j, 4}]/kap];
checks["delta C_n = -delta alpha_E on all pure Lorentz pairs"] = zq[pbwall[dcn[lor1, lor2] + hodge[twoE[lor1, lor2]]/(2 kap)]];
pairFixed = {gen[1, 2], gen[1, 3]};
pairFree = {gen[1, 2], gen[2, 4]};
rawE[pair_] := Simplify[pbcorner[-hodge[twoE @@ pair]/(2 kap)][[7]]];
rawH[pair_] := Simplify[pbcorner[-(twoE @@ pair)/(2 kap bet)][[7]]];
values["fixed n: B01,B02 raw Einstein pairing per area"] = rawE[pairFixed];
values["fixed n: B01,B02 raw Holst pairing per area"] = rawH[pairFixed];
values["free n: B01,R13 raw Einstein pairing per area"] = rawE[pairFree];
values["free n: B01,R13 raw Holst pairing per area"] = rawH[pairFree];
checks["fixed-normal nonzero Holst pairing sign"] = TrueQ[rawH[pairFixed] == 1/(kap bet)];
checks["free-normal nonzero Einstein pairing sign"] = TrueQ[rawE[pairFree] == 1/kap];
checks["canonical C cancels both pairings"] = And @@ Table[zq[pbcorner[-(hodge[twoE @@ pair] + (twoE @@ pair)/bet)/(2 kap) - dcn @@ pair + (twoE @@ pair)/(2 kap bet)]], {pair, {pairFixed, pairFree}}];

(* An exact torsion-free family on [0,1]_z x T^2, with identity frame at z=0.
   Lambda=boost01(s z) boost02(t z). omega=-dLambda Lambda^-1.
   Curvature vanishes because omega has only a dz component. *)
boost01[u_] := {{Cosh[u], Sinh[u], 0, 0}, {Sinh[u], Cosh[u], 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}};
boost02[u_] := {{Cosh[u], 0, Sinh[u], 0}, {0, 1, 0, 0}, {Sinh[u], 0, Cosh[u], 0}, {0, 0, 0, 1}};
lam = boost01[ss zz].boost02[tt zz];
lamInv = emat.Transpose[lam].emat;
omR = Simplify[-D[lam, zz].lamInv];
checks["exact Lorentz family preserves metric"] = zq[Simplify[Transpose[lam].emat.lam - emat]];
checks["exact family is torsion-free"] = zq[Simplify[D[lam, zz] + omR.lam]];
checks["exact family fixes internal wall normal"] = zq[Simplify[lam.n0 - n0]];
omUp = omR.emat;
areaCoeff = Table[lam[[i, 2]] lam[[j, 3]] - lam[[i, 3]] lam[[j, 2]], {i, 4}, {j, 4}];
thHS = Sum[eta[[i]] eta[[j]] areaCoeff[[i, j]] D[omUp[[i, j]], ss], {i, 4}, {j, 4}]/(2 kap bet);
thHT = Sum[eta[[i]] eta[[j]] areaCoeff[[i, j]] D[omUp[[i, j]], tt], {i, 4}, {j, 4}]/(2 kap bet);
omegaHbulk = Simplify[(D[thHT, ss] - D[thHS, tt]) /. {ss -> 0, tt -> 0}];
values["direct raw bulk Holst symplectic density"] = omegaHbulk;
values["direct raw bulk Holst integral per transverse area"] = Integrate[omegaHbulk, {zz, 0, 1}];
checks["direct bulk integral agrees with corner +1/(kappa beta)"] = TrueQ[Integrate[omegaHbulk, {zz, 0, 1}] == 1/(kap bet)];

(* Off-shell arbitrary contorsion: exact wall identity and sufficient domain. *)
cont = Table[If[i == j, zero, Sign[j - i] Sum[cv[Min[i, j], Max[i, j], r] bas[[r]], {r, 4}]], {i, 4}, {j, 4}];
tors[con_] := Table[Sum[eta[[j]] wed[con[[i, j]], bas[[j]]], {j, 4}], {i, 4}];
bcE[con_] := Sum[eps[i, j, k, l] wed[wed[bas[[i]], bas[[j]]], con[[k, l]]], {i, 4}, {j, 4}, {k, 4}, {l, 4}]/(4 kap);
bcH[con_] := Sum[eta[[i]] eta[[j]] wed[wed[bas[[i]], bas[[j]]], con[[i, j]]], {i, 4}, {j, 4}]/(2 kap bet);
ellcE[con_] := Sum[eps[i, j, 4, l] wed[wed[bas[[i]], bas[[j]]], con[[l, 4]]], {i, 4}, {j, 4}, {l, 4}]/(2 kap);
ellcH[con_] := Sum[eta[[i]] wed[bas[[i]], tors[con][[i]]], {i, 4}]/(2 kap bet);
checks["off-shell ell_E = ell_g - B_contorsion_E on wall"] = zq[pbwall[ellcE[cont] + bcE[cont]]];
checks["off-shell ell_H = -B_contorsion_H"] = zq[ellcH[cont] + bcH[cont]];
sigmaH = Table[eta[[i]] eta[[j]] wed[bas[[i]], bas[[j]]], {i, 4}, {j, 4}];
dsigmaH[m_] := Table[eta[[i]] eta[[j]] (wed[le[m, i], bas[[j]]] + wed[bas[[i]], le[m, j]]), {i, 4}, {j, 4}];
rE[m_, con_] := -Sum[wed[dsigma[m][[i, j]], con[[i, j]]], {i, 4}, {j, 4}]/(2 kap);
rH[m_, con_] := -Sum[wed[dsigmaH[m][[i, j]], con[[i, j]]], {i, 4}, {j, 4}]/(2 kap bet);
checks["Holst contorsion residual equals delta e_I wedge T^I/(kappa beta)"] = zq[rH[amat, cont] - Sum[eta[[i]] wed[delE[[i]], tors[cont][[i]]], {i, 4}]/(kap bet)];
dsCont[sig_, con_] := Table[-Sum[eta[[i]] wed[con[[k, i]], sig[[k, j]]] + eta[[j]] wed[con[[k, j]], sig[[i, k]]], {k, 4}], {i, 4}, {j, 4}];
gaussE = dsCont[sigma, cont]; gaussH = dsCont[sigmaH, cont];
checks["free-frame Dirichlet residual is +lambda D Sigma/(2 kappa)"] = zq[rE[lor1, cont] + rH[lor1, cont] - Sum[(lor1.emat)[[i, j]] (gaussE[[i, j]] + gaussH[[i, j]]/bet), {i, 4}, {j, 4}]/(2 kap)];
csym = Table[cx[Min[i, j], Max[i, j]], {i, 3}, {j, 3}];
contSym = Table[Which[i == 4 && j != 4, -Sum[eta[[j]] csym[[r, j]] bas[[r]], {r, 3}], j == 4 && i != 4, Sum[eta[[i]] csym[[r, i]] bas[[r]], {r, 3}], True, zero], {i, 4}, {j, 4}];
checks["symmetric extrinsic contorsion has zero pullback torsion"] = zq[pbwall /@ tors[contSym]];
checks["pullback torsion zero suffices for unrestricted Dirichlet Lorentz variations"] = zq[pbwall[rE[lor1, contSym] + rH[lor1, contSym]]];
csour = (Sum[eta[[i]] csym[[i, i]], {i, 3}] Sum[eta[[i]] hm[[i, i]], {i, 3}] - Sum[eta[[i]] eta[[j]] csym[[i, j]] hm[[i, j]], {i, 3}, {j, 3}]) epsGamma/(2 kap);
checks["surviving symmetric extrinsic contorsion changes arbitrary-delta-q Brown-York source"] = zq[pbwall[rE[amat, contSym] + rH[amat, contSym] - csour]];
values["symmetric extrinsic contorsion residual for arbitrary delta q"] = "(tr_q c tr_q h - c^{ij} h_ij) epsilon_Gamma/(2 kappa); zero for delta q=0 but not for general sources";
values["full torsion not needed at wall"] = "For A^{13}=c e^1, pullback T=0 but T^1=c e^1 wedge e^3 is nonzero; off-shell metric-Dirichlet descent still holds";

report = <|"Conventions" -> "eta=(-,+,+,+), eps0123=+1, vol=dt^dx^dy^dz, wall z=1 outward +z, corner orientation dx^dy, Omega=delta Theta", "Checks" -> checks, "AllChecksPassed" -> And @@ Values[checks], "ActualResults" -> values|>;
outpath = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_output.txt";
If[FileExistsQ[outpath], outpath = FileNameJoin[{DirectoryName[outpath], FileBaseName[outpath] <> "_" <> CreateUUID[] <> ".txt"}]];
Export[outpath, ToString[report, InputForm, PageWidth -> 110], "Text"];
report
