DefManifold[SS,2,{a,b,c,d,e,f}]; DefMetric[1,qq[-a,-b],DD]; DefTensor[XX[-a,-b],SS,Symmetric[{-a,-b}]]; DefTensor[HH[-a,-b],SS,Symmetric[{-a,-b}]]; DefTensor[zz[-a],SS]; DefTensor[rr[],SS]; DefTensor[kk[],SS];
gauss=kk[](qq[-a,-c]qq[-b,-d]-qq[-a,-d]qq[-b,-c])+(XX[-d,-b]HH[-c,-a]+HH[-d,-b]XX[-c,-a]-XX[-c,-b]HH[-d,-a]-HH[-c,-b]XX[-d,-a])/2;
norm2=DD[-a][zz[-b]]-DD[-b][zz[-a]]+(XX[-a,c] HH[-b,-c]-XX[-b,c]HH[-a,-c])/2;
minus=2DD[-a][zz[-b]]+2zz[-a]zz[-b]+rr[]qq[-a,-b]-norm2-HH[-a,c]XX[-c,-b];
symm=DD[-a][zz[-b]]+DD[-b][zz[-a]]+2zz[-a]zz[-b]+rr[]qq[-a,-b]-(HH[-a,c]XX[-c,-b]+HH[-b,c]XX[-c,-a])/2;
cod=DD[-a][XX[-b,-d]]-DD[-b][XX[-a,-d]]+zz[-a]XX[-b,-d]-zz[-b]XX[-a,-d];
checks = {"V60 Gauss contraction in source curvature convention" -> (qq[a,c]qq[b,d]gauss/2-kk[]-(XX[a,-a]HH[b,-b]-XX[a,b]HH[-a,-b])/2),
"V61 mixed Ricci antisymmetric cancellation" -> (minus-symm),
"V62 Codazzi beta contraction" -> (qq[a,d]cod-(DD[a][XX[-b,-a]]-DD[-b][XX[a,-a]]+zz[a]XX[-b,-a]-zz[-b]XX[a,-a]))};
checks /. Rule[label_, expr_] :> Rule[label, ToCanonical[ContractMetric[ToCanonical[expr]]]]
