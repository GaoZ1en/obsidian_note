(* Fresh xAct components profile. Independent curvature/action route. *)
DefManifold[MCE,4,{a,b,c,d,e,f}];
DefChart[chCE,MCE,{0,1,2,3},{tt[],xx[],yy[],zz[]}];
DefMetric[-1,metCE[-a,-b],CDCE,{";","D"}];
DefConstantSymbol[epCE]; DefScalarFunction[qqCE];
MetricInBasis[metCE,-chCE,DiagonalMatrix[
 {-1,1+epCE qqCE[tt[],zz[]],1-epCE qqCE[tt[],zz[]],1}]];
MetricCompute[metCE,chCE,All];
ricCE=Table[ToValues[RicciCDCE[{i,-chCE},{j,-chCE}]],{i,0,3},{j,0,3}];
scCE=ToValues[RicciScalarCDCE[]];
linRicCE=Map[FullSimplify[Coefficient[Normal[Series[#,{epCE,0,1}]],epCE,1]]&,ricCE,{2}];
expectedCE=ConstantArray[0,{4,4}];
expectedCE[[2,2]]=(Derivative[2,0][qqCE][tt[],zz[]]-Derivative[0,2][qqCE][tt[],zz[]])/2;
expectedCE[[3,3]]=-expectedCE[[2,2]];
denCE=FullSimplify[Coefficient[Normal[Series[
 Sqrt[1-epCE^2 qqCE[tt[],zz[]]^2] scCE,{epCE,0,2}]],epCE,2]];
canonCE=(Derivative[1,0][qqCE][tt[],zz[]]^2-Derivative[0,1][qqCE][tt[],zz[]]^2)/2;
divCE=2(D[qqCE[t,z]D[qqCE[t,z],z],z]-D[qqCE[t,z]D[qqCE[t,z],t],t])/.{t->tt[],z->zz[]};
(* Time-symmetric standing wave initial data. The ADM Hamiltonian constraint
   is R^(3)+K^2-Kij Kij=0; first-order K is zero on this cut. *)
DefManifold[MSpCE,3,{i,j,k,l,m}];
DefChart[spCE,MSpCE,{1,2,3},{xs[],ys[],zs[]}];
DefMetric[1,gspCE[-i,-j],DSPCE];
MetricInBasis[gspCE,-spCE,DiagonalMatrix[{1+epCE Cos[zs[]],1-epCE Cos[zs[]],1}]];
MetricCompute[gspCE,spCE,All];
spScalarCE=ToValues[RicciScalarDSPCE[]];
spDenCE=FullSimplify[Coefficient[Normal[Series[
 Sqrt[1-epCE^2 Cos[zs[]]^2] spScalarCE,{epCE,0,2}]],epCE,2]];
(* Linear Brown--York response at a +z flat timelike wall. *)
gammaCE=DiagonalMatrix[{-1,1+amp psi,1-amp psi}];
invCE=Inverse[gammaCE];
extCE=DiagonalMatrix[{0,amp psiZ/2,-amp psiZ/2}];
piCE=FullSimplify[Sqrt[-Det[gammaCE]]/kp2
 (invCE.extCE.invCE-Tr[invCE.extCE] invCE),Assumptions->Abs[amp psi]<1];
linPiCE=FullSimplify[D[piCE,amp]/.amp->0];
expectedPiCE=DiagonalMatrix[{0,psiZ/(2 kp2),-psiZ/(2 kp2)}];
tidalCE=FullSimplify[Coefficient[Normal[Series[
 ToValues[RiemannCDCE[{0,-chCE},{1,-chCE},{0,-chCE},{1,-chCE}]],{epCE,0,1}]],epCE,1]];
redCE[ex_]:=Total[(FullSimplify[#]^2&)/@Flatten[{ex}]];
xactChecksCE={
 <|"label"->"X01_all_linear_Ricci_components","residual"->redCE[linRicCE-expectedCE]|>,
 <|"label"->"X02_EH_density_and_explicit_divergence","residual"->FullSimplify[denCE-canonCE-divCE]|>,
 <|"label"->"X03_spatial_scalar_constraint_coefficient","residual"->FullSimplify[spDenCE-(3 Sin[zs[]]^2/2-2 Cos[zs[]]^2)]|>,
 <|"label"->"X04_GHY_wall_momentum","residual"->redCE[linPiCE-expectedPiCE]|>,
 <|"label"->"X05_radiative_tidal_curvature","residual"->FullSimplify[tidalCE+Derivative[2,0][qqCE][tt[],zz[]]/2]|>
};
xactChecksCE
