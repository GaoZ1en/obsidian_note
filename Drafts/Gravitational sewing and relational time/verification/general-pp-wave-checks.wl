(* Run in a fresh xAct kernel; profile: components. Exact MCP requests are in general-xact-requests.txt. *)
DefManifold[MM,4,{a,b,c,d,e,f}];
DefChart[ch,MM,{0,1,2,3},{uu[],vv[],xx[],yy[]}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefScalarFunction[amp];
hh=2 xx[] yy[] amp[uu[]];
MetricInBasis[met,-ch,{{hh,-1,0,0},{-1,0,0,0},{0,0,1,0},{0,0,0,1}}];
MetricCompute[met,ch,All];
ric=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]],{i,0,3},{j,0,3}];
rup=ToValues[RiemannCD[{0,-ch},{2,-ch},{0,-ch},{3,-ch}]];
inds={0,1,3};
kk=Table[-ToValues[Christoffel[CD,PDch][{2,ch},{i,-ch},{j,-ch}]],{i,inds},{j,inds}]/.xx[]->0;
red[ex_]:=Total[(Abs[FullSimplify[#]]^2&)/@Flatten[{ex}]];
normal[ex_]:=ex;
checks={
<|"label"->"pp_exact_vacuum_all_Ricci","residual"->normal[red[ric]]|>,
<|"label"->"pp_radiative_Weyl_component","residual"->normal[red[rup+amp[uu[]]]]|>,
<|"label"->"pp_interface_full_extrinsic_curvature","residual"->normal[red[kk-{{amp[uu[]] yy[],0,0},{0,0,0},{0,0,0}}]]|>
};
checks
