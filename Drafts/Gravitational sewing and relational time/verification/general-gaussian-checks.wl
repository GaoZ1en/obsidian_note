(* Run in a fresh xAct kernel; profile: components. Exact MCP requests are in general-xact-requests.txt. *)
DefManifold[MM,4,{a,b,c,d,e,f}];
DefChart[ch,MM,{0,1,2,3},{rr[],tt[],xx[],yy[]}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefConstantSymbol[ee];
DefScalarFunction[aa];DefScalarFunction[bb];DefScalarFunction[cc];
MetricInBasis[met,-ch,DiagonalMatrix[{ee,-ee aa[rr[]]^2,bb[rr[]]^2,cc[rr[]]^2}]];
MetricCompute[met,ch,All];
ric=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]],{i,0,3},{j,0,3}];
hm=DiagonalMatrix[{-ee aa[z]^2,bb[z]^2,cc[z]^2}];
km=D[hm,z]/2;ki=Inverse[hm].km;kt=Tr[ki];
pred=-ee (D[km,z]+kt km-2 km.Inverse[hm].km);
predrr=-D[kt,z]-Tr[ki.ki];
red[ex_]:=Total[Flatten[Table[(Abs[FullSimplify[#/.{rr[]->z,ee->sg}]]^2&)/@Flatten[{ex}],{sg,{-1,1}}]]];
normal[ex_]:=ex;
checks={
<|"label"->"Gaussian_tangential_Ricci_both_signatures","residual"->normal[red[ric[[2;;4,2;;4]]-pred]]|>,
<|"label"->"Gaussian_normal_Ricci_both_signatures","residual"->normal[red[ric[[1,1]]-predrr]]|>,
<|"label"->"Gaussian_mixed_Ricci_homogeneous_collars","residual"->normal[red[ric[[1,2;;4]]]]|>
};
checks
