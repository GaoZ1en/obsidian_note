(* Fresh Wolfram kernel. Get returns the complete report; no note is overwritten.
   Canonical BF scalar, Omega=z/ell, source +j O; IIB T=Exp[t],
   Tr6(YI YJ)=deltaIJ, phi=t/(2 kappa5), Trcolor(Ta Tb)=deltaab/2. *)
ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={}},Module[
 {ui,uk,kg,gg,ext,bf,cut,cap,ev,pot,potChecks,y1,yo,y2,ys,
  tm,dm,comm,kinetic,cmat,amat,bprod,wick2,wick3,group,
  normChecks,cubicIntegral,bulk3,coulomb,coords,vel,lsym,dy,
  coordCheck,logSamples,jTests,kv,base,finite3,num3},
 ui=(z/ell)^2 BesselI[0,k z];uk=(z/ell)^2 BesselK[0,k z];
 kg[f_]:=(z^2 D[f,{z,2}]-3z D[f,z]-k^2 z^2 f+4f)/ell^2;
 gg=zz/(8Pi^2 ell^3(zz^2-1)^(3/2));
 ext=u^2(r^2+u^2+z^2)/(2Pi^2 ell ((r^2+(u-z)^2)(r^2+(u+z)^2))^(3/2));
 bf=<|"RadialI"->FullSimplify[kg[ui],Assumptions->ell>0&&z>0&&k>0],
 "RadialK"->FullSimplify[kg[uk],Assumptions->ell>0&&z>0&&k>0],
 "WeightedWronskian"->FullSimplify[(ell/z)^3(ui D[uk,z]-D[ui,z]uk)+1/ell,
 Assumptions->ell>0&&z>0&&k>0],
 "InvariantODE"->FullSimplify[(zz^2-1)D[gg,{zz,2}]+5zz D[gg,zz]+4gg,Assumptions->zz>1],
 "FiveDimensionalSingularity"->FullSimplify[Limit[(gg/.zz->1+rr^2/(2ell^2))rr^3,rr->0,
 Direction->"FromAbove"]-1/(8Pi^2),Assumptions->ell>0],
 "ExternalPositionKernel"->FullSimplify[(ell/z)^2(gg/.zz->(z^2+u^2+r^2)/(2z u))-ext,
 Assumptions->ell>0&&u>0&&z>0&&r>0],
 "ExternalBoundary"->FullSimplify[Limit[ext,z->0,Direction->"FromAbove"]-
 u^2/(2Pi^2 ell(r^2+u^2)^2),Assumptions->ell>0&&u>0&&r>0],
 "ExternalFourierNormalization"->FullSimplify[
 Integrate[t Exp[-t(1+r^2/u^2)],{t,0,Infinity},Assumptions->u>0&&r>0]/(2Pi^2 ell u^2)-
 u^2/(2Pi^2 ell(r^2+u^2)^2),Assumptions->ell>0&&u>0&&r>0]|>;
 cut=<|"CutoffAction"->Expand[-(a L+b)^2/ell-a(a L+b)/(2ell)+
 (a L+b)^2/ell+(a L+b)^2/(2ell L)-a b/(2ell)-b^2/(2ell L)],
 "CutoffVariation"->Expand[(-(2(a L+b)+a)+2(a L+b)+(a L+b)/L)(da L+db)/ell-
 b da/ell-b db/(ell L)],
 "InsertionSourceSign"->Expand[D[-ell c j^2/2,j]-(c a/.a->-ell j)]|>;
 cap=FullSimplify[x(BesselK[1,x]/BesselK[0,x]+BesselI[1,x]/BesselI[0,x])-
 1/(BesselI[0,x]BesselK[0,x]),Assumptions->x>0];
 ev={e1,e2,e3,e4,e5,-e1-e2-e3-e4-e5};
 pot=Normal[Series[(2Total[Exp[2eps ev]]-Total[Exp[eps ev]]^2)/2,{eps,0,3}]];
 potChecks=Table[Expand[Coefficient[pot,eps,n]-
 Switch[n,0,-12,1,0,2,-Total[ev^2],3,Total[ev^3]/3]],{n,0,3}];
 y1=DiagonalMatrix[{2,-1,-1,0,0,0}]/Sqrt[6];
 yo=SparseArray[{{1,2}->1/Sqrt[2],{2,1}->1/Sqrt[2]},{6,6}]//Normal;
 y2=(y1+yo)/Sqrt[2];ys={y1,y2,yo};
 tm=aa y1+bb yo;dm=cc y1+dd yo;comm=dm.tm-tm.dm;
 kinetic=<|"CubicKineticTrace"->Simplify[Tr[dm.comm]],
 "GaugeCurrentNonzeroExample"->Tr[Transpose[yo.y1-y1.yo].(yo.y1-y1.yo)],
 "CanonicalMass"->Simplify[-(2kap)^2/(2kap^2 ell^2)+2/ell^2],
 "CanonicalCubic"->Simplify[(2kap)^3/(6kap^2 ell^2)-(8kap/ell^2)/6]|>;
 cmat=KroneckerProduct[{{0,d12,d13},{d12,0,d23},{d13,d23,0}},IdentityMatrix[6]];
 amat=ArrayFlatten[Table[If[i==h,{s1,s2,s3}[[i]]ys[[i]],ConstantArray[0,{6,6}]],{i,3},{h,3}]];
 bprod=cmat.amat;
 wick2=Simplify[Coefficient[Coefficient[Tr[bprod.bprod]/4,s1],s2]-d12^2 Tr[y1.y2]/2];
 wick3=Simplify[Coefficient[Coefficient[Coefficient[Tr[bprod.bprod.bprod]/6,s1],s2],s3]-
 d12 d13 d23 Tr[y1.y2.yo]];
 group=Table[Simplify[Tr[Dot@@(ys[[#]]& /@ per)]-Tr[y1.y2.yo]],
 {per,Permutations[Range[3]]}];
 normChecks=<|"CFTUnitTwoPoint"->FullSimplify[(nn^2-1)/(32Pi^4)(4Pi^2 Sqrt[2/(nn^2-1)])^2-1,
 Assumptions->nn>1],
 "CFTUnitThreePoint"->FullSimplify[(nn^2-1)/(64Pi^6)(4Pi^2 Sqrt[2/(nn^2-1)])^3-
 2Sqrt[2]/Sqrt[nn^2-1],Assumptions->nn>1],
 "NewtonFluxNormalization"->Simplify[(8Pi*8Pi^6 gs^2 ap^4/(Pi^3 ell^5)/.
 ap^4->ell^8/(16Pi^2 gs^2 nn^2))-4Pi^2 ell^3/nn^2]|>;
 cubicIntegral=FullSimplify[Pi^2 Integrate[
 t(1-t)Integrate[u/(u^2+t(1-t)r^2)^2,{u,0,Infinity},Assumptions->r>0&&0<t<1],
 {t,0,1},Assumptions->r>0]-Pi^2/(2r^2),Assumptions->r>0];
 bulk3=FullSimplify[-(8kap/ell^2)(ell^2/(16Pi^4))(2Pi^2/ell)^(3/2)/.
 kap->2Pi ell^(3/2)/nn,Assumptions->ell>0&&nn>1];
 coords=Array[mu,6];vel=Array[vv,6];
 lsym=Table[ll[Min[i,h],Max[i,h]],{i,6},{h,6}];
 dy=(coords+eps lsym.coords/(2r^2))dr+r vel-eps lsym.vel/(2r);
 coordCheck=Expand[Coefficient[Expand[dy.dy],eps]-(coords.lsym.coords)dr^2/r^2+vel.lsym.vel];
 coulomb=<|"D3QuadrupoleCoefficient"->Expand[Coefficient[Normal[Series[(1-2eps an+eps^2 asq)^(-2),
 {eps,0,2}]],eps,2]-(12an^2-2asq)],
 "CartesianMetricLinearization"->coordCheck,
 "WorldvolumeFactor"->Simplify[-(lnn+6mnn)-lnn/2/.mnn->-lnn/4],
 "RadialFactor"->Simplify[2lnn+6mnn-lnn/2/.mnn->-lnn/4],
 "AngularTraceFactor"->Simplify[lnn+6mnn+lnn/2/.mnn->-lnn/4],
 "ProbeKineticNormalization"->Simplify[(2Pi ap)^2/(2(2Pi)^3 gs ap^2)-1/(4Pi gs)],
 "CoulombScalarCoefficient"->Simplify[-4(4Pi^2 ap^2 gym^2/nn)/(gym^2 nn ap^2)+16Pi^2/nn^2],
 "CanonicalOperatorCoefficient"->FullSimplify[ell^2/(2kap)(-16Pi^2/nn^2)+4Pi Sqrt[ell]/nn/.
 kap->2Pi ell^(3/2)/nn,Assumptions->ell>0&&nn>1]|>;
 logSamples=Table[<|"RadiusRatio"->rr,"MaxRemainderOverY"->Max[Table[N[
 Abs[BesselI[0,rr yy]BesselK[0,yy]+Log[yy/2]+EulerGamma]/yy,40],
 {yy,{1/1000000,1/100,1,10,100}}]]|>,{rr,{0,1/10,1}}];
 jTests=Table[<|"x"->xx,"BoundPassed"->TrueQ[N[Abs[1-BesselJ[0,xx]]-xx^2/4,40]<=0]|>,
 {xx,{1/1000,1/100,1/10,1/2,1,3,10,100}}];
 kv={1,1,Sqrt[2]};
 base=NIntegrate[u Times@@(BesselK[0,# u]& /@ kv),{u,0,Infinity},
 WorkingPrecision->40,AccuracyGoal->25,PrecisionGoal->25,MaxRecursion->25,
 Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
 finite3[zz_]:=Times@@(BesselK[0,# zz]& /@ kv)*NIntegrate[
 u Times@@(BesselI[0,# u]& /@ kv),{u,0,zz},WorkingPrecision->40,
 AccuracyGoal->25,PrecisionGoal->25,Method->{"GlobalAdaptive","SymbolicProcessing"->0}]+
 Times@@(BesselI[0,# zz]& /@ kv)*NIntegrate[u Times@@(BesselK[0,# u]& /@ kv),{u,zz,Infinity},
 WorkingPrecision->40,AccuracyGoal->25,PrecisionGoal->25,MaxRecursion->25,
 Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
 num3=Table[With[{val=finite3[zz]},<|"Radius"->zz,"FiniteIntegral"->val,
 "RelativeBoundaryError"->Abs[val/base-1]|>],{zz,{1/10,1/100,1/1000}}];
 <|"Conventions"->"AdS5 canonical BF scalar; Omega=z/ell; logfree vacuum; IIB TrYIYJ=delta; SU(N) canonical components",
 "BFIdentities"->bf,"BoundaryVariation"->cut,"CapPlusIR"->cap,
 "IIBPotentialCoefficients"->potChecks,"IIBKineticAndCubic"->kinetic,
 "WickTwoPointResidual"->wick2,"WickThreePointResidual"->wick3,
 "SymmetricTripleTraceResiduals"->group,"NormalizationChecks"->normChecks,
 "D222IntegralResidual"->cubicIntegral,"BulkUnitThreePointCoefficient"->bulk3,
 "BulkThreePointLeadingMatchResidual"->FullSimplify[bulk3+2Sqrt[2]/nn],
 "CoulombCalibration"->coulomb,"LogRemainderSamples"->logSamples,
 "J0Bounds"->jTests,"TripleKBoundaryIntegral"->base,"TripleKFiniteRadiusSamples"->num3,
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
report
