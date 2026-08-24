(* Exact checks for one arbitrary-cut port Galerkin system. *)

ClearAll["Global`*"];

aR[ell_, n_] := (-1)^(n + 1) Sqrt[2 ell]/(n Pi);
kMode[ell_, n_] := n Pi/ell;

singleCutMatrix = {
  {Sin[k ell1], 0, -1},
  {0, Sin[k ell2], -1},
  {Cos[k ell1], Cos[k ell2], 0}
};

spectrumDeterminantCheck = FullSimplify[
  Det[singleCutMatrix] == Sin[k (ell1 + ell2)],
  Assumptions -> {k > 0, ell1 > 0, ell2 > 0}
];

liftingChecks = Table[
  FullSimplify[
    Integrate[Sqrt[2/ell] Sin[n Pi s/ell] s/ell, {s, 0, ell}]
      == aR[ell, n],
    Assumptions -> {ell > 0, Element[n, Integers], n > 0}
  ],
  {n, 1, 8}
];

ellValues = {2/3, 5/4};
nValues = {3, 4};
massSquared = 3/2;

dVector = Join[
  Table[aR[ellValues[[1]], n], {n, 1, nValues[[1]]}],
  Table[aR[ellValues[[2]], n], {n, 1, nValues[[2]]}]
];

omegaSquared = DiagonalMatrix@Join[
  Table[kMode[ellValues[[1]], n]^2 + massSquared, {n, 1, nValues[[1]]}],
  Table[kMode[ellValues[[2]], n]^2 + massSquared, {n, 1, nValues[[2]]}]
];

hPort = Total[ellValues]/3;
gPort = Total[1/ellValues];
totalModes = Total[nValues];

mPort = ArrayFlatten[{
  {IdentityMatrix[totalModes], Transpose[{dVector}]},
  {{dVector}, {{hPort}}}
}];

kPort = ArrayFlatten[{
  {omegaSquared, massSquared Transpose[{dVector}]},
  {massSquared {dVector}, {{gPort + massSquared hPort}}}
}];

rhoExpected = Sum[
  2 ellValues[[j]]/Pi^2
    (Pi^2/6 - Sum[1/n^2, {n, 1, nValues[[j]]}]),
  {j, 1, 2}
];

rhoCheck = FullSimplify[hPort - dVector.dVector == rhoExpected];

schurTransform = ArrayFlatten[{
  {IdentityMatrix[totalModes], -Transpose[{dVector}]},
  {ConstantArray[0, {1, totalModes}], {{1}}}
}];

mSchur = FullSimplify[Transpose[schurTransform].mPort.schurTransform];
massSchurCheck = FullSimplify[
  mSchur == DiagonalMatrix[Join[ConstantArray[1, totalModes], {rhoExpected}]]
];

gVector = Join[
  Table[aR[ellValues[[1]], n] kMode[ellValues[[1]], n]^2,
    {n, 1, nValues[[1]]}],
  Table[aR[ellValues[[2]], n] kMode[ellValues[[2]], n]^2,
    {n, 1, nValues[[2]]}]
];

kSchur = FullSimplify[Transpose[schurTransform].kPort.schurTransform];
kBottomExpected = (
  Sum[(2 nValues[[j]] + 1)/ellValues[[j]], {j, 1, 2}] +
    massSquared rhoExpected
);

stiffnessSchurCheck = FullSimplify[
  kSchur[[1 ;; totalModes, totalModes + 1]] == -gVector
    && kSchur[[totalModes + 1, totalModes + 1]] == kBottomExpected
];

positivityCheck = FullSimplify[
  PositiveDefiniteMatrixQ[mPort] && PositiveDefiniteMatrixQ[kPort]
];

allChecks = {
  spectrumDeterminantCheck,
  And @@ liftingChecks,
  rhoCheck,
  massSchurCheck,
  stiffnessSchurCheck,
  positivityCheck
};

Print["SpectrumDeterminantCheck -> ", spectrumDeterminantCheck];
Print["LiftingChecks -> ", And @@ liftingChecks];
Print["ResidualInertiaCheck -> ", rhoCheck];
Print["MassSchurCheck -> ", massSchurCheck];
Print["StiffnessSchurCheck -> ", stiffnessSchurCheck];
Print["PositivityCheck -> ", positivityCheck];
Print["AllChecksPassed -> ", And @@ allChecks];

If[! TrueQ[And @@ allChecks], Exit[1]];
