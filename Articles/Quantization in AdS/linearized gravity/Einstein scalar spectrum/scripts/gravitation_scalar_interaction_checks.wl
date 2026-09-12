(* Run in a fresh xAct kernel, or with wolframscript -file. AdS radius = 1. *)
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e,f,i,j}];
DefMetric[-1,g[-a,-b],CD];
DefMetricPerturbation[g,hh,eps];
c1[a_,b_,c_]:=(CD[b][hh[LI[1],a,c]]+CD[c][hh[LI[1],a,b]]-CD[a][hh[LI[1],b,c]])/2;
d1=Scalar[hh[LI[1],a,-a]]/2;
adsRules={RicciCD[x_,y_]:>-2 g[x,y],RicciScalarCD[]->-6};
cn[1,x_,y_,z_]:=c1[x,y,z];
cn[n_Integer,x_,y_,z_]/;n>1:=Module[{u=DummyIn[TangentM]},-hh[LI[1],x,u]cn[n-1,-u,y,z]];
un[0,x_,y_]:=g[x,y];
un[n_Integer,x_,y_]/;n>0:=Module[{u=DummyIn[TangentM]},-hh[LI[1],x,u]un[n-1,-u,y]];
ts1=Scalar[hh[LI[1],a,-a]];
ts2=Scalar[hh[LI[1],a,b]hh[LI[1],-a,-b]];
ts3=Scalar[hh[LI[1],a,-b]hh[LI[1],b,-c]hh[LI[1],c,-a]];
ds={1,ts1/2,ts1^2/8-ts2/4,ts1^3/48-ts1 ts2/8+ts3/6};
an[n_,x_,y_]:=Sum[ds[[p+1]]un[n-p,x,y],{p,0,n}];
vv[n_,x_]:=Module[{u=DummyIn[TangentM],v=DummyIn[TangentM]},Sum[an[p,u,v]cn[n-p,x,-u,-v]-an[p,x,u]cn[n-p,v,-u,-v],{p,0,n-1}]];
qq[n_]:=Sum[an[n-ii-jj,a,b](cn[ii,c,-a,-d]cn[jj,d,-b,-c]-cn[ii,c,-a,-b]cn[jj,d,-c,-d]),{ii,1,n-1},{jj,1,n-ii}];
pot={-4,0,ts1^2/2-ts2,ts1^3/6-ts1 ts2+4 ts3/3};
rr[0]=-6;
rr[n_Integer]/;n>0:=rr[n]=(ExpandPerturbation[Perturbation[RicciScalarCD[],n]]/n!/.(hh[LI[2],__]|hh[LI[3],__])->0);
lhs[n_]:=Sum[ds[[p+1]]rr[n-p],{p,0,n}]+2 ds[[n+1]];

DefTensor[scal[],M]; DefConstantSymbol[mass];
ric1ab=CD[-c][cn[1,c,-a,-b]]-CD[-b][cn[1,c,-a,-c]];
ric2ab=CD[-c][cn[2,c,-a,-b]]-CD[-b][cn[2,c,-a,-c]]+cn[1,c,-c,-d]cn[1,d,-a,-b]-cn[1,c,-b,-d]cn[1,d,-a,-c];
kgExpected=-hh[LI[1],a,b]CD[-a][CD[-b][scal[]]]-(CD[-a][hh[LI[1],a,b]]-CD[b][hh[LI[1],a,-a]]/2)CD[-b][scal[]];
scalarL=-(CD[a][scal[]]CD[-a][scal[]]+mass^2 scal[]^2)/2;
tScalar=hh[LI[1],a,b](CD[-a][scal[]]CD[-b][scal[]]-g[-a,-b](CD[c][scal[]]CD[-c][scal[]]+mass^2 scal[]^2)/2)/2;
normalize[expr_]:=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[expr]]]];
residuals=<|
"Ricci first order"->normalize[ExpandPerturbation[Perturbation[RicciCD[-a,-b],1]]-ric1ab],
"Ricci second order"->normalize[(ExpandPerturbation[Perturbation[RicciCD[-a,-b],2]]/2-ric2ab)/.hh[LI[2],__]->0],
"KG metric variation"->normalize[(ExpandPerturbation[Perturbation[CD[a][CD[-a][scal[]]],1]]/.Perturbation[scal[],___]->0)-kgExpected],
"Scalar stress conservation"->normalize[CD[a][CD[-a][scal[]]CD[-b][scal[]]-g[-a,-b](CD[c][scal[]]CD[-c][scal[]]+mass^2 scal[]^2)/2]-(CD[a][CD[-a][scal[]]]-mass^2 scal[])CD[-b][scal[]]],
"Minimal coupling sign"->normalize[(ExpandPerturbation[Perturbation[scalarL,1]]/.Perturbation[scal[],___]->0)+Scalar[d1] Scalar[scalarL]-tScalar],
"EH quadratic including divergence"->normalize[(lhs[2]-qq[2]-pot[[3]]-CD[-e][vv[2,e]])/.adsRules],
"EH cubic including divergence"->normalize[(lhs[3]-qq[3]-pot[[4]]-CD[-e][vv[3,e]])/.adsRules],
"EH symplectic potential"->normalize[g[a,b]cn[1,c,-a,-b]-g[c,a]cn[1,b,-a,-b]-(CD[-a][hh[LI[1],c,a]]-CD[c][hh[LI[1],a,-a]])]
|>;
Print[residuals];
If[!AllTrue[Values[residuals],SameQ[#,0]&],Abort[]];
residuals
