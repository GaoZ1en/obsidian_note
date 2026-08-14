Print["fixture Print before ClearAll"];
Echo[<|"source" -> "fixture", "stage" -> 1|>, "fixture Echo"];
WriteString[$Output, "fixture raw stdout before ClearAll\n"];

ClearAll["Global`*"];

Print["fixture Print after ClearAll"];
Echo[Range[3], "fixture Echo after ClearAll"];
WriteString[$Output, "fixture raw stdout after ClearAll\n"];

DefManifold[MNoisyFixture, 4, {aNoisy, bNoisy, cNoisy, dNoisy}];
DefTensor[
  noisyTensor[-aNoisy, -bNoisy, -cNoisy, -dNoisy],
  MNoisyFixture,
  RiemannSymmetric[{-aNoisy, -bNoisy, -cNoisy, -dNoisy}]
];

noisyCanonicalResidual = ToCanonical[
  noisyTensor[-aNoisy, -bNoisy, -cNoisy, -dNoisy] -
    noisyTensor[-cNoisy, -dNoisy, -aNoisy, -bNoisy]
];

<|
  "canonicalResidual" -> noisyCanonicalResidual,
  "matrix" -> Table[i + 10 j, {i, 0, 3}, {j, 0, 3}],
  "unicode" -> StringJoin[
    "xAct MCP: ",
    FromCharacterCode[{27979, 35797, 32, 945, 946, 947, 32, 8855}, "Unicode"]
  ]
|>
