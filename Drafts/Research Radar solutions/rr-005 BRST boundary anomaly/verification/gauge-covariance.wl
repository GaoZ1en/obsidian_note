
Clear[t,x,e,lam,phi,aa,bb,m];
cov[v_,a_,b_]:= -D[v,{t,2}]-D[v,{x,2}]
 +2 I e (a D[v,t]+b D[v,x])
 +I e (D[a,t]+D[b,x])v+e^2(a^2+b^2)v+m^2 v;
phase=Exp[I e lam[t,x]];
gauge=FullSimplify[cov[phase phi[t,x],aa[t,x]+D[lam[t,x],t],bb[t,x]+D[lam[t,x],x]]-phase cov[phi[t,x],aa[t,x],bb[t,x]]];
num=6; edges=Join[Flatten[Table[{2 a+b+1,2 Mod[a+1,3]+b+1,(3+4 I)/5},{a,0,2},{b,0,1}],1],Table[{2 a+1,2 a+2,(5+12 I)/13},{a,0,2}]];
build[ee_]:=Module[{mat=5 IdentityMatrix[num]},Do[mat[[ij[[1]],ij[[2]]]]-=ij[[3]];mat[[ij[[2]],ij[[1]]]]-=Conjugate[ij[[3]]],{ij,ee}];mat];
phases=Table[((8+15 I)/17)^j,{j,0,num-1}]; U=DiagonalMatrix[phases];
pp=build[edges]; e2=Table[{ed[[1]],ed[[2]],phases[[ed[[1]]]] ed[[3]]/phases[[ed[[2]]]]},{ed,edges}]; pp2=build[e2];
res=<|"continuum_Dirichlet_gauge_covariance"->gauge,
"finite_covariant_lattice_matrix"->Simplify[pp2-U.pp.ConjugateTranspose[U]],
"finite_determinant_invariance"->Simplify[Det[pp2]-Det[pp]],
"finite_regulator_Hermiticity"->Simplify[pp-ConjugateTranspose[pp]],
"finite_regulator_positive_principal_minors"->Table[Det[pp[[1;;j,1;;j]]]>0,{j,1,num}]|>;
res
