ClearAll["Global`*"];

DefManifold[M,4,{a,b,c,d,e,f}];DefMetric[-1,g[-a,-b],CD,{";","D"}];
DefTensor[aa[a,b,c,d],M];DefTensor[kk[a,c,d],M];
DefTensor[uu[],M];DefTensor[ff[-c,-d],M];
ss=aa[a,b,c,d]CD[-a][CD[-b][ff[-c,-d]]]+kk[b,c,d]CD[-b][ff[-c,-d]];
adj=CD[-b][CD[-a][uu[]aa[a,b,c,d]]]-CD[-b][uu[]kk[b,c,d]];
jj[a_]:=(uu[]aa[a,b,c,d]CD[-b][ff[-c,-d]]
-CD[-b][uu[]aa[b,a,c,d]]ff[-c,-d]+uu[]kk[a,c,d]ff[-c,-d]);
res=ToCanonical[ContractMetric[Expand[CD[-a][jj[a]]-uu[]ss+adj ff[-c,-d]]]];
<|"tensor_source_current_residual"->res|>

