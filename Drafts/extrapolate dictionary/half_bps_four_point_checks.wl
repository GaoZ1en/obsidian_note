(* Actual IIB quartic vertex, neutral polarization, contact limit and Ward normalization. *)
Clear[report];
report=Block[{$MessageList={}},Module[
 {kap,ell,nn,ph,a,eps,t2,t3,t4,tr1,tr2,y,id,tm,pforce,ptf,basis,anti,
  xx,yy,em,de,am,cm,kin,coords,rr,qq,hh,ex,ct,at,lam,quartic,box,
  samples,base,tail,radial,bk,cut=20,prec=40},
 id=IdentityMatrix[6];y=DiagonalMatrix[{1,1,1,-1,-1,-1}]/Sqrt[6];
 tr1=6+eps^2 t2/2+eps^3 t3/6+eps^4 t4/24;
 tr2=6+2eps^2 t2+4eps^3 t3/3+2eps^4 t4/3;
 tm=DiagonalMatrix[Join[ConstantArray[Exp[a],3],ConstantArray[Exp[-a],3]]];
 pforce=2tm.tm-Tr[tm]tm;ptf=pforce-Tr[pforce]id/6;
 basis=Join[Table[DiagonalMatrix[Join[ConstantArray[1,k],{-k},ConstantArray[0,5-k]]]/Sqrt[k(k+1)],{k,1,5}],
   Flatten[Table[(SparseArray[{{i,j}->1,{j,i}->1},{6,6}]//Normal)/Sqrt[2],{i,1,5},{j,i+1,6}],1]];
 anti=Flatten[Table[Normal[SparseArray[{{i,j}->1,{j,i}->-1},{6,6}]],{i,1,5},{j,i+1,6}],1];
 xx={{2,1,0,0,0,0},{1,-1,1,0,0,0},{0,1,0,1,0,0},{0,0,1,-2,1,0},{0,0,0,1,1,1},{0,0,0,0,1,0}};
 yy={{0,1,1,0,0,0},{1,2,0,1,0,0},{1,0,-1,0,1,0},{0,1,0,0,0,1},{0,0,1,0,-2,1},{0,0,0,1,1,1}};
 em=Table[(-1)^j MatrixPower[xx,j]/j!,{j,0,2}];
 de=Table[Sum[MatrixPower[xx,j].yy.MatrixPower[xx,n-1-j],{j,0,n-1}]/n!,{n,1,3}];
 am=Table[Sum[em[[j+1]].de[[n-j]],{j,0,n-1}],{n,1,3}];cm=xx.yy-yy.xx;
 kin={Tr[am[[1]].am[[1]]]-Tr[yy.yy],Tr[am[[1]].am[[2]]+am[[2]].am[[1]]],
  Tr[am[[2]].am[[2]]+am[[1]].am[[3]]+am[[3]].am[[1]]]+Tr[cm.cm]/12};
 coords=Array[v,6];rr=coords.coords;qq=coords.y.coords;hh=qq^2-rr^2/24;
 quartic=-32kap^2/(3ell^2);ct=40ell^3/(Pi^2 kap^2);at=-4/(3Pi^2);
 ex=<|
  "PotentialExpansion"->Expand[Normal[Series[(2tr2-tr1^2)/2,{eps,0,4}]]-(-12-eps^2 t2+eps^3 t3/3+eps^4(5t4/12-t2^2/8))],
  "NoncommutingKineticExpansion"->kin,
  "YNormalization"->{Tr[y.y]-1,Tr[y.y.y],Tr[y.y.y.y]-1/6},
  "YTracelessSquare"->Simplify[y.y-id/6],
  "AllScalarCubicZeros"->Simplify[Tr[y.y.#]&/@basis],
  "AllVectorCurrentZeros"->Simplify[Tr[y.(#.y-y.#)]&/@anti],
  "TransverseScalarForce"->FullSimplify[ptf-Tr[ptf.y]y],
  "ExactPotential"->FullSimplify[(2Tr[tm.tm]-Tr[tm]^2)/2+3(3+Cosh[2a])],
  "CanonicalKineticTrace"->Simplify[Tr[(2kap y).(2kap y)]-4kap^2],
  "CanonicalQuartic"->FullSimplify[(D[-3(3+Cosh[4kap ph/Sqrt[6]])/(2kap^2 ell^2),{ph,4}]/.ph->0)-quartic],
  "GeneralQuarticProjection"->Simplify[kap^2/ell^2(80Tr[y.y.y.y]-24)-quartic],
  "UActionQuarticCoefficient"->Simplify[(quartic/(24*4Pi^4 ell)/.kap^2->4Pi^2 ell^3/nn^2)+4/(9Pi^2 nn^2)],
  "ContactPositionNormalization"->Simplify[(-quartic/(4Pi^4 ell)/.kap^2->4Pi^2 ell^3/nn^2)-32/(3Pi^2 nn^2)],
  "ContactMomentumNormalization"->Simplify[(-4Pi^4 quartic/ell/.kap^2->4Pi^2 ell^3/nn^2)-512Pi^6/(3nn^2)],
  "ContactMellinNormalization"->Simplify[(-quartic/(8Pi^2 ell)/.kap^2->4Pi^2 ell^3/nn^2)-16/(3nn^2)],
  "BoxDifferentiation"->Together[D[(aa bb r1+cc dd r2+aa cc r3+bb dd r4+aa dd r5+bb cc r6)^(-2),r1,r2]/2-
    3aa bb cc dd/(aa bb r1+cc dd r2+aa cc r3+bb dd r4+aa dd r5+bb cc r6)^4],
  "HigherHarmonicCounterexample"->{Simplify[Sum[D[hh,{coords[[i]],2}],{i,6}]],Simplify[(hh/.Thread[coords->{1,0,0,0,0,0}])-1/8]},
  "DilationWardFlux"->Simplify[at(2Pi^2)3/4+2],
  "StressCentralCharge"->Simplify[(ct/.kap^(-2)->nn^2/(4Pi^2 ell^3))-10nn^2/Pi^4],
  "UnitStressTensorCoefficientSquare"->Simplify[(at^2/ct/.kap^2->4Pi^2 ell^3/nn^2)-8/(45nn^2)],
  "StressBlockAngularFactor"->Expand[eta^2-1/4-GegenbauerC[2,1,eta]/4],
  "FreeFourDimensionalScalarBlockCheck"->Simplify[(-2/(3Pi^2))^2/(1/(3Pi^4))/4-1/3],
  "ExternalBesselExpansion"->Simplify[Normal[Series[BesselI[0,kk zz],{zz,0,4}]]-(1+kk^2 zz^2/4+kk^4 zz^4/64)],
  "UnequalRadiusProfileCoefficient"->Simplify[Total[{1,1/2,1/3,1/4}^2]/4-205/576]
 |>;
 tail[zs_]:=N[Times@@(BesselI[0,#]&/@zs) Pi^2/4 Exp[-4cut](cut/4+1/16),prec];
 bk[u_?NumericQ,z_]:=BesselI[0,Min[u,z]]BesselK[0,Max[u,z]];
 radial[zs_List]:=With[{pts=Join[{0},DeleteDuplicates[Sort[Select[zs,#>0&]]],{cut}]},
   NIntegrate[u^3 Times@@Table[bk[u,zs[[j]]],{j,4}],Evaluate[Join[{u},pts]],
    WorkingPrecision->prec,AccuracyGoal->22,PrecisionGoal->22,MaxRecursion->20]];
 base=NIntegrate[u^3 BesselK[0,u]^4,{u,0,1,cut},WorkingPrecision->prec,AccuracyGoal->25,PrecisionGoal->25];
 samples=Table[With[{zs=r0{1,1/2,1/3,1/4}},With[{val=radial[zs]},
   <|"Radii_k1"->zs,"RadialIntegralTo20"->val,"TailBound"->tail[zs],
     "BoundaryDifference"->val-base,"DifferenceDividedByMaxRadiusSquared"->(val-base)/r0^2,
     "RemainderAfterQuadraticBias"->val-base-r0^2(205/576)base|>]],
   {r0,{1/5,1/20,1/100,1/1000}}];
 <|"ExactResiduals"->ex,"AllExactResidualsZero"->And@@(TrueQ[#==0]&/@Flatten[Values[ex]]),
 "BoundaryK0MomentTo20"->base,"BoundaryMomentTailBound"->tail[{0,0,0,0}],
 "PredictedQuadraticProfileCoefficient"->(205/576)base,
 "UnequalRadiusContactSamples"->samples,"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]];
report
