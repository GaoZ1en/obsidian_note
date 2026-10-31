(* Runnable with xAct/xCoba installed and on $Path.
   Recommended tool: mcp__xact__xact_run, profile="components",
   code=Get[absolute path to this source].  Fresh process required. *)
Needs["xAct`xCoba`"];
Module[{root = DirectoryName[$InputFileName], run, dir, report, text, exported},
  run = RunProcess[{"mktemp", "-d", FileNameJoin[{root, "xact-return.XXXXXX"}]}];
  If[run["ExitCode"] =!= 0, Print[InputForm[run]]; Return[$Failed]];
  dir = StringTrim[run["StandardOutput"]];
  report = Block[{$MessageList = {}},
    DefManifold[Mthermal,3,{a,b,c,d,e,f}];
    DefChart[thermal,Mthermal,{0,1,2},{tt[],rr[],xx[]}];
    thermalMetric = CTensor[DiagonalMatrix[{1+rr[]^2,1/(1+rr[]^2),rr[]^2}],{-thermal,-thermal}];
    SetCMetric[thermalMetric,thermal,SignatureOfMetric->{3,0,0}];
    MetricCompute[thermalMetric,thermal,All];
    thermalCD = CovDOfMetric[thermalMetric];
    ricciComponents = ToValues[ComponentArray[Ricci[thermalCD][{-a,-thermal},{-b,-thermal}]]];
    einsteinResidual = FullSimplify[ricciComponents + 2 DiagonalMatrix[{1+rr[]^2,1/(1+rr[]^2),rr[]^2}], Assumptions -> rr[] > 0];
    scalarCurvature = FullSimplify[RicciScalar[thermalCD][],Assumptions -> rr[] > 0];
    <|"Engine"->$Version,"RicciComponents"->ricciComponents,
      "RicciPlus2g"->einsteinResidual,"ScalarCurvature"->scalarCurvature,
      "EinsteinResidualIsZero"->TrueQ[einsteinResidual==ConstantArray[0,{3,3}]],
      "ScalarCurvatureIsMinus6"->TrueQ[scalarCurvature==-6],
      "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
  ];
  exported=Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
  text=ToString[report,InputForm,PageWidth->110];
  Export[FileNameJoin[{dir,"actual-return.txt"}],text,"Text"];
  Print[InputForm[<|"Directory"->dir,"ExactExport"->exported,"Report"->report|>]];
  report
]
