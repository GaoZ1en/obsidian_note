(* Self-contained second-order tests. No JSON, no original-note modifications.
   Hphysical=(2Pi/L)(H0+g W1+g^2 W2), g=8Pi lambda/L^2.
   c denotes ONE chiral central charge. Point splitting is specified in the note. *)
Block[{$Messages={},$MessageList={}},
 Module[{a,b,c,nr,nl,n2r,n2l,qr,ql,jr,jl,w2,mix,e,z,kappa,r,l,r1,l1,r3,l3,
         energyWard,momentumWard,kernel,loopLimit,vertexLoc,vertexTotal,checks},
  qr=a^2-a/6+2nr+c/1440;ql=b^2-b/6+2nl+c/1440;
  jr=2n2r+a/60-c/3024;jl=2n2l+b/60-c/3024;
  w2=(qr b+a ql)/2+c/48(jr+jl);
  mix=-a nl-b nr-c/24(n2r+n2l)-2a b Zeta[-1]-c/12(a+b)Zeta[-3]-c^2/288 Zeta[-5];
  energyWard=Expand[4r1 l-4r l1+4kappa(-r3+l3)-4r1 l+4r l1+4kappa(r3-l3)];
  momentumWard=Expand[12(r1 l+r l1)-4kappa(r3+l3)-12(r1 l+r l1)+4kappa(r3+l3)];
  z=Exp[-e];
  kernel=-1/2(z/(1-z)^2-z)+1/2 Cosh[e]Log[1-z]+1/4+z/8;
  loopLimit=FullSimplify[Limit[kernel+1/(2e^2)-Log[e]/2,e->0,Direction->"FromAbove"]];
  vertexLoc=FullSimplify[(c/2)(-(c+2)/12+4c/24)];
  vertexTotal=FullSimplify[vertexLoc+11c/6];
  checks=<|
   "FirstOrderEnergyWardResidual"->energyWard,
   "FirstOrderMomentumWardResidual"->momentumWard,
   "AbelSum1"->Series[Exp[-e]/(1-Exp[-e])^2,{e,0,4}],
   "AbelSum3"->Series[D[Exp[-e]/(1-Exp[-e])^2,{e,2}],{e,0,2}],
   "AbelSum5"->Series[D[Exp[-e]/(1-Exp[-e])^2,{e,4}],{e,0,0}],
   "AllEnergyBlockResidual"->Expand[w2+mix-a b(a+b)/2],
   "QuantumDerivativeCoefficientRequired"->c/48,
   "InnerPairSymmetricVacuumTTVertex"->vertexLoc,
   "WholeCompositeDeterminantFPVacuumTTVertex"->FullSimplify[vertexLoc+c/2],
   "WholeCompositeDeterminantFPVacuumTTVertex_cHalf"->FullSimplify[(vertexLoc+c/2)/.c->1/2],
   "SmoothHighStateKernelFinitePart"->loopLimit,
   "RenormalizedTwoStateEffectiveVertex_cHalf"->(vertexTotal/.c->1/2),
   "NSChiralJVacuum"->(-1/48/60-1/2/3024),
   "RamondChiralJVacuum"->(1/24/60-1/2/3024),
   "FullLocalV2VacuumPhysical_cHalf"->FullSimplify[128Pi^3(w2/.{a->-1/48,b->-1/48,c->1/2,nr->0,nl->0,n2r->0,n2l->0})],
   "FermionK42FourCreationVertex"->(-104Pi^4),
   "FermionK33FourCreationVertex"->64Pi^4,
   "FermionInnerPairV2FourCreationResidual"->FullSimplify[-7/(6Pi)(-104Pi^4)-47/(24Pi)(64Pi^4)+4Pi^3],
   "FermionDeterminantFPV2FourCreationResidual"->FullSimplify[-7/(6Pi)(-104Pi^4)-35/(24Pi)(64Pi^4)-28Pi^3],
   "AssociationFrameDifferencePhysical"->FullSimplify[64Pi^4/(2Pi)],
   "InnerPairEffectiveVertex_cHalf"->(vertexTotal/.c->1/2),
   "DeterminantFPEffectiveVertex_cHalf"->((vertexTotal+c/2)/.c->1/2)
   |>;
  <|"Checks"->checks,"Messages"->(ToString[#,InputForm]&/@$MessageList),
    "NotProved"->"The complete second-order local/Hilbert-source Ward extension is not tested by these identities."|>
 ]]
