(* Exact local 8-BPS unequal-sphere counterexample.
   Mostly plus; frame 1..11, time=1, fibers=3,6,9, flat=10,11.
   Same geometric/flux conventions as bosonic_review.md section 3.
   Supersymmetry connection uses fully antisymmetric five-gamma convention. *)
ClearAll["Global`*"];
n=11; dim=32; eta=Join[{-1},ConstantArray[1,10]];
id2=IdentityMatrix[2]; xx={{0,1},{1,0}}; yy={{0,-I},{I,0}}; zz={{1,0},{0,-1}};
gam=Flatten[Table[Table[KroneckerProduct@@Table[
 If[j<k,zz,If[j==k,p,id2]],{j,5}],{p,{xx,yy}}],{k,5}],1];
AppendTo[gam,KroneckerProduct@@ConstantArray[zz,5]]; gam[[1]]=I gam[[1]];
gp[t_List]:=gp[t]=If[t=={},IdentityMatrix[dim],Dot@@gam[[t]]];
zero=ConstantArray[0,{dim,dim}]; q=3/5; t=4/5;
scale=Table[If[MemberQ[{3,6},a],q,1],{a,n}];
cc=ConstantArray[0,{n,n,n}];
Do[tri=entry[[1]]; ff=entry[[2]];
 Do[If[DuplicateFreeQ[{a,b,c}],
  cc[[a,b,c]]=-ff eta[[a]] Signature[{a,b,c}] scale[[a]]/(scale[[b]]scale[[c]])],
 {a,tri},{b,tri},{c,tri}],
 {entry,{{{1,2,3},10},{{4,5,6},6},{{7,8,9},8}}}];
F={{{1,2,3,10},10},{{4,5,6,10},6},{{7,8,9,10},8q},
   {{1,2,6,11},10t},{{3,4,5,11},-6t},{{1,2,4,5},8t}};
omega=Table[(eta[[a]]cc[[a,k,j]]-eta[[k]]cc[[k,j,a]]+
 eta[[j]]cc[[j,a,k]])/2,{k,n},{a,n},{j,n}];
sl=Total[(Last[#]gp[First[#]]&/@F)];
Ds=Table[Sum[omega[[k,a,j]]gp[{a,j}]/2,{a,n},{j,a+1,n}]+
 eta[[k]]gam[[k]].sl/12-
 Total[(If[MemberQ[First[#],k],Last[#](-1)^(First[FirstPosition[First[#],k]]-1)
 gp[DeleteCases[First[#],k]]/4,zero]&/@F)],{k,n}];
curv=Flatten[Table[Ds[[a]].Ds[[j]]-Ds[[j]].Ds[[a]]-
 Sum[cc[[k,a,j]]Ds[[k]],{k,n}],{a,n},{j,a+1,n}],1];
basis=Select[RowReduce[Join@@curv],AnyTrue[#, (#!=0)&]&];
basis2=Select[RowReduce[Join[basis,
 Sequence@@Table[basis.Ds[[k]],{k,n}]]],AnyTrue[#, (#!=0)&]&];
P=gp[{3,6,11}];
Ht=5gp[{1,2,3}]+3gp[{4,5,6}]+4(q IdentityMatrix[dim]+t P).gp[{7,8,9}];
proj=Join[Ht,(q IdentityMatrix[dim]+t P).gam[[10]]+IdentityMatrix[dim]];
Print["central volume = -1: ",gp[Range[11]]==-IdentityMatrix[dim]];
Print["exact curvature/stable dimensions = ",{dim-Length[basis],dim-Length[basis2]}];
Print["projector dimension = ",dim-MatrixRank[proj],
 "; same row space = ",MatrixRank[Join[proj,basis]]==24];
