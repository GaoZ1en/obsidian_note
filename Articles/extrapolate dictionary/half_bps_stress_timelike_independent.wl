(* Independent round23 checks; no existing reports changed. *)
ClearAll["Global`*"];
la[f_, x_] := D[f, {x, 2}] - D[f, x]/x;
disc[a_, b_, t_] := ((a + b)^2 - t^2) ((a - b)^2 - t^2);
c2 = a^2 + b^2 - 2 a b Cos[th];
midIntegrand = la[BesselJ[0, z Sqrt[c2]]/(t^2 - c2), a];
hom = 8 a^2 (disc[a,b,t] + 6 b^2 t^2)/disc[a,b,t]^(5/2);
radial[a0_, b0_, t0_, z0_] := -8/a0^2 NIntegrate[
 (Pi u/2) (BesselJ[0,t0 u] BesselY[0,t0 z0] - BesselY[0,t0 u] BesselJ[0,t0 z0]) u^2 BesselJ[2,a0 u] BesselJ[0,b0 u],
 {u,0,z0}, WorkingPrecision->50,AccuracyGoal->35,PrecisionGoal->35];
allLeg[a0_, b0_, t0_, z0_] := -8/a0^2 (NIntegrate[
 Evaluate[midIntegrand /. {a->a0,b->b0,t->t0,z->z0}],{th,0,Pi},WorkingPrecision->50,AccuracyGoal->35,PrecisionGoal->35]/Pi + BesselJ[0,t0 z0] (hom /. {a->a0,b->b0,t->t0}));
bound[a0_, b0_, z0_] := z0^6/36 + (a0+b0)^2 z0^8/192 + (a0+b0)^4 z0^10/14400;
checks = {
 "J2_mass_derivative" -> FullSimplify[la[BesselJ[0,a u],a] - u^2 BesselJ[2,a u], Assumptions->{a>0,u>0}],
 "D_derivative" -> FullSimplify[la[disc[a,b,t]^(-1/2),a]-hom,Assumptions->{a>b+t,b>0,t>0}],
 "small_radial_ODE" -> Normal@Series[(D[#,{z,2}]+D[#,z]/z+t^2 #)&[-z^6/36+(3 a^2+9 b^2+t^2)z^8/2304]+8/a^2 z^2 BesselJ[2,a z] BesselJ[0,b z],{z,0,6}],
 "fourth_chain_rule" -> Expand[D[G[(x-b c)^2+d],{x,4}]-(12 G''[(x-b c)^2+d]+48 (x-b c)^2 G'''[(x-b c)^2+d]+16 (x-b c)^4 G''''[(x-b c)^2+d])],
 "bound_constants" -> {8/3*12/(4^3*3!*3),8/3*48/(4^4*4!*4),8/3*16/(4^5*5!*5)}
};
samples=Table[With[{r=radial@@v, f=allLeg@@v},<|"parameters"->v,"Volterra"->r,"all_leg"->f,"residual"->f-r,"bound"->bound[v[[1]],v[[2]],v[[4]]]|>],{v,{{3,1,1,1},{1,3,1,1},{5/2,1,1,3/2}}}];
thresholds=Table[With[{r=radial@@v},<|"parameters"->v,"Volterra"->r,"bound"->bound[v[[1]],v[[2]],v[[4]]]|>],{v,{{2,1,1,1},{1,2,1,1},{2,1,1,1/10}}}];
f2[x_] := If[x == 0, 1, 8 BesselJ[2,x]/x^2];
cube[a0_,b0_,t0_,z0_] := -z0^6/4 NIntegrate[(v w)^2 f2[a0 z0 Sqrt[v w]] BesselJ[0,b0 z0 Sqrt[v w]] BesselJ[0,t0 z0 Sqrt[(1-v)(1-w)]],{v,0,1},{w,0,1},WorkingPrecision->20,AccuracyGoal->12,PrecisionGoal->12,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
cubeChecks=Table[With[{r=radial@@v, c=cube@@v},<|"parameters"->v,"cube"->c,"residual"->c-r,"sharp_bound"->v[[4]]^6/36|>],{v,{{3,1,1,1},{2,1,1,1},{1,2,1,1}}}];
report=<|"exact"->checks,"samples"->samples,"thresholds"->thresholds,"cube"->cubeChecks|>;
Print[InputForm[report]];
