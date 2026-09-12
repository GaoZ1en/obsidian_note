(* Each case runs in a fresh kernel. completionCase="seed" uses xCoba;
   "scalar", "ladders", and "gram" use Mathematica. The Wronskian check is numerical. *)
selectedCompletionCase=If[ValueQ[completionCase],completionCase,"seed"];
Switch[selectedCompletionCase,
"seed",
verificationCase="asymptotic";Get[FileNameJoin[{DirectoryName[$InputFileName],"de_donder_onshell_response_checks.wl"}]];
Clear[del,amp,vrad,chi];ff=1+r^2;NN=Sqrt[ff];
u0=ff^(-del/2)Exp[-I del t];v0=ff^(-del/2)Exp[I del t];
du=Table[D[u0,z],{z,xx}];dv0=Table[D[v0,z],{z,xx}];
ts=FullSimplify[(Outer[Times,du,dv0]+Outer[Times,dv0,du])/2-g0(du.gi.dv0+del(del-2)u0 v0)/2,Assumptions->r>0&&Element[{t,del},Reals]];
mass0=del/2(1-ff^(1-del));d0=del/4 ff^-del;
seedMetric=DiagonalMatrix[{mass0+2ff d0,mass0/ff^2,0}];
traceSource=-del(2del-3)ff^-del+del^2 ff^(-del-1);
eta={0,vrad[r],0};seedDD=seedMetric+symgrad[g0.eta];
traceRule={vrad'[r]->chi[r]/2+d0-vrad[r]/r};
raised[sig_]:=Exp[-I t+I sig ph]{I r/(2NN),-NN/2,-I sig NN/(2r)};
lowered[sig_]:=Exp[I t-I sig ph]{I r/(2NN),NN/2,-I sig NN/(2r)};
act[vec_,sc_]:=vec.Table[D[sc,z],{z,xx}];
result=<|"Static seed Einstein equation"->FullSimplify[ein1[seedMetric]-ts/2,Assumptions->r>0&&Element[{t,del},Reals]],"Static seed trace source"->FullSimplify[tr[ts]-traceSource,Assumptions->r>0&&Element[{t,del},Reals]],"Trace reconstruction"->FullSimplify[(tr[seedDD]/.traceRule)-chi[r]],"Raising Killing vectors"->Table[FullSimplify[symgrad[g0.raised[sig]],Assumptions->r>0],{sig,{-1,1}}],"Lowering kills scalar ground"->Table[FullSimplify[act[lowered[sig],u0],Assumptions->r>0],{sig,{-1,1}}],"Ladder normalization"->Table[FullSimplify[act[lowered[sig],act[raised[sig],u0]]-del u0,Assumptions->r>0],{sig,{-1,1}}]|>;

v1=chi[r]/2+d0-vrad[r]/r;
v2=Expand[D[v1,r]/.vrad'[r]->v1];
v3=Expand[D[v2,r]/.vrad'[r]->v1];
cvseed=FullSimplify[cc[seedDD]];
odechi=ff chi''[r]+(1/r+3r)chi'[r]-4chi[r]-2traceSource;
result=Join[result,<|"Static gauge constraint propagation"->FullSimplify[(D[r ff cvseed[[2]],r]-r odechi/2)/.{vrad'''[r]->v3,vrad''[r]->v2,vrad'[r]->v1}],"Other static gauge components"->FullSimplify[cvseed[[{1,3}]]]|>];
,"scalar",
Clear[r,d,s,nu,l,ep,om,t];$MaxExtraPrecision=500;deltaG=1+Sqrt[5];
f=1+r^2;pref=r^0 f^(-deltaG/2);z=r^2/f;
uc[r_]:=(1+r^2)^(-deltaG/2)Hypergeometric2F1[deltaG/2,deltaG/2,1,r^2/(1+r^2)];
vb[r_]:=(1+r^2)^(-deltaG/2)Hypergeometric2F1[deltaG/2,deltaG/2,deltaG,1/(1+r^2)];
wr=-2Gamma[deltaG]/Gamma[deltaG/2]^2;
os=Exp[-I(om+I ep)t]/(om^2-(om+I ep)^2);
fp=SeriesCoefficient[os,{ep,0,0}];
result=<|"Static scalar Wronskian"->Chop[N[r(1+r^2)(uc[r]vb'[r]-uc'[r]vb[r])/.r->7/10,60]-N[wr,60],10^-45],
"Abel oscillator"->FullSimplify[D[os,{t,2}]+om^2 os-Exp[-I(om+I ep)t]],
"Finite part retains resonance"->FullSimplify[D[fp,{t,2}]+om^2 fp-Exp[-I om t]],
"Only positive radial resonance"->FullSimplify[(2d)(2d-2)-4-4(d^2-d-1)],
"Forced trace coefficient"->FullSimplify[4(d^2-d-1)(-d(2d-3)/(2Pi*2(d^2-d-1)))+d(2d-3)/Pi]
|>;
,"ladders",
Clear[r,t,ph,del];ff=1+r^2;nn=Sqrt[ff];xx={t,r,ph};asm=r>0&&del>1&&Element[{t,ph},Reals];
rv[sig_]:=Exp[-I t+I sig ph]{I r/(2nn),-nn/2,-I sig nn/(2r)};
dv[sig_]:=Exp[I t-I sig ph]{I r/(2nn),nn/2,-I sig nn/(2r)};
act[v_,x_]:=v.Table[D[x,z],{z,xx}];
psi[0,0]=ff^(-del/2)Exp[-I del t];
psi[p_Integer,q_Integer]/;p>0:=psi[p,q]=FullSimplify[act[rv[1],psi[p-1,q]],Assumptions->asm];
psi[0,q_Integer]/;q>0:=psi[0,q]=FullSimplify[act[rv[-1],psi[0,q-1]],Assumptions->asm];
pred[p_,q_]:=Module[{j=p-q,n=Min[p,q],nrm,c},nrm=Sqrt[Factorial[n]Gamma[n+del+Abs[j]]/(Gamma[n+del]Gamma[n+Abs[j]+1])];c=Sqrt[Factorial[p]Factorial[q]Pochhammer[del,p]Pochhammer[del,q]];
c nrm Exp[-I(del+p+q)t+I j ph]r^Abs[j]ff^(-(del+Abs[j])/2)JacobiP[n,del-1,Abs[j],(r^2-1)/ff]];
samples={{0,0},{1,0},{0,1},{1,1},{2,0},{2,1},{2,2}};
result=<|"Ladder to normalized Jacobi modes"->Table[FullSimplify[psi@@pq-pred@@pq,Assumptions->asm],{pq,samples}],
"General lowering samples"->Flatten[Table[FullSimplify[act[dv[1],psi[p,q]]-p(del+p-1)psi[p-1,q],Assumptions->asm],{p,1,2},{q,0,2}]],
"Conjugate ladder generators"->Table[FullSimplify[Conjugate[rv[sig]]+dv[sig],Assumptions->asm],{sig,{-1,1}}]|>;
,"gram",
Clear[r,t];f=1+r^2;g=DiagonalMatrix[{-f,1/f,r^2}];gi=Inverse[g];hp=DiagonalMatrix[{1/f,f,1/r^2}];
u=f^-1 Exp[-2I t]/Sqrt[2Pi];v=f^-1 Exp[2I t]/Sqrt[2Pi];
du={D[u,t],D[u,r],0};dv={D[v,t],D[v,r],0};
ts=FullSimplify[(Outer[Times,du,dv]+Outer[Times,dv,du])/2-g(du.gi.dv)/2,Assumptions->r>0&&Element[t,Reals]];
tp=FullSimplify[Outer[Times,du,du]-g(du.gi.du)/2,Assumptions->r>0&&Element[t,Reals]];
basis={ts,ComplexExpand[Re[tp]],ComplexExpand[Im[tp]]};
gram=Table[Integrate[FullSimplify[2Pi r Tr[hp.basis[[a]].hp.basis[[b]]],Assumptions->r>0&&Element[t,Reals]],{t,0,Pi},{r,0,1}],{a,3},{b,3}];
result=<|"Ground-mode source Gram matrix"->FullSimplify[gram-DiagonalMatrix[{57/80,7/16,7/16}]],"Ground-mode Gram determinant"->Factor[Det[gram]]-2793/20480|>;
,_,Print["Unknown completion case"];Exit[2]];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result;
