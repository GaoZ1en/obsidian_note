(* Fresh kernel. Unit BF scalar D U=g U^2; rho=2Pi^3 theta+.
   Timelike transfer mass d; physical future case a>=b+d.
   Quadratures use exact input parameters, 50 digits, removable divided differences. *)
ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={}},Module[
 {op,part,rr,gr,g0,del,exact,quot,avec,rv,vol,vvec,samples,fullSamples,
  vals,t,m,n,zz,av,vv,aa,bb,dd,z1,z2,z3,fa,fv,epsSamples},
 op[f_,tt_]:=D[f,{z,2}]+D[f,z]/z+tt^2 f;
 part=(BesselJ[0,m z]-BesselJ[0,t z])/(t^2-m^2);
 rr=Pi u/2(BesselJ[0,t u]BesselY[0,t z]-BesselY[0,t u]BesselJ[0,t z]);
 gr=Pi/2 BesselJ[0,t u]BesselY[0,t z]-I Pi/2 sig BesselJ[0,t z]BesselJ[0,t u];
 g0=Pi/2 BesselY[0,t u]-I Pi/2 sig BesselJ[0,t u];
 del=Sqrt[((a+b)^2-d^2)((a-b)^2-d^2)];
 exact=<|
 "DividedDifferenceODE"->FullSimplify[op[part,t]-BesselJ[0,m z],Assumptions->z>0&&t>0&&m>0&&t!=m],
 "ResonantLimit"->FullSimplify[Limit[part,m->t]-z BesselJ[1,t z]/(2t),Assumptions->z>0&&t>0],
 "ZeroMassLimit"->FullSimplify[Limit[z BesselJ[1,t z]/(2t),t->0]-z^2/4],
 "SquaredMassDerivative"->FullSimplify[D[BesselJ[0,z Sqrt[x]],x]+z BesselJ[1,z Sqrt[x]]/(2Sqrt[x]),
 Assumptions->z>0&&x>0],
 "NearBoundaryQuotient"->FullSimplify[Normal[Series[part,{z,0,4}]]-
 (z^2/4-(m^2+t^2)z^4/64),Assumptions->t!=m],
 "AngularSeriesCoefficient"->Simplify[Integrate[(m^2+n^2-2m n Cos[th]+t^2),{th,0,Pi}]/Pi-
 (m^2+n^2+t^2)],
 "RetardedVolterraSubtraction"->Expand[gr-BesselJ[0,t z]g0-rr/u],
 "AbsorptiveCancellation"->Expand[-I Pi/2 ha hb hd ja jb jd+I Pi/2 ha hb hd ja jb jd],
 "DiscriminantIdentity"->Expand[(a^2-(b+d)^2)(a^2-(b-d)^2)-del^2],
 "TriangleAngularExclusion"->Expand[(a^2-b^2-d^2)^2-del^2-4b^2 d^2],
 "HomogeneousCancellation"->Simplify[ha hb hd(1/del-1/del)],
 "VertexNormalization"->Simplify[(-2g/(2Pi^2))(2Pi^2)^3+8Pi^4 g],
 "OrderedWightmanNormalization"->Simplify[2g(2Pi^3)^2-8Pi^6 g],
 "VelocityLogIntegral"->Integrate[r Log[(1+r)/(1-r)],{r,0,1}]-1,
 "ExactGramCapIntegral"->Simplify[(B^2/2)^2/4 *8Pi^2-Pi^2 B^4/2]
 |>;
 quot[zz_?NumericQ,tt_?NumericQ,cc_?NumericQ]:=If[Abs[tt^2-cc]<10^-40,
 If[Abs[tt]<10^-40,zz^2/4,zz BesselJ[1,tt zz]/(2tt)],
 (BesselJ[0,zz Sqrt[Max[0,cc]]]-BesselJ[0,tt zz])/(tt^2-cc)];
 avec[tt_,mm_,nn_,zz_]:=NIntegrate[quot[N[zz,50],N[tt,50],N[mm^2+nn^2-2mm nn Cos[th],50]]/Pi,
 {th,0,Pi},WorkingPrecision->50,AccuracyGoal->30,PrecisionGoal->30,MaxRecursion->25,
 Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
 rv[tt_,zz_,uu_?NumericQ]:=If[uu==0,0,If[tt==0,uu Log[zz/uu],
 Pi uu/2(BesselJ[0,tt uu]BesselY[0,tt zz]-BesselY[0,tt uu]BesselJ[0,tt zz])]];
 vol[tt_,mm_,nn_,zz_]:=NIntegrate[rv[tt,zz,u]BesselJ[0,mm u]BesselJ[0,nn u],{u,0,zz},
 WorkingPrecision->50,AccuracyGoal->30,PrecisionGoal->30,MaxRecursion->25,
 Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
 vvec[tt_,mm_,nn_,zz_]:=NIntegrate[BesselJ[0,zz Sqrt[mm^2+nn^2-2mm nn Cos[th]]]/
 (tt^2-mm^2-nn^2+2mm nn Cos[th])/Pi,{th,0,Pi},WorkingPrecision->50,AccuracyGoal->30,PrecisionGoal->30];
 samples=Table[{t,m,n,zz}=vals;av=avec[t,m,n,zz];vv=vol[t,m,n,zz];
 <|"Parameters_t_m_n_z"->vals,"AngularA"->av,"VolterraResidual"->vv-av,
 "GlobalBoundPassed"->TrueQ[Abs[av]<=zz^2/4]|>,
 {vals,{{3,1,1,7/10},{1,3,1,4/5},{2,1,1,3/5},{1,2,1,9/10},{1,1,1,7/10},{0,0,0,4/5},{0,1,1,3/5}}}];
 fullSamples=Table[{aa,bb,dd,z1,z2,z3}=vals;
 fa=2N[BesselJ[0,bb z3],50](N[BesselJ[0,dd z2],50]avec[aa,bb,dd,z1]+
 N[BesselJ[0,aa z1],50]avec[dd,aa,bb,z2]);
 fv=2N[BesselJ[0,bb z3],50](N[BesselJ[0,dd z2],50]vvec[aa,bb,dd,z1]+
 N[BesselJ[0,aa z1],50]vvec[dd,aa,bb,z2]);
 <|"FutureParameters_a_b_d_z1_z2_z3"->vals,"AmputatedW_g1"->fa,
 "RetardedVolterraResidual"->fv-fa,"BoundaryRateBoundPassed"->TrueQ[Abs[fa]<=(z1^2+z2^2)/2]|>,
 {vals,{{3,1,1,3/10,7/10,1/2},{5/2,3/4,5/4,1/5,2/5,3/5}}}];
 epsSamples=Table[With[{ep=ee},
 Module[{v1,v2},
 v1=NIntegrate[BesselJ[0,3/10 Sqrt[2-2Cos[th]]]/(9-2+2Cos[th]+I ep)/Pi,
 {th,0,Pi},WorkingPrecision->40,AccuracyGoal->25,PrecisionGoal->25];
 v2=NIntegrate[BesselJ[0,7/10 Sqrt[10-6Cos[th]]]/(1-10+6Cos[th]-I ep)/Pi,
 {th,0,Pi},WorkingPrecision->40,AccuracyGoal->25,PrecisionGoal->25];
 <|"epsilon"->ep,"OuterImaginary"->Im[v1],"MiddleImaginary"->Im[v2],
 "OuterResolventBoundPassed"->TrueQ[Abs[v1]<=1/Sqrt[45]],
 "MiddleResolventBoundPassed"->TrueQ[Abs[v2]<=1/Sqrt[45]]|>]],{ee,{1/10,1/100,1/1000}}];
 <|"ExactResiduals"->exact,"DividedDifferenceSamples"->samples,"FullTimelikeSamples"->fullSamples,
 "RegulatedResolventSamples"->epsSamples,"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
report
