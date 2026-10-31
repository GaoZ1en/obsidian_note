(* Fresh xAct/xCoba process. Checks a general smooth Weyl factor, not a special Fourier mode. *)
Needs["xAct`xCoba`"];
Module[{root=DirectoryName[$InputFileName],run,dir,report,text},
 run=RunProcess[{"mktemp","-d",FileNameJoin[{root,"conformal-xact-return.XXXXXX"}]}];
 If[run["ExitCode"] =!= 0, Print[InputForm[run]]; Return[$Failed]];
 dir=StringTrim[run["StandardOutput"]];
 report=Block[{$MessageList={}},
  DefManifold[Mconf,2,{a,b,c,d,e,f}];
  DefChart[conf,Mconf,{0,1},{xx[],yy[]}];
  DefScalarFunction[sigma];
  DefConstantSymbol[lam]; DefConstantSymbol[t0]; DefConstantSymbol[u0];
  sig=sigma[xx[],yy[]];
  confMetric=CTensor[Exp[2 sig] IdentityMatrix[2],{-conf,-conf}];
  SetCMetric[confMetric,conf,SignatureOfMetric->{2,0,0}];
  MetricCompute[confMetric,conf,All];
  confCD=CovDOfMetric[confMetric];
  grad={D[sig,xx[]],D[sig,yy[]]};
  hess=Table[D[sig,coords1,coords2],{coords1,{xx[],yy[]}},{coords2,{xx[],yy[]}}];
  aa=hess-Outer[Times,grad,grad]+(grad.grad) IdentityMatrix[2]/2-Tr[hess] IdentityMatrix[2];
  stress=CTensor[{{t0,u0},{u0,-t0}}-lam aa/2,{-conf,-conf}];
  scalarCurvature=FullSimplify[RicciScalar[confCD][]];
  trace=FullSimplify[ToValues[confMetric[a,b] stress[-a,-b]]];
  divergence=FullSimplify[ToValues[ComponentArray[ToBasis[conf][confMetric[a,c] confCD[-c][stress[-a,-b]]]]]];
  checks=<|
   "WeylCurvatureResidual"->FullSimplify[scalarCurvature+2 Exp[-2 sig] Tr[hess]],
   "StressTraceAnomalyResidual"->FullSimplify[trace+lam scalarCurvature/4],
   "StressConservationResidual"->divergence
  |>;
  <|"Engine"->System`$Version,"ScalarCurvature"->scalarCurvature,
    "StressTrace"->trace,"Checks"->checks,
    "AllResidualsZero"->And@@(TrueQ[FullSimplify[#==0]]& /@ Flatten[Values[checks]]),
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ];
 Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 text=ToString[report,InputForm,PageWidth->110];
 Export[FileNameJoin[{dir,"actual-return.txt"}],text,"Text"];
 Print[InputForm[<|"Directory"->dir,"Report"->report|>]];
 report
]
