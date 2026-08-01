BeginPackage["SurfaceChargesCompat`"];

LoadSurfaceChargesCompat::usage =
  "LoadSurfaceChargesCompat[] loads the bundled RG&TC 3.8.9 source and " <>
  "Geoffrey Compere's SurfaceCharges v1.00 notebook with compatibility " <>
  "patches for current Mathematica kernels.";

SurfaceChargesCompatibilityReport::usage =
  "SurfaceChargesCompatibilityReport[] reports the loaded versions and " <>
  "the compatibility substitutions applied by LoadSurfaceChargesCompat.";

LoadSurfaceChargesCompat::nofile = "Required upstream file does not exist: `1`.";
LoadSurfaceChargesCompat::rgtcpatch =
  "The expected RG&TC initialization block was found `1` times, not once.";
LoadSurfaceChargesCompat::load =
  "Compatibility loading did not define all expected public procedures.";

Begin["`Private`"];

$packageDirectory = DirectoryName[$InputFileName];
$defaultRGTCPath =
  FileNameJoin[{$packageDirectory, "upstream", "RGTC", "EDCRGTCcode.m"}];
$defaultSurfaceChargesPath =
  FileNameJoin[{$packageDirectory, "upstream", "SurfaceChargesCode.nb"}];
$loaded = False;
$loadReport = <||>;

$destructiveRGTCInitialization =
  "Unprotect[\"Global`*\"];ClearAll[\"Global`*\"];Remove[\"Global`*\"];" <>
  "Unprotect[$];ClearAll[Wedge,K,$];Protect[$];Unprotect[In,Out];" <>
  "Clear[In,Out];Protect[In,Out];$Line=0;$RecursionLimit=256;" <>
  "$IterationLimit=4096;";

$safeRGTCInitialization =
  "Unprotect[Wedge,K,$];ClearAll[Wedge,K,$];Protect[$];";

$exactClassifyPattern =
  RegularExpression["(?<![A-Za-z0-9$`])Classify(?![A-Za-z0-9$`])"];

$expectedProcedures = {
  Global`ChargesEinstein,
  Global`ChargesEinsteinMaxwellScalar,
  Global`ChargesTMG,
  Global`ChargespForm,
  Global`KomarIntegral
};

loadReport[] := <|
  "Loaded" -> TrueQ[$loaded],
  "MathematicaVersion" -> $Version,
  "RGTCVersion" ->
    If[ValueQ[Global`$RGTCversion], Global`$RGTCversion, Missing["NotLoaded"]],
  "SurfaceChargesVersion" -> "1.00",
  "MetricCompatibility" -> "Global`metric replaced by RG&TC Global`gdd",
  "CoordinateCompatibility" ->
    "Global`coord replaced by RG&TC Global`coordList",
  "SeriesDensityCompatibility" ->
    "Sqrt[signature detg] is simplified using current $Assumptions",
  "RenamedHelpers" -> {
    "RG&TC Classify -> RGTCClassify",
    "SurfaceCharges Commutator -> SurfaceChargesCommutator"
  },
  "SystemClassifyProtected" ->
    MemberQ[Attributes[System`Classify], Protected],
  "SystemCommutatorProtected" ->
    MemberQ[Attributes[System`Commutator], Protected],
  "DefinedProcedures" ->
    AssociationMap[Length[DownValues[#]] &, $expectedProcedures]
|>;

LoadSurfaceChargesCompat[] :=
  LoadSurfaceChargesCompat[$defaultRGTCPath, $defaultSurfaceChargesPath];

LoadSurfaceChargesCompat[
    rgtcPath_String,
    surfaceChargesPath_String
  ] := Module[
  {
    rgtcSource,
    patchedRGTCSource,
    surfaceChargeCells,
    patchedSurfaceChargeCells,
    initializationCount,
    classifyCount,
    densityFactorPatchCount,
    definitionsOK
  },
  If[TrueQ[$loaded], Return[$loadReport]];

  Do[
    If[!FileExistsQ[path],
      Message[LoadSurfaceChargesCompat::nofile, path];
      Return[$Failed]
    ],
    {path, {rgtcPath, surfaceChargesPath}}
  ];

  rgtcSource = Import[rgtcPath, "Text"];
  initializationCount =
    StringCount[rgtcSource, $destructiveRGTCInitialization];
  If[initializationCount =!= 1,
    Message[LoadSurfaceChargesCompat::rgtcpatch, initializationCount];
    Return[$Failed]
  ];
  classifyCount = StringCount[rgtcSource, $exactClassifyPattern];

  patchedRGTCSource = StringReplace[
    rgtcSource,
    {
      $destructiveRGTCInitialization -> $safeRGTCInitialization,
      $exactClassifyPattern -> "RGTCClassify"
    }
  ];

  Block[
    {$Context = "Global`", $ContextPath = {"Global`", "System`"}},
    ToExpression[patchedRGTCSource, InputForm]
  ];

  surfaceChargeCells = Block[
    {$Context = "Global`", $ContextPath = {"Global`", "System`"}},
    NotebookImport[surfaceChargesPath, "Input"]
  ];
  densityFactorPatchCount = Count[
    surfaceChargeCells,
    HoldPattern[Sqrt[sig_ Global`detg]],
    Infinity
  ];

  patchedSurfaceChargeCells = surfaceChargeCells
    /. HoldPattern[System`Commutator] :> Global`SurfaceChargesCommutator
    /. HoldPattern[Global`metric] :> Global`gdd
    /. HoldPattern[Global`coord] :> Global`coordList
    /. HoldPattern[Sqrt[sig_ Global`detg]] :>
      Global`SurfaceChargesDensityFactor[sig];

  Block[
    {$Context = "Global`", $ContextPath = {"Global`", "System`"}},
    Scan[ReleaseHold, patchedSurfaceChargeCells]
  ];

  Global`SurfaceChargesDensityFactor[signature_] := If[
    TrueQ[$Assumptions === True],
    Sqrt[signature Global`detg],
    FullSimplify[
      Sqrt[signature Global`detg],
      Assumptions -> $Assumptions
    ]
  ];

  definitionsOK =
    And @@ (Length[DownValues[#]] > 0 & /@ $expectedProcedures);
  If[!TrueQ[definitionsOK],
    Message[LoadSurfaceChargesCompat::load];
    Return[$Failed]
  ];

  $loaded = True;
  $loadReport = Join[
    loadReport[],
    <|
      "RGTCInitializationPatchCount" -> initializationCount,
      "RGTCClassifyRenameCount" -> classifyCount,
      "SeriesDensityPatchCount" -> densityFactorPatchCount,
      "SurfaceChargesInputCellCount" -> Length[surfaceChargeCells],
      "RGTCSource" -> ExpandFileName[rgtcPath],
      "SurfaceChargesSource" -> ExpandFileName[surfaceChargesPath]
    |>
  ];
  $loadReport
];

SurfaceChargesCompatibilityReport[] :=
  If[TrueQ[$loaded], $loadReport, loadReport[]];

End[];
EndPackage[];
