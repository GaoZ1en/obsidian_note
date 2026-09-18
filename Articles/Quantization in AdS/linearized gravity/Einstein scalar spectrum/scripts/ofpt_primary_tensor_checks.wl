(* xCoba supplies the AdS3 connection. Check the primary vector and tensor
   at arbitrary real E>2, including both lowering equations. *)
Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];
Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e}];
DefChart[ch,M,{0,1,2},{tt[],rr[],ph[]}];
DefMetric[-1,gg[-a,-b],CD];
MetricInBasis[gg,-ch,DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}]];
MetricCompute[gg,ch,All];
coords={t,r,ang};ff=1+r^2;
metric=DiagonalMatrix[{-ff,1/ff,r^2}];inv=Inverse[metric];
gam=Table[ToValues[Christoffel[CD,PDch][{ii,ch},{jj,-ch},{kk,-ch}]],
 {ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,rr[]->r,ph[]->ang};
$Assumptions=r>0&&ee>2&&Element[{t,ang},Reals];
simp[z_]:=FullSimplify[z,$Assumptions];
dv[q_]:=Table[D[q[[ii]],coords[[kk]]]-Sum[gam[[ll,kk,ii]]q[[ll]],{ll,3}],{kk,3},{ii,3}];
dq[q_]:=Table[D[q[[ii,jj]],coords[[kk]]]-Sum[
 gam[[ll,kk,ii]]q[[ll,jj]]+gam[[ll,kk,jj]]q[[ii,ll]],{ll,3}],{kk,3},{ii,3},{jj,3}];
boxv[q_]:=Module[{first=dv[q]},Table[Sum[inv[[kk,ll]](
 D[first[[ll,ii]],coords[[kk]]]-Sum[gam[[ss,kk,ll]]first[[ss,ii]]+
 gam[[ss,kk,ii]]first[[ll,ss]],{ss,3}]),{kk,3},{ll,3}],{ii,3}]];
boxq[q_]:=Module[{first=dq[q]},Table[Sum[inv[[kk,ll]](
 D[first[[ll,ii,jj]],coords[[kk]]]-Sum[gam[[ss,kk,ll]]first[[ss,ii,jj]]+
 gam[[ss,kk,ii]]first[[ll,ss,jj]]+gam[[ss,kk,jj]]first[[ll,ii,ss]],{ss,3}]),
 {kk,3},{ll,3}],{ii,3},{jj,3}]];
liev[v_,q_]:=Table[Sum[v[[kk]]D[q[[ii]],coords[[kk]]]+q[[kk]]D[v[[kk]],coords[[ii]]],{kk,3}],{ii,3}];
lieq[v_,q_]:=Table[Sum[v[[kk]]D[q[[ii,jj]],coords[[kk]]]+q[[kk,jj]]D[v[[kk]],coords[[ii]]]+
 q[[ii,kk]]D[v[[kk]],coords[[jj]]],{kk,3}],{ii,3},{jj,3}];
lower[sg_]:=Exp[I t-I sg ang]{I r/Sqrt[ff],Sqrt[ff],-I sg Sqrt[ff]/r}/2;
vv={1,I/(r ff),-1};
w1=Exp[-I ee t+I ang]r ff^(-ee/2)vv;
w2=Exp[-I ee t+2I ang]r^2 ff^(-ee/2)Outer[Times,vv,vv];
checks=<|
 "Ricci_scalar"->(ToValues[RicciScalarCD[]]+6),
 "vector_transverse"->simp[Tr[inv.dv[w1]]],
 "tensor_traceless"->simp[Tr[inv.w2]],
 "tensor_transverse"->simp[Table[Sum[inv[[kk,ll]]dq[w2][[kk,ll,ii]],{kk,3},{ll,3}],{ii,3}]],
 "vector_box"->simp[boxv[w1]-(ee(ee-2)-1)w1],
 "tensor_box"->simp[boxq[w2]-(ee(ee-2)-2)w2],
 "vector_lowering"->simp[Table[liev[lower[sg],w1],{sg,{-1,1}}]],
 "tensor_lowering"->simp[Table[lieq[lower[sg],w2],{sg,{-1,1}}]],
 "vector_contraction"->simp[w1.inv.Conjugate[w1]-2ff^(-ee-1)],
 "tensor_contraction"->simp[Tr[inv.w2.inv.Conjugate[w2]]-4ff^(-ee-2)]|>;
report=<|"engine"->System`$Version,"packages"->{"xCoba","xTras"},
 "assumptions"->"unit AdS3; r>0; real E>2; real t,phi; smooth Cartesian continuation at center",
 "residuals"->Map[ToString[#,InputForm]&,checks],
 "allPassed"->AllTrue[Flatten[Values[checks]],SameQ[#,0]&]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"ofpt_primary_tensor_results.json"}],report,"RawJSON"];
Print[<|"checkGroups"->Length[checks],"allPassed"->report["allPassed"]|>];
If[!TrueQ[report["allPassed"]],Print[report];Exit[1]];
