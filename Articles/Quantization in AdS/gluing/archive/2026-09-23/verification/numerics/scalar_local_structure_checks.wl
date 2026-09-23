(* Exact bounded diagnostics for the local-structure proof. No PDE/WF theorem
   or continuum time-slice surjectivity is inferred from these checks. *)
ClearAll["Global`*"];
kg[f_] := D[f, {t, 2}] - D[f, {x, 2}] - D[f, {y, 2}] + mass^2 f;
comm[f_] := ((D[chi[t,x,y],{t,2}]-D[chi[t,x,y],{x,2}]-D[chi[t,x,y],{y,2}]) f
  + 2 (D[chi[t,x,y],t] D[f,t]-D[chi[t,x,y],x] D[f,x]-D[chi[t,x,y],y] D[f,y]));
profile[s_] := 3 s^2-2 s^3;
causal[t_,u_] := -Sin[2(t-u)]/2;
relocated[s_,u_] := -(D[profile[s],{s,2}] causal[s,u]+2 D[profile[s],s] D[causal[s,u],s]);
weights = {rho,eta,1-rho-eta};
normal[f_,d_] := Sum[(hb d/2)^j D[f,{z,2j}]/j!,{j,0,6}];
wick[f_,g_,w_] := Sum[hb^j w^j D[f,{z,j}] D[g,{z,j}]/j!,{j,0,12}];
graphWeight[r_,a_,b_,c_] := Factorial[r] Factorial[4]^2/
 (Factorial[r-a-b] Factorial[4-a-c] Factorial[4-b-c] Factorial[a] Factorial[b] Factorial[c] 24^2);
retardedGraph[a_,b_,c_] := (ff10^a ff20^b ff12^c
  - ww10^a ff20^b ww12^c - ff10^a ww20^b ww21^c
  - ww10^a ww20^b ff12^c + ww10^a ww20^b (ww12^c+ww21^c));
graphs[r_,edges_] := Select[Tuples[Range[0,edges],3],
  Function[v,With[{a=v[[1]],b=v[[2]],c=v[[3]]},
    a+b+c==edges && a+b<=r && a+c<=4 && b+c<=4 &&
    a+b>0 && a+c>0 && b+c>0]]];
ph2exp=Expand[(ph0+lam ph1+lam^2 ph2)^2];
eomexp=Expand[lam gg (ph0+lam ph1+lam^2 ph2)^3/6];
energy=((D[ph[t,x,y],t]^2+D[ph[t,x,y],x]^2+D[ph[t,x,y],y]^2+mass^2 ph[t,x,y]^2)/2
  +lam ggfun[t,x,y] ph[t,x,y]^4/24);
energyResidual=(Expand[D[energy,t]-D[D[ph[t,x,y],t] D[ph[t,x,y],x],x]
  -D[D[ph[t,x,y],t] D[ph[t,x,y],y],y]-lam D[ggfun[t,x,y],t] ph[t,x,y]^4/24]
  /. Derivative[2,0,0][ph][t,x,y] -> Derivative[0,2,0][ph][t,x,y]
     +Derivative[0,0,2][ph][t,x,y]-mass^2 ph[t,x,y]-lam ggfun[t,x,y] ph[t,x,y]^3/6);
insideKernel=Cos[mass Sqrt[t^2-x^2-y^2]]/(2 Pi Sqrt[t^2-x^2-y^2]);
wkbResidual[sgn_] := Expand[Exp[-I nu (x-sgn t)] kg[Exp[I nu (x-sgn t)] amp[t,x,y]]
  +2 I nu sgn (D[amp[t,x,y],t]+sgn D[amp[t,x,y],x])-kg[amp[t,x,y]]];
oscData[a_] := {Sin[2a]/2,-Cos[2a]};
oscOmega[v_,w_] := v[[2]] w[[1]]-w[[2]] v[[1]];
diffContract[p_,v_] := v[[1]] D[p,xx,yy]+v[[2]] D[p,xx,zz]+v[[3]] D[p,yy,zz];
expContract[p_,v_] := Sum[hb^j Nest[diffContract[#,v]&,p,j]/j!,{j,0,3}];
sixTerm[r_] := (expContract[xx^r yy^4 zz^4/24^2,{ff10,ff20,ff12}]
  -expContract[xx^r yy^4 zz^4/24^2,{ww10,ff20,ww12}]
  -expContract[xx^r yy^4 zz^4/24^2,{ff10,ww20,ww21}]
  -expContract[xx^r yy^4 zz^4/24^2,{ww10,ww20,ff12}]
  +expContract[xx^r yy^4 zz^4/24^2,{ww10,ww20,ww12}]
  +expContract[xx^r yy^4 zz^4/24^2,{ww10,ww20,ww21}]);
graphSum[r_,edges_] := Total[Function[v,With[{a=v[[1]],b=v[[2]],c=v[[3]]},
  graphWeight[r,a,b,c] retardedGraph[a,b,c] xx^(r-a-b) yy^(4-a-c) zz^(4-b-c)]] /@ graphs[r,edges]];
moyal[f_,g_] := Sum[(I hb/2)^r/r! Sum[(-1)^j Binomial[r,j]
  D[f,{qq,r-j},{pp,j}] D[g,{qq,j},{pp,r-j}],{j,0,r}],{r,0,8}];
hamProbe=qq^4/24;
obsProbe=pp^2/2;
adjointOne=Expand[(moyal[hamProbe,obsProbe]-moyal[obsProbe,hamProbe])/(I hb)];
adjointTwo=Expand[(moyal[hamProbe,adjointOne]-moyal[adjointOne,hamProbe])/(2 I hb)];
triA1=Array[aaTri,{2,2}]; triA2=Array[bbTri,{2,2}]; triA3=Array[ccTri,{2,2}];
triA=IdentityMatrix[2]+lam triA1+lam^2 triA2+lam^3 triA3;
triB=(IdentityMatrix[2]-lam triA1+lam^2 (triA1.triA1-triA2)
  +lam^3 (-triA3+triA1.triA2+triA2.triA1-triA1.triA1.triA1));
zeroResiduals=<|
 "spacetime_cutoff_commutator" -> kg[chi[t,x,y] ph[t,x,y]]-chi[t,x,y] kg[ph[t,x,y]]-comm[ph[t,x,y]],
 "relocation_cosine_pairing" -> Integrate[relocated[s,u] Cos[2s],{s,0,1}]-Cos[2u],
 "relocation_sine_pairing" -> Integrate[relocated[s,u] Sin[2s]/2,{s,0,1}]-Sin[2u]/2,
 "sewn_cps_sign" -> causal[aa,bb]+oscOmega[oscData[aa],oscData[bb]],
 "three_cell_two_slot_partition" -> Total[Flatten[Outer[Times,weights,weights]]]-1,
 "three_cell_four_slot_partition" -> Total[Times@@@Tuples[weights,4]]-1,
 "slot_homotopy_telescope" -> 1-a1 a2 a3-((1-a1)+a1 (1-a2)+a1 a2 (1-a3)),
 "wick_cutoff_intertwiner" -> normal[wick[z^4,z^2,ww],dd]-wick[normal[z^4,dd],normal[z^2,dd],ww+dd],
 "wick_choice_cocycle" -> normal[normal[z^6,dd1],dd2]-normal[z^6,dd1+dd2],
 "phi4_eom_order_one" -> Coefficient[eomexp,lam,1]-gg ph0^3/6,
 "phi4_eom_order_two" -> Coefficient[eomexp,lam,2]-gg ph0^2 ph1/2,
 "quadratic_insertion_order_two" -> Coefficient[ph2exp,lam,2]-ph1^2-2 ph0 ph2,
 "linear_retarded_tree_sign" -> (-I/6)(-I gr)+gr/6,
 "quadratic_retarded_one_loop" -> (-I/2)((ww-I gr)^2-ww^2)-(-gr ww+I gr^2/2),
 "disconnected_vertex_one" -> Table[retardedGraph[0,b,0],{b,0,4}],
 "disconnected_insertion" -> Table[retardedGraph[0,0,c],{c,0,4}],
 "second_order_retarded_latest_vertex_zero" -> (retardedGraph[1,0,2]/.{ff10->ww10,ff12->ww12}),
 "two_vertex_tree_weights" -> {graphWeight[1,1,0,1]-1/12,graphWeight[2,1,1,0]-1/18},
 "off_shell_feynman_contact_jump" -> ((D[Exp[-2 I t]/4,t]/.t->0)-(D[Exp[2 I t]/4,t]/.t->0))+I,
 "feynman_away_from_contact" -> D[Exp[-2 I t]/4,{t,2}]+4 Exp[-2 I t]/4,
 "KG_inside_lightcone" -> FullSimplify[kg[insideKernel],Assumptions->t>0 && t^2>x^2+y^2 && mass>0],
 "geometric_optics_transport" -> {wkbResidual[1],wkbResidual[-1]},
 "four_packet_phase_cancellation" -> (x-t)+(-x-t)+(y+t)+(-y+t),
 "retarded_two_vertex_negative_hbar_cancellation" -> Flatten[Table[Coefficient[Expand[sixTerm[r]],hb,e],{r,{1,2}},{e,{0,1}}]],
 "retarded_two_vertex_all_tree_loop_graphs" -> Flatten[Table[Coefficient[Expand[sixTerm[r]],hb,e]-graphSum[r,e],{r,{1,2}},{e,{2,3}}]],
 "switched_energy_balance_2p1" -> energyResidual,
 "background_green_derivative" -> D[1/(kk+lam q^2/2),q]+(1/(kk+lam q^2/2)) lam q (1/(kk+lam q^2/2)),
 "completed_adjoint_first_order" -> adjointOne-qq^3 pp/6,
 "completed_adjoint_second_order" -> adjointTwo-qq^6/72,
 "smooth_time_response_gradient" -> (-rr[t]pt[t]et[t]+rr[t]ut[t]et'[t]
   -D[rr[t]ut[t]et[t],t]-(-rr[t]pt[t]-D[rr[t]ut[t],t])et[t]),
 "completed_formal_inverse_both_sides" -> Flatten[Table[
   Map[Coefficient[Expand[#],lam,k]&,product-IdentityMatrix[2],{2}],
   {product,{triA.triB,triB.triA}},{k,0,3}]]
|>;
checks=Map[Function[r,And@@(TrueQ[FullSimplify[#]==0]& /@ Flatten[{r}])],zeroResiduals];
report=<|"checks"->checks,"graphs"->Association@@Flatten[Table[
 ("r"<>ToString[r]<>"_edges"<>ToString[e])->graphs[r,e],{r,{1,2}},{e,{2,3}}]],
 "total"->Length[checks],"allPassed"->And@@Values[checks]|>;
Print[InputForm[report]];
If[!TrueQ[report["allPassed"]],Exit[1]];
