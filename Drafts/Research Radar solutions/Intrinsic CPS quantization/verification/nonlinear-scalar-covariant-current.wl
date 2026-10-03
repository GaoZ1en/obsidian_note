ClearAll["Global`*"];

DefManifold[M,2,{a,b,c,d}];
DefMetric[-1,g[-a,-b],CD,{";","D"}];
DefTensor[ph[],M];DefTensor[v[],M];DefTensor[w[],M];
DefConstantSymbol[mass];DefConstantSymbol[lam];
lin[f_]:=CD[a][CD[-a][f]]-(mass^2+lam ph[]^2/2) f;
current[a_]:=v[]CD[a][w[]]-w[]CD[a][v[]];
res=ToCanonical[ContractMetric[Expand[CD[-a][current[a]]-(v[]lin[w[]]-w[]lin[v[]])]]];
<|"covariant_symplectic_current_residual"->res|>

