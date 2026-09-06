(* Exact finite identities for the scalar sewing audit; not a PDE or microlocal proof. *)
ClearAll["Global`*"];

res = <||>;
add[label_, expr_] := AssociateTo[res,label -> (And@@(TrueQ[FullSimplify[#]==0]& /@ Flatten[{expr}]))];
Do[
 add["phi"<>ToString[n]<>"Normalization",
 {D[la gg u^n/n!,u]-la gg u^(n-1)/(n-1)!,
 D[la gg u^n/n!,{u,2}]-la gg u^(n-2)/(n-2)!}];
 add["phi"<>ToString[n]<>"Recursion",
 Table[Coefficient[(c0+la c1+la^2 c2)^(n-1),la,j]/(n-1)!-
 {c0^(n-1)/(n-1)!,c0^(n-2)c1/(n-2)!,
 c0^(n-2)c2/(n-2)!+c0^(n-3)c1^2/(2(n-3)!)}[[j+1]],{j,0,2}]],
 {n,3,10}];
vars={q,p,r,s}; J={{0,1},{-1,0}};
bm={{1,0,0,0},{0,1,0,0}};
delta={la q^2 p,la q p^2+la^2 q^3};
rmap=Join[{q,p},delta]; dr=D[rmap,{{q,p}}]; pi=dr.J.Transpose[dr];
add["BR",bm.rmap-{q,p}];
add["Jacobi",Table[Sum[pi[[i,ll]]D[pi[[j,k]],vars[[ll]]]+pi[[j,ll]]D[pi[[k,i]],vars[[ll]]]+pi[[k,ll]]D[pi[[i,j]],vars[[ll]]],{ll,4}],{i,4},{j,4},{k,4}]];
rr={{1,2,0},{0,1,1},{0,0,2}};aa=Transpose[rr];vv=la DiagonalMatrix[{1,2,3}];ii=IdentityMatrix[3];
gr=Inverse[ii+rr.vv].rr;ga=Inverse[ii+aa.vv].aa;
add["OrderedMoller",(ii-gr.vv).(aa-rr).(ii-vv.ga)-(ga-gr)];
Do[
 ph=w[t,x]+l[t,x];
 en=(D[w[t,x],t]^2+D[w[t,x],x]^2+m^2 w[t,x]^2)/2+la sw[t]rho[x]ph^n/n!;
 eq=D[w[t,x],{t,2}]-D[w[t,x],{x,2}]+m^2 w[t,x]+la sw[t]rho[x]ph^(n-1)/(n-1)!-fl[t,x];
 add["LiftedEnergy"<>ToString[n],D[en,t]-D[D[w[t,x],t]D[w[t,x],x],x]-D[w[t,x],t]eq-fl[t,x]D[w[t,x],t]-la sw'[t]rho[x]ph^n/n!-la sw[t]rho[x]ph^(n-1)D[l[t,x],t]/(n-1)!],
 {n,{4,6,8}}];
ham=(p^2+om^2 q^2)/2;
starh=ham^2+(I hb/2)^2/2 (D[ham,{q,2}]D[ham,{p,2}]-2 D[ham,q,p]^2+D[ham,{p,2}]D[ham,{q,2}]);
add["MoyalEnergy",starh-ham^2+hb^2 om^2/4];
add["FeynmanJump",((D[Exp[-I om t]/(2 om),t]-D[Exp[I om t]/(2 om),t])/.t->0)+I];
add["WickQuartic",Sum[(hb dd/2)^k/k! D[u^4,{u,2k}],{k,0,2}]-(u^4+6 hb dd u^2+3 hb^2 dd^2)];

a={a1,a2};b={b1,b2};wgt={w1,w2};
hh[r_]:=Sum[wgt[[j]]^r a[[j]]b[[j]],{j,2}];
wick2[f_,g_]:=f g+hb Sum[D[f,a[[j]]]D[g,b[[j]]],{j,2}]
+hb^2/2 Sum[D[f,a[[j]],a[[k]]]D[g,b[[j]],b[[k]]],{j,2},{k,2}];
f=a1^2 b2+a2 b1 b2;
out=<|
"WeightedWickEnergy"->Expand[wick2[hh[2],hh[3]]-hh[2]hh[3]-hb hh[5]],
"LeftEnergyInsertion"->Expand[wick2[hh[2],f]-hh[2]f-hb Sum[wgt[[j]]^2 b[[j]]D[f,b[[j]]],{j,2}]],
"RightEnergyInsertion"->Expand[wick2[f,hh[2]]-f hh[2]-hb Sum[wgt[[j]]^2 a[[j]]D[f,a[[j]]],{j,2}]],
"QuarticSingleContraction"->D[u^4,u]D[v^4,v]-16u^3v^3,
"MollerActionSign"->Expand[I(-I)D[-la gg u^n/Gamma[n+1],u]+la gg u^(n-1)/Gamma[n]]
|>;

extraPassed=Map[FullSimplify[#==0,Assumptions->{Element[n,Integers],n>=3,u>0}]&,out];
allChecks=Join[res,extraPassed];
Print[ExportString[<|"groups"->Length[allChecks],"allPassed"->And@@Values[allChecks],"checks"->allChecks,"scope"->"Finite identities only; no PDE, microlocal closure, or quantum existence theorem is machine-verified."|>,"RawJSON"]];
