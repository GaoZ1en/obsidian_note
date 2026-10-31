(* Supplementary associated-line sign check. This does not assume a representation exists. *)
Module[{root,run,dir,report,exact,preview},
 root="/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo";
 run=RunProcess[{"mktemp","-d",FileNameJoin[{root,"sign-cas.XXXXXX"}]}];
 If[run["ExitCode"] =!= 0,Return[run]];
 dir=StringTrim[run["StandardOutput"]];
 report=Block[{$Messages={},$MessageList={}},Module[{s,eps,omega,principalCurvature,quantumTerm,lineCurvature,n,vals},
   omega=I s;
   principalCurvature=-omega;
   quantumTerm=omega I eps;
   lineCurvature=I eps principalCurvature;
   vals=<|"QuantumCentralTerm"->Expand[quantumTerm],
     "LineCurvature"->Expand[lineCurvature],
     "NegativeWeightQuantumResidual"->Expand[(quantumTerm /. eps->-1)-s],
     "PositiveWeightQuantumResidual"->Expand[(quantumTerm /. eps->1)+s],
     "NegativeWeightCurvatureResidual"->Expand[(lineCurvature /. eps->-1)+s],
     "PositiveWeightCurvatureResidual"->Expand[(lineCurvature /. eps->1)-s],
     "MinusIOmegaResidual"->Expand[(lineCurvature /. eps->-1)-(-I (-omega))],
     "FixedGroupPositiveWeightDualRoot"->Reduce[2 n==-1,n,Integers],
     "FixedGroupNegativeWeightDualRoot"->Reduce[2 n==1,n,Integers]|>;
   <|"Results"->vals,"FailedOrUnevaluated"->!FreeQ[vals,$Failed|$Aborted|_Reduce],"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
 exact=Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 preview=Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"Preview"->preview,"Exact"->exact,"FailedOrUnevaluated"->report["FailedOrUnevaluated"],"Messages"->report["Messages"]|>
]
