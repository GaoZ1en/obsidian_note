(* Fresh xAct components profile. Exact request is in general-xact-requests.txt. *)
DefManifold[MM,4,{a,b,c,d,e,f}];
DefChart[ch,MM,{0,1,2,3},{tt[],xx[],yy[],zz[]}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefConstantSymbol[ep];DefScalarFunction[qq];
MetricInBasis[met,-ch,DiagonalMatrix[{-1,1+ep qq[tt[],zz[]],1-ep qq[tt[],zz[]],1}]];
MetricCompute[met,ch,All];
ric=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]],{i,0,3},{j,0,3}];
sc=ToValues[RicciScalarCD[]];
r1=Map[FullSimplify[Coefficient[Normal[Series[#,{ep,0,1}]],ep,1]]&,ric,{2}];
den2=FullSimplify[Coefficient[Normal[Series[Sqrt[1-ep^2 qq[tt[],zz[]]^2] sc,{ep,0,2}]],ep,2]];
ex1=ConstantArray[0,{4,4}];ex1[[2,2]]=(Derivative[2,0][qq][tt[],zz[]]-Derivative[0,2][qq][tt[],zz[]])/2;ex1[[3,3]]=-ex1[[2,2]];
canon=(Derivative[1,0][qq][tt[],zz[]]^2-Derivative[0,1][qq][tt[],zz[]]^2)/2;
div=2(D[qq[t,z]D[qq[t,z],z],z]-D[qq[t,z]D[qq[t,z],t],t])/.{t->tt[],z->zz[]};
red[ex_]:=Total[(Abs[FullSimplify[#]]^2&)/@Flatten[{ex}]];
checks={
<|"label"->"TT_linearized_Ricci_all_components","residual"->red[r1-ex1]|>,
<|"label"->"TT_EH_quadratic_density_up_to_explicit_divergence","residual"->red[den2-canon-div]|>
};
checks
