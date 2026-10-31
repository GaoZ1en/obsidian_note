(* Independent spectral-cutoff computation. Wolfram Engine 14.3.
   No source note is changed. Every call is self-contained. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
 Module[{cMat, tCoeff, logDetCoeffs, checks = <||>, tables, l, p, r,
   s, rr, aa, bb, def, exact, n, x, gen2, gen4, traces, output},
  cMat[len_, power_] := Table[
    If[Abs[i-j] <= power && EvenQ[power+i-j],
      Binomial[power, (power+i-j)/2]/2^power, 0],
    {i,len},{j,len}];
  tCoeff[len_, pow_, order_] := Table[Binomial[pow,j] cMat[len,j],{j,0,order}];
  logDetCoeffs[len_, pow_, order_] := Module[{xx, yy, vals, k, j},
    xx=tCoeff[len,pow,order]; yy={IdentityMatrix[len]};
    Do[AppendTo[yy,-Sum[xx[[k+1]].yy[[j-k+1]],{k,1,j}]],{j,1,order}];
    vals=Table[Expand[Sum[k Tr[xx[[k+1]].yy[[j-k+1]]],{k,1,j}]/j],{j,1,order}];
    vals];
  tables=Association@Flatten[Table[
    ToString[len]<>"/"<>ToString[pow] -> logDetCoeffs[len,pow,8],
    {len,{3,5,7}},{pow,{-1,1,3,5}}],1];
  Do[
    x=tables[ToString[len]<>"/"<>ToString[pow]];
    AssociateTo[checks, "second-"<>ToString[{len,pow}] ->
      TrueQ[x[[2]] == (pow^2-pow len)/4]];
    AssociateTo[checks, "fourth-"<>ToString[{len,pow}] ->
      TrueQ[x[[4]] == (5 pow^2-3 pow len)/32]];
    AssociateTo[checks, "sixth-"<>ToString[{len,pow}] ->
      TrueQ[x[[6]] == (11 pow^2-5 pow len)/96]];
    AssociateTo[checks, "odd-"<>ToString[{len,pow}] ->
      TrueQ[x[[{1,3,5,7}]] == {0,0,0,0}]],
    {len,{3,5,7}},{pow,{-1,1,3,5}}];
  s=4/5; rr=-1/3; n=3;
  aa=IdentityMatrix[n]+(3/5)cMat[n,1];
  bb=Table[rr^Abs[i-j]/s,{i,n},{j,n}];
  def=aa.bb-IdentityMatrix[n];
  AssociateTo[checks,"exact-defect" -> TrueQ[def=={{1/8,-1/24,1/72},{0,0,0},{1/72,-1/24,1/8}}]];
  AssociateTo[checks,"rank-defect" -> TrueQ[MatrixRank[def]==2]];
  AssociateTo[checks,"det-A" -> TrueQ[Det[aa]==41/50]];
  AssociateTo[checks,"det-B" -> TrueQ[Det[bb]==125/81]];
  AssociateTo[checks,"det-AB" -> TrueQ[Det[aa.bb]==205/162]];
  Do[
    aa=IdentityMatrix[len]+(3/5)cMat[len,1];
    bb=Table[rr^Abs[i-j]/s,{i,len},{j,len}];
    AssociateTo[checks,"toeplitz-A-"<>ToString[len] ->
      TrueQ[Det[aa]==(((1+s)/2)^(len+1)-((1-s)/2)^(len+1))/s]];
    AssociateTo[checks,"toeplitz-B-"<>ToString[len] ->
      TrueQ[Det[bb]==2^(len-1)/(s (1+s)^(len-1))]];
    AssociateTo[checks,"projection-Ber-"<>ToString[len] ->
      TrueQ[(Det[bb]/Det[aa])^3==((2/(1+s))^(2len)/(1-rr^(2len+2)))^3]],
    {len,{3,5,7,9}}];
  traces={3 l/8,3(l-1)/8,(3l-2)/8,(3l-4)/8,(3l-5)/8};
  gen4=Expand[3l Binomial[p,4]/8-3(l-1)p Binomial[p,3]/8-
     (3l-2)Binomial[p,2]^2/16+(3l-4)p^2 Binomial[p,2]/8-(3l-5)p^4/32];
  gen4=FullSimplify[FunctionExpand[gen4],Assumptions->Element[p,Integers]&&p>=4];
  AssociateTo[checks,"general-fourth-formula" -> TrueQ[Expand[gen4-(5p^2-3p l)/32]==0]];
  Do[
    x=6 tables[ToString[len]<>"/-1"]-(9/2)tables[ToString[len]<>"/1"];
    AssociateTo[checks,"joint-from-matrices-"<>ToString[len] -> TrueQ[
      x[[{2,4,6}]]=={(21len+3)/8,(63len+15)/64,(35len+11)/64}]];
    x=3 tables[ToString[len]<>"/-1"]-(3/2)tables[ToString[len]<>"/5"];
    AssociateTo[checks,"target-from-matrices-"<>ToString[len] -> TrueQ[
      x[[{2,4,6}]]=={(21len-69)/8,(63len-345)/64,(35len-253)/64}]];
    x=3 tables[ToString[len]<>"/-1"]-(9/2)tables[ToString[len]<>"/1"]+
      (3/2)tables[ToString[len]<>"/5"];
    AssociateTo[checks,"ratio-from-matrices-"<>ToString[len] -> TrueQ[x[[{2,4,6}]]=={9,45/8,33/8}]];
    x=9tables[ToString[len]<>"/1"]-(9/2)3tables[ToString[len]<>"/1"];
    AssociateTo[checks,"connection-gaussian-change-"<>ToString[len] -> TrueQ[
      x==-(9/2)tables[ToString[len]<>"/1"]]],
    {len,{3,5,7}}];
  output=<|
    "Conventions"->"T_p=P_N (1+eps cos x1)^p P_N; l=2N+1; transverse multiplicity m=l^2; all determinant tables below per one x1 chain.",
    "SeriesCoefficients1Through8"->tables,
    "ExactExampleN1Eps3Over5"-><|"A"->(IdentityMatrix[3]+(3/5)cMat[3,1]),
      "B"->Table[rr^Abs[i-j]/s,{i,3},{j,3}],"ABMinusI"->def,
      "DetA"->41/50,"DetB"->125/81,"DetAB"->205/162|>,
    "GeneralSecond"->(p^2-p l)/4,
    "GeneralFourth"->gen4,
    "JointGeneratorConnectionFirstLogCoefficients246"->{(21l+3)/8,(63l+15)/64,(35l+11)/64},
    "DynamicTargetLogCoefficients246"->{(21l-69)/8,(63l-345)/64,(35l-253)/64},
    "JointOverTargetLogCoefficients246"->{9,45/8,33/8},
    "Checks"->checks,"CheckCount"->Length[checks],
    "AllChecksTrue"->And@@Values[checks],
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>;
  output
 ]];
home=Environment["DSH_HOME"];
If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
root=FileNameJoin[{home,"research-results","kernel-exports"}];
If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"spectral-independent-wolfram.XXXXXX"}]}];
If[tmp["ExitCode"] =!= 0, Print[tmp];Abort[]];
dir=StringTrim[tmp["StandardOutput"]];
Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
Export[FileNameJoin[{dir,"result.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
{dir,report["AllChecksTrue"],report["CheckCount"],report["Messages"]}
