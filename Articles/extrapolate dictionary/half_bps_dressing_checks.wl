(* Reproduce source, endpoint and source-response checks for the first
   gravitational dressing. Run in a fresh Mathematica/xAct core kernel.
   This runner reads the two adjacent check files and exports only to a new
   private evidence directory. No research note is overwritten. *)
Begin["AdS5DressingChecks`"];
ClearAll["AdS5DressingChecks`*"];
root=DirectoryName[$InputFileName];
source=Get[FileNameJoin[{root,"half_bps_dressing_source_checks.wl"}]];
endpoint=Get[FileNameJoin[{root,"half_bps_dressing_endpoint_checks.wl"}]];
probe=Block[{$MessageList={}},Module[
 {u,v,f,rr,jj,ut,vt,qmat,trace,dd,quu,qui,exact,pair,surface,kineticEndpoint,
  rf,dr,raw,radCases,samples,moments},
 f[x_]:=x^4 Exp[-x];
 rr=FullSimplify[(Integrate[v^5 Exp[-v],{v,0,u},Assumptions->u>0]+
    u^4 Integrate[v Exp[-v],{v,u,Infinity},Assumptions->u>0])/4,Assumptions->u>0];
 jj=FullSimplify[u^2 Integrate[v^5 Exp[-v],{v,0,u},Assumptions->u>0]/16-
    Integrate[v^7 Exp[-v],{v,0,u},Assumptions->u>0]/48+
    u^4 Integrate[v^3 Exp[-v],{v,u,Infinity},Assumptions->u>0]/16-
    u^6 Integrate[v Exp[-v],{v,u,Infinity},Assumptions->u>0]/48,Assumptions->u>0];
 ut=-rr/3;vt=2(rr+jj)/3;qmat=DiagonalMatrix[{vt,ut,ut,ut}];trace=Tr[qmat];
 dd[z_]:=-D[z,{u,2}]+3D[z,u]/u;
 qui=I u^3(u+1)Exp[-u];quu=-u^2 Exp[-u](u^2+2u+2);
 pair=Integrate[u^-3 f[u] vt,{u,0,Infinity}];
 surface=Limit[3u^-4(trace^2/2-Tr[qmat.qmat]),u->Infinity];
 kineticEndpoint=Limit[(Tr[qmat.D[qmat,u]]-trace D[trace,u])/(2u^3),u->Infinity];
 exact=<|"RadialRInverse"->Simplify[dd[rr]-f[u]],
  "RadialJInverse"->Simplify[dd[jj]-rr],
  "TransverseTangentEinstein"->Simplify[-2(dd[ut]+ut)-dd[vt]],
  "LongitudinalTangentEinstein"->Simplify[-3dd[ut]-f[u]],
  "MixedEinsteinConstraint"->Simplify[-3I D[ut,u]-qui],
  "RadialEinsteinConstraint"->Simplify[-3ut-3D[trace,u]/u-quu],
  "FullConservedSourceMixed"->Simplify[D[qui,u]-3qui/u+I f[u]],
  "FullConservedSourceRadial"->Simplify[D[quu,u]-2quu/u+I qui+f[u]/u],
  "ResponsePairing"->Simplify[pair-15],
  "TailU"->Limit[ut,u->Infinity]+10,
  "TailV"->Limit[vt-5u^2,u->Infinity]+50,
  "TailCompatibility"->Limit[vt/u^2+ut/2,u->Infinity],
  "KineticEndpoint"->kineticEndpoint,
  "NaiveIRSurface"->surface+75/2,
  "CompensatedAction"->Simplify[pair/2+surface+75/2-15/2]|>;
 (* Two finite BF external lines of equal momentum magnitude k=1. *)
 rf[a_,x_?NumericQ]:=x^2 If[x<a,BesselI[0,x]BesselK[0,a],BesselI[0,a]BesselK[0,x]];
 dr[a_,x_?NumericQ]:=If[x<a,(2x BesselI[0,x]+x^2 BesselI[1,x])BesselK[0,a],
    BesselI[0,a](2x BesselK[0,x]-x^2 BesselK[1,x])];
 raw[a_,b_,x_?NumericQ]:=x(-dr[a,x]dr[b,x]-rf[a,x]rf[b,x]+4rf[a,x]rf[b,x]/x^2);
 radCases={{1/2,1/2},{1/5,7/20}};
 samples=Table[Module[{a=ab[[1]],b=ab[[2]],num,pred,range},
   range=Join[{u,0},Sort[DeleteDuplicates[{a,b}]],{Infinity}];
   num=NIntegrate[raw[a,b,u],Evaluate[range],WorkingPrecision->40,AccuracyGoal->22,
     PrecisionGoal->22,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
   pred=N[-(a^4+b^4)BesselI[0,Min[a,b]]BesselK[0,Max[a,b]]/2,40];
   <|"Radii"->{a,b},"DirectStressMoment"->num,"PredictedSliceMoment"->pred,
     "Residual"->num-pred,"Within1e-18"->TrueQ[Abs[num-pred]<10^-18]|>],{ab,radCases}];
 moments={Integrate[u^4 BesselK[0,u]BesselK[1,u],{u,0,Infinity}],
   Integrate[u^5 BesselK[0,u]^2,{u,0,Infinity}],Integrate[u^5 BesselK[1,u]^2,{u,0,Infinity}]};
 AssociateTo[exact,"BoundaryEqualMagnitudeTail"->Simplify[4moments[[1]]-moments[[2]]-moments[[3]]]];
 <|"Units"->"Longitudinal probe: ell=kappa=p=1, per normalized Fourier pair; scalar moments k=1",
 "ExactResiduals"->exact,"AllExactResidualsZero"->And@@(TrueQ[#===0]&/@Flatten[Values[exact]]),
 "ProbeResponse"-><|"U"->ut,"V"->vt,"CompletedQui"->qui,"CompletedQuu"->quu,
   "Pairing"->pair,"RegularQuadraticAction"->pair/2,"NaiveRadialAction"->pair/2+surface,
   "IRCompensator"->-surface|>,
 "BesselMoments"->moments,"FiniteScalarTailChecks"->samples,
 "AllNumericsPassed"->And@@Lookup[samples,"Within1e-18"],
 "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]];
report=<|"SourceAndWard"->source,"EndpointAndShell"->endpoint,"ResponseAndScalarExamples"->probe,
 "AllChecksPassed"->TrueQ[source["AllChecksPassed"]&&endpoint["AllResidualsZero"]&&probe["AllExactResidualsZero"]&&probe["AllNumericsPassed"]],
 "Messages"->Join[source["Messages"],endpoint["Messages"],probe["Messages"]]|>;
finalResult=Module[{home=Environment["DSH_HOME"],dirroot,tmp,dir},
 If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
 dirroot=FileNameJoin[{home,"research-results","kernel-exports"}];
 If[!DirectoryQ[dirroot],CreateDirectory[dirroot,CreateIntermediateDirectories->True]];
 tmp=RunProcess[{"mktemp","-d",FileNameJoin[{dirroot,"dressing.XXXXXX"}]}];
 If[tmp["ExitCode"]!=0,Return[tmp]];dir=StringTrim[tmp["StandardOutput"]];
 Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"Directory"->dir,"AllChecksPassed"->report["AllChecksPassed"],"Messages"->report["Messages"]|>];
End[];
AdS5DressingChecks`finalResult
