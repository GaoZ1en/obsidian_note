(* Independent fixed-global-AdS3 scalar contact checks.
   AdS radius = 1, Delta > 1, fast boundary condition.
   u_pq = sqrt(norm2) Exp[-I(Delta+p+q)t+I(p-q)theta]
          x^(|p-q|/2)(1-x)^(Delta/2) JacobiP[min(p,q),|p-q|,Delta-1,1-2x].
   x=Sin[rho]^2. All Jacobi normalizations have positive real square roots.
   Run: wolframscript -file independent_resonance_checks.wls
   This script reads and writes no files. *)

ClearAll[norm2, rad, ov, energy, angular, modeR, lowerRad];
norm2[d_, p_, q_] := Gamma[Min[p,q]+1] Gamma[Max[p,q]+d]/
  (2 Pi Gamma[Max[p,q]+1] Gamma[Min[p,q]+d]);
rad[d_, p_, q_, x_] := x^(Abs[p-q]/2) (1-x)^(d/2) *
  JacobiP[Min[p,q],Abs[p-q],d-1,1-2 x];
energy[d_, modes_] := Total[(d+Total[#])& /@ modes];
angular[modes_] := Total[Subtract@@@modes];
ov[d_, left_, right_] := If[angular[left] != angular[right], 0,
  FullSimplify[Pi Times@@(Sqrt[norm2[d,Sequence@@#]]& /@ Join[left,right])
    Integrate[Times@@(rad[d,Sequence@@#,x]& /@ Join[left,right])/(1-x)^2,
      {x,0,1}]]];
modeR[d_,p_,q_,x_] := Sqrt[norm2[d,p,q]] rad[d,p,q,x];
lowerRad[d_,p_,q_,axis_] := Module[{ell=p-q, w=d+p+q, f},
  f=modeR[d,p,q,x];
  FullSimplify[((w Sqrt[x]+If[axis==0,ell,-ell]/Sqrt[x]) f
      +2 Sqrt[x](1-x) D[f,x])/2, Assumptions->0<x<1]];

report=Block[{$Messages={},$MessageList={}}, Module[
 {normCases,normTests,topCases,topTests,exampleCases,examples,expected,
  individualZero,c5,h5,eig5,basis6,raw6,amp6,primary6,g6,d6,h6,
  loweringCases,loweringTests,checks},
 normCases={{2,0,0},{2,1,0},{2,1,1},{4/3,2,1},{3/2,2,2}};
 normTests=Map[Function[c,With[{d=c[[1]],p=c[[2]],q=c[[3]]},
   {c,FullSimplify[2(d+p+q) Pi norm2[d,p,q]
     Integrate[rad[d,p,q,x]^2/(1-x),{x,0,1}]]}]],normCases];
 topCases={
   {2,{{1,1}},{{0,0},{0,0}}},
   {4/3,{{2,2}},ConstantArray[{0,0},4]},
   {2,{{4,3}},{{1,0},{0,0},{0,0},{0,0}}},
   {6,{{4,3}},{{1,0},{0,0}}},
   {8/3,{{5,4}},{{1,0},{0,0},{0,0},{0,0}}}};
 topTests=Map[Function[e,{e,
   energy[e[[1]],e[[2]]]==energy[e[[1]],e[[3]]],
   ov[e[[1]],e[[2]],e[[3]]]}],topCases];
 exampleCases={
   {"phi5_D2",2,{{1,0},{0,1}},ConstantArray[{0,0},3]},
   {"phi5_D2_radial",2,{{1,1},{0,0}},ConstantArray[{0,0},3]},
   {"phi6_D3",3,{{3,0},{0,3}},ConstantArray[{0,0},4]},
   {"phi7_D4over3",4/3,{{2,0},{0,2}},ConstantArray[{0,0},5]},
   {"phi8_D3over2",3/2,{{3,0},{0,3}},ConstantArray[{0,0},6]}};
 examples=Map[Function[e,{e[[1]],
   energy[e[[2]],e[[3]]]==energy[e[[2]],e[[4]]],
   ov[e[[2]],e[[3]],e[[4]]]}],exampleCases];
 expected={1/(40 Sqrt[2] Pi^(3/2)),1/(40 Sqrt[2] Pi^(3/2)),
   1/(1056 Pi^2),3/(748 Sqrt[2] Pi^(5/2)),1/(2048 Pi^3)};
 individualZero=ov[2,{{0,1},{1,1}},{{0,0},{0,0},{0,1}}];
 c5=examples[[1,3]];
 (* Basis: |22>, |10,01>, |11,00>, |000>/sqrt(3!). *)
 h5=c5/Sqrt[6] {{0,0,0,0},{0,0,0,1},{0,0,0,1},{0,1,1,0}};
 eig5=FullSimplify[Eigenvalues[h5]];
 (* N=2, E=8, J=0 normalized basis. Last state has divisor sqrt(2!). *)
 basis6={{{0,0},{2,2}},{{0,1},{2,1}},{{0,2},{2,0}},
   {{1,0},{1,2}},{{1,1},{1,1}}};
 raw6=ov[2,#,ConstantArray[{0,0},4]]& /@ basis6;
 amp6=FullSimplify[raw6/{Sqrt[24],Sqrt[24],Sqrt[24],Sqrt[24],Sqrt[48]}];
 g6=FullSimplify[Sqrt[amp6.amp6]];
 primary6=FullSimplify[amp6/g6];
 d6=FullSimplify[24 ov[2,ConstantArray[{0,0},3],ConstantArray[{0,0},3]]/36];
 h6=FullSimplify[8 Pi^2 {{0,g6},{g6,d6}}];
 (* Direct Killing action verifies phases used by the separate Sage primary check. *)
 loweringCases={{2,1,0,0},{2,1,1,0},{2,2,1,0},{2,2,2,0},
   {2,0,1,1},{2,1,1,1},{2,1,2,1},{4/3,2,1,0}};
 loweringTests=Map[Function[c,With[
   {d=c[[1]],p=c[[2]],q=c[[3]],axis=c[[4]]},
   Module[{target,j,phase,res},
     target=If[axis==0,{p-1,q},{p,q-1}];j=If[axis==0,p,q];
     phase=(-1)^(Min[p,q]-(Min@@target));
     res=FullSimplify[lowerRad[d,p,q,axis]
       -phase Sqrt[j(d+j-1)] modeR[d,Sequence@@target,x],
       Assumptions->0<x<1];{c,res}]]],loweringCases];
 checks=<|
   "KG_normalizations"->And@@(Last[#]===1& /@ normTests),
   "one_to_many_zero"->And@@(#[[2]]===True && #[[3]]===0& /@ topTests),
   "explicit_nonzero_values"->TrueQ[FullSimplify[examples[[All,3]]==expected]],
   "examples_resonant"->And@@examples[[All,2]],
   "allowed_individual_zero"->(individualZero===0),
   "phi5_block_spectrum"->TrueQ[FullSimplify[Sort[eig5]==
     Sort[{-1/(40 Sqrt[6] Pi^(3/2)),1/(40 Sqrt[6] Pi^(3/2)),0,0}]]],
   "phi6_primary_coupling"->(g6===1/(224 Sqrt[3] Pi^2)),
   "phi6_four_ground_diagonal"->(d6===1/(60 Pi^2)),
   "phi6_block_determinant"->(FullSimplify[Det[h6]]===-1/2352),
   "Killing_lowering_phases"->And@@(Last[#]===0& /@ loweringTests)|>;
 <|"Normalization"->normTests,"TopResonances"->topTests,
   "NonzeroExamples"->examples,"IndividualResonantZero"->individualZero,
   "Phi5_E6J0_EigenvaluesPerLambda5"->eig5,
   "Phi6_E8J0_N2Basis"->basis6,"Phi6_RawSpatialCoefficients"->raw6,
   "Phi6_FockAmplitudesPerLambda6"->amp6,
   "Phi6_NormalizedScalarPrimary"->primary6,
   "Phi6_PrimaryCouplingPerLambda6"->g6,
   "Phi6_PrimaryBlockInUnitsLambda6Over8PiSquared"->h6,
   "Phi6_PrimaryBlockCharacteristicPolynomial"->Factor[Det[z IdentityMatrix[2]-h6]],
   "KillingLoweringResiduals"->loweringTests,"Checks"->checks,
   "AllChecksPassed"->And@@Values[checks],
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
Print[ToString[report,InputForm,PageWidth->110]];
If[report["AllChecksPassed"] =!= True || report["Messages"] =!= {}, Exit[1]];
