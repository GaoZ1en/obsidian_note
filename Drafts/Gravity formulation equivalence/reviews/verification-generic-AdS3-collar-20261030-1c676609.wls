(* Standalone generic AdS3 collar-pullback verification.
   Run: wolframscript -file /absolute/path/to/this-file.wls
   Or: Get["/absolute/path/to/this-file.wls"] in a fresh Wolfram kernel.
   No packages or previously defined symbols are required.
   A uniquely named JSON report is exported next to this script.
   Inspect AllPassed, FailedExpression, and Messages, not only process success.

   Coordinates are dimensionless; the pullback below is g/ell^2.
   u=t+phi, v=t-phi, r=z^(-1)-z/4.
   F,H are arbitrary independent smooth one-variable functions with F'>0,H'>0.
   The target metric matrix is in the coordinate order {U,V,Z};
   a line-element term -dU dV has symmetric matrix entries gUV=gVU=-1/2.
*)

Module[
  {scriptPath, scriptDirectory, outputPath, report, exported, summary,
   f, h, u, v, z, p, q, alpha, beta, a, c, coordinates, jacobian,
   targetMetric, pullback, assumptions, schwarzF, schwarzH, definitions,
   checks, residuals, checkReport, messages, failed, allPassed, elapsed},

  scriptPath = $InputFileName;
  scriptDirectory = If[StringQ[scriptPath] && scriptPath != "",
    DirectoryName[ExpandFileName[scriptPath]], Directory[]];

  report = Block[{$Messages = {}, $MessageList = {}},
    elapsed = First[AbsoluteTiming[
      p = f'[u]; q = h'[v];
      alpha = f''[u]/p; beta = h''[v]/q;
      a = Sqrt[p q]; c = alpha beta/4;
      coordinates = {
        f[u] + z^2 p beta/2,
        h[v] + z^2 q alpha/2,
        z a (1 + c z^2)
      };
      jacobian = Table[D[coordinates[[i]], {u, v, z}[[j]]],
        {i, 3}, {j, 3}];
      targetMetric = {
        {-1/4, -1/(2 coordinates[[3]]^2) - coordinates[[3]]^2/32, 0},
        {-1/(2 coordinates[[3]]^2) - coordinates[[3]]^2/32, -1/4, 0},
        {0, 0, 1/coordinates[[3]]^2}
      };
      pullback = Transpose[jacobian].targetMetric.jacobian;
      assumptions = p > 0 && q > 0 && Element[{u, v, z}, Reals];
      schwarzF = f'''[u]/p - 3 alpha^2/2;
      schwarzH = h'''[v]/q - 3 beta^2/2;

      (* Each row: {label, matrix row, matrix column, z power, target}. *)
      definitions = {
        {"gzz coefficient z^-2", 3, 3, -2, 1},
        {"gzz coefficient z^-1", 3, 3, -1, 0},
        {"gzz coefficient z^0", 3, 3, 0, 0},
        {"gzz coefficient z^1", 3, 3, 1, 0},
        {"gzu coefficient z^-2", 3, 1, -2, 0},
        {"gzu coefficient z^-1", 3, 1, -1, 0},
        {"gzu coefficient z^0", 3, 1, 0, 0},
        {"gzv coefficient z^-2", 3, 2, -2, 0},
        {"gzv coefficient z^-1", 3, 2, -1, 0},
        {"gzv coefficient z^0", 3, 2, 0, 0},
        {"guu coefficient z^-2", 1, 1, -2, 0},
        {"guu coefficient z^-1", 1, 1, -1, 0},
        {"guu projective stress", 1, 1, 0, -p^2/4 - schwarzF/2},
        {"gvv coefficient z^-2", 2, 2, -2, 0},
        {"gvv coefficient z^-1", 2, 2, -1, 0},
        {"gvv projective stress", 2, 2, 0, -q^2/4 - schwarzH/2},
        {"guv coefficient z^-2", 1, 2, -2, -1/2},
        {"guv coefficient z^-1", 1, 2, -1, 0},
        {"guv coefficient z^0", 1, 2, 0, 0}
      };
      checks = Map[
        Function[item,
          Module[{coefficient, residual},
            coefficient = FullSimplify[
              SeriesCoefficient[pullback[[item[[2]], item[[3]]]],
                {z, 0, item[[4]]}], assumptions];
            residual = FullSimplify[coefficient - item[[5]], assumptions];
            <|
              "Label" -> item[[1]],
              "Coefficient" -> coefficient,
              "Expected" -> item[[5]],
              "Residual" -> residual,
              "Passed" -> SameQ[residual, 0]
            |>
          ]
        ], definitions];
      residuals = Lookup[checks, "Residual"];
      failed = !FreeQ[{checks, pullback}, $Failed | $Aborted];
      allPassed = And @@ Lookup[checks, "Passed"];
      checkReport = Map[
        Function[item, <|
          "Label" -> item["Label"],
          "CoefficientInputForm" -> ToString[item["Coefficient"], InputForm],
          "ExpectedInputForm" -> ToString[item["Expected"], InputForm],
          "ResidualInputForm" -> ToString[item["Residual"], InputForm],
          "Passed" -> item["Passed"]
        |>], checks];
    ]];
    messages = ToString[#, InputForm] & /@ $MessageList;
    <|
      "Verification" -> "Generic smooth AdS3 collar pullback with cubic normal correction",
      "WolframVersion" -> $Version,
      "DateTimeLocal" -> DateString[{"Year", "-", "Month", "-", "Day", "T", "Hour", ":", "Minute", ":", "Second"}],
      "TimeZoneHours" -> $TimeZone,
      "ElapsedSeconds" -> elapsed,
      "Script" -> scriptPath,
      "ScriptSHA256" -> If[StringQ[scriptPath] && FileExistsQ[scriptPath],
        IntegerString[FileHash[scriptPath, "SHA256"], 16, 64], "unavailable"],
      "Assumptions" -> "F'(u)>0, H'(v)>0; real u,v,z; all calculations local at z=0; metric is g/ell^2",
      "CoordinateMap" -> {
        "U=F(u)+z^2 F'(u) H''(v)/(2 H'(v))",
        "V=H(v)+z^2 H'(v) F''(u)/(2 F'(u))",
        "Z=z sqrt(F'(u)H'(v)) [1+z^2 F''(u)H''(v)/(4 F'(u)H'(v))]"
      },
      "TargetLineElement" -> "dZ^2/Z^2-dU dV/Z^2-(dU^2+dV^2)/4-Z^2 dU dV/16",
      "CheckCount" -> Length[checks],
      "Checks" -> checkReport,
      "AllPassed" -> allPassed,
      "FailedExpression" -> failed,
      "Messages" -> messages
    |>
  ];

  outputPath = FileNameJoin[{scriptDirectory,
    "verification-generic-AdS3-collar-results-" <>
    DateString[{"Year", "Month", "Day", "-", "Hour", "Minute", "Second"}] <>
    "-" <> StringTake[CreateUUID[], 8] <> ".json"}];
  exported = Export[outputPath, report, "RawJSON"];
  summary = <|
    "Export" -> exported,
    "CheckCount" -> report["CheckCount"],
    "AllPassed" -> report["AllPassed"],
    "FailedExpression" -> report["FailedExpression"],
    "Messages" -> report["Messages"],
    "ExportSucceeded" -> (StringQ[exported] && FileExistsQ[outputPath])
  |>;
  Print[ExportString[summary, "RawJSON"]];
  summary
]
