(* Run in a fresh dedicated xAct core kernel. *)
DefManifold[MM,4,{a,b,c,d,e,f}]; DefMetric[-1,gg[-a,-b],CD]; DefTensor[hh[-a,-b],MM,Symmetric[{-a,-b}]]; DefTensor[zz[],MM];
checks = {"V51 connection variation trace" -> (gg[a,b](CD[-a][hh[-b,-c]]+CD[-c][hh[-a,-b]]-CD[-b][hh[-a,-c]])/2-CD[-c][gg[a,b] hh[-a,-b]]/2),
"V51 scalar Hessian after explicit sorting" -> (SortCovDs[CD[-a][CD[-b][zz[]]]-CD[-b][CD[-a][zz[]]],CD]),
"V52 gradient acceleration equals half gradient norm" -> (SortCovDs[2 CD[a][zz[]] CD[-a][CD[-b][zz[]]]-CD[-b][CD[a][zz[]] CD[-a][zz[]]],CD])};
checks /. Rule[label_, expr_] :> Rule[label, ToCanonical[ContractMetric[ToCanonical[expr]]]]
