(* xAct components setup; the MCP additionally preloads xPert and xTras. *)
Needs["xAct`xCoba`"];
DefManifold[M4,4,{a,b,c,d,e,f}]; DefChart[ch,M4,{0,1,2,3},{tt[],rr[],th[],ph[]}]; DefConstantSymbol[mg]; DefConstantSymbol[ggn]; DefMetric[-1,met[-a,-b],CD,{";","D"}]; ff=1-2 ggn mg/rr[]; MetricInBasis[met,-ch,DiagonalMatrix[{-ff,1/ff,rr[]^2,rr[]^2 Sin[th[]]^2}]]; MetricCompute[met,ch,All]; ric=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]],{i,0,3},{j,0,3}]; gam=Table[ToValues[Christoffel[CD,PDch][{1,ch},{i,-ch},{j,-ch}]],{i,{0,2,3}},{j,{0,2,3}}]; ind=DiagonalMatrix[{-ff,rr[]^2,rr[]^2 Sin[th[]]^2}]; kij=-gam/Sqrt[ff]; kmix=Inverse[ind].kij; eby=4 Pi rr[]^2 (2/rr[]-(Tr[kmix]-kmix[[1,1]]))/(8 Pi ggn); press=(Tr[kmix]-kmix[[2,2]]-1/rr[])/(8 Pi ggn); compResidual[ex_]:=Total[(Abs[FullSimplify[Together[#/.{rr[]->rad,th[]->ang}],Assumptions->ggn>0&&mg>0&&rad>2 ggn mg&&0<ang<Pi]]^2&)/@Flatten[{ex}]]; rcomp=Table[ToValues[RiemannCD[{ii,-ch},{jj,-ch},{kk,-ch},{ll,-ch}]],{ii,0,3},{jj,0,3},{kk,0,3},{ll,0,3}]; ginvdiag={-1/ff,ff,1/rr[]^2,1/(rr[]^2 Sin[th[]]^2)}; kretsch=Sum[ginvdiag[[ii]]ginvdiag[[jj]]ginvdiag[[kk]]ginvdiag[[ll]]rcomp[[ii,jj,kk,ll]]^2,{ii,1,4},{jj,1,4},{kk,1,4},{ll,1,4}];
checks={
<|"label"->"Schwarzschild vacuum Ricci tensor","residual"->(compResidual[ric])|>,
<|"label"->"outward timelike extrinsic curvature mixed components","residual"->(compResidual[kmix-DiagonalMatrix[{ggn mg/(rr[]^2 Sqrt[ff]),Sqrt[ff]/rr[],Sqrt[ff]/rr[]}]])|>,
<|"label"->"finite sphere Brown-York energy including reference subtraction","residual"->(compResidual[eby-rr[]/ggn (1-Sqrt[ff])])|>,
<|"label"->"finite wall Brown-York angular pressure","residual"->(compResidual[press-((1-ggn mg/rr[])/Sqrt[ff]-1)/(8 Pi ggn rr[])])|>,
<|"label"->"inward oriented curvature and energy reverse sign","residual"->(compResidual[(-4 Pi rr[]^2 (2/rr[]-(Tr[kmix]-kmix[[1,1]]))/(8 Pi ggn))+eby])|>,
<|"label"->"Schwarzschild curvature invariant and regular-center obstruction","residual"->(compResidual[kretsch-48 ggn^2 mg^2/rr[]^6])|>
};
Print[ExportString[<|"checks"->checks,"allZero"->And@@(TrueQ[#==0]& /@ Lookup[checks,"residual"])|>,"RawJSON"]];
