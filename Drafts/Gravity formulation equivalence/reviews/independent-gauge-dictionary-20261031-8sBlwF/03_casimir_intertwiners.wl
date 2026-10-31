ClearAll[r,ph,t,coords,gg,gi,ga,cov1,cov2,lap1,lap2,R1,RK,spin,v,h];
coords={r,ph,t}; gg=DiagonalMatrix[{1,Sinh[r]^2,Cosh[r]^2}]; gi=Simplify[Inverse[gg]]; $Assumptions=r>0;
ga=Table[FullSimplify[Sum[gi[[i,l]](D[gg[[l,j]],coords[[k]]]+D[gg[[l,k]],coords[[j]]]-D[gg[[j,k]],coords[[l]]]),{l,3}]/2],{i,3},{j,3},{k,3}];
cov1[x_List]:=Table[D[x[[j]],coords[[i]]]-Sum[ga[[l,i,j]]x[[l]],{l,3}],{i,3},{j,3}];
cov2[x_List]:=Table[D[x[[i,j]],coords[[k]]]-Sum[ga[[l,k,i]]x[[l,j]]+ga[[l,k,j]]x[[i,l]],{l,3}],{k,3},{i,3},{j,3}];
lap1[x_List]:=Module[{dx=cov1[x]},Table[Sum[gi[[j,k]](D[dx[[j,i]],coords[[k]]]-Sum[ga[[l,k,j]]dx[[l,i]]+ga[[l,k,i]]dx[[j,l]],{l,3}]),{j,3},{k,3}],{i,3}]];
lap2[x_List]:=Module[{dx=cov2[x]},Table[Sum[gi[[k,m]](D[dx[[m,i,j]],coords[[k]]]-Sum[ga[[l,k,m]]dx[[l,i,j]]+ga[[l,k,i]]dx[[m,l,j]]+ga[[l,k,j]]dx[[m,i,l]],{l,3}]),{k,3},{m,3}],{i,3},{j,3}]];
R1[x_List]:=-lap1[x]+2x;
RK[x_List]:=-lap2[x]-2Transpose[x]+2gg Sum[gi[[i,j]]x[[i,j]],{i,3},{j,3}];
spin[x_List]:=Module[{dx=cov2[x]},Table[Sinh[r]Cosh[r]Sum[Signature[{nu,j,k}]gi[[j,a]]gi[[k,b]]dx[[a,mu,b]],{j,3},{k,3},{a,3},{b,3}]/2,{mu,3},{nu,3}]];
v=Table[Symbol["v"<>ToString[i]][r,ph,t],{i,3}];
h=Table[Symbol["h"<>ToString[Min[i,j]]<>ToString[Max[i,j]]][r,ph,t],{i,3},{j,3}];
gradResidual=Map[FullSimplify,RK[cov1[v]]-cov1[R1[v]],{2}];
spinResidual=Map[FullSimplify,RK[spin[h]]-spin[RK[h]],{2}];
<|"GradientCasimirResidual"->gradResidual,"SpinConnectionCasimirResidual"->spinResidual,"GradientAllZero"->(gradResidual===ConstantArray[0,{3,3}]),"SpinConnectionAllZero"->(spinResidual===ConstantArray[0,{3,3}])|>