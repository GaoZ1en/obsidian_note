(* Run in a fresh xAct kernel; profile: core. Exact MCP requests are in general-xact-requests.txt. *)
DefManifold[MM,4,{a,b,c,d,e,f,i,j}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefTensor[nn[-a],MM];DefTensor[av[-a],MM];
DefTensor[jj[-a,-b],MM,Symmetric[{-a,-b}]];
ss[aa_,bb_,cc_,dd_]:=(nn[bb]nn[cc]jj[aa,dd]+nn[aa]nn[dd]jj[bb,cc]-nn[aa]nn[cc]jj[bb,dd]-nn[bb]nn[dd]jj[aa,cc])/2;
normal[ex_]:=ToCanonical[ContractMetric[ToCanonical[ex]]];
checks={
<|"label"->"antisym_first_pair","residual"->normal[ss[-a,-b,-c,-d]+ss[-b,-a,-c,-d]]|>,
<|"label"->"pair_exchange","residual"->normal[ss[-a,-b,-c,-d]-ss[-c,-d,-a,-b]]|>,
<|"label"->"algebraic_Bianchi","residual"->normal[ss[-a,-b,-c,-d]+ss[-a,-c,-d,-b]+ss[-a,-d,-b,-c]]|>,
<|"label"->"singular_Ricci_contraction","residual"->normal[met[a,c]ss[-a,-b,-c,-d]-(nn[a]jj[-a,-b]nn[-d]+nn[a]jj[-a,-d]nn[-b]-nn[a]nn[-a]jj[-b,-d]-met[a,c]jj[-a,-c]nn[-b]nn[-d])/2]|>,
<|"label"->"pure_normal_jump_has_zero_Riemann","residual"->normal[ss[-a,-b,-c,-d]/.jj[aa_,bb_]:>nn[aa]av[bb]+nn[bb]av[aa]]|>
};
checks
