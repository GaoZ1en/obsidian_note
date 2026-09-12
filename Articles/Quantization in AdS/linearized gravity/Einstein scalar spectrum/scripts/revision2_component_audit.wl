(* xCoba supplies the connection and curvature. Explicit arrays then test the
   entire radial tensor operator and all components of the displayed sources. *)
Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];
Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e}];
DefChart[ch,M,{0,1,2},{tt[],xx[],ph[]}];
DefMetric[-1,gg[-a,-b],CD];
MetricInBasis[gg,-ch,DiagonalMatrix[{-1/xx[],1/(4xx[]^2(1-xx[])),(1-xx[])/xx[]}]];
MetricCompute[gg,ch,All];
coords={t,x,ang};
metric=DiagonalMatrix[{-1/x,1/(4x^2(1-x)),(1-x)/x}];
inv=Inverse[metric];
gam=Table[ToValues[Christoffel[CD,PDch][{ii,ch},{jj,-ch},{kk,-ch}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,xx[]->x,ph[]->ang};
$Assumptions=0<x<1&&del>1&&Element[{t,ang,om,jjmode},Reals];
simp[z_]:=FullSimplify[z,$Assumptions];
dq[q_]:=Table[D[q[[ii,jj]],coords[[kk]]]-Sum[gam[[ll,kk,ii]]q[[ll,jj]]+gam[[ll,kk,jj]]q[[ii,ll]],{ll,3}],{kk,3},{ii,3},{jj,3}];
box[q_]:=Module[{first=dq[q]},Table[Sum[inv[[kk,ll]](D[first[[ll,ii,jj]],coords[[kk]]]-Sum[gam[[ss,kk,ll]]first[[ss,ii,jj]]+gam[[ss,kk,ii]]first[[ll,ss,jj]]+gam[[ss,kk,jj]]first[[ll,ii,ss]],{ss,3}]),{kk,3},{ll,3}],{ii,3},{jj,3}]];
scalarbox[u_]:=Sum[inv[[ii,jj]](D[u,coords[[ii]],coords[[jj]]]-Sum[gam[[kk,ii,jj]]D[u,coords[[kk]]],{kk,3}]),{ii,3},{jj,3}];
ein[q_]:=Module[{first=dq[q],trace=Tr[inv.q],cv,dc},cv=Table[Sum[inv[[kk,ll]]first[[kk,ll,ii]],{kk,3},{ll,3}]-D[trace,coords[[ii]]]/2,{ii,3}];dc=Table[D[cv[[jj]],coords[[ii]]]-Sum[gam[[kk,ii,jj]]cv[[kk]],{kk,3}],{ii,3},{jj,3}];simp[-box[q]/2-q+metric scalarbox[trace]/4+(dc+Transpose[dc])/2-metric Tr[inv.dc]/2]];
lie[v_,q_]:=Table[Sum[v[[kk]]D[q[[ii,jj]],coords[[kk]]]+q[[kk,jj]]D[v[[kk]],coords[[ii]]]+q[[ii,kk]]D[v[[kk]],coords[[jj]]],{kk,3}],{ii,3},{jj,3}];
rv[sg_]:=Exp[-I t+I sg ang]{I Sqrt[1-x]/2,x Sqrt[1-x],-I sg/(2Sqrt[1-x])};
dv[sg_]:=Exp[I t-I sg ang]{I Sqrt[1-x]/2,-x Sqrt[1-x],-I sg/(2Sqrt[1-x])};
pairs={{1,1},{1,2},{1,3},{2,2},{2,3},{3,3}};
operatorChecks=Table[Module[{q=ConstantArray[0,{3,3}],ii=pair[[1]],jj=pair[[2]]},q[[ii,jj]]=q[[jj,ii]]=HH[x]Exp[-I om t+I jjmode ang];simp[((om^2+jjmode^2)/2-om)q-Sum[lie[rv[sg],lie[dv[sg],q]],{sg,{-1,1}}]-box[q]/2-3q+metric Tr[inv.q]]],{pair,pairs}];
stress[u_,v_]:=Table[(D[u,coords[[ii]]]D[v,coords[[jj]]]+D[v,coords[[ii]]]D[u,coords[[jj]]])/2-metric[[ii,jj]](Sum[inv[[kk,ll]]D[u,coords[[kk]]]D[v,coords[[ll]]],{kk,3},{ll,3}]+del(del-2)u v)/2,{ii,3},{jj,3}];
u0=x^(del/2)Exp[-I del t]/Sqrt[2Pi];
u0c=x^(del/2)Exp[I del t]/Sqrt[2Pi];
u1c=x^(del/2)(del-(del+1)x)Exp[I(del+2)t]/Sqrt[2Pi];
up=Sqrt[del]x^(del/2)Sqrt[1-x]Exp[-I(del+1)t+I ang]/Sqrt[2Pi];
seed=DiagonalMatrix[{del/(4Pi),del(1-x^(del-1))/(16Pi x(1-x)),0}];
qp=simp[lie[rv[1],seed]/Sqrt[del]];
qs=Exp[I(2del+2)t]DiagonalMatrix[{del^2 x^del(x-1)/(4Pi),del x^(del-2)((del+2)x-del)/(16Pi),0}];
(* x=1-y^2 and Delta=d^2 cover the entire stated real domain and fix
   positive square-root branches without an unrestricted PowerExpand. *)
positiveRadicals[z_]:=FullSimplify[z/.{x->1-yy^2,del->dd^2},0<yy<1&&dd>1&&Element[{t,ang},Reals]];
checks=<|"xCoba_background_Ricci_scalar"->(ToValues[RicciScalarCD[]]+6),"six_component_radial_Casimir_operator"->operatorChecks,"scalar_KG_equations"->(simp[scalarbox[#]-del(del-2)#]&/@{u0,u1c,up}),"seed_Einstein_equation"->simp[ein[seed]-stress[u0,u0c]/2],"noncircular_Einstein_equation"->positiveRadicals[simp[ein[qp]-stress[u0c,up]/2]],"same_sign_Einstein_equation"->simp[ein[qs]-stress[u0c,u1c]/2]|>;
report=<|"engine"->System`$Version,"packages"->{"xCoba","xTras"},"assumptions"->"unit AdS3; six arbitrary HH(x) tensor inputs with symbolic frequency and angular harmonic; all source equations symbolic Delta>1", "residuals"->Map[ToString[#,InputForm]&,checks],"allPassed"->AllTrue[Flatten[Values[checks]],SameQ[#,0]&]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"revision2_component_audit_results.json"}],report,"RawJSON"];
If[!TrueQ[report["allPassed"]],Print[report];Exit[1]];
report
