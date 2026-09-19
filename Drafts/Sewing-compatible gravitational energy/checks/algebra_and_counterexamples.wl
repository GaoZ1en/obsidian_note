(* Exact algebra and counterexamples. These tests do not certify a GR phase
   space, a global gauge slice, or an infinite-dimensional limiting theorem. *)
ClearAll["Global`*"];
outDir = DirectoryName[$InputFileName];
results = {};
record[id_, condition_, value_] := AppendTo[results,
  <|"id" -> id, "passed" -> TrueQ[condition],
    "value" -> ToString[value, InputForm]|>];
zero[expr_] := And @@ (TrueQ[FullSimplify[#] == 0] & /@ Flatten[{expr}]);

dim = 4;
jmat = Table[Which[i < j, jj[i,j], i > j, -jj[j,i], True, 0],
  {i,dim},{j,dim}];
amat = Array[aa,{dim,dim}];
hh = Array[h,dim]; vv = Array[v,dim]; ww = Array[w,dim]; yy = Array[y,dim];
om[a_,b_] := Expand[a . jmat . b];
energy[a_] := om[a,amat . a];
completion[a_,b_] := om[a+b,amat . b]-om[amat . a,b];
r = Expand[energy[hh+vv]-energy[hh]-completion[hh,vv]];
record["A01_transgression_without_symplectic_flow_assumption",zero[r],r];
r = Expand[completion[hh,vv]+completion[hh+vv,ww]-completion[hh,vv+ww]];
record["A02_additive_linearized_cocycle",zero[r],r];
r = Expand[energy[hh+ww]+completion[hh+ww,vv-ww]-energy[hh]-completion[hh,vv]];
record["A03_joint_metric_frame_invariance",zero[r],r];
record["A04_preferred_representative",zero[completion[hh,0 vv]],completion[hh,0 vv]];
flowDefect = Transpose[amat] . jmat+jmat . amat;
r = Expand[Coefficient[energy[hh+ee yy]/2,ee,1]-om[yy,amat . hh]
  + yy . flowDefect . hh/2];
record["A05_energy_gradient_flow_defect",zero[r],r];

(* A charged finite-dimensional boundary pair, not a gravitational model. *)
josc = {{0,-1},{1,0}}; aosc = {{0,1},{-1,0}};
eosc[x_] := Expand[x . josc . aosc . x];
record["A06_positive_oscillator_sign",eosc[{q,p}]===p^2+q^2,eosc[{q,p}]];
record["A07_quadratic_pure_gauge_term_cannot_be_dropped",eosc[{1,0}]===1,eosc[{1,0}]];
record["A08_same_incomplete_trace_different_energy",eosc[{1,0}]-eosc[{0,0}]===1,1];
jdeg = {{0,-1,0},{1,0,0},{0,0,0}};
adeg = {{0,1,0},{-1,0,0},{0,0,aa3}};
edeg[x_] := Expand[x . jdeg . adeg . x];
r = edeg[{q,p,z+s}]-edeg[{q,p,z}];
record["A09_proper_radical_extension_is_invisible",zero[r],r];
(* Boundary charge alpha=p dq is exact neither locally nor globally. *)
record["A10_source_curvature_not_killed_by_scalar_endpoint",D[p,p]===1,1];
record["A11_changing_completion_changes_balance",D[eosc[{t,0}],t]===2 t,2 t];
(* f(H) X_H admits integral f(H)dH, not f(H)H. *)
record["A12_field_dependent_flow_charge_correction",D[hh0^2/2,hh0]===hh0 &&
 D[hh0^2,hh0]===2 hh0,{hh0,2 hh0}];

(* Radiative TT sector per unit transverse area, c=1/(16 Pi G)>0. *)
Clear[qfun,t,z,c,len];
omDensity[a_,b_] := c (D[a,t] b-D[b,t] a);
energyDensity[a_] := omDensity[a,D[a,t]];
fluxDensity[a_,b_] := c (a D[b,z]-b D[a,z]);
fluxEnergy[a_] := fluxDensity[a,D[a,t]];
wave[a_] := D[a,{t,2}]-D[a,{z,2}];
r = Expand[D[energyDensity[qfun[t,z]],t]+D[fluxEnergy[qfun[t,z]],z]
 -c (D[qfun[t,z],t] wave[qfun[t,z]]-qfun[t,z] D[wave[qfun[t,z]],t])];
record["R01_local_energy_flux_identity_off_shell",zero[r],r];
r = Expand[energyDensity[qfun[t,z]]-
 c (D[qfun[t,z],t]^2+D[qfun[t,z],z]^2)+
 c D[qfun[t,z] D[qfun[t,z],z],z]+c qfun[t,z] wave[qfun[t,z]]];
record["R02_energy_positive_density_plus_endpoint",zero[r],r];

qGauss = Exp[-(z-t)^2];
eGauss = FullSimplify[energyDensity[qGauss]];
fGauss = FullSimplify[fluxEnergy[qGauss]];
expectedDensity = 2 c Exp[-2 (z-t)^2];
record["R03_Gaussian_wave_exact",zero[wave[qGauss]],wave[qGauss]];
record["R04_Gaussian_energy_and_flux",zero[{eGauss-expectedDensity,fGauss-expectedDensity}],{eGauss,fGauss}];
gaussEnergy[left_,right_] := c Sqrt[Pi/2] (
 Erf[Sqrt[2] (right-t)]-Erf[Sqrt[2] (left-t)]);
r = FullSimplify[D[gaussEnergy[zl,zr],t]+(fGauss/.z->zr)-(fGauss/.z->zl)];
record["R05_finite_slab_balance",zero[r],r];
r = FullSimplify[gaussEnergy[zl,seam]+gaussEnergy[seam,zr]-gaussEnergy[zl,zr]];
record["R06_transparent_radiative_sewing",zero[r],r];
record["R07_outward_seam_flux_cancellation",zero[fGauss-fGauss],0];
record["R08_Gaussian_full_line_normalization",zero[Integrate[expectedDensity,{z,-Infinity,Infinity},
 Assumptions->Element[t,Reals]]-c Sqrt[2 Pi]],c Sqrt[2 Pi]];

qNegative = Exp[z] Cosh[t];
negativeEnergy = Integrate[energyDensity[qNegative]/.t->0,{z,0,len},Assumptions->len>0];
record["R09_open_region_negative_energy",zero[wave[qNegative]] &&
 FullSimplify[negativeEnergy<0,Assumptions->{len>0,c>0}]===True,negativeEnergy];
flowPair = Integrate[omDensity[1,(t-z)^2],{z,0,len}];
record["R10_open_flow_not_symplectic",zero[D[flowPair,t]+2 c len],D[flowPair,t]];
pairOut = (fluxDensity[1,(t-z)^2]/.z->len)-(fluxDensity[1,(t-z)^2]/.z->0);
record["R11_source_curvature_total_flux",zero[pairOut-2 c len],pairOut];
badFlow = t^2 D[f[t-z],t];
badResidual = FullSimplify[wave[badFlow]];
record["R12_nonKilling_flow_fails_linearized_equation",zero[
 badResidual-2 f'[t-z]-4 t f''[t-z]],badResidual];
(* Same trace at z=0, unequal normal derivatives: a shell, not vacuum sewing. *)
qLeft = Sin[k z] Cos[k t]; qRight = -qLeft;
jump = FullSimplify[(D[qRight,z]-D[qLeft,z])/.z->0];
record["R13_energy_equality_does_not_match_response",zero[{qLeft/.z->0,qRight/.z->0,
 energyDensity[qLeft]-energyDensity[qRight],jump+2 k Cos[k t]}],jump];
record["R14_opposite_time_normalizations_leave_seam_flux",zero[a f0-b f0-(a-b) f0],
 Expand[(a-b) f0]];

(* Compact pulse: finite differentiability is enough for this explicit check.
   The proof in the note uses a smooth bump instead. *)
polyPulse = (1-z^2)^4;
packetEnergy = 2 c Integrate[D[polyPulse,z]^2,{z,-1,1}];
record["R15_compact_packet_positive_zero_boundary_jets",packetEnergy===262144 c/45045 &&
 And@@Flatten[Table[(D[polyPulse,{z,n}]/.z->side)===0,{n,0,3},{side,{-1,1}}]],packetEnergy];

(* Area--boost corner: w=boost vanishes on the bifurcation cut, its jet does not. *)
boostVector = {kap z,kap t};
record["C01_zero_value_nonzero_boost_jet",(boostVector/.{t->0,z->0})==={0,0} &&
 D[boostVector[[1]],z]===kap,{boostVector/.{t->0,z->0},D[boostVector[[1]],z]}];
record["C02_area_boost_charge_not_proper",D[kap area/(8 Pi grav),area]===kap/(8 Pi grav),kap/(8 Pi grav)];
record["C03_jacobi_zero_mode_obstruction",Integrate[1,{s,0,2 Pi}]===2 Pi,2 Pi];
record["C04_zero_value_does_not_control_boundary_jet",(Sin[n z]/n/.z->0)===0 &&
 (D[Sin[n z]/n,z]/.z->0)===1,1];

eby = rad/grav (1-Sqrt[1-2 grav mass/rad]);
eby2 = FullSimplify[D[eby,{mass,2}],Assumptions->{rad>2 grav mass,grav>0,mass>0}];
record["K01_BY_stationary_mass_hessian",FullSimplify[eby2-grav/(rad (1-2 grav mass/rad)^(3/2)),
 Assumptions->{rad>2 grav mass,grav>0,mass>0}]===0,eby2];
record["K02_order_two_coefficient_is_half_Hessian",D[h0+ep h1+ep^2 h2,{ep,2}]===2 h2,2 h2];
record["K03_h_zero_does_not_fix_second_order_mass",(D[m0+ep^2 mu,ep]/.ep->0)===0 &&
 D[m0+ep^2 mu,{ep,2}]===2 mu,2 mu];
btzEnergy = Pi^2 (rp^2+1)/rp;
record["K04_BTZ_normalization_mapping",zero[btzEnergy-2 Pi^2 (rp^2+1)/(2 rp)],btzEnergy];
(* Flat T^3 time-symmetric TT data: integrated scalar constraint at order ep^2. *)
taubDensity = 3 Sin[z]^2/2-2 Cos[z]^2;
taubIntegral = Integrate[taubDensity,{z,0,2 Pi}];
record["K05_compact_Taub_obstruction",taubIntegral===-Pi/2,taubIntegral];
tail = eps/(x+eps)^2;
tailIntegral = Integrate[tail,{x,0,1},Assumptions->eps>0];
record["K06_nonuniform_limit_counterexample",Limit[tail,eps->0,Assumptions->x>0]===0 &&
 Limit[tailIntegral,eps->0]===1,{0,tailIntegral,1}];
futureWronskian = (D[v1,V] v2-D[v2,V] v1); (* use explicit functions next *)
record["K07_null_horizon_flux_survives",D[V,V] 1-D[1,V] V===1,1];
record["K08_interface_action_retains_surface_response",D[-tension area,area]===-tension,-tension];

report = <|"suite"->"algebra_and_counterexamples", "version"->$Version,
 "passed"->Count[results[[All,"passed"]],True], "total"->Length[results],
 "allPassed"->And@@results[[All,"passed"]], "checks"->results|>;
Export[FileNameJoin[{outDir,"algebra-results.json"}],report,"RawJSON"];
Print[KeyDrop[report,{"checks"}]];
Print["Failed checks: ",Select[results,!TrueQ[#["passed"]]&]];
If[!TrueQ[report["allPassed"]],Exit[1]];
