(* Maxwell EAdS3: canonical action; A=a log(z/ell)+b; no CS/edge sectors. *)
ClearAll["Global`*"];
Block[{$Messages={},$MessageList={}},
 ass=k>0&&ell>0&&0<z<w;
 c=Log[k ell/2]+EulerGamma;
 g0=ell BesselI[0,k z]BesselK[0,k w];
 gs=z w BesselI[1,k z]BesselK[1,k w]/ell;
 bound=BesselK[0,kap z];
 norm=Integrate[z BesselK[0,kap z]^2,{z,0,Infinity},Assumptions->kap>0];
 energy=Limit[-x^2(BesselK[1,x]^2-BesselK[0,x]BesselK[2,x])/2+Log[x/2]+EulerGamma,x->0,Direction->"FromAbove"];
 endpoint=FullSimplify[Limit[BesselK[0,kap z]+Log[z/ell],z->0,Direction->"FromAbove"]+Log[kap ell/2]+EulerGamma,kap>0&&ell>0];
 angular=Integrate[om^2-p^2,{p,-om,om},Assumptions->om>0];
 timenorm=FullSimplify[Integrate[ell^3 angular Exp[-om tau]/(16Pi),{om,0,Infinity},Assumptions->ell>0&&tau>0]-ell^3/(2Pi tau^4),ell>0&&tau>0];
 gauss=FullSimplify[Integrate[k^3 Exp[-LL^2 k^2](Log[k ell/2]+EulerGamma),{k,0,Infinity},Assumptions->LL>0&&ell>0]-(Log[ell/(2LL)]+(1+EulerGamma)/2)/(2LL^4),LL>0&&ell>0];
 exact=<|
 "transverse Green equation"->FullSimplify[-D[z D[g0,z],z]+z k^2 g0,ass],
 "Wronskian jump"->FullSimplify[z(BesselI[0,k z]D[BesselK[0,k z],z]-D[BesselI[0,k z],z]BesselK[0,k z])+1,k>0&&z>0],
 "bound-state eigenvalue"->FullSimplify[-D[z D[bound,z],z]/z+kap^2 bound,kap>0&&z>0],
 "bound-state norm"->FullSimplify[norm-1/(2kap^2),kap>0],
 "renormalized derivative norm"->FullSimplify[energy+1/2],
 "bound logarithmic data"->endpoint,
 "mixed pole scale"->FullSimplify[(c-f)/.k->2Exp[f-EulerGamma]/ell,ell>0&&Element[f,Reals]],
 "mixed endpoint ratio"->FullSimplify[1-c/(c-f)+f/(c-f)],
 "magnetic scalar derivative"->FullSimplify[D[gs,z,w]+k^2 z w BesselI[0,k z]BesselK[0,k w]/ell,ass],
 "electric regular derivative"->FullSimplify[D[g0,z,w]+ell k^2 BesselI[1,k z]BesselK[1,k w],ass],
 "Lorentz scalar derivative"->FullSimplify[D[z BesselJ[1,q z],z]-q z BesselJ[0,q z],q>0&&z>0],
 "imaginary-time boundary normalization"->timenorm,
 "Gaussian source functional"->gauss,
 "source pole residue"->FullSimplify[Limit[(k^2-kap^2)/(Log[k/kap]),k->kap]-2kap^2,kap>0]
 |>;
 ratios=Flatten[Table[N[Abs[BesselI[0,r y] BesselK[0,y]+Log[y/2]+EulerGamma]/y,50],
  {r,{1,1/1000,1/10^7}},{y,{1/10^6,1/100,1/2,1,5,50,500}}]];
 jtests=Flatten[Table[With[{xx=N[xx0,50]},
  {Abs[BesselJ[0,xx]]<=1,Abs[BesselJ[0,xx]-1]<=xx^2/4,Abs[BesselJ[1,xx]]<=xx/2}],
  {xx0,{1/1000,1/10,1,3,10,30}}]];
 <|"ExactResiduals"->exact,"AllExactZero"->And@@(TrueQ[#==0]&/@Values[exact]),
  "LogRemainderRatioRange"->{Min[ratios],Max[ratios]},
  "BesselBounds18"->jtests,"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]
