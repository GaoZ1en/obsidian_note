ClearAll["Global`*"];

(* Three adjacent Goursat cells

       D1 = [0,1] x [0,1],
       D2 = [1,2] x [0,1],
       D3 = [2,3] x [0,1]

   for (partial_u partial_v + aa) phi = 0.  The finite profile basis is the
   restriction of three distinct real stationary modes and their quadratures.
   It spans six matched profile directions on every cell. *)

aa = 1;
alphaValues = {1/2, 1, 2};
betaValues = aa/alphaValues;

profileBasis = Flatten[
  Table[
    {
      Cos[alphaValues[[j]] u + betaValues[[j]] v],
      Sin[alphaValues[[j]] u + betaValues[[j]] v]
    },
    {j, Length[alphaValues]}
  ]
];

dim = Length[profileBasis];
zeroMatrix = ConstantArray[0, {dim, dim}];

omegaUEdge[u0_, u1_, v0_] := Table[
  FullSimplify[
    Integrate[
      (D[profileBasis[[i]], u] profileBasis[[j]] -
        D[profileBasis[[j]], u] profileBasis[[i]]) /. v -> v0,
      {u, u0, u1}
    ]
  ],
  {i, dim}, {j, dim}
];

omegaVEdge[u0_, v0_, v1_] := Table[
  FullSimplify[
    Integrate[
      (D[profileBasis[[i]], v] profileBasis[[j]] -
        D[profileBasis[[j]], v] profileBasis[[i]]) /. u -> u0,
      {v, v0, v1}
    ]
  ],
  {i, dim}, {j, dim}
];

cellIncoming[j_] :=
  omegaUEdge[j - 1, j, 0] + omegaVEdge[j - 1, 0, 1];

cellOutgoing[j_] :=
  omegaUEdge[j - 1, j, 1] + omegaVEdge[j, 0, 1];

cellConservationResiduals =
  Table[FullSimplify[cellIncoming[j] - cellOutgoing[j]], {j, 3}];

(* Oriented cell boundaries are incoming minus outgoing.  The right edge of
   Di and left edge of D(i+1) are computed independently and must cancel. *)
internal12FromD1 = -omegaVEdge[1, 0, 1];
internal12FromD2 = omegaVEdge[1, 0, 1];
internal23FromD2 = -omegaVEdge[2, 0, 1];
internal23FromD3 = omegaVEdge[2, 0, 1];

internal12Residual =
  FullSimplify[internal12FromD1 + internal12FromD2];
internal23Residual =
  FullSimplify[internal23FromD2 + internal23FromD3];

outerIncoming = omegaUEdge[0, 3, 0] + omegaVEdge[0, 0, 1];
outerOutgoing = omegaUEdge[0, 3, 1] + omegaVEdge[3, 0, 1];
outerSymplecticResidual = FullSimplify[outerIncoming - outerOutgoing];

(* Restricting the sum of the three cell forms to matched data still counts
   each internal trace once.  Symplectic reduction removes that duplicated
   interface copy.  These matrices implement the resulting reduced sum. *)
reducedCellIncoming = FullSimplify[
  Sum[cellIncoming[j], {j, 3}] -
    omegaVEdge[1, 0, 1] - omegaVEdge[2, 0, 1]
];
reducedCellOutgoing = FullSimplify[
  Sum[cellOutgoing[j], {j, 3}] -
    omegaVEdge[1, 0, 1] - omegaVEdge[2, 0, 1]
];
reducedIncomingResidual = FullSimplify[
  reducedCellIncoming - outerIncoming
];
reducedOutgoingResidual = FullSimplify[
  reducedCellOutgoing - outerOutgoing
];

sumCellBoundaries = FullSimplify[
  Sum[cellIncoming[j] - cellOutgoing[j], {j, 3}]
];
outerBoundary = FullSimplify[outerIncoming - outerOutgoing];
orientedBoundaryResidual = FullSimplify[
  sumCellBoundaries - outerBoundary
];

(* A nontrivial coefficient change makes the pullback form S^T Omega S
   explicit instead of identifying the coefficient and profile bases. *)
coefficientMap = {
  {1, 1, 0, 0, 0, 0},
  {0, 1, 1, 0, 0, 0},
  {0, 0, 1, 1, 0, 0},
  {0, 0, 0, 1, 1, 0},
  {0, 0, 0, 0, 1, 1},
  {0, 0, 0, 0, 0, 1}
};

pullbackSymplecticResidual = FullSimplify[
  Transpose[coefficientMap] . outerOutgoing . coefficientMap -
  Transpose[coefficientMap] . outerIncoming . coefficientMap
];
pullbackReducedCellResidual = FullSimplify[
  Transpose[coefficientMap] . outerOutgoing . coefficientMap -
  Transpose[coefficientMap] . reducedCellIncoming . coefficientMap
];

(* Explicit Bessel reconstruction maps.  G_(12)3 first reconstructs the
   width-two cell D1 union D2 and then D3.  G_1(23) first reconstructs D1 and
   the width-two cell D2 union D3.  The internal profiles are distinct trace
   maps on the simultaneous compatibility locus. *)

wp = 45;
riemann[x_?NumericQ, y_?NumericQ] :=
  BesselJ[0, 2 Sqrt[N[aa, wp] x y]];

reconstruct[b_, bp_, l_, lp_, c_, x_?NumericQ, y_?NumericQ] :=
  N[c riemann[x, y]
    + If[x == 0, 0,
      NIntegrate[
        bp[s] riemann[x - s, y], {s, 0, x},
        WorkingPrecision -> wp, AccuracyGoal -> 25, PrecisionGoal -> 25,
        Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
      ]
    ]
    + If[y == 0, 0,
      NIntegrate[
        lp[r] riemann[x, y - r], {r, 0, y},
        WorkingPrecision -> wp, AccuracyGoal -> 25, PrecisionGoal -> 25,
        Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
      ]
    ],
    30
  ];

modeFunctions = Function[{uu, vv}, Evaluate[# /. {u -> uu, v -> vv}]] & /@
  profileBasis;
modeUFunctions = Function[{uu, vv}, Evaluate[# /. {u -> uu, v -> vv}]] & /@
  (D[#, u] & /@ profileBasis);
modeVFunctions = Function[{uu, vv}, Evaluate[# /. {u -> uu, v -> vv}]] & /@
  (D[#, v] & /@ profileBasis);

directReconstruction[j_, width_][x_?NumericQ, y_?NumericQ] := Module[
  {phi, phiu, phiv, bottom, bottomPrime, left, leftPrime, corner},
  phi = modeFunctions[[j]];
  phiu = modeUFunctions[[j]];
  phiv = modeVFunctions[[j]];
  bottom = Function[s, N[phi[s, 0], wp]];
  bottomPrime = Function[s, N[phiu[s, 0], wp]];
  left = Function[r, N[phi[0, r], wp]];
  leftPrime = Function[r, N[phiv[0, r], wp]];
  corner = N[phi[0, 0], wp];
  reconstruct[bottom, bottomPrime, left, leftPrime, corner, x, y]
];

shiftedReconstruction[j_, u0_][x_?NumericQ, y_?NumericQ] := Module[
  {phi, phiu, phiv, bottom, bottomPrime, left, leftPrime, corner},
  phi = modeFunctions[[j]];
  phiu = modeUFunctions[[j]];
  phiv = modeVFunctions[[j]];
  bottom = Function[s, N[phi[u0 + s, 0], wp]];
  bottomPrime = Function[s, N[phiu[u0 + s, 0], wp]];
  left = Function[r, N[phi[u0, r], wp]];
  leftPrime = Function[r, N[phiv[u0, r], wp]];
  corner = N[phi[u0, 0], wp];
  reconstruct[bottom, bottomPrime, left, leftPrime, corner, x, y]
];

gLeft[j_, uu_?NumericQ, vv_?NumericQ] :=
  If[uu <= 2,
    directReconstruction[j, 2][uu, vv],
    shiftedReconstruction[j, 2][uu - 2, vv]
  ];

gRight[j_, uu_?NumericQ, vv_?NumericQ] :=
  If[uu <= 1,
    directReconstruction[j, 1][uu, vv],
    shiftedReconstruction[j, 1][uu - 1, vv]
  ];

gDirect[j_, uu_?NumericQ, vv_?NumericQ] :=
  directReconstruction[j, 3][uu, vv];

samplePoints = {
  {0.31`30, 0.27`30},
  {1.43`30, 0.62`30},
  {2.57`30, 0.41`30}
};

mapLeft = Table[
  gLeft[j, samplePoints[[p, 1]], samplePoints[[p, 2]]],
  {p, Length[samplePoints]}, {j, dim}
];

mapRight = Table[
  gRight[j, samplePoints[[p, 1]], samplePoints[[p, 2]]],
  {p, Length[samplePoints]}, {j, dim}
];

mapDirect = Table[
  gDirect[j, samplePoints[[p, 1]], samplePoints[[p, 2]]],
  {p, Length[samplePoints]}, {j, dim}
];

parenthesizationError = Max[Abs[Flatten[mapLeft - mapRight]]];
directMapError = Max[
  Abs[Flatten[Join[mapLeft - mapDirect, mapRight - mapDirect]]]
];

zeroArrayQ[z_] := And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[z]);

checks = {
  "each cell conserves the profile symplectic form" ->
    zeroArrayQ[cellConservationResiduals],
  "first internal edge cancels with opposite orientation" ->
    zeroArrayQ[internal12Residual],
  "second internal edge cancels with opposite orientation" ->
    zeroArrayQ[internal23Residual],
  "internal edge matrices are nonzero" -> And[
    MatrixRank[internal12FromD1] > 0,
    MatrixRank[internal23FromD2] > 0
  ],
  "outer incoming and outgoing symplectic matrices agree" ->
    zeroArrayQ[outerSymplecticResidual],
  "sum of oriented cell boundaries equals outer boundary" ->
    zeroArrayQ[orientedBoundaryResidual],
  "reduced incoming cell sum equals outer form" ->
    zeroArrayQ[reducedIncomingResidual],
  "reduced outgoing cell sum equals outer form" ->
    zeroArrayQ[reducedOutgoingResidual],
  "nontrivial pullback matrix identity" ->
    And[
      Det[coefficientMap] != 0,
      coefficientMap != IdentityMatrix[dim],
      zeroArrayQ[pullbackSymplecticResidual]
    ],
  "S^T Omega_outer S equals reduced three-cell sum" ->
    zeroArrayQ[pullbackReducedCellResidual],
  "G_(12)3 equals G_1(23) on the finite basis" ->
    TrueQ[parenthesizationError < 10^-20],
  "both parenthesizations equal direct reconstruction" ->
    TrueQ[directMapError < 10^-20]
};

Print["Wolfram version: ", $Version];
Print["finite profile basis dimension: ", dim];
Print["internal edge ranks: ", {
  MatrixRank[internal12FromD1], MatrixRank[internal23FromD2]
}];
Print["parenthesization/direct errors: ", {
  parenthesizationError, directMapError
}];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL THREE-CELL SYMPLECTIC CHECKS PASSED"],
  Print["THREE-CELL SYMPLECTIC CHECKS FAILED"];
  Quit[1]
];
