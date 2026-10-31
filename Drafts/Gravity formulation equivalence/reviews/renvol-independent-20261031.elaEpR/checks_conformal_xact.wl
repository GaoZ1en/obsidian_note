(* Fresh xAct/xCoba process.  Uses a nonconstant polynomial Weyl factor;
   the arbitrary-smooth-factor identity is proved analytically in the report.
   This corrected source avoids ambiguous package symbols and performs
   ordinary coordinate differentiation before substituting chart scalars. *)
Needs["xAct`xCoba`"];
Module[{root=DirectoryName[$InputFileName],run,dir,report,text,
  sigOrdinary,sig,gradient,hessian,anomalyMatrix,curvatureValue,
  traceValue,divergenceValue,checks,Xcoord,Ycoord},
 run=RunProcess[{"mktemp","-d",FileNameJoin[{root,"conformal-xact-return.XXXXXX"}]}];
 If[run["ExitCode"] =!= 0, Print[InputForm[run]]; Return[$Failed]];
 dir=StringTrim[run["StandardOutput"]];
 report=Block[{$MessageList={}},
  DefManifold[ReviewMconf,2,{reviewa,reviewb,reviewc,reviewd,reviewe,reviewf}];
  DefChart[reviewConf,ReviewMconf,{0,1},{reviewX[],reviewY[]}];
  Scan[DefConstantSymbol,{reviewLam,reviewT,reviewU,reviewA,reviewB,reviewC,reviewD,reviewE}];
  sigOrdinary=reviewA Xcoord^2+reviewB Xcoord Ycoord+reviewC Ycoord^3+reviewD Xcoord+reviewE Ycoord^2;
  sig=sigOrdinary /. {Xcoord->reviewX[],Ycoord->reviewY[]};
  gradient={D[sigOrdinary,Xcoord],D[sigOrdinary,Ycoord]} /. {Xcoord->reviewX[],Ycoord->reviewY[]};
  hessian={{D[sigOrdinary,{Xcoord,2}],D[sigOrdinary,Xcoord,Ycoord]},
    {D[sigOrdinary,Xcoord,Ycoord],D[sigOrdinary,{Ycoord,2}]}} /. {Xcoord->reviewX[],Ycoord->reviewY[]};
  reviewConfMetric=CTensor[Exp[2 sig] IdentityMatrix[2],{-reviewConf,-reviewConf}];
  SetCMetric[reviewConfMetric,reviewConf,SignatureOfMetric->{2,0,0}];
  MetricCompute[reviewConfMetric,reviewConf,All];
  reviewConfCD=CovDOfMetric[reviewConfMetric];
  anomalyMatrix=hessian-Outer[Times,gradient,gradient]+(gradient.gradient) IdentityMatrix[2]/2-Tr[hessian] IdentityMatrix[2];
  reviewStress=CTensor[{{reviewT,reviewU},{reviewU,-reviewT}}-reviewLam anomalyMatrix/2,{-reviewConf,-reviewConf}];
  curvatureValue=FullSimplify[RicciScalar[reviewConfCD][]];
  traceValue=FullSimplify[ToValues[reviewConfMetric[reviewa,reviewb] reviewStress[-reviewa,-reviewb]]];
  divergenceValue=FullSimplify[ToValues[ComponentArray[ToBasis[reviewConf][reviewConfMetric[reviewa,reviewc] reviewConfCD[-reviewc][reviewStress[-reviewa,-reviewb]]]]]];
  checks=<|
   "WeylCurvatureResidual"->FullSimplify[curvatureValue+2 Exp[-2 sig] Tr[hessian]],
   "StressTraceAnomalyResidual"->FullSimplify[traceValue+reviewLam curvatureValue/4],
   "StressConservationResidual"->divergenceValue
  |>;
  <|"Engine"->System`$Version,"WeylFactor"->sig,"ScalarCurvature"->curvatureValue,
    "StressTrace"->traceValue,"Checks"->checks,
    "AllResidualsZero"->And@@(TrueQ[FullSimplify[#==0]]& /@ Flatten[Values[checks]]),
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ];
 Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 text=ToString[report,InputForm,PageWidth->110];
 Export[FileNameJoin[{dir,"actual-return.txt"}],text,"Text"];
 Print[InputForm[<|"Directory"->dir,"Report"->report|>]];
 report
]
