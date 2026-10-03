ClearAll["Global`*"];

DefManifold[M,2,{a,b,c,d}];DefMetric[-1,g[-a,-b],CD,{";","D"}];
DefTensor[v[-a],M];DefTensor[w[-a],M];DefConstantSymbol[gc];
j[a_]:=(v[-b](CD[a][w[b]]-CD[b][w[a]])-w[-b](CD[a][v[b]]-CD[b][v[a]]))/gc^2;
ew[b_]:=CD[-c][CD[c][w[b]]-CD[b][w[c]]]/gc^2;
ev[b_]:=CD[-c][CD[c][v[b]]-CD[b][v[c]]]/gc^2;
res=ToCanonical[ContractMetric[Expand[CD[-a][j[a]]-v[-b]ew[b]+w[-b]ev[b]]]];
kernel=-(t-s);
<|"Maxwell_Green_current_residual"->res,"zero_mode_source_pairing_factor"->FullSimplify[2Pi gc^2 D[kernel,s]/(2Pi gc^2)]|>

