(* Exact checks for three-region associative port gluing. *)

ClearAll["Global`*"];

aR[ell_, n_] := (-1)^(n + 1) Sqrt[2 ell]/(n Pi);
aL[ell_, n_] := Sqrt[2 ell]/(n Pi);
kMode[ell_, n_] := n Pi/ell;

shapeGramCheck = FullSimplify[
  {
    Integrate[(s/ell)^2, {s, 0, ell}],
    Integrate[(1 - s/ell)^2, {s, 0, ell}],
    Integrate[(s/ell) (1 - s/ell), {s, 0, ell}]
  } == {ell/3, ell/3, ell/6},
  Assumptions -> ell > 0
];

ellValues = {2/3, 5/4, 7/6};
nValues = {2, 3, 2};
massSquared = 3/2;
totalModes = Total[nValues];

dOverlap = Join[
  Table[{aR[ellValues[[1]], n], 0}, {n, 1, nValues[[1]]}],
  Table[{aL[ellValues[[2]], n], aR[ellValues[[2]], n]},
    {n, 1, nValues[[2]]}],
  Table[{0, aL[ellValues[[3]], n]}, {n, 1, nValues[[3]]}]
];

hPort = {
  {(ellValues[[1]] + ellValues[[2]])/3, ellValues[[2]]/6},
  {ellValues[[2]]/6, (ellValues[[2]] + ellValues[[3]])/3}
};

gPort = {
  {1/ellValues[[1]] + 1/ellValues[[2]], -1/ellValues[[2]]},
  {-1/ellValues[[2]], 1/ellValues[[2]] + 1/ellValues[[3]]}
};

omegaSquared = DiagonalMatrix@Join[
  Table[kMode[ellValues[[1]], n]^2 + massSquared, {n, 1, nValues[[1]]}],
  Table[kMode[ellValues[[2]], n]^2 + massSquared, {n, 1, nValues[[2]]}],
  Table[kMode[ellValues[[3]], n]^2 + massSquared, {n, 1, nValues[[3]]}]
];

(* Start before gluing with four independent regional endpoint histories
   {alpha, beta, gamma, delta}. *)
dOverlapUnglued = Join[
  Table[{aR[ellValues[[1]], n], 0, 0, 0},
    {n, 1, nValues[[1]]}],
  Table[{0, aL[ellValues[[2]], n], aR[ellValues[[2]], n], 0},
    {n, 1, nValues[[2]]}],
  Table[{0, 0, 0, aL[ellValues[[3]], n]},
    {n, 1, nValues[[3]]}]
];

hPortUnglued = {
  {ellValues[[1]]/3, 0, 0, 0},
  {0, ellValues[[2]]/3, ellValues[[2]]/6, 0},
  {0, ellValues[[2]]/6, ellValues[[2]]/3, 0},
  {0, 0, 0, ellValues[[3]]/3}
};

gPortUnglued = {
  {1/ellValues[[1]], 0, 0, 0},
  {0, 1/ellValues[[2]], -1/ellValues[[2]], 0},
  {0, -1/ellValues[[2]], 1/ellValues[[2]], 0},
  {0, 0, 0, 1/ellValues[[3]]}
};

mUnglued = ArrayFlatten[{
  {IdentityMatrix[totalModes], dOverlapUnglued},
  {Transpose[dOverlapUnglued], hPortUnglued}
}];

kUnglued = ArrayFlatten[{
  {omegaSquared, massSquared dOverlapUnglued},
  {massSquared Transpose[dOverlapUnglued],
    gPortUnglued + massSquared hPortUnglued}
}];

t1 = {
  {1, 0, 0},
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 1}
};
t2Given1 = {
  {1, 0},
  {0, 1},
  {0, 1}
};
t2 = {
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 1},
  {0, 0, 1}
};
t1Given2 = {
  {1, 0},
  {1, 0},
  {0, 1}
};

tLeft = t1.t2Given1;
tRight = t2.t1Given2;
sequentialEmbeddingCheck = FullSimplify[
  tLeft == tRight == {
    {1, 0},
    {1, 0},
    {0, 1},
    {0, 1}
  }
];

endpointResiduals = {fAlpha, fBeta, fGamma, fDelta};
fluxResidualCheck = FullSimplify[
  Transpose[tLeft].endpointResiduals
    == {fAlpha + fBeta, fGamma + fDelta}
];

embed[t_] := ArrayFlatten[{
  {IdentityMatrix[totalModes],
    ConstantArray[0, {totalModes, Length[First[t]]}]},
  {ConstantArray[0, {Length[t], totalModes}], t}
}];

e1 = embed[t1];
e2Given1 = embed[t2Given1];
e2 = embed[t2];
e1Given2 = embed[t1Given2];
eLeft = e1.e2Given1;
eRight = e2.e1Given2;

embeddingCompositionCheck = FullSimplify[eLeft == eRight];

mAfter1 = Transpose[e1].mUnglued.e1;
kAfter1 = Transpose[e1].kUnglued.e1;
mLeftSequential = Transpose[e2Given1].mAfter1.e2Given1;
kLeftSequential = Transpose[e2Given1].kAfter1.e2Given1;

mAfter2 = Transpose[e2].mUnglued.e2;
kAfter2 = Transpose[e2].kUnglued.e2;
mRightSequential = Transpose[e1Given2].mAfter2.e1Given2;
kRightSequential = Transpose[e1Given2].kAfter2.e1Given2;

massSequentialCheck = FullSimplify[
  mLeftSequential == mRightSequential
];
stiffnessSequentialCheck = FullSimplify[
  kLeftSequential == kRightSequential
];

mCanonical = ArrayFlatten[{
  {IdentityMatrix[totalModes], dOverlap},
  {Transpose[dOverlap], hPort}
}];

kCanonical = ArrayFlatten[{
  {omegaSquared, massSquared dOverlap},
  {massSquared Transpose[dOverlap], gPort + massSquared hPort}
}];

commonFinalMassCheck = FullSimplify[mLeftSequential == mCanonical];
commonFinalStiffnessCheck = FullSimplify[kLeftSequential == kCanonical];

rDiag[ell_, nMax_] :=
  ell/3 - Sum[2 ell/(n^2 Pi^2), {n, 1, nMax}];
rOff[ell_, nMax_] :=
  ell/6 - Sum[2 ell (-1)^(n + 1)/(n^2 Pi^2), {n, 1, nMax}];

expectedResidual = {
  {rDiag[ellValues[[1]], nValues[[1]]] +
    rDiag[ellValues[[2]], nValues[[2]]],
   rOff[ellValues[[2]], nValues[[2]]]},
  {rOff[ellValues[[2]], nValues[[2]]],
   rDiag[ellValues[[2]], nValues[[2]]] +
    rDiag[ellValues[[3]], nValues[[3]]]}
};

schurResidual = FullSimplify[hPort - Transpose[dOverlap].dOverlap];
schurResidualCheck = FullSimplify[schurResidual == expectedResidual];
residualPositiveCheck = And @@ Thread[FullSimplify[{
  schurResidual[[1, 1]], Det[schurResidual]
}] > 0];

schurTransform = ArrayFlatten[{
  {IdentityMatrix[totalModes], -dOverlap},
  {ConstantArray[0, {2, totalModes}], IdentityMatrix[2]}
}];

massSchurCheck = FullSimplify[
  Transpose[schurTransform].mCanonical.schurTransform
    == ArrayFlatten[{
      {IdentityMatrix[totalModes], ConstantArray[0, {totalModes, 2}]},
      {ConstantArray[0, {2, totalModes}], schurResidual}
    }]
];

idx1 = Range[1, nValues[[1]]];
idx2 = Range[nValues[[1]] + 1, nValues[[1]] + nValues[[2]]];
idx3 = Range[nValues[[1]] + nValues[[2]] + 1, totalModes];
idxQ1 = totalModes + 1;
idxQ2 = totalModes + 2;

orderLeft = Join[idx1, idx2, {idxQ1}, idx3, {idxQ2}];
orderRight = Join[idx1, idx2, idx3, {idxQ2, idxQ1}];
pLeft = IdentityMatrix[totalModes + 2][[orderLeft]];
pRight = IdentityMatrix[totalModes + 2][[orderRight]];

mLeft = pLeft.mCanonical.Transpose[pLeft];
kLeft = pLeft.kCanonical.Transpose[pLeft];
mRight = pRight.mCanonical.Transpose[pRight];
kRight = pRight.kCanonical.Transpose[pRight];

associator = pRight.Transpose[pLeft];
massAssociativityCheck = FullSimplify[
  mRight == associator.mLeft.Transpose[associator]
];
stiffnessAssociativityCheck = FullSimplify[
  kRight == associator.kLeft.Transpose[associator]
];

dim = totalModes + 2;
jMatrix = ArrayFlatten[{
  {ConstantArray[0, {dim, dim}], IdentityMatrix[dim]},
  {-IdentityMatrix[dim], ConstantArray[0, {dim, dim}]}
}];
phaseAssociator = ArrayFlatten[{
  {associator, ConstantArray[0, {dim, dim}]},
  {ConstantArray[0, {dim, dim}], associator}
}];

symplecticAssociativityCheck = FullSimplify[
  Transpose[phaseAssociator].jMatrix.phaseAssociator == jMatrix
];

hLeft = ArrayFlatten[{
  {kLeft, ConstantArray[0, {dim, dim}]},
  {ConstantArray[0, {dim, dim}], Inverse[mLeft]}
}];
hRight = ArrayFlatten[{
  {kRight, ConstantArray[0, {dim, dim}]},
  {ConstantArray[0, {dim, dim}], Inverse[mRight]}
}];

hamiltonianAssociativityCheck = FullSimplify[
  Transpose[phaseAssociator].hRight.phaseAssociator == hLeft
];

allChecks = {
  shapeGramCheck,
  sequentialEmbeddingCheck,
  fluxResidualCheck,
  embeddingCompositionCheck,
  massSequentialCheck,
  stiffnessSequentialCheck,
  commonFinalMassCheck,
  commonFinalStiffnessCheck,
  schurResidualCheck,
  residualPositiveCheck,
  massSchurCheck,
  massAssociativityCheck,
  stiffnessAssociativityCheck,
  symplecticAssociativityCheck,
  hamiltonianAssociativityCheck
};

Print["ShapeGramCheck -> ", shapeGramCheck];
Print["SequentialEmbeddingCheck -> ", sequentialEmbeddingCheck];
Print["FluxResidualCheck -> ", fluxResidualCheck];
Print["EmbeddingCompositionCheck -> ", embeddingCompositionCheck];
Print["MassSequentialCheck -> ", massSequentialCheck];
Print["StiffnessSequentialCheck -> ", stiffnessSequentialCheck];
Print["CommonFinalMassCheck -> ", commonFinalMassCheck];
Print["CommonFinalStiffnessCheck -> ", commonFinalStiffnessCheck];
Print["SchurResidualCheck -> ", schurResidualCheck];
Print["ResidualPositiveCheck -> ", residualPositiveCheck];
Print["MassSchurCheck -> ", massSchurCheck];
Print["MassAssociativityCheck -> ", massAssociativityCheck];
Print["StiffnessAssociativityCheck -> ", stiffnessAssociativityCheck];
Print["SymplecticAssociativityCheck -> ", symplecticAssociativityCheck];
Print["HamiltonianAssociativityCheck -> ", hamiltonianAssociativityCheck];
Print["AllChecksPassed -> ", And @@ allChecks];

If[! TrueQ[And @@ allChecks], Exit[1]];
