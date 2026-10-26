(* Fresh kernel: scalar-channel first-order reconstruction, Omega=z/ell.
   Unit U=sqrt(2 Pi^2/ell) Omega^-2 phi; DU=g U^2; boundary C3=c.
   Positive-energy invariant s=p0^2-|pvec|^2; spacelike transfer s=-kap^2. *)
ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={}},Module[
 {op,rt,rs,checks,angSol,del,cc,phase,seriesH,hsIntegral,
  samples,aa,bb,kk,zz,cut,jj,tri,ang,vol,green,tail,discSamples},
 op[f_,ss_]:=D[f,{z,2}]+D[f,z]/z+ss f;
 rt=Pi u/2(BesselJ[0,q u]BesselY[0,q z]-BesselY[0,q u]BesselJ[0,q z]);
 rs=u(BesselI[0,kap z]BesselK[0,kap u]-BesselK[0,kap z]BesselI[0,kap u]);
 angSol=(BesselI[0,kap z]-BesselJ[0,r z])/(kap^2+r^2);
 del=Sqrt[(kap^2+(a+b)^2)(kap^2+(a-b)^2)];cc=kap^2+a^2+b^2;
 seriesH=z^2/4-z^4(a^2+b^2+ss)/64;
 checks=<|
 "BFRescaling"->Expand[(z^2 D[(z/ell)^2 f[z],{z,2}]-3z D[(z/ell)^2 f[z],z]+
 z^2 ss (z/ell)^2 f[z]+4(z/ell)^2 f[z])/ell^2-(z/ell)^4 op[f[z],ss]],
 "TimelikeKernelODE"->FullSimplify[op[rt,q^2],Assumptions->q>0&&z>0&&u>0],
 "TimelikeJump"->FullSimplify[(D[rt,z]/.z->u)-1,Assumptions->q>0&&u>0],
 "SpacelikeKernelODE"->FullSimplify[op[rs,-kap^2],Assumptions->kap>0&&z>0&&u>0],
 "SpacelikeJump"->FullSimplify[(D[rs,z]/.z->u)-1,Assumptions->kap>0&&u>0],
 "ZeroMomentumKernel"->FullSimplify[op[u Log[z/u],0]],
 "AngularParticularEquation"->FullSimplify[op[angSol,-kap^2]-BesselJ[0,r z],
 Assumptions->kap>0&&r>0&&z>0],
 "SmallRadiusCoefficients"->Normal[Series[op[seriesH,ss]-BesselJ[0,a z]BesselJ[0,b z],{z,0,2}]],
 "UnitCoupling"->FullSimplify[(8(2Pi ell^(3/2)/nn)/ell^2)/(2Sqrt[2Pi^2/ell])-4Sqrt[2]/nn,
 Assumptions->ell>0&&nn>0],
 "TriangleAngularSupport"->Expand[del^2-(a^2-b^2+kap^2)^2-4b^2 kap^2],
 "TrianglePhaseSpace"->Simplify[(1/8)2Pi/(a(del/(2a)))-Pi/(2del)],
 "TriangleFourierFactor"->Simplify[(8Pi^3)^3/(2Pi)^4 Pi/(2del)/(2Pi^3)^2-4/del],
 "BubbleFourierFactor"->Simplify[(8Pi^3)^2/(2Pi)^4 (Pi/2)-2Pi^3],
 "AngularRationalIntegral"->FullSimplify[
 Integrate[1/(kap^2+a^2+b^2-2a b Cos[th]),{th,0,Pi},Assumptions->kap>0&&a>0&&b>0]/Pi-1/del,
 Assumptions->kap>0&&a>0&&b>0],
 "HorizonCancellation"->Simplify[(4c+2g)/del/.c->-g/2],
 "UnitEuclideanTreePrefactor"->FullSimplify[-lam ell^2(2Pi^2/ell)^(3/2)+
 8Pi^4(lam/(2Sqrt[2Pi^2/ell])),Assumptions->ell>0],
 "DoubleCutNormalization"->Simplify[-8Pi^4 g Pi^2/(2Pi^3)^2+2g],
 "BesselResolventMass"->FullSimplify[z/kap(BesselI[0,kap z]BesselK[1,kap z]+
 BesselI[1,kap z]BesselK[0,kap z])-1/kap^2,Assumptions->kap>0&&z>0],
 "ConeVolumeUnitMeasure"->Simplify[(1/(8Pi))Integrate[4Pi e^3/3,{e,0,en}]-en^4/24],
 "VelocityDiscriminant"->Expand[(1-v x)^2-(1-v^2)(1-x^2-y^2)-(x-v)^2-(1-v^2)y^2],
 "VelocityIntegralBound"->FullSimplify[Integrate[4Pi v^2 (2Pi^2/Sqrt[1-v^2]),{v,0,1}]-2Pi^4],
 "CompactHSBound"->Simplify[(1/(8Pi))^2 (2Pi^4)/4 (en^2/2)^2-Pi^2 en^4/512]
 |>;
 samples=Table[
 {aa,bb,kk,zz}=vals;cut=100/kk;
 jj[t_?NumericQ]:=BesselJ[0,aa t]BesselJ[0,bb t];
 tri=NIntegrate[t BesselK[0,kk t]jj[t],{t,0,cut},WorkingPrecision->40,
 AccuracyGoal->27,PrecisionGoal->27,MaxRecursion->30,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
 ang=NIntegrate[-2/Pi BesselJ[0,zz Sqrt[aa^2+bb^2-2aa bb Cos[th]]]/
 (kk^2+aa^2+bb^2-2aa bb Cos[th]),{th,0,Pi},WorkingPrecision->40,AccuracyGoal->27,PrecisionGoal->27];
 vol=N[(-2/del BesselI[0,kap z]/.{a->aa,b->bb,kap->kk,z->zz}),40]+
 2NIntegrate[t(BesselI[0,kk zz]BesselK[0,kk t]-BesselK[0,kk zz]BesselI[0,kk t])jj[t],
 {t,0,zz},WorkingPrecision->40,AccuracyGoal->27,PrecisionGoal->27];
 green=-2(N[BesselK[0,kk zz],40]NIntegrate[t BesselI[0,kk t]jj[t],{t,0,zz},
 WorkingPrecision->40,AccuracyGoal->27,PrecisionGoal->27]+
 N[BesselI[0,kk zz],40]NIntegrate[t BesselK[0,kk t]jj[t],{t,zz,cut},
 WorkingPrecision->40,AccuracyGoal->27,PrecisionGoal->27,MaxRecursion->30,
 Method->{"GlobalAdaptive","SymbolicProcessing"->0}]);
 tail=N[cut BesselK[1,kk cut]/kk,30];
 <|"Parameters_a_b_kappa_z"->vals,"TripleBesselResidual"->N[tri-(1/del/.{a->aa,b->bb,kap->kk}),25],
 "TripleBesselTailBound"->tail,"AngularFormFactor_g1"->ang,
 "VolterraAngularResidual"->N[vol-ang,25],"GreenAngularResidual"->N[green-ang,25],
 "GreenTailBound"->2N[BesselI[0,kk zz],30]tail,
 "AmplitudeBoundPassed"->TrueQ[Abs[ang]<=N[2/del/.{a->aa,b->bb,kap->kk},40]],
 "BoundaryRateBoundPassed"->TrueQ[Abs[ang+N[2/del/.{a->aa,b->bb,kap->kk},40]]<=zz^2/2]|>,
 {vals,{{7/10,11/10,6/5,4/5},{2,3,4,7/10},{1,1,4/5,6/5}}}];
 discSamples=Table[With[{ka=vals[[1]],zu=vals[[2]],zv=vals[[3]]},
 I N[BesselJ[0,ka Min[zu,zv]],45](N[BesselK[0,I ka Max[zu,zv]],45]-N[BesselK[0,-I ka Max[zu,zv]],45])-
 N[Pi BesselJ[0,ka zu]BesselJ[0,ka zv],45]],{vals,{{7/10,2/5,4/5},{2,3/2,1/3}}}];
 <|"Conventions"->"Unit two-point; scalar channel; spacelike transfer; g=4sqrt(2)d/N, c=-g/2",
 "ExactResiduals"->checks,"SpacelikeSamples"->samples,"DiscontinuityResiduals"->discSamples,
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
report
