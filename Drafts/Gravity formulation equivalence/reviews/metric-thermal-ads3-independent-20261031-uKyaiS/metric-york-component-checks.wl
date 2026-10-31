(* Explicit coordinate verification in a fresh xAct/Wolfram kernel.
   Poincare H3: ds^2=(dz^2+dx^2+dy^2)/z^2, z>0. We intentionally implement
   all covariant derivatives transparently in components, not via assumed
   curvature identities. Arbitrary scalar and vector-potential functions. *)
Module[{dir, outs, report, ex1, ex2},
 dir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS";
 outs = FileNameJoin[{dir, #}] & /@ {"metric-york-component-diagnostics.wxf", "metric-york-component-diagnostics.txt"};
 If[!DirectoryQ[dir] || AnyTrue[outs, FileExistsQ], Return["REFUSED: target exists or directory absent"]];
 report = Block[{$Messages = {}, $MessageList = {}}, Module[
  {xx, gg, gi, gam, ric, covD, lap, grad, scalarD, symD, divVec, divTensor,
   fs, av, vv, vt, hv, gauge, gaugeResidual, scalarResidual, tensorResidual,
   vectorResidual, ricResidual, tests, all},
  xx = {zz, xx1, xx2}; gg = IdentityMatrix[3]/zz^2; gi = Inverse[gg];
  gam = Table[FullSimplify[Sum[gi[[i,l]] (D[gg[[l,k]],xx[[j]]] + D[gg[[l,j]],xx[[k]]] - D[gg[[j,k]],xx[[l]]])/2,{l,3}]],{i,3},{j,3},{k,3}];
  ric = Table[FullSimplify[Sum[D[gam[[k,i,j]],xx[[k]]] - D[gam[[k,i,k]],xx[[j]]] +
    Sum[gam[[k,k,l]] gam[[l,i,j]] - gam[[k,j,l]] gam[[l,i,k]],{l,3}],{k,3}]],{i,3},{j,3}];
  covD[arr_] := Module[{rk = ArrayDepth[arr], comp},
    comp[ind__] := Module[{ls={ind}, c, tail}, c=First[ls]; tail=Rest[ls];
      D[Extract[arr,tail],xx[[c]]] - Sum[gam[[b,c,tail[[pos]]]] Extract[arr,ReplacePart[tail,pos->b]],{pos,rk},{b,3}]];
    Simplify[Array[comp,ConstantArray[3,rk+1]], Assumptions -> zz>0]];
  lap[arr_] := Module[{dd=covD[covD[arr]]}, Simplify[zz^2 Sum[dd[[a,a]],{a,3}], Assumptions -> zz>0]];
  grad[sc_] := covD[sc];
  scalarD[sc_] := Simplify[covD[covD[sc]]-gg lap[sc]/3, Assumptions -> zz>0];
  symD[ve_] := Simplify[covD[ve]+Transpose[covD[ve]], Assumptions -> zz>0];
  divVec[ve_] := Simplify[zz^2 Tr[covD[ve]], Assumptions -> zz>0];
  divTensor[te_] := Module[{dt=covD[te]}, Simplify[Table[zz^2 Sum[dt[[a,a,b]],{a,3}],{b,3}], Assumptions -> zz>0]];
  fs=ff@@xx; av={aa1@@xx,aa2@@xx,aa3@@xx}; vv={vv1@@xx,vv2@@xx,vv3@@xx};
  (* vt_cov = z curl(A); sqrt(g) vt_contra = curl(A), hence fully general local divergence-free density. *)
  vt=zz Table[Sum[Signature[{i,j,k}] D[av[[k]],xx[[j]]],{j,3},{k,3}],{i,3}];
  hv=symD[vv];
  gauge=divTensor[hv]-grad[zz^2 Tr[hv]]/2;
  gaugeResidual=FullSimplify[gauge-(lap[vv]-2 vv), Assumptions -> zz>0];
  scalarResidual=FullSimplify[-lap[grad[fs]]+2 grad[fs]-grad[-lap[fs]+4 fs], Assumptions -> zz>0];
  tensorResidual=FullSimplify[-lap[scalarD[fs]]-2 scalarD[fs]-scalarD[-lap[fs]+4 fs], Assumptions -> zz>0];
  vectorResidual=FullSimplify[-lap[symD[vt]]-2 symD[vt]-symD[-lap[vt]+2 vt], Assumptions -> zz>0];
  ricResidual=FullSimplify[ric+2 gg,Assumptions -> zz>0];
  tests=<|"Ricci=-2g"->AllTrue[Flatten[ricResidual],#===0&],
    "DeDonderFPOperator"->AllTrue[Flatten[gaugeResidual],#===0&],
    "GradientIntertwining"->AllTrue[Flatten[scalarResidual],#===0&],
    "ScalarYorkIntertwining"->AllTrue[Flatten[tensorResidual],#===0&],
    "TransverseVectorDivergence"->TrueQ[divVec[vt]===0],
    "VectorYorkIntertwining"->AllTrue[Flatten[vectorResidual],#===0&]|>;
  all=<|"KernelVersion"->$Version,"Chart"->xx,"Assumptions"->"z>0, smooth arbitrary ff and vector potentials aa1,aa2,aa3; all arrays covariant",
    "Metric"->gg,"Christoffel"->gam,"Ricci"->ric,"RicciResidual"->ricResidual,
    "DeDonderFPGhostResidual"->gaugeResidual,"GradientIntertwiningResidual"->scalarResidual,
    "ScalarYorkIntertwiningResidual"->tensorResidual,"TransverseVectorDivergence"->divVec[vt],
    "VectorYorkIntertwiningResidual"->vectorResidual,"Tests"->tests,
    "AllTestsPassed"->AllTrue[Values[tests],TrueQ]|>;
  Join[all,<|"FailedOrAborted"->!FreeQ[all,$Failed|$Aborted],
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>]
 ]];
 ex1=Export[outs[[1]],report,"WXF"]; ex2=Export[outs[[2]],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"WXF"->ex1,"Text"->ex2,"AllTestsPassed"->report["AllTestsPassed"],"FailedOrAborted"->report["FailedOrAborted"],"Messages"->report["Messages"]|>
]
