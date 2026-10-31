ClearAll["Global`*"];
out="/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo";
report=Block[{$MessageList={}},Module[{t,k,b0,b1,z,ints,pred,coef,low,fin},
 ints={Integrate[z^2/(z^2+5) Exp[-t(z^2+5)]/(2Pi^2),{z,0,Infinity},Assumptions->t>0],Integrate[(z^2+1)/(z^2+4) Exp[-t(z^2+4)]/(2Pi^2),{z,0,Infinity},Assumptions->t>0]};
 pred={Exp[-5t]/(4Pi^(3/2)Sqrt[t])-Sqrt[5]/(4Pi) Erfc[Sqrt[5t]],Exp[-4t]/(4Pi^(3/2)Sqrt[t])-3/(8Pi)Erfc[2Sqrt[t]]};
 coef=-2/(3k)(pred[[1]]+2pred[[2]]);
 low=Integrate[z^2/(z^2+5),{z,0,b0},Assumptions->b0>=0]+2Integrate[(z^2+1)/(z^2+4),{z,0,b1},Assumptions->b1>=0];
 fin=(Sqrt[5]+3)/(6k Pi)+(b0+2b1-Sqrt[5]ArcTan[b0/Sqrt[5]]-3ArcTan[b1/2])/(3k Pi^2);
 <|"KernelVersion"->$Version,"ActualIntegralResiduals"->FullSimplify[ints-pred,Assumptions->t>0],
 "UncutExactCoefficient"->coef,"UncutHeatExpansion"->Series[coef,{t,0,1}],
 "FinitePartResidual"->FullSimplify[Limit[coef+1/(2k Pi^(3/2)Sqrt[t]),t->0,Direction->"FromAbove"]+low/(3k Pi^2)-fin,Assumptions->{k>0,b0>=0,b1>=0}],
 "LowBandPrimitive"->low,"FixedSharpFinitePart"->fin,
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
Export[FileNameJoin[{out,"spectral_actual_output.wxf"}],report,"WXF"];
Export[FileNameJoin[{out,"spectral_actual_output.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
report
