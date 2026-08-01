ClearAll["Global`*"];

assembleStiffness[edgeLengths_List] := Module[
  {n = Length[edgeLengths], matrix, left, right},
  matrix = ConstantArray[0, {n, n}];
  Do[
    left = edge;
    right = Mod[edge, n] + 1;
    matrix[[left, left]] += 1/edgeLengths[[edge]];
    matrix[[right, right]] += 1/edgeLengths[[edge]];
    matrix[[left, right]] -= 1/edgeLengths[[edge]];
    matrix[[right, left]] -= 1/edgeLengths[[edge]],
    {edge, 1, n}
  ];
  matrix
];

assembleConsistentMass[edgeLengths_List] := Module[
  {n = Length[edgeLengths], matrix, left, right},
  matrix = ConstantArray[0, {n, n}];
  Do[
    left = edge;
    right = Mod[edge, n] + 1;
    matrix[[left, left]] += edgeLengths[[edge]]/3;
    matrix[[right, right]] += edgeLengths[[edge]]/3;
    matrix[[left, right]] += edgeLengths[[edge]]/6;
    matrix[[right, left]] += edgeLengths[[edge]]/6,
    {edge, 1, n}
  ];
  matrix
];

edgeLengths = {h1, h2, h3, h4};
dualWidths = Table[
  (edgeLengths[[Mod[j - 2, 4] + 1]] + edgeLengths[[j]])/2,
  {j, 1, 4}
];
stiffness = assembleStiffness[edgeLengths];
consistentMass = assembleConsistentMass[edgeLengths];
inverseLumpedSquareRoot = DiagonalMatrix[1/Sqrt[dualWidths]];
canonicalMatrix =
  mass^2 IdentityMatrix[4]
    + inverseLumpedSquareRoot.stiffness.inverseLumpedSquareRoot;
constantMode = Sqrt[dualWidths];

assumptions = And[
  And @@ Thread[edgeLengths > 0],
  mass > 0,
  cutLength > 0,
  cellWidth > 0
];

stiffnessNullResidual = FullSimplify[
  stiffness.ConstantArray[1, 4],
  assumptions
];

consistentMassRowResidual = FullSimplify[
  consistentMass.ConstantArray[1, 4] - dualWidths,
  assumptions
];

constantModeResidual = FullSimplify[
  canonicalMatrix.constantMode - mass^2 constantMode,
  assumptions
];

constantNormResidual = FullSimplify[
  constantMode.constantMode - Total[edgeLengths],
  assumptions
];

dirichletEdgeResidual = FullSimplify[
  (fieldRight - fieldLeft)^2/(2 cutLength)
    - (
      (fieldLeft^2 + fieldRight^2)/(2 cutLength)
        - fieldLeft fieldRight/cutLength
    ),
  assumptions
];

neumannEdgeResidual = FullSimplify[
  (fieldRight - fieldLeft)^2/(2 cutLength)
    - (fieldRight - fieldLeft)^2/(2 cutLength),
  assumptions
];

leftTest[x_] := a0 + a1 x;
rightTest[x_] := b0 + b1 x;
affineSmearingIdentityResidual = FullSimplify[
  Integrate[leftTest[x] rightTest[x], {x, 0, cellWidth}]
    - Integrate[leftTest[x], {x, 0, cellWidth}]
      Integrate[rightTest[x], {x, 0, cellWidth}]/cellWidth
    - 1/(2 cellWidth) Integrate[
      (leftTest[x] - leftTest[y]) (rightTest[x] - rightTest[y]),
      {x, 0, cellWidth},
      {y, 0, cellWidth}
    ],
  assumptions
];

numUniformSites = 5;
uniformStiffness = Table[
  (
    2 KroneckerDelta[row, column]
      - KroneckerDelta[Mod[row, numUniformSites] + 1, column]
      - KroneckerDelta[Mod[row - 2, numUniformSites] + 1, column]
  )/spacing^2,
  {row, 1, numUniformSites},
  {column, 1, numUniformSites}
];
uniformCharacteristic = Factor[
  Det[
    spectralParameter IdentityMatrix[numUniformSites]
      - (mass^2 IdentityMatrix[numUniformSites] + uniformStiffness)
  ]
];
expectedUniformCharacteristic = Factor[
  (spectralParameter - mass^2)
    (spectralParameter - mass^2 - 4 Sin[Pi/5]^2/spacing^2)^2
    (spectralParameter - mass^2 - 4 Sin[2 Pi/5]^2/spacing^2)^2
];
uniformCharacteristicResidual = FullSimplify[
  uniformCharacteristic - expectedUniformCharacteristic,
  spacing > 0 && mass > 0
];

results = <|
  "StiffnessNullResidual" -> stiffnessNullResidual,
  "ConsistentMassRowResidual" -> consistentMassRowResidual,
  "ConstantModeResidual" -> constantModeResidual,
  "ConstantNormResidual" -> constantNormResidual,
  "DirichletEdgeResidual" -> dirichletEdgeResidual,
  "NeumannEdgeResidual" -> neumannEdgeResidual,
  "AffineSmearingIdentityResidual" -> affineSmearingIdentityResidual,
  "UniformCharacteristicResidual" -> uniformCharacteristicResidual
|>;

Print[results];

allResiduals = Flatten[Values[results]];
If[
  !And @@ (TrueQ[FullSimplify[# == 0, assumptions]] & /@ allResiduals),
  Exit[1]
];
