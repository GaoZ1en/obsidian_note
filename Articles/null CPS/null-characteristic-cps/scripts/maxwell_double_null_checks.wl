ClearAll["Global`*"];

coords = {u, v, x, y};
g = {
  {0, -1, 0, 0},
  {-1, 0, 0, 0},
  {0, 0, 1, 0},
  {0, 0, 0, 1}
};
ginv = Inverse[g];

ee = e[u, v, x, y];
pu1 = pu1f[u, v, x, y];
pu2 = pu2f[u, v, x, y];
pv1 = pv1f[u, v, x, y];
pv2 = pv2f[u, v, x, y];
bb = b[u, v, x, y];

f = {
  {0, ee, pu1, pu2},
  {-ee, 0, pv1, pv2},
  {-pu1, -pv1, 0, bb},
  {-pu2, -pv2, -bb, 0}
};
fup = Simplify[ginv . f . ginv];

eps4 = LeviCivitaTensor[4];
hodge[m_] := Module[{mup = Simplify[ginv . m . ginv]},
  Table[
    Simplify[1/2 Sum[eps4[[r, s, a, c]] mup[[a, c]], {a, 4}, {c, 4}]],
    {r, 4}, {s, 4}
  ]
];

sf = hodge[f];
sfExpected = {
  {0, bb, pu2, -pu1},
  {-bb, 0, -pv2, pv1},
  {-pu2, pv2, 0, -ee},
  {pu1, -pv1, ee, 0}
};

maxeq = Table[
  Simplify[Sum[D[fup[[mu, nu]], coords[[mu]]], {mu, 4}]],
  {nu, 4}
];
maxExpected = {
  D[ee, v] + D[pv1, x] + D[pv2, y],
  -D[ee, u] + D[pu1, x] + D[pu2, y],
  -D[pv1, u] - D[pu1, v] - D[bb, y],
  -D[pv2, u] - D[pu2, v] + D[bb, x]
};

bianchi[a_, c_, d_] := Simplify[
  D[f[[c, d]], coords[[a]]] +
  D[f[[d, a]], coords[[c]]] +
  D[f[[a, c]], coords[[d]]]
];
bianchiList = {
  bianchi[1, 2, 3],
  bianchi[1, 2, 4],
  bianchi[1, 3, 4],
  bianchi[2, 3, 4]
};
bianchiExpected = {
  D[pv1, u] - D[pu1, v] + D[ee, x],
  D[pv2, u] - D[pu2, v] + D[ee, y],
  D[bb, u] - D[pu2, x] + D[pu1, y],
  D[bb, v] - D[pv2, x] + D[pv1, y]
};

da = {dau, dav, dax, day};
theta3[a_, c_, d_] := Simplify[-(
  da[[a]] sf[[c, d]] +
  da[[c]] sf[[d, a]] +
  da[[d]] sf[[a, c]]
)];
thetaPlus = theta3[2, 3, 4];
thetaMinus = theta3[1, 3, 4];

epsfun = gauge[u, v, x, y];
wedgeOneTwo[one_, two_, {a_, c_, d_}] := Simplify[
  one[[a]] two[[c, d]] +
  one[[c]] two[[d, a]] +
  one[[d]] two[[a, c]]
];
dTwo[two_, {a_, c_, d_}] := Simplify[
  D[two[[c, d]], coords[[a]]] +
  D[two[[d, a]], coords[[c]]] +
  D[two[[a, c]], coords[[d]]]
];
triples = Subsets[Range[4], {3}];
deps = D[epsfun, #] & /@ coords;
gaugeResiduals = Table[
  wedgeOneTwo[deps, sf, tri] -
  dTwo[epsfun sf, tri] +
  epsfun dTwo[sf, tri],
  {tri, triples}
];

nplusDressResidual = Simplify[
  (e0 dva + radPlus - divr da0) -
  (radPlus + deV da0 + e0 dva) /. divr -> -deV
];
nminusDressResidual = Simplify[
  (e0 dua - radMinus + divp db0) -
  (-radMinus + deU db0 + e0 dua) /. divp -> deU
];

vars = {ep, em, cp, cm};
thetaVec = {0, 0, -ep, em};
omegaMat = Table[
  D[thetaVec[[j]], vars[[i]]] - D[thetaVec[[i]], vars[[j]]],
  {i, 4}, {j, 4}
];
xdiag = {0, 0, eta, eta};
momentContraction = Simplify[
  Table[Sum[xdiag[[i]] omegaMat[[i, j]], {i, 4}], {j, 4}]
];
momentExpected = {eta, -eta, 0, 0};

newvars = {er, cc, lam};
oldmap = {er, er, cc, cc + lam};
jac = Table[D[oldmap[[i]], newvars[[j]]], {i, 4}, {j, 3}];
thetaReduced = Simplify[
  Transpose[jac] . (thetaVec /. Thread[vars -> oldmap])
];
omegaReduced = Table[
  D[thetaReduced[[j]], newvars[[i]]] -
  D[thetaReduced[[i]], newvars[[j]]],
  {i, 3}, {j, 3}
];
omegaReducedExpected = {
  {0, 0, 1},
  {0, 0, 0},
  {-1, 0, 0}
};

(* Unit-area-cut polynomial Maxwell solutions A = a(u,v) dx on the
   triangular slab u >= 0, v >= 0, u + v <= ell. *)
a1[uu_, vv_] := uu + 2 vv;
a2[uu_, vv_] := uu^2 + 3 vv^2;
omegaNplus = Integrate[
  (D[a1[u, v], v] a2[u, v] - D[a2[u, v], v] a1[u, v]) /. u -> 0,
  {v, 0, ell}
];
omegaNminus = Integrate[
  (D[a1[u, v], u] a2[u, v] - D[a2[u, v], u] a1[u, v]) /. v -> 0,
  {u, 0, ell}
];
omegaFinalPull =
  a1[u, v] (D[a2[u, v], u] + D[a2[u, v], v]) -
  a2[u, v] (D[a1[u, v], u] + D[a1[u, v], v]);
omegaSigma = -Integrate[
  omegaFinalPull /. v -> ell - u,
  {u, 0, ell}
];

zeroArrayQ[z_] := And @@ (
  TrueQ[Simplify[# == 0]] & /@ Flatten[z]
);

checks = {
  "metric inverse" -> TrueQ[Simplify[g . ginv == IdentityMatrix[4]]],
  "metric determinant" -> TrueQ[Det[g] == -1],
  "Hodge map" -> zeroArrayQ[sf - sfExpected],
  "Hodge squared" -> zeroArrayQ[hodge[sf] + f],
  "Maxwell components" -> zeroArrayQ[maxeq - maxExpected],
  "Bianchi components" -> zeroArrayQ[bianchiList - bianchiExpected],
  "Nplus theta pullback" -> TrueQ[
    Simplify[thetaPlus == ee dav + pv1 dax + pv2 day]
  ],
  "Nminus theta pullback" -> TrueQ[
    Simplify[thetaMinus == ee dau - pu1 dax - pu2 day]
  ],
  "gauge exactness" -> zeroArrayQ[gaugeResiduals],
  "Nplus dressing" -> TrueQ[Simplify[nplusDressResidual == 0]],
  "Nminus dressing" -> TrueQ[Simplify[nminusDressResidual == 0]],
  "corner moment map" -> zeroArrayQ[
    momentContraction - momentExpected
  ],
  "reduced corner potential" -> zeroArrayQ[
    thetaReduced - {0, 0, er}
  ],
  "reduced corner two-form" -> zeroArrayQ[
    omegaReduced - omegaReducedExpected
  ],
  "Cauchy versus null flux" -> TrueQ[
    Simplify[omegaSigma == omegaNplus + omegaNminus == -7 ell^3/3]
  ],
  "relative-frame associativity" -> TrueQ[
    Simplify[(c3 - c1) == (c2 - c1) + (c3 - c2)]
  ]
};

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL CHECKS PASSED"],
  Print["CHECKS FAILED"];
  Quit[1]
];
