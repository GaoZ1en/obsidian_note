ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={},$MaxExtraPrecision=1000},Module[
 {a,b,k,q,z,zz,r,L,tau,x,nu,n,l,w,ast,ar,partial,residuals,
  c0,numericRows,kn,leading,tail,ineq,contactRows,cutoff},
 w[n_]:=(n+1)(2n+7)(4n+9)/(128(2n+4)^2(2n+5)^2);
 ast=(19-Pi^2-13Log[2])/256;
 ar[r_]:=(38-13Log[1-r^2]-26ArcTanh[r]/r-3PolyLog[2,r^2]
    -6(PolyLog[2,r]-PolyLog[2,-r])/r)/512;
 c0=1/(362880000 Pi);
 cutoff=2/Pi (L-k ArcTan[L/k]);
 residuals=<|
 "half-order Wightman normalization"->FullSimplify[
   FunctionExpand[Pi BesselJ[1/2,q z]BesselJ[1/2,q zz]/Sqrt[z zz]]
    -2 Sin[q z]Sin[q zz]/(q z zz),Assumptions->q>0&&z>0&&zz>0],
 "free position image normalization"->Factor[
   (1/(x+(z-zz)^2)-1/(x+(z+zz)^2))/(4 z zz)
     -1/((x+(z-zz)^2)(x+(z+zz)^2))],
 "subtracted Stieltjes normalization"->FullSimplify[
   Integrate[-2 k^2/(Pi(q^2+k^2)),{q,0,Infinity},Assumptions->k>0]+k,
   Assumptions->k>0],
 "mass cutoff dispersion"->FullSimplify[
   Integrate[2 q^2/(Pi(q^2+k^2)),{q,0,L},Assumptions->k>0&&L>0]-cutoff,
   Assumptions->k>0&&L>0],
 "unequal free contact expansion"->FullSimplify[
   Normal[Series[Exp[-k b]Sinh[k r b]/(k r b^2),{b,0,1}]]
    -(1/b-k+k^2 b(3+r^2)/6),Assumptions->k>0&&0<r<=1],
 "positive reflected plane-wave example"->FullSimplify[
   Integrate[Exp[-2 a q]Sin[q z]^2/q,{q,0,Infinity},
    Assumptions->a>0&&z>0]-Log[1+z^2/a^2]/4,Assumptions->a>0&&z>0],
 "zero spatial momentum position match"->FullSimplify[
   Integrate[2 r/(Pi(tau^2+r^2)^2),{r,0,Infinity},Assumptions->tau>0]
    -1/(Pi tau^2),Assumptions->tau>0],
 "boundary coefficient at zero spatial separation"->FullSimplify[
   Integrate[Exp[-q tau]q^3/(6 Pi^2),{q,0,Infinity},Assumptions->tau>0]
    -1/(Pi^2 tau^4),Assumptions->tau>0],
 "tower sharp coefficient"->FullSimplify[w[0]/(2^9 Gamma[11/2]^2)-c0],
 "tower position spectral match"->FullSimplify[
   (2 Abs[2^(3-12)Pi^(3/2)Gamma[3/2-6]/Gamma[6]])/(2400 Pi^6)
     -Pi c0/(6 Pi^4)],
 "ratio contact coefficients through r24"->FullSimplify[Normal[Series[
   ar[r]-Sum[w[n]/(4n+9)r^(2n+4),{n,0,10}],{r,0,24}]]],
 "ratio contact equal cutoff limit"->FullSimplify[
   Limit[ar[r],r->1,Direction->"FromBelow"]-ast],
 "ratio contact soft corner"->FullSimplify[Limit[ar[r]/r^4,r->0]-7/51200],
 "tower reflected leading coefficient"->FullSimplify[
   w[0] Factorial[9]/(6 Pi^5 (945)^2)-1/(12000 Pi^5)]
 |>;
 kn[qq_,u_,v_]:=Sum[N[w[n],70]BesselJ[2n+9/2,qq u]
   BesselJ[2n+9/2,qq v]/Sqrt[u v],{n,0,20}];
 numericRows=Table[Module[{vv=N[val,70],K,lead,err},
   K=kn@@vv;lead=c0 vv[[1]]^9(vv[[2]]vv[[3]])^4;
   err=2ast/Pi vv[[1]](vv[[1]]^2 vv[[2]]vv[[3]])^46;
   {val,N[K/lead,18],N[err/lead,6]}],
   {val,{{1,1/10,1/5},{2,1/100,3/100},{3,1/1000,1/100}}}];
 ineq=Flatten[Table[Module[{v=N[xx,60],jj},jj=Sqrt[Pi/(2v)]BesselJ[ll+1/2,v];
   TrueQ[Abs[jj] Sqrt[2 ll+1]<=Min[v^4,1]]],
   {ll,{4,6,10,50}},{xx,{1/1000,1/10,1,5,100}}]];
 contactRows=Table[Module[{v=Sum[w[n]/(4n+9)rr^(2n+4),{n,0,100}],err},
   err=rr^206(ast-Sum[w[n]/(4n+9),{n,0,100}]);
   {rr,N[ar[rr],20],N[v,20],N[ar[rr]-v,6],N[err,6]}],
   {rr,{1/10,1/2,9/10}}];
 <|"SymbolicResiduals"->residuals,
   "AllSymbolicZero"->And@@(TrueQ[#==0]& /@ Flatten[Values[residuals]]),
   "SphericalBesselBound20Samples"->And@@ineq,
   "TowerRows_q_z_zprime_ratioToLeading_relativeTailBound"->numericRows,
   "RatioContactRows_r_closed_sum100_missingTail_tailBound"->contactRows,
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
Print[ToString[report,InputForm,PageWidth->100]];
report
