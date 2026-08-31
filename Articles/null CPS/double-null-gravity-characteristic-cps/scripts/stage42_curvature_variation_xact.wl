DefManifold[SS,2,{a,b,c,d,e,f}]; DefMetric[1,qq[-a,-b],DD]; DefMetricPerturbation[qq,dq,eps]; DefTensor[HH[-a,-b],SS,Symmetric[{-a,-b}]]; DefTensor[kk[],SS];
varR=ExpandPerturbation[Perturbation[RicciScalarDD[]]];
varR=varR /. dq[LI[1],ii_,jj_]:>2HH[ii,jj];
varR=varR /. RicciDD[ii_,jj_]:>kk[]qq[ii,jj];
expected=-2kk[]HH[a,-a]+2DD[-a][DD[-b][HH[a,b]]]-2DD[-a][DD[a][HH[b,-b]]];
ToCanonical[ContractMetric[ToCanonical[varR-expected]]]
