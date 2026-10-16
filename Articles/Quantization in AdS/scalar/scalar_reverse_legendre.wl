(* Boundary Legendre transform and reverse scalar Galerkin construction.
   Unit AdS radius; 0 < delta < 1; real unit-normalized angular harmonic.
   Exact beta moments precede high-precision diagonalization. *)
ClearAll["Global`*"];
checks = <||>;
check[label_, expression_] := AssociateTo[checks, label -> TrueQ[FullSimplify[expression]]];
slowNorm[n_, delta_, ell_] := Pochhammer[n+1,ell]/
  (2 (2n+delta+ell) Pochhammer[n+delta,ell]);
slowLambda[n_, delta_, ell_] := (delta+ell+2n)^2;
slowTrace[n_, delta_, ell_] := Pochhammer[delta,n]/
  (n! Sqrt[slowNorm[n,delta,ell]]);
seedOverlap[n_, delta_, ell_, eta_] :=
  (Pochhammer[delta-1,n] Beta[1,ell+n+1] +
   eta Pochhammer[delta-2,n] Beta[2,ell+n+1])/
  (2 n! Sqrt[slowNorm[n,delta,ell]]);
reversePair[delta_, ell_, count_, eta_, sign_:1] := Module[
  {g,k,a,b,lambda,cross,gram,stiffness},
  g = (Beta[2-delta,ell+1]+2eta Beta[3-delta,ell+1]+
       eta^2 Beta[4-delta,ell+1])/2;
  k = (2-delta+ell)^2 g+2eta^2 Beta[3-delta,ell+2];
  a = Table[slowTrace[n,delta,ell],{n,0,count-1}];
  b = Table[seedOverlap[n,delta,ell,eta],{n,0,count-1}];
  lambda = Table[slowLambda[n,delta,ell],{n,0,count-1}];
  cross = lambda b+sign 2(1-delta)a;
  gram = ArrayFlatten[{{{{g}},{b}},{Transpose[{b}],IdentityMatrix[count]}}];
  stiffness = ArrayFlatten[{{{{k}},{cross}},
    {Transpose[{cross}],DiagonalMatrix[lambda]}}];
  {stiffness,gram}
];
reverseSpectrum[delta_,ell_,count_,eta_,precision_:80] :=
  Sort[Eigenvalues[N[reversePair[delta,ell,count,eta],precision]]];
constrainedSpectrum[delta_,ell_,count_,precision_:80] := Module[
  {a,lambda,gram,stiffness},
  a=Table[slowTrace[n,delta,ell]/slowTrace[0,delta,ell],{n,1,count}];
  lambda=Table[slowLambda[n,delta,ell],{n,1,count}];
  gram=IdentityMatrix[count]+Outer[Times,a,a];
  stiffness=DiagonalMatrix[lambda]+slowLambda[0,delta,ell] Outer[Times,a,a];
  Sort[Eigenvalues[N[{stiffness,gram},precision]]]
];

(* Variation at fixed metric: Pi = (n.d + delta)phi. *)
check["positive boundary variation",Expand[-pi dphi+D[phi pi,phi]dphi+D[phi pi,pi]dpi-phi dpi]==0];
check["negative boundary variation",Expand[-pi dphi-D[phi pi,phi]dphi-D[phi pi,pi]dpi+2pi dphi+phi dpi]==0];
check["renormalized positive variation",Expand[2nu beta dalpha-2nu(beta dalpha+alpha dbeta)+2nu alpha dbeta]==0];

(* Independent radial integrals for the non-eigen fast seed. *)
Do[
  ss=x^(delta/2)(1-x)^(ell/2);
  hh=x^(1-delta)(1+x/2);
  field=ss hh;
  gDirect=Integrate[field^2/(2x),{x,0,1}];
  kDirect=Integrate[2(1-x)D[field,x]^2+
    (ell^2/(2x(1-x))+delta(delta-2)/(2x^2))field^2,{x,0,1}];
  pair=reversePair[delta,ell,4,1/2];
  check["seed norms "<>ToString[{delta,ell},InputForm],
    {kDirect,gDirect}=={pair[[1,1,1]],pair[[2,1,1]]}];
  Do[
    en=JacobiP[n,delta-1,ell,1-2x]/Sqrt[slowNorm[n,delta,ell]];
    bDirect=Integrate[ss^2 hh en/(2x),{x,0,1}];
    qDirect=(delta+ell)^2 bDirect+
      Integrate[2x^delta(1-x)^(ell+1)D[hh,x]D[en,x],{x,0,1}];
    check["seed overlap "<>ToString[{delta,ell,n},InputForm],
      bDirect==seedOverlap[n,delta,ell,1/2]];
    check["mixed stiffness "<>ToString[{delta,ell,n},InputForm],
      qDirect+2(1-delta)slowTrace[n,delta,ell]==pair[[1,1,n+2]]],
    {n,0,3}],
  {delta,{3/10,3/5,4/5}},{ell,{0,2}}];

(* Counterterm limit, including differentiated asymptotics, at rational masses. *)
Do[
  asym=alpha r^-delta+beta r^(delta-2);
  term=r Sqrt[1+r^2]asym(Sqrt[1+r^2]D[asym,r]+delta asym);
  check["Legendre limit "<>ToString[delta,InputForm],
    Limit[term,r->Infinity]==-2(1-delta)alpha beta],
  {delta,{3/10,3/5,4/5}}];

(* The Schur formula uses a kinetic-orthonormal alternative basis. *)
Do[
  pair=reversePair[3/5,0,count,1/2];
  lam=Table[slowLambda[n,3/5,0],{n,0,count-1}];
  av=Table[slowTrace[n,3/5,0],{n,0,count-1}];
  bv=Table[seedOverlap[n,3/5,0,1/2],{n,0,count-1}];
  gt=pair[[2,1,1]]-bv.bv;
  kt=pair[[1,1,1]]-lam.(bv^2);
  schur=kt-lambda gt-2(4/5)av.bv-(4/5)^2 Total[av^2/(lam-lambda)];
  check["Schur determinant "<>ToString[count],
    Together[Det[pair[[1]]-lambda pair[[2]]]-Times@@(lam-lambda)schur]==0];
  check["Schur derivative "<>ToString[count],
    Together[D[schur,lambda]+gt+(4/5)^2Total[av^2/(lam-lambda)^2]]==0],
  {count,{1,2,3}}];

cutoffs={4,8,16,32,64,128};
reverseResults=Table[Module[{ev=reverseSpectrum[3/5,0,count,1/2]},
  check["one negative mode N="<>ToString[count],Count[ev,x_/;x<0]==1];
  check["physical upper bound N="<>ToString[count],
    Min[Take[ev,{2,5}]-Table[(7/5+2p)^2,{p,0,3}]]>=0];
  <|"N"->count,"negativeOmegaSquared"->N[First[ev],16],
    "positiveOmega"->N[Sqrt[Take[ev,{2,5}]],16]|>],{count,cutoffs}];
constrainedResults=Table[<|"N"->count,
  "omega"->N[Sqrt[Take[constrainedSpectrum[3/5,0,count],4]],16]|>,
  {count,{4,8,16,32,64,128}}];
check["physical monotonicity",Max[Flatten[Differences[
  (# ["positiveOmega"]& /@ reverseResults)]]]<0];
check["constrained monotonicity",Max[Flatten[Differences[
  (# ["omega"]& /@ constrainedResults)]]]<0];
precisionDifference=Max[Abs[reverseSpectrum[3/5,0,64,1/2,80]-
  reverseSpectrum[3/5,0,64,1/2,100]]];
check["precision stability",precisionDifference<10^-60];
angularResults=Table[Module[{ev=reverseSpectrum[3/5,ell,32,1/2]},
  <|"ell"->ell,"negativeOmegaSquared"->N[First[ev],16],
    "positiveOmega"->N[Sqrt[Take[ev,{2,4}]],16]|>],{ell,{1,3}}];
wrongSign=Sort[Eigenvalues[N[reversePair[3/5,0,16,0,-1],80]]];
result=<|"allPassed"->And@@Values[checks],"checks"->checks,
  "reverseNonEigenSeed"->reverseResults,"constrainedSlowBasis"->constrainedResults,
  "angular"->angularResults,"precisionMaxDifference"->N[precisionDifference,12],
  "wrongSignExactFastSeedN16OmegaSquared"->N[Take[wrongSign,5],14]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"scalar_reverse_legendre_results.json"}],result,"RawJSON"];
Print[<|"allPassed"->result["allPassed"],"checkCount"->Length[checks],
  "failed"->Select[checks,!TrueQ[#]&],"precisionMaxDifference"->N[precisionDifference,12],
  "reverse"->reverseResults,"constrained"->constrainedResults|>];
If[!TrueQ[result["allPassed"]],Exit[1]];
