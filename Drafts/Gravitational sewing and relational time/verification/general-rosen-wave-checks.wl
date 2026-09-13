(* Run in a fresh xAct kernel; profile: components. Exact MCP requests are in general-xact-requests.txt. *)
DefManifold[MM,4,{a,b,c,d,e,f}];
DefChart[ch,MM,{0,1,2,3},{uu[],vv[],xx[],yy[]}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefScalarFunction[aa];DefScalarFunction[bb];
MetricInBasis[met,-ch,{{0,-1,0,0},{-1,0,0,0},{0,0,aa[uu[]]^2,0},{0,0,0,bb[uu[]]^2}}];
MetricCompute[met,ch,All];
ric=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]],{i,0,3},{j,0,3}];
rux=ToValues[RiemannCD[{0,-ch},{2,-ch},{0,-ch},{2,-ch}]];
ruy=ToValues[RiemannCD[{0,-ch},{3,-ch},{0,-ch},{3,-ch}]];
red[ex_]:=Total[(Abs[FullSimplify[#]]^2&)/@Flatten[{ex}]]; expected=ConstantArray[0,{4,4}];expected[[1,1]]=-aa''[uu[]]/aa[uu[]]-bb''[uu[]]/bb[uu[]];
normal[ex_]:=ex;
checks={
<|"label"->"Rosen_exact_Ricci_all_components","residual"->normal[red[ric-expected]]|>,
<|"label"->"Rosen_transverse_Riemann_x","residual"->normal[red[rux+aa[uu[]]aa''[uu[]]]]|>,
<|"label"->"Rosen_transverse_Riemann_y","residual"->normal[red[ruy+bb[uu[]]bb''[uu[]]]]|>
};
checks
