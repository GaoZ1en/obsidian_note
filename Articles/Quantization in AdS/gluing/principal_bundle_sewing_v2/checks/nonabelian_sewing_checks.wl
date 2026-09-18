(* Exact diagnostics for the two 2026-09-18 follow-up notes.
   Run from any directory: wolframscript -file <this file>.
   No files are written. Finite diagnostics do not prove PDE/domain claims. *)
ClearAll["Global`*"];
rows = {};
check[label_, residual_, kind_: "exact_identity"] := Module[{r, ok},
  r = Simplify[residual];
  ok = And @@ (TrueQ[# == 0] & /@ Flatten[{r}]);
  AppendTo[rows, <|"label" -> label, "kind" -> kind,
    "passed" -> ok, "residual" -> ToString[r, InputForm]|>];
];
comm[a_, b_] := a.b - b.a;
trunc[expr_, var_, n_] := Normal[Series[expr, {var, 0, n}]];
matTrunc[expr_, var_, n_] := Map[trunc[#, var, n] &, expr, {2}];
basis = Table[-I PauliMatrix[j]/2, {j, 3}];
pair[a_, b_] := -2 Tr[a.b];
Do[check["su2_bracket_" <> ToString[{j,k}],
  comm[basis[[j]], basis[[k]]] - Sum[Signature[{j,k,l}] basis[[l]], {l,3}]], {j,3},{k,3}];
check["su2_pairing", Table[pair[basis[[j]],basis[[k]]],{j,3},{k,3}] - IdentityMatrix[3]];

(* Coulomb-frame expansion, including variation of the frame. *)
conn = Sum[(a[j] + x b[j]) basis[[j]], {j,3}];
chi = Sum[(c[j]+x d[j]+x^2 f[j]) basis[[j]],{j,3}];
chi1 = Sum[(h[j]+x m[j]) basis[[j]],{j,3}];
uu = IdentityMatrix[2] + kap chi + kap^2 (chi1+chi.chi/2);
uinv = IdentityMatrix[2] - kap chi + kap^2 (-chi1+chi.chi/2);
transformed = matTrunc[uu.conn.uinv - D[uu,x].uinv/kap, kap, 1];
expected = conn-D[chi,x]+kap(comm[chi,conn]-comm[chi,D[chi,x]]/2-D[chi1,x]);
check["coulomb_frame_first_nonlinear_order", transformed-expected];

(* Euler derivative of H1 for arbitrary first jets, no ansatz or equations. *)
qq = Array[q,{3,3}]; jets = Array[v,{3,3,3}];
curl = Table[jets[[i,j]]-jets[[j,i]],{i,3},{j,3}];
density = Expand[Sum[curl[[i,j]].Cross[qq[[i]],qq[[j]]],{i,3},{j,3}]/2];
euler = Table[D[density,qq[[j,c]]] - Sum[
  D[D[density,jets[[i,j,c]]],qq[[l,d]]] jets[[i,l,d]],{i,3},{l,3},{d,3}],{j,3},{c,3}];
force = Table[Sum[Cross[jets[[i,i]],qq[[j]]] + Cross[qq[[i]],jets[[i,j]]] +
  Cross[qq[[i]],curl[[i,j]]],{i,3}],{j,3}];
check["cubic_hamiltonian_euler_derivative", Expand[euler+force]];

(* Lorenz-gauged source: the two [C,A] terms cancel before imposing C=0. *)
av=Array[ac,{4,3}]; dv=Array[dc,{4,4,3}]; sig={-1,1,1,1};
lorenz=Sum[sig[[i]] dv[[i,i]],{i,4}];
ng=Table[Sum[sig[[i]] (Cross[dv[[i,i]],av[[j]]]+Cross[av[[i]],dv[[i,j]]]+
 Cross[av[[i]],dv[[i,j]]-dv[[j,i]]]),{i,4}]+Cross[av[[j]],lorenz],{j,4}];
ne=Table[Sum[sig[[i]] (2 Cross[av[[i]],dv[[i,j]]]-Cross[av[[i]],dv[[j,i]]]),{i,4}],{j,4}];
check["lorenz_quadratic_source_without_on_shell_substitution",Expand[ng-ne]];

(* A finite interval Gauss diagnostic, not the 3D PDE theorem. *)
smallB={{0,0,0},{ampb x(1-x),0,0},{0,0,0}};
smallp={{0,0,0},{0,ampp x^2(1-x),0},{0,0,0}};
rho=Sum[Cross[smallB[[i]],smallp[[i]]],{i,3}];
sigpart=-Integrate[Integrate[rho,x],x];
sigd=sigpart-(sigpart/.x->0)-x((sigpart/.x->1)-(sigpart/.x->0));
smallE=smallp+kap {D[sigd,x],{0,0,0},{0,0,0}};
check["gauss_coulomb_correction",Map[trunc[#,kap,1]&,D[smallE[[1]],x]+kap Sum[Cross[smallB[[i]],smallE[[i]]],{i,3}]]];
check["gauss_correction_dirichlet_potential",Join[sigd/.x->0,sigd/.x->1]];

(* A genuine Schwartz 3D field with nonzero cubic interaction. *)
pos={x,y,z}; gauss=Exp[-(x^2+y^2+z^2)];
bg={{0,-z,y},{z,0,-x},{-y,x,0}} gauss;
fg=Table[D[bg[[j]],pos[[i]]]-D[bg[[i]],pos[[j]]],{i,3},{j,3}];
vg=Simplify[Sum[fg[[i,j]].Cross[bg[[i]],bg[[j]]],{i,3},{j,3}]/2];
check["schwartz_background_transverse",Sum[D[bg[[i]],pos[[i]]],{i,3}]];
check["schwartz_background_cubic_density",vg+2(x^2+y^2+z^2)Exp[-3(x^2+y^2+z^2)]];
check["nonzero_cubic_interaction_integral",Integrate[vg,{x,-Infinity,Infinity},{y,-Infinity,Infinity},{z,-Infinity,Infinity}]+Pi^(3/2)/(3 Sqrt[3]),"nonzero_witness"];
cg=Table[Sum[D[Cross[bg[[i]],bg[[j]]],pos[[i]]]+Cross[bg[[i]],fg[[i,j]]],{i,3}],{j,3}];
check["schwartz_background_nonlinear_force",cg-3 gauss bg];
check["schwartz_background_force_transverse",Sum[D[cg[[i]],pos[[i]]],{i,3}]];

(* Canonical color algebra of dressed electric probes.
   Spatial transverse projection is not modeled by this finite diagnostic. *)
qq=Array[q,{2,3}]; pp=Array[p,{2,3}]; gt=Array[g,{2,3}]; ht=Array[h,{2,3}];
ag=Array[c,3]; ah=Array[d,3];
pb[aa_,bb_] := Expand[Sum[D[aa,qq[[i,j]]] D[bb,pp[[i,j]]] -
  D[aa,pp[[i,j]]] D[bb,qq[[i,j]]],{i,2},{j,3}]];
eg=Sum[(gt[[i]]+kap Cross[ag,qq[[i]]]).pp[[i]],{i,2}];
eh=Sum[(ht[[i]]+kap Cross[ah,qq[[i]]]).pp[[i]],{i,2}];
check["dressed_electric_mixed_bracket",Table[trunc[pb[qq[[i,j]],eg],kap,1],{i,2},{j,3}]-(gt+kap Table[Cross[ag,qq[[i]]],{i,2}])];
check["dressed_electric_electric_bracket",trunc[pb[eg,eh],kap,1]-kap Sum[pp[[i]].(Cross[ag,ht[[i]]]-Cross[ah,gt[[i]]]),{i,2}]];
check["dressed_electric_momentum_vector",Table[trunc[pb[pp[[i,j]],eg],kap,1],{i,2},{j,3}]-kap Table[Cross[ag,pp[[i]]],{i,2}]];
check["mixed_jacobi_first_order",trunc[pb[qq[[1,1]],pb[eg,eh]]+pb[eg,pb[eh,qq[[1,1]]]]+pb[eh,pb[qq[[1,1]],eg]],kap,1]];
check["omitted_frame_variation_witness",Coefficient[pb[qq[[1,1]],eg],kap,1]-Cross[ag,qq[[1]]][[1]],"nonzero_witness"];

(* Dyson ordered integral and actual two/three-piece transport. *)
bc[s_] := basis[[1]] s + basis[[2]] (1-s) + basis[[3]] s^2;
u1[a_,b_] := -Integrate[bc[s],{s,a,b}];
u2[a_,b_] := Integrate[bc[s].Integrate[bc[r],{r,a,s}],{s,a,b}];
up[a_,b_] := IdentityMatrix[2]+kap u1[a,b]+kap^2 u2[a,b];
check["two_piece_ordered_transport",matTrunc[up[2/5,1].up[0,2/5]-up[0,1],kap,2]];
check["three_piece_ordered_transport",matTrunc[up[3/4,1].up[1/4,3/4].up[0,1/4]-up[0,1],kap,2]];
check["deleted_cross_segment_term",u2[0,1]-u2[0,2/5]-u2[2/5,1]-u1[2/5,1].u1[0,2/5],"nonzero_witness"];

(* Positive-frequency Dirichlet-to-Neumann Schur complement; t=exp(-k L). *)
dn[t_] := k/(1-t^2) {{1+t^2,-2t},{-2t,1+t^2}};
compose[aa_,bb_] := Module[{hh},
  hh={{aa[[1,1]],aa[[1,2]],0},{aa[[2,1]],aa[[2,2]]+bb[[1,1]],bb[[1,2]]},{0,bb[[2,1]],bb[[2,2]]}};
  hh[[{1,3},{1,3}]]-Outer[Times,hh[[{1,3},2]],hh[[2,{1,3}]]]/hh[[2,2]]
];
check["dtn_two_piece_refinement",Together[compose[dn[t1],dn[t2]]-dn[t1 t2]]];
check["dtn_three_piece_associativity",Together[compose[compose[dn[t1],dn[t2]],dn[t3]]-compose[dn[t1],compose[dn[t2],dn[t3]]]]];
check["dtn_three_piece_target",Together[compose[compose[dn[t1],dn[t2]],dn[t3]]-dn[t1 t2 t3]]];
dnzero[l_] := {{1,-1},{-1,1}}/l;
check["dtn_zero_frequency_retained",Together[compose[dnzero[l1],dnzero[l2]]-dnzero[l1+l2]]];

(* Canonical response shift and an explicitly nonlinear auxiliary closure. *)
bulk=x^2/2+kap x^3/3; closing=nu x^2/2+kap mu x^3/3;
check["closing_removal_including_nonlinear_response",D[bulk+closing,x]-D[closing,x]-D[bulk,x]];
check["response_graph_inverse_first_order",trunc[(x+kap x^2)/.x->(rr-kap rr^2),kap,1]-rr];
check["uncancelled_closing_witness",D[bulk+closing,x]-D[bulk,x]-(nu x+kap mu x^2),"nonzero_witness"];

(* Nonlinear canonical maps do not preserve a naively re-used Moyal formula. *)
Clear[q,p];
moyal2[aa_,bb_] := aa bb+I hb/2 (D[aa,q]D[bb,p]-D[aa,p]D[bb,q])-
 hb^2/8 (D[aa,{q,2}]D[bb,{p,2}]-2D[aa,q,p]D[bb,p,q]+D[aa,{p,2}]D[bb,{q,2}]);
ppnew=p+kap q^2;
check["nonlinear_canonical_change",D[q,q]D[ppnew,p]-D[q,p]D[ppnew,q]-1];
check["naive_moyal_transport_failure",Expand[moyal2[ppnew^2,ppnew]-ppnew^3+kap hb^2/2],"counterexample"];
star3[aa_,bb_] := moyal2[aa,bb]-I hb^3/48 (D[aa,{q,3}]D[bb,{p,3}]-
 3D[aa,{q,2},p]D[bb,q,{p,2}]+3D[aa,q,{p,2}]D[bb,{q,2},p]-D[aa,{p,3}]D[bb,{q,3}]);
check["cubic_shear_egorov_generator",Expand[(star3[kap q^3/3,fun[q,p]]-star3[fun[q,p],kap q^3/3])/(I hb)-kap q^2 D[fun[q,p],p]+kap hb^2/12 D[fun[q,p],{p,3}]]];
bothcut[aa_] := Expand[trunc[trunc[aa,kap,1],hb,2]];
lift[aa_] := bothcut[(aa/.p->p+kap q^2)-kap hb^2/12 (D[aa,{p,3}]/.p->p+kap q^2)];
check["egorov_repair_transport_example",bothcut[moyal2[lift[q^2 p+p^3],lift[q p^2+q^3 p]]-lift[moyal2[q^2 p+p^3,q p^2+q^3 p]]]];

(* The common Green kernel after complete boundary-response release. *)
leftDirect=Exp[-rr Abs[x-y]]/(2 rr); reflected=Exp[rr(x+y)]/(2 rr);
check["dirichlet_reflection_removed",(leftDirect-reflected)+reflected-leftDirect];
check["neumann_reflection_removed",(leftDirect+reflected)-reflected-leftDirect];
check["cross_seam_resolvent",Exp[rr x] Exp[-rr y]/(2 rr)-Exp[-rr(y-x)]/(2 rr)];

report=<|"engine"->$Version,"checks"->rows,"passed"->Count[Lookup[rows,"passed"],True],
 "total"->Length[rows],"allPassed"->And@@Lookup[rows,"passed"],
 "scope"->"Exact displayed identities and explicit witnesses only; not a PDE, completed observable-domain, or renormalization theorem."|>;
Print[ExportString[report,"RawJSON"]];
If[!TrueQ[report["allPassed"]],Exit[1]];
