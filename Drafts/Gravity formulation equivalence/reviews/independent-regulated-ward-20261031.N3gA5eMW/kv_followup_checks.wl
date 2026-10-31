(* New, separate follow-up; does not rerun the frozen finite BV sources.
   Algebra and homogeneous heat coefficient checks only.  The KV trace theorem
   and global pseudodifferential hypotheses remain analytic inputs. *)
ClearAll["Global`*"];
Module[{report, home, root, proc, out, p1, p2},
 report = Block[{$Messages = {}, $MessageList = {}},
   a = {{a11,a12},{a21,a22}}; hh = {{h11,h12},{h21,h22}}; rr = {{r11,r12},{r21,r22}};
   cm[x_,y_] := x.y-y.x;
   cOrdered = -Tr[cm[a,rr].hh]/2 + Tr[(cm[a,rr].a+cm[a.a,rr]).hh]/3;
   cCommutators = -Tr[rr.cm[hh,a]]/2 + Tr[rr.(cm[a.hh,a]+cm[hh,a.a])]/3;
   angular = Integrate[Sin[theta]^3 Cos[phi]^2,{theta,0,Pi},{phi,0,2 Pi}];
   radial = Integrate[Exp[-eps dd r^2],{r,0,Infinity},Assumptions -> eps>0 && dd>0];
   xx = {{0,1},{0,0}}; yy = Transpose[xx];
   rr2 = k1^2+k2^2+k3^2;
   aaSymbol = k1/rr2 xx; hhSymbol = k1/rr2 yy;
   deltaSymbol = rr2 DiagonalMatrix[{d1,d2}];
   flip = {k1->-k1,k2->-k2,k3->-k3};
   leading = FullSimplify[-vol/(2 Pi)^3*angular/2*((radial/.dd->d2)-(radial/.dd->d1)),
                 Assumptions->eps>0 && d1>0 && d2>0];
   leadingAt = FullSimplify[leading/.{d1->1,d2->4},Assumptions->eps>0];
   variableWeightLeading = -eps b vol/(4 Pi c eps)^(3/2);
   linearWheelLeading = 2 b vol/(4 Pi)^(3/2)*(c eps)^(-1/2);
   allowed[m_] := Table[If[OddQ[j-3-m],(j-3-m)/2,Nothing],{j,0,6}];
   checks=<|
     "complete commutator rewriting" -> (Expand[cOrdered-cCommutators]===0),
     "principal matrix commutator trace zero" -> (Expand[Tr[cm[hh,a]]]===0),
     "exact spherical angular coefficient" -> (angular===4 Pi/3),
     "exact Gaussian radial coefficient" -> (FullSimplify[radial-Sqrt[Pi]/(2 Sqrt[eps dd]),Assumptions->eps>0 && dd>0]===0),
     "order minus one symbols are odd" -> (Simplify[(aaSymbol/.flip)+aaSymbol]===ConstantArray[0,{2,2}] && Simplify[(hhSymbol/.flip)+hhSymbol]===ConstantArray[0,{2,2}]),
     "order two matrix heat symbol is even" -> (Simplify[(deltaSymbol/.flip)-deltaSymbol]===ConstantArray[0,{2,2}]),
     "nonscalar odd-class weight leading coefficient" -> (FullSimplify[leading+vol/(24 Pi^(3/2) Sqrt[eps])*(1/Sqrt[d2]-1/Sqrt[d1]),Assumptions->eps>0 && d1>0 && d2>0]===0),
     "nonscalar weight permits divergence" -> (FullSimplify[leadingAt-vol/(48 Pi^(3/2) Sqrt[eps]),Assumptions->eps>0]===0),
     "scalar weight leading coefficient vanishes" -> (FullSimplify[leading/.d2->d1,Assumptions->eps>0 && d1>0]===0),
     "varying scalar weight divergence is derivative of low wheel divergence" -> (FullSimplify[D[linearWheelLeading,c]-variableWeightLeading,Assumptions->eps>0 && c>0]===0),
     "order minus two allowed local powers" -> (allowed[-2]==={-1/2,1/2,3/2,5/2}),
     "order minus three allowed local powers" -> (allowed[-3]==={1/2,3/2,5/2}),
     "weight divergence has zero constant finite part" -> (SeriesCoefficient[(variableWeightLeading/.eps->u^2)//PowerExpand,{u,0,0}]===0)
   |>;
   <|"Kernel"->$Version,"Checks"->checks,"AllPassed"->And@@Values[checks],
     "FailedLabels"->Keys[Select[checks,Not[TrueQ[#]]&]],
     "ExactValues"-><|"CRewriteResidual"->Expand[cOrdered-cCommutators],"AngularIntegral"->angular,
       "RadialIntegral"->radial,"NonscalarWeightLeadingC"->leading,"NonscalarWeightLeadingCAtPoint"->leadingAt,
       "VariableWeightLeading"->FullSimplify[variableWeightLeading,Assumptions->eps>0 && c>0],
       "AllowedLocalPowersMinusTwo"->allowed[-2],"AllowedLocalPowersMinusThree"->allowed[-3]|>,
     "AnalyticInputsNotCASTheorems"->{"KV trace on odd-class operators in odd dimensions","uniform differentiable heat expansions","compact support/proper support and trace-class global remainders"},
     "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ];
 home=Environment["DSH_HOME"]; If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
 root=FileNameJoin[{home,"research-results","kernel-exports"}];
 If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
 proc=RunProcess[{"mktemp","-d",FileNameJoin[{root,"ward-kv-wolfram.XXXXXXXX"}]}];
 If[proc["ExitCode"]=!=0,Return[proc]];out=StringTrim[proc["StandardOutput"]];
 p1=Export[FileNameJoin[{out,"actual-output.wxf"}],report,"WXF"];
 p2=Export[FileNameJoin[{out,"actual-output.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"ResultPath"->p1,"PreviewPath"->p2,"AllPassed"->report["AllPassed"],"FailedLabels"->report["FailedLabels"],"Messages"->report["Messages"]|>
]
