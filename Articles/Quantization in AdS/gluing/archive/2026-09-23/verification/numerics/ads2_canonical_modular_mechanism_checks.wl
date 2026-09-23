(* Canonical global AdS2 vacuum -> right-wedge covariance -> modular flow.
   Main explicit model: Delta=2, m^2 L^2=2, hbar=1.
   No Euclidean path integral or fitted boost quadrature is used.
   Run: wolframscript -file ads2_canonical_modular_mechanism_checks.wl *)
ClearAll["Global`*"];
norm[n_,dd_] := Sqrt[2^(2 dd-2) Factorial[n] Gamma[dd]^2/(Pi Gamma[n+2 dd])];
mode[n_,dd_,tt_,rr_] := norm[n,dd] Exp[-I(n+dd)tt] Cos[rr]^dd GegenbauerC[n,dd,Sin[rr]];
spatial[f_,dd_] := -D[f,{rho,2}]+dd(dd-1)Sec[rho]^2 f;
boost[f_] := Sin[rho]Cos[t]D[f,t]+Cos[rho]Sin[t]D[f,rho];
checks=<||>;
checks["KGDelta2Modes0to4"] = Table[FullSimplify[
  spatial[mode[n,2,t,rho],2]-(n+2)^2 mode[n,2,t,rho]],{n,0,4}];
checks["boostLadderDelta2Modes0to4"] = Table[FullSimplify[
  I boost[mode[n,2,t,rho]]-Sqrt[(n+1)(n+4)]mode[n+1,2,t,rho]/2-
  If[n==0,0,Sqrt[n(n+3)]mode[n-1,2,t,rho]/2]],{n,0,4}];
checks["KGNormalizationDelta2Modes0to3"] = Table[FullSimplify[
  2(n+2)Integrate[mode[n,2,0,rho]^2,{rho,-Pi/2,Pi/2}]-1],{n,0,3}];
(* Differentiate the regional charge, retaining its explicit boundary term. *)
den=Sin[rho](p[rho]^2+q'[rho]^2+mass Sec[rho]^2q[rho]^2)/2;
variation=D[den/.{q->Function[{rho},q[rho]+e dq[rho]],p->Function[{rho},p[rho]+e dp[rho]]},e]/.e->0;
bulk=Sin[rho]p[rho]dp[rho]+(-D[Sin[rho]q'[rho],rho]+mass Sin[rho]Sec[rho]^2q[rho])dq[rho];
checks["boostChargeVariation"] = Simplify[variation-bulk-D[Sin[rho]q'[rho]dq[rho],rho]];
checks["cutBoostWeight"] = Sin[0];
emb={ell Sec[rho]Cos[t],ell Sec[rho]Sin[t],ell Tan[rho]};
checks["embeddingBoost"] = FullSimplify[boost /@ emb-{0,emb[[3]],emb[[2]]}];
(* Scalar action in the wedge: p_eta=dr/dx times p_r, and at global t=0
   d rho/dx=-sin(rho), Pi_eta=sin(rho) p. *)
checks["tortoiseJacobian"] = FullSimplify[D[ArcTanh[Cos[rho]],rho]+1/Sin[rho],Assumptions->0<rho<Pi/2];
psi[kk_,xx_] := Sqrt[2/Pi](Coth[xx]Sin[kk xx]-kk Cos[kk xx])/Sqrt[1+kk^2];
checks["wedgeDelta2ODE"] = FullSimplify[-D[psi[k,x],{x,2}]+2 Csch[x]^2psi[k,x]-k^2psi[k,x],Assumptions->k>0&&x>0];
checks["wedgeEndpointCoefficient"] = FullSimplify[Limit[psi[k,x]/x^2,x->0,Direction->"FromAbove"]-Sqrt[2/Pi]k Sqrt[1+k^2]/3,Assumptions->k>0];
leg[z_] := z Log[(z+1)/(z-1)]/2-1;
checks["invariantDelta2ODE"] = Simplify[(z^2-1)D[leg[z],{z,2}]+2z D[leg[z],z]-2leg[z]];
checks["boostStripGeometry"] = FullSimplify[Cosh[s+I(2Pi-eps)]-Cosh[-s+I eps],Assumptions->Element[{s,eps},Reals]];
occupation[k_] := 1/(Exp[2Pi k]-1);
checks["KMSOccupationEquation"] = FullSimplify[Exp[-2Pi k](occupation[k]+1)-occupation[k],Assumptions->k>0];
checks["WilliamsonModularFrequency"] = FullSimplify[Log[(Coth[Pi k]/2+1/2)/(Coth[Pi k]/2-1/2)]-2Pi k,Assumptions->k>0];
checks["oscillatorTraceNormalization"] = FullSimplify[(1-Exp[-2Pi k])Sum[Exp[-2Pi k j],{j,0,Infinity}]-1,Assumptions->k>0];
checks["canonicalOriginModeSum"] = FullSimplify[
  Sum[4(j+1)^2 z^(2j+2)/(Pi(2j+1)(2j+2)(2j+3)),{j,0,Infinity}]-
  (((1+z^2)/(2z))Log[(1+z)/(1-z)]-1)/(2Pi),Assumptions->0<z<1];

(* Canonical discrete global mode sum vs the closed invariant kernel.
   Complex global-time displacement suppresses high n independently. *)
modeSum[tt_,rr_,tp_,rp_,ep_,nn_] := Module[{r1=N[rr,65],r2=N[rp,65],dt=N[tt-tp-I ep,65]},
  4 Cos[r1]^2Cos[r2]^2/Pi Sum[
    GegenbauerC[n,2,Sin[r1]]GegenbauerC[n,2,Sin[r2]]Exp[-I(n+2)dt]/((n+1)(n+2)(n+3)),{n,0,nn-1}]];
closed[tt_,rr_,tp_,rp_,ep_] := leg[(Cos[tt-tp-I ep]-Sin[rr]Sin[rp])/(Cos[rr]Cos[rp])]/(2Pi);
globalCases={{1/10,7/10,-1/5,1,1/8},{0,ArcTan[Sqrt[3]],ArcTan[Sqrt[8]Sinh[1/2]/3],ArcTan[Sqrt[8]Cosh[1/2]],1/8}};
globalComparisons=Table[With[{target=N[closed@@row,60]},
  <|"case"->N[row,8],"errors"->Table[{nn,N[Abs[modeSum@@Append[row,nn]-target],10]},{nn,{32,96,256,512}}],
    "passed"->TrueQ[Abs[modeSum@@Append[row,512]-target]<10^-25]|>],{row,globalCases}];

(* Spectral reconstruction of the SAME right covariance on an open boost
   strip. Planck weights here are the analytically derived KMS consequence;
   this quadrature checks their normalization/standing-wave implementation. *)
wedgeW[rr_,rp_,zz_] := leg[rr rp-Sqrt[rr^2-1]Sqrt[rp^2-1]Cosh[zz]]/(2Pi);
spectralW[rr_,rp_,ss_,yy_,kkmax_] := Module[{xx=N[ArcCoth[rr],55],xp=N[ArcCoth[rp],55],zz=N[ss+I yy,55]},
 NIntegrate[psi[k,xx]psi[k,xp]/(2k) (Exp[I k zz]+Exp[-2Pi k-I k zz])/(1-Exp[-2Pi k]),
   {k,0,1,4,12,30,kkmax},WorkingPrecision->50,AccuracyGoal->32,PrecisionGoal->32,MaxRecursion->18]];
tailBound[rr_,rp_,yy_,kkmax_] := Sqrt[(1+rr^2)(1+rp^2)]/(Pi kkmax(1-Exp[-2Pi kkmax])) *
  (Exp[-yy kkmax]/yy+Exp[-(2Pi-yy)kkmax]/(2Pi-yy));
spectralComparisons=Table[With[{ss=row[[1]],yy=row[[2]],km=60,rr=2,rp=3},
  With[{value=spectralW[rr,rp,ss,yy,km],target=N[wedgeW[rr,rp,ss+I yy],45],bound=N[tailBound[rr,rp,yy,km],10]},
    <|"s"->ss,"imaginaryBoostTime"->N[yy,8],"error"->N[Abs[value-target],10],"tailBound"->bound,
      "passed"->TrueQ[Abs[value-target]<10^-22&&bound<10^-22]|>]],{row,{{1/2,Pi/3},{1/2,Pi},{1/2,5Pi/3}}}];

(* Upper/lower boundary values have opposite imaginary parts. Merely
   replacing cosh(z+2pi i) by cosh(z) loses this operator-order information. *)
boundary=<|"ZatRealTime"->N[6-Sqrt[24]Cosh[1/2],12],
  "lower"->N[wedgeW[2,3,1/2+I 10^-10],12],
  "upper"->N[wedgeW[2,3,1/2+I(2Pi-10^-10)],12]|>;
report=<|"exactResiduals"->checks,"globalModeSumComparisons"->globalComparisons,
 "wedgeSpectralComparisons"->spectralComparisons,"KMSBoundaryExample"->boundary,
 "allPassed"->And[AllTrue[Flatten[Values[checks]],TrueQ[#==0]&],And@@Lookup[globalComparisons,"passed"],And@@Lookup[spectralComparisons,"passed"]]|>;
Print[InputForm[report]];
If[!TrueQ[report["allPassed"]],Exit[1]];
