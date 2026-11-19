(* Exact local null-warped 11d equations and supercovariant holonomy check.
   Mostly plus. Indices 1..11 = (0,1,2,3,4,5,6,7,8,x,y).
   All input numbers are exact. No external files or internet. *)
ClearAll["Global`*"];
n=11; dim=32; eta=Join[{-1},ConstantArray[1,10]];
id2=IdentityMatrix[2]; xx={{0,1},{1,0}}; yy={{0,-I},{I,0}}; zz={{1,0},{0,-1}};
gam=Flatten[Table[Table[KroneckerProduct@@Table[If[j<k,zz,If[j==k,p,id2]],{j,5}],{p,{xx,yy}}],{k,5}],1];
AppendTo[gam,KroneckerProduct@@ConstantArray[zz,5]];gam[[1]]=I gam[[1]];
gp[t_List]:=gp[t]=If[t=={},IdentityMatrix[dim],Dot@@gam[[t]]];
canon[t_List]:=If[DuplicateFreeQ[t],{Sort[t],Signature[t]},{{},0}];
zero=ConstantArray[0,{dim,dim}];
run[sp_,sm_,b_:1,fa_:10,fp_:6,fm_:8]:=Module[{cc,F,put,tri,r,a,j,k,h,fs,omega,Ds,sl,ctr,rr,curv,basis,basis2,hol,ric,R,Fsq,stress,eres,mats,forms,wed,dform,star,flux,dflux,maxwell,cs,sgn,inds,comp,ans,fl,dl,st,co,H,U,pr,con,pr8,J,PH,PI,projectorChecks,allzero,cn,ri,ci,mnr,piv},
 cc=ConstantArray[0,{n,n,n}]; F=<||>;
 put[t_,v_]:=Module[{can=canon[t]},If[can[[2]]!=0,AssociateTo[F,can[[1]]->(Lookup[F,Key[can[[1]]],0]+can[[2]] v)]]];
 (* dtheta^a=-1/2 C^a_bc theta^b wedge theta^c. *)
 Do[cc[[1,j,3]]=-fa (1+b^2)/2;cc[[1,3,j]]=-cc[[1,j,3]];
    cc[[2,j,3]]=-fa (1-b^2)/2;cc[[2,3,j]]=-cc[[2,j,3]],{j,{1,2}}];
 Do[tri=entry[[1]];r=entry[[2]];
   Do[If[DuplicateFreeQ[{a,j,k}],cc[[a,j,k]]=r Signature[{a,j,k}]],{a,tri},{j,tri},{k,tri}],
   {entry,{{{4,5,6},fp sp},{{7,8,9},fm sm}}}];
 put[{1,2,3,10},fa];put[{4,5,6,10},fp];put[{7,8,9,10},fm];
 Do[put[{h,3,6,9},-fa b];put[{h,4,5,9},-fp sp b];put[{h,6,7,8},fm sm b],{h,{1,2}}];
 F=Select[F,#=!=0&];
 (* Spin connection and KSE, fully antisymmetric five-gamma convention. *)
 omega=Table[(eta[[a]] cc[[a,k,j]]-eta[[k]]cc[[k,j,a]]+eta[[j]]cc[[j,a,k]])/2,{k,n},{a,n},{j,n}];
 sl=Total[KeyValueMap[#2 gp[#1]&,F]];
 Ds=Table[Sum[omega[[k,a,j]] gp[{a,j}]/2,{a,n},{j,a+1,n}]+eta[[k]]gam[[k]].sl/12-
    Total[KeyValueMap[If[MemberQ[#1,k],#2 (-1)^(First[FirstPosition[#1,k]]-1) gp[DeleteCases[#1,k]]/4,zero]&,F]],{k,n}];
 curv=Flatten[Table[Ds[[a]].Ds[[j]]-Ds[[j]].Ds[[a]]-Sum[cc[[k,a,j]]Ds[[k]],{k,n}],{a,n},{j,a+1,n}],1];
 basis=Select[RowReduce[Join@@curv],AnyTrue[#, (#=!=0)&]&];
 (* Curvature kernel is a parallel flat subbundle iff row space stable under D. *)
 basis2=Select[RowReduce[Join[basis,Sequence@@Table[basis.Ds[[k]],{k,n}]]],AnyTrue[#, (#=!=0)&]&];
 hol={dim-Length[basis],dim-Length[basis2]};
 H=fa gp[{1,2,3}]+fp gp[{4,5,6}]+fm gp[{7,8,9}];U=gam[[1]]+gam[[2]];
 pr=Table[con=Join[H,U,gam[[10]]-sgn IdentityMatrix[dim]];
   {sgn,MatrixRank[con],MatrixRank[Join[con,basis]]},{sgn,{-1,1}}];
 pr8=Table[J=(IdentityMatrix[dim]+sgn b U.gp[{6,9}]).gam[[10]];
   con=Join[H,J-IdentityMatrix[dim]];
   {sgn,MatrixRank[con],MatrixRank[Join[con,basis]]},{sgn,{-1,1}}];
 (* A regular explicit parallel projector, not just a generic nullspace. *)
 PH=(fa IdentityMatrix[dim]-fp gp[{1,2,3}].gp[{4,5,6}]-fm gp[{1,2,3}].gp[{7,8,9}])/(2 fa);
 PI=Which[sp==1 && sm==1,PH.(IdentityMatrix[dim]+(IdentityMatrix[dim]-b U.gp[{6,9}]).gam[[10]])/2,
   sp==-1 && sm==-1,PH.(IdentityMatrix[dim]+gp[{1,2}]).(IdentityMatrix[dim]-gam[[10]])/4,True,zero];
 allzero[mm_]:=AllTrue[Flatten[mm],Together[#]===0&];
 projectorChecks={Tr[PI],allzero[PI.PI-PI],And@@(allzero[#.PI]& /@curv),And@@(allzero[(IdentityMatrix[dim]-PI).#.PI]& /@ Ds)};
 (* A concrete nonzero minor of the original curvature matrix. Row/column
    choices are made at w=1/2; its symbolic determinant is a rank certificate. *)
 cn=(Join@@curv)/.w->1/2;
 piv[rr_]:=Map[Function[row,First[FirstPosition[row,z_/;z=!=0,Missing["no pivot"],{1},Heads->False]]],Select[RowReduce[rr],AnyTrue[#,(#=!=0)&]&]];
 ri=piv[Transpose[cn]];ci=piv[cn];
 mnr=If[Length[ri]==0,1,Factor[Det[(Join@@curv)[[ri,ci]]]]];
 (* Levi-Civita matrix R^a_b(e_i,e_j). *)
 mats=Table[Table[eta[[a]]omega[[k,a,j]],{a,n},{j,n}],{k,n}];
 ric=Table[Sum[(mats[[k]].mats[[j]]-mats[[j]].mats[[k]]-Sum[cc[[h,k,j]]mats[[h]],{h,n}])[[k,a]],{k,n}],{a,n},{j,n}];
 Fsq=24 Total[KeyValueMap[#2^2 Times@@eta[[#1]]&,F]];
 ctr[a_,j_]:=Sum[Module[{ca=canon[Prepend[t,a]],cj=canon[Prepend[t,j]]},
  ca[[2]]cj[[2]]Lookup[F,Key[ca[[1]]],0]Lookup[F,Key[cj[[1]]],0]Times@@eta[[t]]],{t,Subsets[Range[n],{3}]}]*6;
 stress=Table[ctr[a,j]/12-If[a==j,eta[[a]]Fsq/144,0],{a,n},{j,n}];
 eres=Simplify[ric-stress];
 (* Exact exterior algebra for Bianchi, Maxwell and Chern--Simons. *)
 wed[aa_Association,bb_Association]:=Module[{out=<||>,can,ta,tb},
  Do[can=canon[Join[ta,tb]];
   If[can[[2]]!=0,AssociateTo[out,can[[1]]->(Lookup[out,Key[can[[1]]],0]+Lookup[aa,Key[ta]] Lookup[bb,Key[tb]] can[[2]])]],
   {ta,Keys[aa]},{tb,Keys[bb]}];Select[out,#=!=0&]];
 forms=Table[Association@Flatten[Table[If[cc[[a,j,k]]=!=0,{{j,k}->(-cc[[a,j,k]])},{}],{j,n},{k,j+1,n}],2],{a,n}];
 dform[aa_Association]:=Module[{out=<||>,term},KeyValueMap[Function[{tt,vv},Do[term=wed[wed[Association[Take[tt,h-1]->1],forms[[tt[[h]]]]],Association[Drop[tt,h]->1]];KeyValueMap[Function[{key,val},AssociateTo[out,key->(Lookup[out,Key[key],0]+vv (-1)^(h-1) val)]],term],{h,Length[tt]}]],aa];Select[out,#=!=0&]];
 star[aa_Association]:=Association@KeyValueMap[(comp=Complement[Range[n],#1];comp->(#2 Times@@eta[[#1]] Signature[Join[#1,comp]]))&,aa];
 dflux=dform[F];maxwell=dform[star[F]];cs=wed[F,F];
 ans=<|"sphere MC signs"->{sp,sm},"null amplitude"->b,"F norm squared"->Fsq,"Einstein residual"->eres,"dF"->dflux,"dStarF"->maxwell,"FwedgeF"->cs,"KSE curvature and parallel-kernel dimensions"->hol,"H,U,X projector ranks"->pr,"H,J8 projector ranks"->pr8,"projector rank,idempotent,flat,parallel"->projectorChecks,"curvature minor size"->Length[ri],"curvature minor determinant"->mnr|>;
 (* Expose the last matrices only for the separate bilinear audit. *)
 auditDs=Ds;auditPi=PI;
 Print[InputForm[ans]];ans
];
results={run[1,1],run[-1,-1],run[1,-1],run[-1,1],run[1,1,0]};
