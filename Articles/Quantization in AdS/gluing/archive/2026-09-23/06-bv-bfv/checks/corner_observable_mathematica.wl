
ClearAll["Global`*"];
xs={t,z,w}; rules={z->u,w->1/u};
dd0[f_]:=D[f,#]&/@xs;
dd1[a_]:={D[a[[2]],t]-D[a[[1]],z],D[a[[3]],t]-D[a[[1]],w],D[a[[3]],z]-D[a[[2]],w]};
dd2[b_]:=D[b[[3]],t]-D[b[[2]],z]+D[b[[1]],w];
scaled[f_]:=f/.{t->rho t,z->rho z,w->rho w};
kk1[a_]:=Integrate[Sum[xs[[i]] scaled[a[[i]]],{i,3}],{rho,0,1}];
kk2[b_]:=Integrate[rho #,{rho,0,1}]&/@{-z scaled[b[[1]]]-w scaled[b[[2]]],t scaled[b[[1]]]-w scaled[b[[3]]],t scaled[b[[2]]]+z scaled[b[[3]]]};
kk3[c_]:=Integrate[rho^2 # scaled[c],{rho,0,1}]&/@{w,-z,t};
rr[f_]:=Expand[f/.rules];
bb[a_]:=Expand[(a[[1]]-I z a[[2]]+I w a[[3]])/.rules];
terms[0]:={};
terms[f_]:=With[{g=Expand[f]},If[Head[g]===Plus,List@@g,If[g===0,{}, {g}]]];
extend[f_]:=Total[Function[term,With[{n=Exponent[term,u]},(term/u^n) If[n>=0,z^n,w^(-n)]]]/@terms[f]];
transport[f_]:=Total[Function[term,With[{n=Exponent[term,u]},u^n Integrate[(term/u^n/.t->tau) Exp[I n(t-tau)],{tau,0,t}]]]/@terms[f]];
evolve[f_]:=Total[Function[term,With[{n=Exponent[term,u]},term Exp[I n t]]]/@terms[f]];
mean[f_]:=Coefficient[Expand[f],u,0];
hs2[b_]:=Module[{prim=kk2[b]},prim-dd0[extend[transport[bb[prim]]]]];
projInitial[a_]:=Expand[rr[kk1[a]]/.t->0];
harmonicPotential[a_]:=extend[evolve[projInitial[a]-mean[projInitial[a]]]];
hs1[a_]:=kk1[a]+extend[transport[bb[kk2[dd1[a]]]]]-harmonicPotential[a]-mean[projInitial[a]];
zeroQ[x_]:=TrueQ[FullSimplify[And@@Thread[Flatten[{x}]==ConstantArray[0,Length[Flatten[{x}]]]],Assumptions->Element[t,Reals]]];
checks={};
add[label_,res_]:=AppendTo[checks,<|"label"->label,"passed"->zeroQ[res]|>];
aTest={(1-z w)t,(1-z w)z,(1-z w)w^2};
bTest={t z+w,z w+t^2,w t+z^2};
cTest=t+z w;
gTest=t^2 u+ t/u + 2t;
rSol=transport[gTest];
add["transport_right_inverse",D[rSol,t]-I u D[rSol,u]-gTest];
add["transport_initial_zero",rSol/.t->0];
add["wall_extension_right_inverse",rr[extend[gTest]]-gTest];
add["de_rham_square_0",dd1[dd0[t^2 z+z w^2]]];
add["de_rham_square_1",dd2[dd1[aTest]]];
add["radial_degree_1",dd0[kk1[aTest]]+kk2[dd1[aTest]]-aTest];
add["radial_degree_2",dd1[kk2[bTest]]+kk3[dd2[bTest]]-bTest];
add["radial_degree_3",dd2[kk3[cTest]]-cTest];
add["physical_input_wall",bb[aTest]];
ha=hs1[aTest]; hda=hs2[dd1[aTest]];
add["proper_homotopy_wall_zero",rr[ha]];
add["physical_degree_1_contraction",dd0[ha]+hda-aTest+dd0[harmonicPotential[aTest]]];
add["physical_homotopy_2_wall",bb[hs2[bTest]]];
add["physical_degree_2_contraction",dd1[hs2[bTest]]+kk3[dd2[bTest]]-bTest];
ghost=(1-z w)(t+z^2);
add["proper_ghost_contraction",hs1[dd0[ghost]]-ghost];
j0=I u D[projInitial[aTest],u];
residual=rr[harmonicPotential[aTest]];
add["residual_chiral_transport",D[residual,t]-I u D[residual,u]];
add["residual_initial_current",(I u D[residual,u]/.t->0)-j0];
add["residual_mean_zero",mean[j0]];
j[s_]:=Sin[s]+2Cos[2s]; alpha[s_]:=Cos[s]+Sin[2s];
energyFlow=Integrate[alpha[s] D[j[s],s],{s,0,2Pi}];
add["energy_current_integration_by_parts",energyFlow+Integrate[D[alpha[s],s]j[s],{s,0,2Pi}]];

Do[
  invisible=Cos[(nn+1)s];
  add["point_witness_lower_modes_"<>ToString[nn],Table[Integrate[invisible Cos[mm s],{s,0,2Pi}],{mm,1,nn}]];
  add["point_witness_value_"<>ToString[nn],(invisible/.s->0)-1];
  add["energy_witness_norm_"<>ToString[nn],Integrate[invisible^2,{s,0,2Pi}]-Pi],
  {nn,{1,2,4,8}}
];

vars={q1,q2,q3,q4};
poisson={{0,1,0,2},{-1,0,3,0},{0,-3,0,1},{-2,0,-1,0}};
grad[f_]:=D[f,#]&/@vars;
pb[f_,g_]:=Expand[grad[f].poisson.grad[g]];
ff=q1^2 q2+q3 q4^2; gg=q2^3+q1 q4+q3^2; zz=q4^3+q1 q2 q3;
hess[f_]:=D[f,{{q1,q2,q3,q4},2}];
add["Hamiltonian_gradient_bracket_formula",grad[pb[ff,gg]]-hess[ff].poisson.grad[gg]+hess[gg].poisson.grad[ff]];
add["Hamiltonian_Jacobi",pb[ff,pb[gg,zz]]+pb[gg,pb[zz,ff]]+pb[zz,pb[ff,gg]]];
add["Hamiltonian_product_derivation",pb[ff gg,zz]-ff pb[gg,zz]-gg pb[ff,zz]];
add["linear_coordinate_dual_sign_conversion",Table[(-1)^((qq+1)(qq+2)/2)+(-1)^qq (-1)^(qq(qq+1)/2),{qq,-2,2}]];

Print[ExportString[<|"checks"->checks,"allPassed"->And@@(#["passed"]&/@checks)|>,"RawJSON"]];
