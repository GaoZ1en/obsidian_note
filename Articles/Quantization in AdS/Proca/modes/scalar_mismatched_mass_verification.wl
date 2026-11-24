ClearAll["Global`*"];
(* Polynomial moments are evaluated exactly, before numerical diagonalization. *)
moment[p_, a_, b_] := With[{c = CoefficientList[Expand[p], x]}, Sum[c[[k+1]] Beta[a+k,b],{k,0,Length[c]-1}]];
poly[n_,d_,l_] := JacobiP[n,d-1,l,1-2x];
norm[n_,d_,l_] := Sqrt[2(2n+d+l) Pochhammer[n+d,l]/Pochhammer[n+1,l]];
ov[n_,k_,d_,l_] := norm[n,d,l] norm[k,d,l] moment[poly[n,d,l] poly[k,d,l],d-1,l+1]/2;
scalar[d_,d0_,l_,nn_] := Module[{o,k,vals},o=Table[ov[i,j,d0,l],{i,0,nn-1},{j,0,nn-1}];k=DiagonalMatrix[Table[(d0+2i+l)^2,{i,0,nn-1}]]+(d(d-2)-d0(d0-2))o; vals=Sort[Eigenvalues[N[k,70]]]; N[Sqrt[Take[vals,3]],14]];
slow[del_,d0_,l_,nn_] := Module[{o,gg,kk,gs,ks,ss,ass,vals,eta=1/2,c=(d0-del)/2},o=Table[ov[i,j,d0,l],{i,0,nn-1},{j,0,nn-1}];gs=Table[norm[i,d0,l] moment[(1+eta x)poly[i,d0,l],(del+d0)/2,l+1]/2,{i,0,nn-1}];ks=Table[(del+l)^2 gs[[i+1]]+2 eta norm[i,d0,l](c moment[poly[i,d0,l],(del+d0)/2,l+2]+moment[D[poly[i,d0,l],x],(del+d0)/2+1,l+2]),{i,0,nn-1}];ss=moment[(1+eta x)^2,del,l+1]/2;ass=(del+l)^2 ss+2 eta^2 Beta[del+1,l+2];gg=ArrayFlatten[{{{{ss}},{gs}},{Transpose[{gs}],IdentityMatrix[nn]}}];kk=ArrayFlatten[{{{{ass}},{ks}},{Transpose[{ks}],DiagonalMatrix[Table[(d0+2i+l)^2,{i,0,nn-1}]]+(del(del-2)-d0(d0-2))o}}];vals=Sort[Eigenvalues[{N[kk,70],N[gg,70]}]];N[Sqrt[Take[vals,3]],14]];

checks=<||>;
check[name_,expr_]:=AssociateTo[checks,name->TrueQ[FullSimplify[expr]]];
u[n_,dd_,l_]:=norm[n,dd,l]x^(dd/2)(1-x)^(l/2)poly[n,dd,l];
Do[check["kinetic "<>ToString[{dd,l,i,j},InputForm],Integrate[u[i,dd,l]u[j,dd,l]/(2x),{x,0,1}]==KroneckerDelta[i,j]],{dd,{3/2,2,3}},{l,{0,2}},{i,0,2},{j,0,2}];
Do[ui=u[i,2,l];uj=u[j,2,l];oo=Integrate[ui uj/(2x^2),{x,0,1}];qa=Integrate[2(1-x)D[ui,x]D[uj,x]+l^2 ui uj/(2x(1-x))-21ui uj/(50x^2),{x,0,1}];check["direct action "<>ToString[{l,i,j},InputForm],qa==(2+2i+l)^2 KroneckerDelta[i,j]-21oo/25];check["overlap moment "<>ToString[{l,i,j},InputForm],oo==ov[i,j,2,l]],{l,{0,2}},{i,0,2},{j,0,2}];
Do[ff=1+r^2;ur=r^l ff^(-(dd+l)/2)JacobiP[n,dd-1,l,(r^2-1)/ff];check["radial ODE "<>ToString[{dd,l,n},InputForm],FullSimplify[-ff/r D[r ff D[ur,r],r]+ff(l^2/r^2+dd(dd-2))ur-(dd+2n+l)^2 ur,Assumptions->r>0]==0],{dd,{3/2,2,3}},{l,{0,2}},{n,0,3}];
check["wrong slow exponent",Together[(d0^2+del(del-2))/(2-2d0)+del-(d0-del)^2/(2(1-d0))]==0];
(* Independently integrate the renormalized non-eigen seed, including its boundary term. *)
del=3/5;seed=x^(del/2)(1+x/2);musq=del(del-2);
seedBulk=Integrate[2(1-x)D[seed,x]^2+musq seed^2/(2x^2),{x,eps,1},Assumptions->0<eps<1];
seedForm=Limit[seedBulk+del Sqrt[1-eps]/eps (seed/.x->eps)^2,eps->0,Direction->"FromAbove"];
check["renormalized seed self form",seedForm==del^2 moment[(1+x/2)^2,del,1]/2+Beta[del+1,2]/2];
Do[un=u[i,2,0];direct=Integrate[2(1-x)D[seed,x]D[un,x]+musq seed un/(2x^2),{x,0,1}];gsi=Integrate[seed un/(2x),{x,0,1}];expected=del^2 gsi+norm[i,2,0]((2-del)/2 moment[poly[i,2,0],(del+2)/2,2]+moment[D[poly[i,2,0],x],(del+2)/2+1,2]);check["non-eigen seed cross "<>ToString[i],direct==expected],{i,0,2}];
standardResults=Map[Function[case,<|"Delta"->case[[1]],"Delta0"->case[[2]],"ell"->case[[3]],"cutoffs"->Table[<|"N"->nn,"omega"->scalar[case[[1]],case[[2]],case[[3]],nn]|>,{nn,{4,8,16,32}}]|>],{{12/5,2,0},{7/5,3,0},{12/5,3/2,2}}];
alternativeResults=Table[<|"N"->nn,"omega"->slow[3/5,2,0,nn]|>,{nn,{4,8,16,32}}];
result=<|"allPassed"->And@@Values[checks],"checks"->checks,"standard"->standardResults,"alternative_delta_3_5_reference_2"->alternativeResults|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"scalar_mismatched_mass_results.json"}],result,"RawJSON"];
Print[result];If[!TrueQ[result["allPassed"]],Exit[1]];
