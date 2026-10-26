(* Run in a fresh xAct core kernel (xTensor, xPert, xTras). *)
DefManifold[M,5,{a,b,c,d,e,f}];
DefMetric[1,gg[-a,-b],CD];
DefTensor[p[],M];DefTensor[q[],M];DefConstantSymbol[mm];
report=Block[{$MessageList={}},Module[{raw,contracted,sorted,answer},
 raw=CD[a][CD[-a][p[]]CD[-b][q[]]+CD[-a][q[]]CD[-b][p[]]-gg[-a,-b](CD[c][p[]]CD[-c][q[]]+mm p[]q[])]
 -(CD[a][CD[-a][p[]]]-mm p[])CD[-b][q[]]
 -(CD[a][CD[-a][q[]]]-mm q[])CD[-b][p[]];
 contracted=ToCanonical[ContractMetric[ToCanonical[raw]]];
 (* SortCovDs uses the symmetry of the scalar Hessian; it is necessary here. *)
 sorted=SortCovDs[contracted];answer=ToCanonical[ContractMetric[sorted]];
 <|"Dimension"->5,"Signature"->"Euclidean","MassSquared"->"arbitrary constant mm; BF value -4/ell^2",
 "ContractionOnlyResidual"->contracted,"ScalarHessiansSortedResidual"->answer,
 "Zero"->TrueQ[answer===0],"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]];
report
