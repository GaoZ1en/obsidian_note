Get[
  "/Users/koishi/Documents/Note/tools/surface-charges-compat/" <>
  "SurfaceChargesCompat.wl"
];

loadResult = SurfaceChargesCompat`LoadSurfaceChargesCompat[];
If[loadResult === $Failed,
  Print["FAIL: compatibility loader"];
  Quit[1]
];

g = {
  {-r^2 + 8 m, 0, -4 j},
  {0, 1/(r^2 - 8 m + 16 j^2/r^2), 0},
  {-4 j, 0, r^2}
};
x = {t, r, theta};
h = D[g, m] dm + D[g, j] dj;

RGtensors[g, x, {0, 0}];

qMass = FullSimplify[
  2 Pi ChargesEinstein[{1, 0, 0}, h, -1, {1, 2}],
  r > 0
];
qAngular = FullSimplify[
  2 Pi ChargesEinstein[{0, 0, -1}, h, -1, {1, 2}],
  r > 0
];
qTMGMass = FullSimplify[
  2 Pi ChargesTMG[
    {1, 0, 0},
    h,
    muParameter,
    {-1, 1},
    {1, 2}
  ],
  {r > 0, muParameter != 0}
];
qTMGAngular = FullSimplify[
  2 Pi ChargesTMG[
    {0, 0, -1},
    h,
    muParameter,
    {-1, 1},
    {1, 2}
  ],
  {r > 0, muParameter != 0}
];

residuals = FullSimplify[
  {
    qMass - dm,
    qAngular - dj,
    qTMGMass - (dm - dj/muParameter),
    qTMGAngular - (dj - dm/muParameter)
  },
  {r > 0, muParameter != 0}
];

result = <|
  "EinsteinMassVariation" -> qMass,
  "EinsteinAngularMomentumVariation" -> qAngular,
  "TMGMassVariation" -> qTMGMass,
  "TMGAngularMomentumVariation" -> qTMGAngular,
  "Residuals" -> residuals
|>;

Print[InputForm[result]];

If[residuals === {0, 0, 0, 0},
  Print["PASS: BTZ Einstein and TMG charges"];
  Quit[0],
  Print["FAIL: BTZ Einstein and TMG charges"];
  Quit[1]
];
