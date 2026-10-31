ClearAll[r,ph,t,coords,gg,gi,ga,cov1,cov2,spin,curl,v,h]; coords={r,ph,t}; gg=DiagonalMatrix[{1,Sinh[r]^2,Cosh[r]^2}]; gi=Simplify[Inverse[gg]]; $Assumptions=r>0;
ga=Table[FullSimplify[Sum[gi[[i,l]](D[gg[[l,j]],coords[[k]]]+D[gg[[l,k]],coords[[j]]]-D[gg[[j,k]],coords[[l]]]),{l,3}]/2],{i,3},{j,3},{k,3}];
cov1[x_List]:=Table[D[x[[j]],coords[[i]]]-Sum[ga[[l,i,j]]x[[l]],{l,3}],{i,3},{j,3}];
cov2[x_List]:=Table[D[x[[i,j]],coords[[k]]]-Sum[ga[[l,k,i]]x[[l,j]]+ga[[l,k,j]]x[[i,l]],{l,3}],{k,3},{i,3},{j,3}];
spin[x_List]:=Module[{dx=cov2[x]},Table[Sinh[r]Cosh[r]Sum[Signature[{nu,j,k}]gi[[j,a]]gi[[k,b]]dx[[a,mu,b]],{j,3},{k,3},{a,3},{b,3}]/2,{mu,3},{nu,3}]];
curl[x_List]:=Table[Sinh[r]Cosh[r] Sum[Signature[{i,j,k}]gi[[j,a]]gi[[k,b]](D[x[[b]],coords[[a]]]-D[x[[a]],coords[[b]]]),{j,3},{k,3},{a,3},{b,3}]/2,{i,3}];
v=Table[Symbol["v"<>ToString[i]][r,ph,t],{i,3}];
kg=cov1[v]+Transpose[cov1[v]];
expected=Table[Sinh[r]Cosh[r]Sum[Signature[{mu,nu,s}]gi[[s,l]]v[[l]],{s,3},{l,3}],{mu,3},{nu,3}];
gaugeResidual=Map[FullSimplify,spin[kg]-cov1[curl[v]/2]-expected,{2}];
h=Table[Symbol["h"<>ToString[Min[i,j]]<>ToString[Max[i,j]]][r,ph,t],{i,3},{j,3}];
dh=cov2[h]; div=Table[Sum[gi[[k,i]]dh[[k,i,j]],{k,3},{i,3}],{j,3}];
secondContract=Table[Sum[gi[[k,i]](D[dh[[nu,i,rho]],coords[[k]]]-Sum[ga[[l,k,nu]]dh[[l,i,rho]]+ga[[l,k,i]]dh[[nu,l,rho]]+ga[[l,k,rho]]dh[[nu,i,l]],{l,3}]),{k,3},{i,3}],{nu,3},{rho,3}];
commResidual=Map[FullSimplify,secondContract-cov1[div]+3h-gg Sum[gi[[i,j]]h[[i,j]],{i,3},{j,3}],{2}];
<|"TorsionFreeGaugeIdentityResidual"->gaugeResidual,"CodazziCurvatureCommutatorResidual"->commResidual,"BothAllZero"->(gaugeResidual===ConstantArray[0,{3,3}]&&commResidual===ConstantArray[0,{3,3}])|>