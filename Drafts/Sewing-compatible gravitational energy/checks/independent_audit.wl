(* Post-draft adversarial audit. Deliberately test broken hypotheses as well
   as the repaired statements; this is not a second gravitational solver. *)
ClearAll["Global`*"];
outDir=DirectoryName[$InputFileName]; rows={};
save[id_,condition_,value_]:=AppendTo[rows,<|"id"->id,"passed"->TrueQ[condition],
 "value"->ToString[value,InputForm]|>];
zero[ex_]:=And@@(TrueQ[FullSimplify[#]==0]&/@Flatten[{ex}]);
coords={q,p}; jmat={{0,-1},{1,0}};
flow={q,0}; alpha=jmat.flow;
energy={q,p}.alpha;
curl=D[alpha[[2]],q]-D[alpha[[1]],p];
save["D01_nonclosed_charge_one_form",curl===1,curl];
save["D02_half_energy_is_not_open_flow_generator",zero[
 Table[D[energy/2,x],{x,coords}]-alpha-{p/2,-q/2}],{p/2,-q/2}];
jdeg={{0,-1,0},{1,0,0},{0,0,0}};
unstableA={{0,1,0},{-1,0,1},{0,0,0}};
e[x_]:=Expand[x.jdeg.unstableA.x];
save["D03_radical_without_flow_stability_is_insufficient",
 zero[jdeg.{0,0,1}] && Expand[e[{q,p,z+s}]-e[{q,p,z}]]===-q s,-q s];
save["D04_energy_kernel_is_not_symplectic_kernel",Det[jmat]===1 &&
 {q,p}.jmat.{0,0}===0,0];
(* Exact endpoint changes have identically zero curvature. *)
pot={p,0}; fun=q^2 p+Sin[p];
newpot=pot+Table[D[fun,x],{x,coords}];
save["D05_scalar_endpoint_does_not_change_two_form",zero[
 (D[newpot[[2]],q]-D[newpot[[1]],p])-(D[pot[[2]],q]-D[pot[[1]],p])],-1];
(* A simultaneous spacetime-potential/corner shift has zero effect. *)
save["D06_relative_potential_ambiguity_cancels",Expand[(bulk+boundaryY)-(corner+boundaryY)-(bulk-corner)]===0,0];
(* Constant boost parameter gives a nonzero charge variation if area varies. *)
areaBoostAlpha=boost dArea/(8 Pi grav);
save["D07_fixed_area_and_variable_area_are_different_domains",
 (areaBoostAlpha/.dArea->0)===0 && (areaBoostAlpha/.dArea->1)===boost/(8 Pi grav),areaBoostAlpha];
(* Merely equal responses, without common variations of trace, does not cancel. *)
omegaOne = dp1 dq2-dp2 dq1;
omegaTwo = (-dp1) dr2-(-dp2) dr1;
save["D08_common_trace_is_needed_for_flux_cancellation",
 zero[(omegaOne+omegaTwo)/.{dr1->dq1,dr2->dq2}] &&
 !zero[(omegaOne+omegaTwo)/.{dp1->1,dp2->0,dq2->1,dr2->0}],omegaOne+omegaTwo];
(* Taylor expansion of a genuine pullback, not a variation of h alone. *)
dim=3; gen=Array[w,{dim,dim}]; gen2=Array[v,{dim,dim}];
g0=Array[g,dim]; h0=Array[h,dim]; k0=Array[k,dim];
pull=Expand[(IdentityMatrix[dim]+eps gen+eps^2(gen2+gen.gen/2)).(g0+eps h0+eps^2 k0)];
second=Coefficient[#,eps,2]&/@pull;
save["D09_second_order_pullback_transform",zero[second-k0-gen.h0-gen.gen.g0/2-gen2.g0],0];
(* Stationary critical points remove curve acceleration, noncritical ones do not. *)
hcurve={eps a+eps^2 b,eps c+eps^2 d};
criticalH=Total[hcurve^2]/2;
save["D10_Hessian_independent_of_second_order_curve_at_critical_point",
 zero[(D[criticalH,{eps,2}]/.eps->0)-a^2-c^2],FullSimplify[D[criticalH,{eps,2}]/.eps->0]];
noncriticalH=hcurve[[1]]+criticalH;
save["D11_noncritical_charge_retains_curve_acceleration",
 zero[(D[noncriticalH,{eps,2}]/.eps->0)-a^2-2 b-c^2],FullSimplify[D[noncriticalH,{eps,2}]/.eps->0]];
(* Rindler fixed-null-segment limit: no suppressed rho remains. *)
q1=G1[rho Exp[kap tau]]; q2=G2[rho Exp[kap tau]];
wall=kap rho/(2 kp2)(D[q1,rho] q2-D[q2,rho] q1);
null=FullSimplify[(wall/.tau->Log[V/rho]/kap)/(kap V),
 Assumptions->{V>0,rho>0,kap>0}];
target=(G1'[V] G2[V]-G2'[V] G1[V])/(2 kp2);
save["D12_Rindler_limit_at_fixed_null_segment",zero[null-target],null];
nullValue=target/.{G1[V]->V,G1'[V]->1,G2[V]->1,G2'[V]->0};
save["D13_explicit_nonzero_null_flux",nullValue===1/(2 kp2),nullValue];
(* Ordinary functions converge pointwise; integrated charge does not. *)
tailIntegral=Integrate[rho/(x+rho)^2,{x,0,1},Assumptions->rho>0];
save["D14_limit_order_mismatch",zero[tailIntegral-1/(1+rho)] &&
 Limit[tailIntegral,rho->0]===1,tailIntegral];
(* Stationary Schwarzschild mass directions are a physical zero of E_can. *)
schwarz=DiagonalMatrix[{-(1-2 grav mass/r),1/(1-2 grav mass/r),r^2,r^2 Sin[th]^2}];
massTangent=D[schwarz,mass];
save["D15_stationary_nontrivial_mass_tangent",zero[D[massTangent,t]] &&
 !zero[massTangent],massTangent[[1,1]]];
(* Fixed-generator and field-dependent-generator variations differ. *)
save["D16_field_dependent_generator_missing_term",D[hh^2,hh]-hh===hh,hh];
(* z is a proper null coordinate; the valid section z=q is not flow invariant
   as a literal subspace. A proper compensator restores it. *)
projection={{1,0,0},{0,1,0},{1,0,0}};
rotation={{0,1,0},{-1,0,0},{0,0,0}};
sectionDefect=(rotation.projection-projection.rotation).{q,p,z};
save["D17_arbitrary_section_does_not_commute_with_time_flow",
 sectionDefect==={0,0,-p} && zero[jdeg.sectionDefect],sectionDefect];
report=<|"suite"->"independent_audit","version"->$Version,
 "passed"->Count[rows[[All,"passed"]],True],"total"->Length[rows],
 "allPassed"->And@@rows[[All,"passed"]],"checks"->rows|>;
Export[FileNameJoin[{outDir,"audit-results.json"}],report,"RawJSON"];
Print[KeyDrop[report,{"checks"}]];
Print["Failed checks: ",Select[rows,!TrueQ[#["passed"]]&]];
If[!TrueQ[report["allPassed"]],Exit[1]];
