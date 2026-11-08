(* Direct position-space identity, independent of Mellin contour manipulations.
   Unit-radius unnormalized D functions; F=flat box/Pi^2.
   Returns exact identity residual and Euclidean sample values. *)
ClearAll[halfBPSMellinPositionChecks];
halfBPSMellinPositionChecks[] := Block[{$MessageList = {}, $Messages = {}},
 Module[{p12,p13,p14,p23,p24,p34,u,v,z,zb,ff,p,uc,vc,f,chan,bulk,target,
   polynomial,gauge,redBulk,redTarget,res,phi,du,dv,jets,rules,boxResidual,
   samplePoints,samples,fb,ft,barD,checks},
 p[i_,j_] := Switch[Sort[{i,j}],{1,2},p12,{1,3},p13,{1,4},p14,
   {2,3},p23,{2,4},p24,{3,4},p34];
 uc=p12 p34/(p13 p24); vc=p14 p23/(p13 p24);
 f=ff[uc,vc]/(p13 p24);
 chan[i_,j_,k_,l_] := -(4/3 D[f,p[k,l]]+
   Total[Function[ab,p@@ab D[f,p@@ab,p[k,l]]]/@
     {{i,k},{i,l},{j,k},{j,l}}]+
   2(p[i,k]p[j,l]+p[i,l]p[j,k]-p[i,j]p[k,l])
     D[f,p[i,k],p[j,l],p[k,l]])/p[i,j];
 bulk=(p12 p34)^2 (chan[1,2,3,4]+chan[1,3,2,4]+chan[1,4,2,3]+
   16/3 D[f,p12,p34]);
 polynomial=1+uc^2+vc^2+4uc+4vc+4uc vc;
 barD=-p13^3 p24^4/(p14 p34) D[f,p12,p23,p24];
 target=2/3 (uc+uc/vc+uc^2/vc-uc^2 polynomial barD);
 gauge={p12->u,p13->1,p14->1,p23->v,p24->1,p34->1};
 redBulk=Simplify[bulk/.gauge]; redTarget=Simplify[target/.gauge];
 res=Simplify[redBulk-redTarget];
 (* Separate logarithms fix the Euclidean branch; no PowerExpand rule. *)
 phi=(2PolyLog[2,z]-2PolyLog[2,zb]+Log[z zb](Log[1-z]-Log[1-zb]))/(z-zb);
 du[a_]:=Together[((z-1)D[a,z]+(1-zb)D[a,zb])/(z-zb)];
 dv[a_]:=Together[(-z D[a,z]+zb D[a,zb])/(z-zb)];
 jets=Association[Flatten[Table[If[i+j<=3,
   {i,j}->Nest[du,Nest[dv,phi,j],i],Nothing],{i,0,3},{j,0,3}]]];
 rules=Join[{ff[u,v]->jets[{0,0}]},Flatten[Table[If[0<i+j<=3,
   Derivative[i,j][ff][u,v]->jets[{i,j}],Nothing],{i,0,3},{j,0,3}]]];
 boxResidual=FullSimplify[Together[(res/.rules)/.{u->z zb,v->(1-z)(1-zb)}]];
 fb=(redBulk/.rules)/.{u->z zb,v->(1-z)(1-zb)};
 ft=(redTarget/.rules)/.{u->z zb,v->(1-z)(1-zb)};
 samplePoints={1/2+I Sqrt[3]/2,1/3+I/2,3/4+I/3,3/2+I/3};
 samples=Table[With[{pt=N[pt0,60]},<|"z"->pt,"U"->Abs[pt]^2,
   "V"->Abs[1-pt]^2,"N2ReducedBulk"->N[fb/.{z->pt,zb->Conjugate[pt]},35],
   "N2ReducedCFT"->N[ft/.{z->pt,zb->Conjugate[pt]},35],
   "Difference"->N[(fb-ft)/.{z->pt,zb->Conjugate[pt]},30]|>],{pt0,samplePoints}];
 checks=<|"PositionIdentityResidual"->boxResidual,
   "ConformalDerivativeCommutator"->FullSimplify[Together[du[dv[phi]]-dv[du[phi]]]],
   "Samples"->samples|>;
 <|"Checks"->checks,"AllChecksPassed"->TrueQ[boxResidual===0 &&
   checks["ConformalDerivativeCommutator"]===0],"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]];
halfBPSMellinPositionChecks[]
