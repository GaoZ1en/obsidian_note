(* Independent normal-ordered phi^3 pair calculation, AdS3, Delta=2.
   No supplied spectrum was used in constructing the OFPT kernel.
   All energies below are coefficients of lambda3^2/(16 Pi).
   Run with Get[".../cubic_pair_exact.wl"]. No external packages needed. *)
ClearAll[radialLabel, radialPolynomial, modeWeight, overlapRaw, overlap,
  propagatorTerm, sChannel, tChannel, pairKernel, primaryChannels,
  pairRepresentatives, rationalBlock, predictedEnergy, primaryResidual,
  characteristicResidual, z, zb, y, t, xi, u, v, xx, yy];

radialLabel[{p_Integer,q_Integer}] := {Min[p,q],Abs[p-q]};
radialPolynomial[{n_Integer,l_Integer}] :=
  radialPolynomial[{n,l}] = Expand[(-1)^n JacobiP[n,l,1,1-2 y]/(n+1)];
modeWeight[{p_Integer,q_Integer}] := (p+1)(q+1);
overlapRaw[labels_List] := overlapRaw[labels] = Module[{poly,coeff},
  poly=Expand[(1-y) y^(Total[labels[[All,2]]]/2)
    Times@@(radialPolynomial /@ labels)];
  If[!PolynomialQ[poly,y],Return[$Failed]];
  coeff=CoefficientList[poly,y]; Total[coeff/Range[Length[coeff]]]
];
overlap[a_,b_,k_] := overlapRaw[Sort[radialLabel /@ {a,b,k}]];
(* sqrt(2 Pi) I_ijk = sqrt(w_i w_j w_k) overlap[i,j,k]/2.
   Only radial integrals are stored; angular conservation is imposed below. *)
propagatorTerm[coefficient_,transfer_,frequency_] := Which[
  coefficient===0,0,
  transfer^2===frequency^2,Throw[{"Nonzero resonant vertex",coefficient,transfer,frequency}],
  True,coefficient 2 frequency/(transfer^2-frequency^2)
];
sChannel[a_,b_,c_,d_] := Module[{j,nmax,energy,k},
  j=(Subtract@@a)+(Subtract@@b);
  nmax=(Total[a]+Total[b]-Abs[j])/2;
  energy=4+Total[a]+Total[b];
  Sum[k={n+Max[j,0],n+Max[-j,0]};
    propagatorTerm[modeWeight[k] overlap[a,b,k] overlap[c,d,k],energy,2+Total[k]],
    {n,0,nmax}]
];
tChannel[a_,b_,c_,d_] := Module[{j,nmax,transfer,k},
  j=(Subtract@@c)-(Subtract@@a);
  nmax=Min[(Total[a]+Total[c]-Abs[j])/2,(Total[b]+Total[d]-Abs[j])/2];
  transfer=Total[c]-Total[a];
  Sum[k={n+Max[j,0],n+Max[-j,0]};
    propagatorTerm[modeWeight[k] overlap[a,c,k] overlap[b,d,k],transfer,2+Total[k]],
    {n,0,nmax}]
];
pairKernel[a_,b_,c_,d_] := sChannel[a,b,c,d]+tChannel[a,b,c,d]+tChannel[a,b,d,c];
primaryChannels[P_Integer,Q_Integer] := Module[{a,b,c,d,bin,sc=0,tc=0,norm},
  norm=(P+1)(Q+1)/(CatalanNumber[P+1] CatalanNumber[Q+1]);
  Do[a={p,q};b={P-p,Q-q};c={r,s};d={P-r,Q-s};
    bin=(-1)^(p+q+r+s) Binomial[P,p] Binomial[Q,q] Binomial[P,r] Binomial[Q,s];
    sc+=bin sChannel[a,b,c,d];tc+=bin tChannel[a,b,c,d],
    {p,0,P},{q,0,Q},{r,0,P},{s,0,Q}];
  {P,Q,norm sc,norm tc,norm (sc+2tc)}
];
pairRepresentatives[P_Integer,Q_Integer] := Select[
  Flatten[Table[{{p,q},{P-p,Q-q}},{p,0,P},{q,0,Q}],1],OrderedQ
];
(* This rational matrix is diagonally similar to the normalized Fock matrix.
   eta_ab = 1+delta_ab. If H_phys is in units lambda3^2/(16 Pi),
   H_rat = diag(sqrt(eta_ab w_a w_b)) H_phys diag(1/sqrt(eta_ab w_a w_b)). *)
rationalBlock[P_Integer,Q_Integer] := Module[{basis=pairRepresentatives[P,Q],a,b,c,d},
  Table[{a,b}=basis[[i]];{c,d}=basis[[j]];
    2 modeWeight[a] modeWeight[b] pairKernel[a,b,c,d]/(1+Boole[c===d]),
    {i,Length[basis]},{j,Length[basis]}]
];
predictedEnergy[P_Integer,Q_Integer] := If[P==Q,
  -(4P+5)/(2(P+1)(P+2)(2P+3)),
  -1/((Max[P,Q]+1)(Max[P,Q]+2))
];
primaryResidual[P_Integer,Q_Integer] := Module[{basis,vec},
  basis=pairRepresentatives[P,Q];
  vec=((-1)^Total[#[[1]]] Binomial[P,#[[1,1]]] Binomial[Q,#[[1,2]]])& /@ basis;
  rationalBlock[P,Q].vec-predictedEnergy[P,Q] vec
];
characteristicResidual[P_Integer,Q_Integer] := Module[{expected},
  (* Mathematica uses det(matrix-y IdentityMatrix), including (-1)^dimension. *)
  expected=Times@@Flatten[Table[If[EvenQ[p+q],predictedEnergy[p,q]-y,1],{p,0,P},{q,0,Q}]];
  Together[CharacteristicPolynomial[rationalBlock[P,Q],y]-expected]
];

runIndependentChecks[] := Block[{$Messages={},$MessageList={}},Module[
  {labels,data,modeChecks,supportChecks,primaryChecks,matrixLabels,matrixChecks,
   A,B,C,ibpResidual,legendreChecks,logChecks,L0,L2,L3,den,fs,ft,fu,i0,iw,laplacianCheck,
   zz,x1,x2,a1,a2,K1a,K1b,K2a,K2b,lap,report},
  labels=Select[Flatten[Table[{P,Q},{P,0,8},{Q,0,Min[P,6]}],1],EvenQ[Total[#]]&];
  data=primaryChannels@@@labels;
  primaryChecks=Table[{Sequence@@pq,primaryResidual@@pq},{pq,Select[labels,Max[#]<=6&]}];
  matrixLabels=Select[Flatten[Table[{P,Q},{P,0,5},{Q,0,P}],1],(Times@@(#+1))<=30&];
  matrixChecks=Table[{Sequence@@pq,characteristicResidual@@pq},{pq,matrixLabels}];
  modeChecks=Flatten[Table[With[{poly=radialPolynomial[{n,l}],freq=2+2n+l},
    {n,l,FullSimplify[freq (n+1)(n+l+1)
      Integrate[(1-y)y^l poly^2,{y,0,1}]-1]}],{n,0,5},{l,0,5}],1];
  supportChecks=Flatten[Table[With[{j=l1+sign l2,aa={n1+l1,n1},bb={n2+l2,n2}},
    With[{nmax=n1+n2+(l1+l2-Abs[j])/2},
      {n1,l1,n2,l2,sign,overlap[aa,bb,{nmax+Abs[j]+1,nmax+1}]}]],
    {n1,0,3},{l1,0,3},{n2,0,3},{l2,0,3},{sign,{-1,1}}],4];
  A=u xi(1-xi);B=xi+v(1-xi);C=A-B;
  ibpResidual=Together[D[xi(1-xi)/C,xi]-(xi^2-v(1-xi)^2)/C^2];
  L0=Log[(1-z)/(1-zb)]/(z-zb);den=(1-u-v)^2-4u v;
  L2=(1+u-v+(1-u-v)ll)/den;L3=-(2u+u(1-u+v)ll)/den;
  fs=Together[u L3/.{u->z zb,v->(1-z)(1-zb),ll->L0}];
  ft=Together[u^2 L2/.{u->z zb,v->(1-z)(1-zb),ll->L0}];
  fu=Together[-z^2 zb^2(z D[L0,z]-zb D[L0,zb])/(zb-z)];
  i0=Integrate[1/((xx-t)^2(yy-t)^2),{t,-1,1},Assumptions->1<xx<yy];
  iw=Integrate[(1-t^2)/((xx-t)^2(yy-t)^2),{t,-1,1},Assumptions->1<xx<yy];
  logChecks={FullSimplify[fs-2iw/.{xx->2/z-1,yy->2/zb-1},Assumptions->0<zb<z<1],
    FullSimplify[ft+fu+8i0/.{xx->2/z-1,yy->2/zb-1},Assumptions->0<zb<z<1]};
  legendreChecks=Flatten[Table[{l,m,
    Integrate[D[LegendreP[l,t],t]D[LegendreP[m,t],t],{t,-1,1}]-If[EvenQ[l+m],Min[l,m](Min[l,m]+1),0],
    Integrate[(1-t^2)D[LegendreP[l,t],t]D[LegendreP[m,t],t],{t,-1,1}]-If[l==m,2l(l+1)/(2l+1),0]},
    {l,0,12},{m,0,12}],1];
  K1a=zz/(zz^2+x1^2+x2^2);K1b=zz/(zz^2+(x1-a1)^2+(x2-a2)^2);
  lap[f_]:=zz^2(D[f,{zz,2}]+D[f,{x1,2}]+D[f,{x2,2}])-zz D[f,zz];
  laplacianCheck=Together[lap[K1a K1b]+4(a1^2+a2^2)K1a^2 K1b^2];
  report=<|"Units"->"lambda3^2/(16 Pi)","PrimaryDataColumns"->{"P","Q","s","t","total"},
    "PrimaryData"->data,
    "PrimaryFormulaNonzeroResiduals"->Select[data,Last[#]=!=predictedEnergy[#[[1]],#[[2]]]&],
    "PrimaryEigenvectorNonzeroResiduals"->Select[primaryChecks,!(And@@(PossibleZeroQ/@Last[#]))&],
    "FullBlockCharacteristicChecks"->Length[matrixChecks],
    "FullBlockCharacteristicNonzeroResiduals"->Select[matrixChecks,Last[#]=!=0&],
    "KGNormalizationChecks"->Length[modeChecks],
    "KGNormalizationNonzeroResiduals"->Select[modeChecks,Last[#]=!=0&],
    "RadialSupportChecks"->Length[supportChecks],
    "RadialSupportNonzeroResiduals"->Select[supportChecks,Last[#]=!=0&],
    "CrossedIntegrationByPartsResidual"->ibpResidual,
    "LogKernelResiduals"->logChecks,
    "LegendrePairChecks"->Length[legendreChecks],
    "LegendreNonzeroResiduals"->Select[legendreChecks,#[[-1]]=!=0||#[[-2]]=!=0&],
    "ExchangeCollapseLaplacianResidual"->laplacianCheck,
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>;
  report
]];

runSupplementalChecks[] := Block[{$Messages={},$MessageList={}},Module[
  {xi,uu,vv,apar,bpar,cpar,integrand,f,u0=3/50,v0=14/25,lhs,rhs,qreal,
   blockChecks,m20,m11,z,report},
  apar=uu xi(1-xi);bpar=xi+vv(1-xi);cpar=apar-bpar;
  integrand=uu(apar Log[apar/bpar]/cpar^2-1/cpar)+
    uu^2(1-xi)(1/cpar-bpar Log[apar/bpar]/cpar^2+1/(bpar cpar)-Log[apar/bpar]/cpar^2);
  f[a_,b_]:=NIntegrate[Evaluate[integrand/.{uu->a,vv->b}],{xi,0,1},
    WorkingPrecision->60,AccuracyGoal->40,PrecisionGoal->40];
  lhs=f[u0,v0];rhs=(u0/v0)^2 f[v0,u0];
  qreal[0,x_]:=Log[(x+1)/(x-1)]/2;qreal[1,x_]:=x qreal[0,x]-1;
  qreal[l_Integer,x_]/;l>=2:=((2l-1)x qreal[l-1,x]-(l-1)qreal[l-2,x])/l;
  blockChecks=Table[With[{h=p+2,aa=Pochhammer[2,p]^2/(p!Pochhammer[p+3,p])},
    FullSimplify[aa z^h Hypergeometric2F1[h,h,2h,z]-
      2(2p+3)(p+1)(p+2)qreal[p+1,2/z-1],Assumptions->0<z<1]],{p,0,8}];
  m20={{-17/60,-Sqrt[6]/15},{-Sqrt[6]/15,-13/60}};
  m11={{-17/60,-2/15},{-2/15,-17/60}};
  report=<|"FullFourPointCrossingUV"->{u0,v0},"CrossingValues"->{lhs,rhs},
    "CrossingResidual"->lhs-rhs,"BlockQResidualsP0Through8"->blockChecks,
    "NormalizedSpinningMatrix20"->m20,"NormalizedScalarMatrix11"->m11,
    "SpinningPrimaryResidual"->FullSimplify[m20.{Sqrt[2/5],-Sqrt[3/5]}+{Sqrt[2/5],-Sqrt[3/5]}/12],
    "ScalarPrimaryResidual"->m11.{1,-1}+3{1,-1}/20,
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>;
  report
]];
