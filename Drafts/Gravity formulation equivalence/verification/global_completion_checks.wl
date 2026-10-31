(* Algebraic checks supporting, not replacing, global analytic arguments.
   Metric on universal cover of SL(2,R): h=ell^2/2 tr((X^-1 dX)^2).
   Counterexample J_s(t,r)=(t-s chi(r^2) Log[1+Exp[t]],r).
   Run in a fresh Wolfram kernel. *)
ClearAll[GlobalCompletionChecks];
GlobalCompletionChecks[]:=Block[{$Messages={},$MessageList={}},
 Module[{j,eta,ell,checks,comm,curvatureResiduals,aa,bb,gg,hh,p,q,r,u,v,w,
   invh,invG,x,dx,maurer,rho,s,c,t,t0,jac,sourceNames,
   xc,fl,fe,barDS,barLambda,barDelta,dl,wf,d0a,d0b,d1a,d1b,d2a,d2b,fp},
  j={{{0,1},{-1,0}}/2,{{0,1},{1,0}}/2,DiagonalMatrix[{1,-1}]/2};
  eta=DiagonalMatrix[{-1,1,1}]; comm[a_,b_]:=a.b-b.a;
  curvatureResiduals=Flatten[Table[
   Expand[-comm[comm[j[[a]],j[[b]]],j[[d]]]/4+(eta[[b,d]] j[[a]]-eta[[a,d]] j[[b]])/4],
   {a,3},{b,3},{d,3}]];
  aa={{u[1],u[2]},{u[3],-u[1]}};bb={{v[1],v[2]},{v[3],-v[1]}};
  gg={{p[1],p[2]},{p[3],(1+p[2] p[3])/p[1]}};
  hh={{q[1],q[2]},{q[3],(1+q[2] q[3])/q[1]}};
  invh=Inverse[hh];invG=Inverse[gg];x=gg.invh;
  dx=gg.aa.invh-gg.bb.invh;
  maurer=Together[Inverse[x].dx];
  jac=(1+(1-s c)rho)/(1+rho);
  barDS={{0,-1},{-fl[xc],0}};
  barLambda={{fe'[xc]/2,-fe[xc]},{-fl[xc] fe[xc]+fe''[xc]/2,-fe'[xc]/2}};
  barDelta={{0,0},{-(fe[xc] fl'[xc]+2 fe'[xc] fl[xc]-fe'''[xc]/2),0}};
  wf=(d1a d2b-d1b d2a)/fp^2-(d0a d1b-d0b d1a);
  checks=<|
   "barred DS gauge parameter gives the same projective variation"->And@@(TrueQ[#===0]& /@Flatten[Expand[D[barLambda,xc]+comm[barDS,barLambda]-barDelta]]),
   "barred DS trace normalization"->TrueQ[Expand[Tr[barLambda.{{0,0},{-dl,0}}]-fe[xc] dl]===0],
   "circle reflection reverses orbit two-form density"->TrueQ[Expand[(wf/.{d0a->-d0a,d0b->-d0b,d2a->-d2a,d2b->-d2b})+wf]===0],
   "SL target bi-invariant metric normalization"->And@@Flatten[Table[TrueQ[Tr[j[[a]].j[[b]]]/2==eta[[a,b]]/4],{a,3},{b,3}]],
   "SL target sectional curvature minus one over ell squared"->And@@(TrueQ[#===0]& /@curvatureResiduals),
   "developing map Maurer-Cartan pullback"->And@@(TrueQ[#===0]& /@Flatten[Together[maurer-hh.(aa-bb).invh]]),
   "developing map metric pullback"->TrueQ[Together[Tr[maurer.maurer]-Tr[(aa-bb).(aa-bb)]]===0],
   "embedding Jacobian is strictly positive"->TrueQ[FullSimplify[jac>0,Assumptions->{rho>0,0<=s<=1,0<=c<=1}]],
   "endpoint central time is negative softplus"->TrueQ[FullSimplify[t-Log[1+Exp[t]]+Log[1+Exp[-t]],Assumptions->Element[t,Reals]]===0],
   "endpoint central time derivative"->TrueQ[FullSimplify[D[t-Log[1+Exp[t]],t]-1/(1+Exp[t]),Assumptions->Element[t,Reals]]===0],
   "endpoint central time has finite upper endpoint"->TrueQ[Limit[t-Log[1+Exp[t]],t->Infinity]===0],
   "central proper-time antiderivative"->TrueQ[FullSimplify[D[-ell Log[1+Exp[-t]],t]-ell/(1+Exp[t]),Assumptions->{ell>0,Element[t,Reals]}]===0],
   "central future proper-time remainder vanishes"->TrueQ[Limit[ell Log[1+Exp[-t]],t->Infinity]===0],
   "nonendpoint central time is future unbounded"->TrueQ[Limit[t-s Log[1+Exp[t]],t->Infinity,Assumptions->0<=s<1]===Infinity]
  |>;
  <|"KernelVersion"->System`$Version,"Checks"->checks,"AllPassed"->And@@Values[checks],
   "Assumptions"->{"ell>0", "generic SL matrices use chart p1 q1 != 0; identities extend by polynomial/rational identity and conjugation invariance", "rho=Exp[t]>0, s and chi lie in [0,1]", "global completeness and covering arguments are analytic, not CAS conclusions"},
   "Messages"->(ToString[#,InputForm]& /@$MessageList)|>
 ]
];
GlobalCompletionChecks[]
