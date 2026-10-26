ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={}},Module[
 {b,d,w,nu,aa,bb,fish,sh,h,a,r,x,p,del,n,j,coef2,coef3,nbar,
  residuals,f0,f2,bdry,rows,klRows,gd,part,tail,nn=160,shell,Ssub,
  besselTests,Aexact,Bexact},
 b[n_]:=(n+1)(2 n+7)(4 n+9)/128;
 d[n_]:=(2 n+4)(2 n+5);
 w[n_]:=b[n]/d[n]^2;
 nu[n_]:=2 n+9/2;
 nbar[v_]:=Sqrt[Pi] Gamma[v]/(2 Gamma[v-1/2]);
 Aexact=(19-Pi^2-13 Log[2])/256;
 Bexact=(-40+3 Pi^2+15 Log[2])/1152;
 fish[h_]:=(Log[mu ell]+1/2-EulerGamma
   -(PolyGamma[(h+1)/2]+PolyGamma[(4-h)/2])/2)/(8 Pi^2);
 sh[h_]:=-(h (3-h)+4) fish[h]/(32 Pi^2 ell^2);
 coef2=Table[FullSimplify[Binomial[n+3,3]-Sum[(4 j+5)/8 nbar[4+2 j]
   Pochhammer[4+2 j,n-j] Pochhammer[3/2,n-j]/
   (Pochhammer[7/2+2 j,n-j] Factorial[n-j]),{j,0,n}]],{n,0,12}];
 coef3=Table[FullSimplify[Binomial[n+5,5]-Sum[b[j] nbar[6+2 j]
   Pochhammer[6+2 j,n-j] Pochhammer[3/2,n-j]/
   (Pochhammer[11/2+2 j,n-j] Factorial[n-j]),{j,0,n}]],{n,0,12}];
 bdry=Limit[-(4 Coth[r](f0+f2 r^2)+2 f2 r)/(256 Pi^4 Sinh[r])
   +f0/(64 Pi^4 r^2),r->0];
 residuals=<|
 "radial differential identity"->FullSimplify[
  (D[Csch[r]^4,{r,2}]+3 Coth[r] D[Csch[r]^4,r]-4 Csch[r]^4)/8-Csch[r]^6,
  Assumptions->r>0],
 "cutoff finite contact relation"->FullSimplify[bdry+3 (8 f2)/(1024 Pi^4)+f0/(384 Pi^4)],
 "bubble spectral coefficients through degree12"->coef2,
 "triple spectral coefficients through degree12"->coef3,
 "shell fish value"->FullSimplify[fish[2]-(Log[2 mu ell]-1/2)/(8 Pi^2),
   Assumptions->mu>0&&ell>0],
 "shell fish derivative"->FullSimplify[(D[fish[h],h]/(3-2 h)/.h->2)
   -(Pi^2/3-4)/(32 Pi^2)],
 "shell sunset value"->FullSimplify[sh[2]+3(Log[2 mu ell]-1/2)/(128 Pi^4 ell^2),
   Assumptions->mu>0&&ell>0],
 "shell sunset derivative"->FullSimplify[(D[sh[h],h]/(3-2 h)/.h->2)
   +(Log[2 mu ell]+Pi^2/2-13/2)/(256 Pi^4 ell^2),Assumptions->mu>0&&ell>0],
 "twice subtracted resolvent"->Factor[1/(p+del)-1/del+p/del^2-p^2/(del^2(p+del))],
 "contact sum"->FullSimplify[Sum[w[n]/(2 nu[n]),{n,0,Infinity}]-Aexact],
 "uniform remainder sum"->FullSimplify[Sum[w[n]/(4 nu[n](nu[n]^2-1)),{n,0,Infinity}]-Bexact],
 "separated leading coefficient"->FullSimplify[w[0] nbar[6]/6-1/2400],
 "large order spectral weight"->Limit[n w[n],n->Infinity]-1/256,
 "Wick connected coefficients"->{16/(2 (24)^2)-1/72,72/(2 (24)^2)-1/16,
   96/(2 (24)^2)-1/12}
 |>;
 gd[v_,rr_]:=nbar[v] Exp[-v rr] Hypergeometric2F1[v,3/2,v-1/2,Exp[-2 rr]];
 (* Powers of pi and ell removed in this numerical KL identity. *)
 klRows=Table[Module[{rr=N[val,60],lhs,rhs},lhs=Exp[-6 rr]/(1-Exp[-2 rr])^6;
   rhs=Sum[b[n] gd[6+2 n,rr],{n,0,100}];{val,N[lhs,16],N[rhs,16],N[(lhs-rhs)/lhs,6]}],
   {val,{1/5,7/10,2}}];
 tail=N[Bexact-Sum[w[n]/(4 nu[n](nu[n]^2-1)),{n,0,nn}],60];
 Ssub[z_]:=Sum[N[w[n],60](BesselI[nu[n],z] BesselK[nu[n],z]-1/(2 nu[n])),{n,0,nn}];
 rows=Table[Module[{zz=N[val,60],v,err},v=Ssub[zz]/(6 Pi^4 zz);err=zz tail/(6 Pi^4);
  {val,N[v,18],N[err,6],N[-Bexact zz/(6 Pi^4),18]}],{val,{1,1/10,1/100,1/1000}}];
 besselTests=Flatten[Table[Module[{vv=N[v,60],xx=N[t,60],gap,bound},
   gap=1/(2 vv)-BesselI[vv,xx]BesselK[vv,xx];bound=xx^2/(4 vv(vv^2-1));
   TrueQ[0<=gap<=bound]],{v,{9/2,13/2,49/2,209/2}},{t,{1/100,1/10,1,10,100}}]];
 <|"SymbolicResiduals"->residuals,
   "AllSymbolicZero"->And@@(TrueQ[#==0]& /@ Flatten[Values[residuals]]),
   "Constants_A_B"->N[{Aexact,Bexact},20],
   "KLRows_r_exact_partial100_relativeMissingTail"->klRows,
   "BesselInequality20Samples"->And@@besselTests,
   "SliceRows_z_partial160_subtractedCorrection_missingTailBound_globalLowerBound"->rows,
   "TailConvention"->"Full correction lies between partial minus missingTailBound and partial; lambda=ell=k=1.",
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
Print[ToString[report,InputForm,PageWidth->100]];
report
