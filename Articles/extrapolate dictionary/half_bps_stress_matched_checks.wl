(* Open spacelike stress-scalar channel. Divide M by alpha*(e:q q).
   Compare fixed-boundary Volterra solution with no-exponential Green solution.
   Finite quadratures are numerical checks; displayed tail bound is analytic. *)
ClearAll[stressMatchedChecks];
stressMatchedChecks[] := Block[{$MessageList={},$Messages={}},
 Module[{a,b,k,z,u,dd,xx,m0,source,r,coef6,coef8,series,seriesResidual,
   numerical,rows,points,checks},
 dd=Sqrt[(k^2+(a+b)^2)(k^2+(a-b)^2)]; xx=a^2+k^2-b^2;
 m0=64(xx^2-2k^2 b^2)/dd^5;
 source=-8/a^2 z^2 BesselJ[2,a z]BesselJ[0,b z];
 coef6=-1/36; coef8=-(k^2/36-a^2/12-b^2/4)/64;
 series=coef6 z^6+coef8 z^8;
 seriesResidual=FullSimplify[Normal[Series[D[series,{z,2}]+D[series,z]/z-k^2 series-source,{z,0,6}]]];
 numerical[{aa_,bb_,kk_,zz_}]:=Module[{av,bv,kv,zv,L,disc,boundary,volterra,regular,tail,ij,low,high},
   {av,bv,kv,zv}=N[{aa,bb,kk,zz},80]; L=100/kv+zv;
   disc=Sqrt[(kv^2+(av+bv)^2)(kv^2+(av-bv)^2)];
   boundary=N[m0/.{a->aa,b->bb,k->kk},55];
   ij[v_?NumericQ]:=BesselJ[2,av v]BesselJ[0,bv v];
   volterra=BesselI[0,kv zv]boundary-8/av^2 NIntegrate[
     u^3(BesselI[0,kv zv]BesselK[0,kv u]-BesselK[0,kv zv]BesselI[0,kv u])ij[u],
     {u,0,zv},WorkingPrecision->55,AccuracyGoal->32,PrecisionGoal->32,MaxRecursion->30];
   low=NIntegrate[u^3 BesselI[0,kv u]ij[u],{u,0,zv},WorkingPrecision->55,
     AccuracyGoal->32,PrecisionGoal->32,MaxRecursion->30];
   high=NIntegrate[u^3 BesselK[0,kv u]ij[u],{u,zv,L},WorkingPrecision->55,
     AccuracyGoal->32,PrecisionGoal->32,MaxRecursion->30];
   regular=8/av^2(BesselI[0,kv zv]high+BesselK[0,kv zv]low);
   tail=8/av^2 BesselI[0,kv zv]Sqrt[Pi/(2kv)]Gamma[7/2,kv L]/kv^(7/2);
   <|"Parameters"->{aa,bb,kk,zz},"BoundaryM0"->N[boundary,22],
     "FreeTerm"->N[BesselI[0,kv zv]boundary,22],"VolterraFull"->N[volterra,22],
     "RegularFull"->N[regular,22],"Difference"->N[volterra-regular,8],
     "OmittedTailUpperBound"->N[tail,8],"NumericalAgreement"->TrueQ[Abs[volterra-regular]<10^-25]|>
 ];
 points={{1,1,1,1},{1,1,1,10},{1,1,Sqrt[2],1},{1,2,3,7/10}};
 rows=numerical/@points;
 checks=<|"ZeroBoundarySeriesResidual"->seriesResidual,
   "BoundaryQuadrupoleZero"->Simplify[m0/.{a->1,b->1,k->Sqrt[2]}],
   "FirstNonzeroCorrection"->coef6,"NextCorrection"->coef8,
   "Rows"->rows|>;
 <|"Checks"->checks,"AllPassed"->TrueQ[seriesResidual===0 &&
   checks["BoundaryQuadrupoleZero"]===0 && And@@Lookup[rows,"NumericalAgreement"]],
   "Messages"->(ToString[#,InputForm]&/@$MessageList),
   "Scope"->"alpha*(e:q q)=1. Analytic tail bound only; NIntegrate error is not interval certified."|>
 ]];
stressMatchedChecks[]
