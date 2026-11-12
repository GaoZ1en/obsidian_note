(* Self-contained Wolfram verification; c is one chiral central charge.
   This script returns an Association and never generates JSON. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{lambda,L,alpha,b,c,n,M,x,N,a,energy,cn,chi,e2,c1,c3,d1,d3,slope,checks,delta,eStart,xx,t,kap,airy},
  energy=(Sqrt[1+4lambda alpha/L^2+4lambda^2 b^2/L^4]-1)L/(2lambda);
  cn=c n(n^2-1)/12;
  chi=Factor[Sum[16Pi^2 cn^2/(L^4 n^2),{n,2,M}]];
  e2=Factor[-Sum[64Pi^3 cn^2/(L^5 n),{n,2,M}]];
  c1=-2I/Pi;c3=-2I/(3Pi);
  d1=-2I/(2N Sin[Pi/(2N)])-c1;
  d3=-2I/(2N Sin[3Pi/(2N)])-c3;
  slope=2N/(8(L/N)^3)(d1^2+d1 d3);
  airy=AiryAi[(t-x)/(3kap t)^(1/3)]/(3kap t)^(1/3);
  checks=<|
   "BurgersResidual"->FullSimplify[D[energy,lambda]-energy D[energy,L]-b^2/L^3,
      Assumptions->L>0&&lambda>0&&alpha>0&&Element[b,Reals]],
   "EnergySeries"->Series[energy,{lambda,0,2}],
   "VacuumSusceptibility"->chi,
   "BareSecondOrderVacuumEnergy"->e2,
   "CrossMode2Derivative_cHalf"->(4Pi cn^2/(L^2 n)/.{c->1/2,n->2}),
   "NSVacuumSlopeSeries"->FullSimplify[Series[slope/.N->1/x,{x,0,4}],Assumptions->L>0],
   "NSVacuumSlopeLimitResidual"->FullSimplify[Limit[slope,N->Infinity]+Pi^2/(144L^3),Assumptions->L>0],
   "InfiniteWickConstantPerMajoranaSite"->FullSimplify[c1^2+c1 c3],
   "NearestWickCoefficient"->FullSimplify[-2c1-c3],
   "ThirdWickCoefficient"->(-c1),
   "ContinuumFourFermionDeterminant"->Det[Table[{1,j a/2,(-1)^j,(-1)^j j a/2},{j,0,3}]],
   "NSCubicCasimirHurwitzZeta"->Zeta[-3,1/2],
   "HagedornTailIntegralResidual"->FullSimplify[
      Integrate[xx^(-3/2)Exp[-delta xx],{xx,eStart,Infinity},Assumptions->delta>0&&eStart>0]
      -Sqrt[delta]Gamma[-1/2,delta eStart],Assumptions->delta>0&&eStart>0],
   "HagedornTailEndpoint"->FullSimplify[Limit[Sqrt[delta]Gamma[-1/2,delta eStart],delta->0,Direction->"FromAbove"],Assumptions->eStart>0],
   "CubicMajoranaAiryPDEResidual"->FullSimplify[D[airy,t]+D[airy,x]-kap D[airy,{x,3}],Assumptions->t>0&&kap>0&&Element[x,Reals]]
   |>;
  <|"Checks"->checks,"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]]
