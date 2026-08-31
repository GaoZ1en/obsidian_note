(* Run in a fresh kernel. *)
pp[i_,j_]:=Symbol["pj"<>ToString[i]<>"a"<>ToString[j]];
qq[i_,j_]:=Symbol["qj"<>ToString[i]<>"a"<>ToString[j]];
angular[e_]:=Expand[Sum[D[e,pp[i,j]]pp[i,j+1]+D[e,qq[i,j]]qq[i,j+1],{i,0,4},{j,0,5}]];
generator[e_]:=Expand[Sum[D[e,pp[i,j]]pp[i+1,j]+D[e,qq[i,j]]qq[i+1,j],{i,0,3},{j,0,6}]];
p=pp[0,0]; q=qq[0,0];
gg=p q+p^2; kk=1+p^2+q^2;
hh=p^2+q^2; ll=2+p q; vel=p+q;
uv=gg-kk qq[0,1]; vv=hh-vel qq[0,1]-ll pp[0,1];
bz=D[gg,p]-D[kk,p]qq[0,1];
by=D[hh,q]-D[ll,q]pp[0,1]-D[vel,q]qq[0,1];
checks={};
add[label_,expr_]:=AppendTo[checks,label->Expand[expr]];
qKnown[1]=vv; pKnown[1]=uv;
Do[
 qKnown[r]=generator[qKnown[r-1]]/.Table[qq[1,j]->Nest[angular,vv,j],{j,0,5}];
 pKnown[r]=generator[pKnown[r-1]]/.Table[pp[1,j]->Nest[angular,uv,j],{j,0,5}],
 {r,2,3}];
Do[
 er=Nest[generator,uv,r]/.Flatten[Table[qq[i,j]->Nest[angular,qKnown[i],j],{i,1,r},{j,0,1}]];
 fr=Nest[generator,vv,r]/.Flatten[Table[pp[i,j]->Nest[angular,pKnown[i],j],{i,1,r},{j,0,1}]];
 er=Expand[er];fr=Expand[fr+vel qq[r,1]];
 add["V71 eta jet "<>ToString[r]<>" highest unknown coefficient",Coefficient[er,pp[r,0]]-bz];
 add["V71 xi jet "<>ToString[r]<>" highest unknown coefficient",Coefficient[fr,qq[r,0]]-by];
 If[r>=2,
 add["V71 eta jet "<>ToString[r]<>" previous-jet D2 coefficient",Coefficient[er,pp[r-1,2]]-kk ll];
 add["V71 xi jet "<>ToString[r]<>" previous-jet D2 coefficient",Coefficient[fr,qq[r-1,2]]-ll kk]],
 {r,1,3}];
(* Exact triangular residual-system product rule, scalar representatives. *)
residual=nn[t]u[t]+n1[t]du[t];
add["V70 differentiated residual block",
 (D[residual,t]/.{u'[t]->mm[t]u[t],du'[t]->dm[t]u[t]+mm[t]du[t]})-
 ((nn'[t]+nn[t]mm[t]+n1[t]dm[t])u[t]+(n1'[t]+n1[t]mm[t])du[t])];
(* Null rotation required for nonconstant-time cuts. *)
metric={{1,0,0,0},{0,1,0,0},{0,0,0,-2},{0,0,-2,0}};
nvec={0,0,1,0}; lvec={0,0,0,1};
cut1={1,0,t1,0};cut2={0,1,t2,0};
lnew=lvec+2{t1,t2,0,0}+(t1^2+t2^2)nvec;
add["V72 refoliated opposite normal orthogonal",{lnew.metric.cut1,lnew.metric.cut2}];
add["V72 refoliated opposite normal null",lnew.metric.lnew];
add["V72 refoliated normal product",lnew.metric.nvec+2];
dn1={h11,h12,zet1+kap t1,0};
dn2={h12,h22,zet2+kap t2,0};
add["V72 refoliated normal connection",
 {-dn1.metric.lnew/2,-dn2.metric.lnew/2}-
 ({zet1,zet2}-{{h11,h12},{h12,h22}}.{t1,t2}+kap{t1,t2})];
add["V72 common-cut scale normal product",-ap am Exp[-mn]+Exp[-(mn-Log[ap]-Log[am])]];
add["V72 affine scale equation",aa[t]kap[t]+aa'[t]/.aa'[t]->-kap[t]aa[t]];
results=checks/.Rule[label_,expr_]:>Rule[label,FullSimplify[expr,ap>0&&am>0]];
Scan[Print[If[And@@Thread[Flatten[{Last[#]}]==0],"PASS ","FAIL "],First[#]]&,results];
If[!And@@(And@@Thread[Flatten[{Last[#]}]==0]&/@results),Print[results];Exit[1]];
Print["REGRESSIONS ONLY: V71 is a nonlinear scalar principal prototype; V72 is kinematic, not a Sobolev reset theorem."];
results
