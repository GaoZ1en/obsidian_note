(* Scalar/matrix normalization checks for the elliptic de Rham counterexample.
   The supplied heat coefficients and analytic operator/domain proof are separate. *)
report=Block[{$Messages={},$MessageList={}},Module[{p,lam,b,t,s,a0,a2,mat,dd,poisson0,poisson2,count,checks},
 mat={{4,p},{p,-1}}; dd=Sqrt[p^2+25/4];
 poisson0=FullSimplify[t/(2 Sqrt[Pi])/(4Pi)^(3/2) Integrate[s^(-3) Exp[-t^2/(4s)],{s,0,Infinity},Assumptions->t>0],t>0];
 poisson2=FullSimplify[t/(2 Sqrt[Pi])/(4Pi)^(3/2) Integrate[s^(-2) Exp[-t^2/(4s)],{s,0,Infinity},Assumptions->t>0],t>0];
 count=Coefficient[Normal[Series[Exp[b t](a0 poisson0+a2 poisson2),{t,0,0}]],t,0];
 checks=<|
  "Hermitian_block_characteristic"->Expand[Det[lam IdentityMatrix[2]-mat]-((lam-3/2)^2-(p^2+25/4))],
  "Schur_product"->Expand[Det[mat]+(p^2+4)],
  "positive_spectral_pair_product"->Simplify[(dd+3/2)(dd-3/2)-(p^2+4)],
  "subordination_leading"->Simplify[poisson0-1/(Pi^2 t^3)],
  "subordination_subleading"->Simplify[poisson2-1/(4Pi^2 t)],
  "generic_shift_count"->Expand[count-(a0 b^3/(6Pi^2)+a2 b/(4Pi^2))],
  "even_form_shifted_a2"->( (-1+3)-(25/4)(1+3)+23),
  "negative_spectral_count"->Simplify[(count/.{a0->4,a2->-23,b->3/2})+51/(8Pi^2)],
  "Log_minus_phase"->Simplify[-I Pi (count/.{a0->4,a2->-23,b->3/2})-I 51/(8Pi)]|>;
 <|"Residuals"->checks,"AllResidualsZero"->And@@(TrueQ[#==0]&/@Values[checks]),
   "NegativeCountPerRenormalizedVolume"->(count/.{a0->4,a2->-23,b->3/2}),
   "LogDetPhasePerRenormalizedVolume"->(-I Pi count/.{a0->4,a2->-23,b->3/2}),
   "Assumptions"->"Heat of L=Delta_even+25/4: rank a0=4, a2=-23. No L2 harmonic forms or removed zero modes; nonidentity Poisson heat has no constant. These analytic premises are not proved by this script.",
   "Failed"->!FreeQ[Values[checks],$Failed|$Aborted],
   "UnevaluatedComputations"->!FreeQ[Values[checks],_Integrate|_Series|_Det],
   "Messages"->(ToString[#,InputForm]&/@$MessageList),"KernelVersion"->$Version|>
]];
report=Join[report,<|"Source"->$InputFileName,"SourceSHA256"->FileHash[$InputFileName,"SHA256","HexString"]|>];
root=FileNameJoin[{If[StringQ[Environment["DSH_HOME"]]&&Environment["DSH_HOME"]!="",Environment["DSH_HOME"],FileNameJoin[{$HomeDirectory,".dsh"}]],"research-results","kernel-exports"}];
If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"geometric-cs-phase.XXXXXX"}]}];
If[tmp["ExitCode"]=!=0,Print[tmp];Abort[]];
dir=StringTrim[tmp["StandardOutput"]];
Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
<|"Preview"->FileNameJoin[{dir,"preview.txt"}],"Native"->FileNameJoin[{dir,"result.wxf"}],"AllResidualsZero"->report["AllResidualsZero"],"Failed"->report["Failed"],"Messages"->report["Messages"]|>
