(* Fresh review certificates. Run each case in a fresh kernel:
   verificationCase="clock"; Get[".../vacuum_orbit_transport_checks.wl"];
   verificationCase="foliation"; Get[".../vacuum_orbit_transport_checks.wl"];
   Use the xAct components profile for "foliation". The existing
   gravitation_scalar_solution_checks.wl supplies covariance/constraint cases. *)
caseName=If[ValueQ[verificationCase],verificationCase,"clock"];
Switch[caseName,
"clock",
Clear[x,eta,kap,v,nn,del,yy,zz];
checks=<||>;
put[label_,value_]:=AppendTo[checks,label->value];
pp=1/(Cosh[eta]-Sinh[eta]Cos[x]);
put["finite_flow_Schwarzian",FullSimplify[
 D[pp,{x,2}]/pp-3/2(D[pp,x]/pp)^2-(1-pp^2)/2,Element[{eta,x},Reals]]];
put["finite_flow_clock_average",FullSimplify[
 Integrate[pp^2,{x,0,2Pi},Assumptions->eta>0]/(2Pi)-Cosh[eta],eta>0]];
(* The negative-flow case follows by x -> x+Pi; eta=0 is continuous. *)
put["negative_flow_symmetry",FullSimplify[
 (pp/.eta->-eta)-(pp/.x->x+Pi),Element[{eta,x},Reals]]];
flow=x+kap v[x]+kap^2 v[x]v'[x]/2;
put["clock_expansion_modulo_periodic_derivative",Expand[
 Coefficient[Normal[Series[D[flow,x]^2,{kap,0,2}]],kap,2]
 -v'[x]^2-D[v[x]v'[x],x]]];
ll={{aa,bb},{bb,cc}};jj={j1,j2};kk={k1,k2};
quad=-kk.ll.kk/2+kk.jj/2;
put["Schur_equation",Together[D[quad,{{k1,k2}}]+ll.kk-jj/2]];
put["Schur_coefficient",Together[
 (quad/.Thread[kk->Inverse[ll].jj/2])-jj.Inverse[ll].jj/8]];
dn=2Pi nn(nn^2-1); central=24Pi/kap^2;
put["vacuum_mode_normalization",Factor[central kap^2 2(nn^4-nn^2)/(24dn)-nn]];
put["fixed_clock_mode_normalization",Factor[kap^2 2nn^2/dn-kap^2 nn/(Pi(nn^2-1))]];
(* Fresh real lowest-mode stress contraction; yy=1+r^2, zz=Cos[Delta t]. *)
ph2=yy^(-del)zz^2/(2Pi);
dt2=del^2 yy^(-del)(1-zz^2)/(2Pi);
dr2=del^2(yy-1)yy^(-del-2)zz^2/(2Pi);
kin=-dt2/yy+yy dr2;mu=del(del-2);
ttt=dt2+yy(kin+mu ph2)/2;
trr=dr2-(kin+mu ph2)/(2yy);
ktt=del/(8Pi)(1-(del-1)/(del+1)yy^(-del)(2zz^2-1));
krr=del/(8Pi yy^2)(1-yy^(1-del)-(yy-1)yy^(-del)(2zz^2-1));
integrand=Expand[ktt ttt/yy^2+krr yy^2 trr];
averaged=Coefficient[integrand,zz,0]+Coefficient[integrand,zz,2]/2+
 3Coefficient[integrand,zz,4]/8;
radial=FullSimplify[Integrate[averaged/2,{yy,1,Infinity},Assumptions->del>1],del>1];
put["lowest_exchange_integral",Factor[
 radial-del^2(8del^2-2del-7)/(128Pi^2(2del-1)(2del+1))]];
put["lowest_pair_normalization",Factor[
 -256Pi^2 radial-2del^2(7+2del-8del^2)/(4del^2-1)]];
report=<|"case"->caseName,"engine"->$Version,"residuals"->checks,
 "allPassed"->AllTrue[Flatten[Values[checks]],SameQ[#,0]&]|>,
"foliation",
Needs["xAct`xTensor`"];Needs["xAct`xCoba`"];Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e}];
DefChart[ch,M,{0,1,2},{tt[],rr[],ph[]}];
DefMetric[-1,gg[-a,-b],CD];
ff=1+rr[]^2;
shift=5rr[]^2/(1+rr[]^2)^3;
derivative=D[shift,rr[]];
metric={{-ff,-ff derivative,0},{-ff derivative,1/ff-ff derivative^2,0},{0,0,rr[]^2}};
MetricInBasis[gg,-ch,metric];
MetricCompute[gg,ch,All];
normalSquared=ToValues[gg[{0,ch},{0,ch}]];
checks=<|"inverse_metric_time_component"->FullSimplify[
 normalSquared-(-1/ff+ff derivative^2),rr[]>0],
 "timelike_slice_counterexample"->FullSimplify[(normalSquared/.rr[]->1/2)-1596/3125],
 "Jacobian_determinant"->(Det[{{1,derivative,0},{0,1,0},{0,0,1}}]-1)|>;
report=<|"case"->caseName,"engine"->System`$Version,"residuals"->checks,
 "normalSquaredAtHalf"->(normalSquared/.rr[]->1/2),
 "allPassed"->AllTrue[Flatten[Values[checks]],SameQ[#,0]&]|>,
_,Print["Unknown verificationCase: ",caseName];Exit[2]];
Print[report];
If[!TrueQ[report["allPassed"]],Exit[1]];
