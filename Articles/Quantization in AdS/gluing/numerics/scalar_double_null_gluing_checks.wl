(* Two intersecting null cuts in the finite Dirichlet cavity.
   u=t-x+a, v=t+x-a; O=(0,a); E=G^A-G^R.
   All integrations use the two finite future horizons, with wavefront
   delta terms evaluated separately. No mode truncation defines the algebra. *)
ClearAll["Global`*"];
wave[f_] := 4 D[f, u, v] + m^2 f;
lag = D[phi[u,v],u] D[phi[u,v],v] - m^2 phi[u,v]^2/4;
first = D[lag /. phi -> Function[{u,v},phi[u,v]+e h[u,v]],e] /. e->0;
div = D[D[phi[u,v],v] h[u,v],u] + D[D[phi[u,v],u] h[u,v],v];
greenDiv = D[aa[u,v] D[bb[u,v],v]-bb[u,v] D[aa[u,v],v],u] +
  D[aa[u,v] D[bb[u,v],u]-bb[u,v] D[aa[u,v],u],v];
rr[a_,b_,mm_] := BesselJ[0,mm Sqrt[a b]];
dr[a_,b_,mm_] := If[Abs[b]<10^-38,-mm^2 a/4,
  -mm Sqrt[a] BesselJ[1,mm Sqrt[a b]]/(2 Sqrt[b])];

(* Formal Goursat iteration for independent polynomial profiles. *)
seed = c + l1 u + l2 u^2 + r1 v + r2 v^2;
step[f_] := -Integrate[Integrate[f,v],u]/4;
(* Integrating monomials with zero constants is the based double integral. *)
terms = NestList[step,seed,8];
goursatSeries = Sum[m^(2 n) terms[[n+1]],{n,0,8}];
goursatResidual = Expand[wave[goursatSeries]];
riemannSeries[uu_,vv_] := Sum[(-m^2 uu vv/4)^n/(n!)^2,{n,0,8}];
explicitSeries = c riemannSeries[u,v] +
  Integrate[riemannSeries[u-s,v](l1+2 l2 s),{s,0,u}] +
  Integrate[riemannSeries[u,v-s](r1+2 r2 s),{s,0,v}];
(* Mixed Taylor coefficients of a smooth homogeneous solution. *)
jet[j_,k_] := If[j>=k,(-m^2/4)^k left[j-k],(-m^2/4)^j right[k-j]];
jetRules = {left[0]->c,right[0]->c};

exact = <|
  "actionVariation" -> Simplify[first+wave[phi[u,v]]h[u,v]/2-div],
  "greenIdentity" -> Simplify[(aa[u,v]wave[bb[u,v]]-bb[u,v]wave[aa[u,v]])/2-greenDiv],
  "RiemannPDE" -> FullSimplify[wave[rr[u,v,m]],Assumptions->u>0&&v>0&&m>0],
  "RiemannAxes" -> {Limit[rr[u,v,m],u->0]-1,Limit[rr[u,v,m],v->0]-1},
  "leftEnergyFlux" -> Simplify[((pt^2+px^2+m^2 q^2)/4-pt px/2)/.pt->2 qu+px]-(qu^2+m^2 q^2/4),
  "rightEnergyFlux" -> Simplify[((pt^2+px^2+m^2 q^2)/4+pt px/2)/.pt->2 qv-px]-(qv^2+m^2 q^2/4),
  "GoursatAxes" -> {Simplify[(goursatSeries/.v->0)-(c+l1 u+l2 u^2)],Simplify[(goursatSeries/.u->0)-(c+r1 v+r2 v^2)]},
  "GoursatPDEThroughMass16" -> Table[Coefficient[goursatResidual,m,2 n],{n,0,8}],
  "explicitGoursatKernelThroughMass16" -> Expand[explicitSeries-goursatSeries],
  "cornerRecurrenceThroughOrder8" -> Flatten[Table[Simplify[(jet[j+1,k+1]+m^2 jet[j,k]/4)/.jetRules],{j,0,7},{k,0,7}]],
  "masslessReconstruction" -> Simplify[(c+l1 u+l2 u^2)+(c+r1 v+r2 v^2)-c-seed]
|>;

(* On N_R: B_p(s)=sum c/2 theta(H-s) R(A,H-s).
   N_L follows by x->L-x and a->L-a. *)
rightTerms[t_,x_,aa_,ll_] := Select[Flatten[Table[{
  {1,t-x+aa-2 n ll,t+x-aa+2 n ll},
  {-1,t+x+aa+2 n ll,t-x-aa-2 n ll}}, {n,-8,8}],1],#[[2]]>0&&#[[3]]>0&];
leftTerms[t_,x_,aa_,ll_] := rightTerms[t,ll-x,ll-aa,ll];
wronskian[{cp_,ap_,hp_},{cz_,az_,hz_},mm_,len_] := Module[
  {end=Min[len,hp,hz],contact=0,integ=0},
  If[end<=0,Return[0]];
  If[0<hp<len && hp<hz,contact+=rr[az,hz-hp,mm]];
  If[0<hz<len && hz<hp,contact-=rr[ap,hp-hz,mm]];
  integ=NIntegrate[dr[ap,hp-s,mm]rr[az,hz-s,mm]-rr[ap,hp-s,mm]dr[az,hz-s,mm],
    {s,0,end},WorkingPrecision->45,AccuracyGoal->31,PrecisionGoal->31];
  cp cz (contact+integ)/4
];
sheet[pt_,zt_,mm_,len_] := Total[Flatten[Table[wronskian[p,z,mm,len],{p,pt},{z,zt}]]];
sewn[tp_,xp_,tz_,xz_,mm_,aa_,ll_] := {
  sheet[leftTerms[tp,xp,aa,ll],leftTerms[tz,xz,aa,ll],mm,2 aa],
  sheet[rightTerms[tp,xp,aa,ll],rightTerms[tz,xz,aa,ll],mm,2(ll-aa)]};
line[tau_,d_,mm_] := If[tau>Abs[d],rr[tau-d,tau+d,mm]/2,0];
retarded[tp_,xp_,tz_,xz_,mm_,ll_] := Sum[
  line[tp-tz,xp-xz+2 n ll,mm]-line[tp-tz,xp+xz+2 n ll,mm],{n,-8,8}];
globalE[tp_,xp_,tz_,xz_,mm_,ll_] := retarded[tz,xz,tp,xp,mm,ll]-retarded[tp,xp,tz,xz,mm,ll];
cases={
  {"direct future pair",7/10,11/10,3/10,9/10,1,1,2},
  {"first reflections",14/5,7/10,3/10,11/10,1,1,2},
  {"multiple reflections",29/5,4/5,2/5,13/10,3/2,1,2},
  {"spacelike cancellation",7/10,3/2,3/5,1/2,1,1,2},
  {"off-center corner",11/5,6/5,2/5,4/5,1,3/4,2}
};
brackets=Table[With[{vals=sewn@@Rest[c],target=N[globalE@@Delete[Rest[c],6],40]},
  <|"case"->First[c],"left"->vals[[1]],"right"->vals[[2]],"sum"->Total[vals],
    "global"->target,"error"->Abs[Total[vals]-target],"passed"->TrueQ[Abs[Total[vals]-target]<10^-28]|>],{c,cases}];
(* |n|>=9 has image distances >=16 L. This exceeds all intervals
   in these bulk and horizon kernels. The summation is causally exhaustive. *)
support=Table[With[{tp=c[[2]],tz=c[[4]],aa=c[[7]],ll=c[[8]]},
  TrueQ[tp>Abs[c[[3]]-aa] && tz>Abs[c[[5]]-aa] && 16 ll>Max[tp,tz,Abs[tp-tz]]]],{c,cases}];

(* Smooth Dirichlet solutions test the explicit two-profile Goursat formula
   and the whole two-sheet symplectic flux, independently of point kernels. *)
mode[n_,mm_,ll_,t_,x_] := Sin[n Pi x/ll] Cos[Sqrt[(n Pi/ll)^2+mm^2]t];
reconstruct[n_,mm_,ll_,aa_,uu_,vv_] := Module[{qL,qR,dl,drt,z},
  qL=mode[n,mm,ll,z/2,aa-z/2];qR=mode[n,mm,ll,z/2,aa+z/2];
  dl=D[qL,z];drt=D[qR,z];
  rr[uu,vv,mm]mode[n,mm,ll,0,aa] +
  NIntegrate[rr[uu-z,vv,mm]dl,{z,0,uu},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32] +
  NIntegrate[rr[uu,vv-z,mm]drt,{z,0,vv},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32]
];
reconstruction=Table[With[{n=row[[1]],mm=row[[2]],ll=2,aa=row[[3]],uu=row[[4]],vv=row[[5]]},
  With[{value=reconstruct[n,mm,ll,aa,uu,vv],target=N[mode[n,mm,ll,(uu+vv)/2,aa+(vv-uu)/2],40]},
    <|"case"->row,"error"->Abs[value-target],"passed"->TrueQ[Abs[value-target]<10^-28]|>]],
  {row,{{1,1,1,1/2,4/5},{2,3/2,1,7/5,6/5},{3,1,3/4,6/5,9/5}}}];
flux[n_,k_,mm_,aa_,ll_] := Module[{z,fn,gn,fl,gl,fr,gr,left,right},
  fn[t_,x_]:=Sin[n Pi x/ll]Cos[Sqrt[(n Pi/ll)^2+mm^2]t];
  gn[t_,x_]:=Sin[k Pi x/ll]Sin[Sqrt[(k Pi/ll)^2+mm^2]t]/Sqrt[(k Pi/ll)^2+mm^2];
  fl=fn[z/2,aa-z/2];gl=gn[z/2,aa-z/2];fr=fn[z/2,aa+z/2];gr=gn[z/2,aa+z/2];
  left=D[fl,z]gl-D[gl,z]fl;right=D[fr,z]gr-D[gr,z]fr;
  NIntegrate[left,{z,0,2 aa},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32] +
  NIntegrate[right,{z,0,2(ll-aa)},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32]
];
symplectic=Table[With[{value=flux[n,k,1,3/4,2],target=-KroneckerDelta[n,k]},
  <|"modes"->{n,k},"error"->Abs[value-target],"passed"->TrueQ[Abs[value-target]<10^-28]|>],{n,1,2},{k,1,2}];
allPassed=And[AllTrue[Flatten[Values[exact]],TrueQ[#==0]&],And@@support,
  And@@Lookup[brackets,"passed"],And@@Lookup[reconstruction,"passed"],And@@Lookup[Flatten[symplectic],"passed"]];
report=<|"exactResiduals"->exact,"supportChecks"->support,"brackets"->brackets,
  "reconstruction"->reconstruction,"symplectic"->symplectic,"allPassed"->allPassed|>;
Print[InputForm[report]];
If[!TrueQ[allPassed],Exit[1]];
