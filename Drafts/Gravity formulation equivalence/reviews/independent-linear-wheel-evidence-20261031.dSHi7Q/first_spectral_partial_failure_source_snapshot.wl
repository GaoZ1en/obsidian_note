ClearAll["Global`*"];
out = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG";
report = Block[{$MessageList = {}}, Module[{c, d, q, t, z, b, r, a, direct, predicted, residuals, h, heat, a2, a4, constants, tail, full, positiveIdentity, samples},
 c[m_] := 5-m^2; d[m_] := 2 m^2-5;
 direct = Table[Integrate[(z^2+m^2)/(z^2+c[m]) Exp[-t (z^2+c[m])]/(2 Pi^2), {z,0,Infinity}, Assumptions->t>0], {m,0,2}];
 predicted = Table[Exp[-t c[m]]/(4 Pi^(3/2) Sqrt[t])+d[m]/(4 Pi Sqrt[c[m]]) Erfc[Sqrt[t c[m]]], {m,0,2}];
 residuals = FullSimplify[direct-predicted,Assumptions->t>0];
 heat = Table[FullSimplify[Sum[Integrate[(z^2+m^2) Exp[-t(z^2+5-m^2)]/(2 Pi^2),{z,0,Infinity},Assumptions->t>0],{m,-s,s}],Assumptions->t>0],{s,0,2}];
 a2 = Table[(2s+1)(s(s+1)-5),{s,0,2}];
 a4 = Table[(2s+1)((5-s(s+1))^2/2-s(s+1)/6),{s,0,2}];
 constants = Table[FullSimplify[Integrate[(z^2+m^2)/(z^2+c[m]),{z,0,b},Assumptions->b>=0]-(b+d[m]/Sqrt[c[m]] ArcTan[b/Sqrt[c[m]]]),Assumptions->b>=0],{m,0,2}];
 full = FullSimplify[(2/3)(predicted[[1]]-2predicted[[2]]+predicted[[3]]),Assumptions->t>0];
 h[r_] := Sqrt[r-5]-2(r-3)/Sqrt[r-4]+(r+3)/Sqrt[r-1];
 positiveIdentity = FullSimplify[(Sqrt[a]+(a+8)/Sqrt[a+4])^2-(2(a+2)/Sqrt[a+1])^2-(2Sqrt[a]((a+8)/Sqrt[a+4]-Sqrt[a])+12a/((a+4)(a+1))),Assumptions->a>0];
 samples = Table[{ell,eps, N[(2/3)Sum[({1,-2,1}[[m+1]])NIntegrate[(z^2+m^2)/(z^2+c[m]) Exp[-eps(z^2+c[m])]/(2Pi^2),{z,Sqrt[Max[ell^2-c[m],0]],Infinity},WorkingPrecision->40],{m,0,2}],20]}, {ell,{Sqrt[5],3,10}}, {eps,{1/100,1/10000}}];
 <|"KernelVersion"->$Version,"IntegralResiduals"->residuals,"FullSpinHeatDensities"->heat,
 "a0Residuals"->Table[FullSimplify[Limit[(4Pi t)^(3/2) heat[[s+1]],t->0,Direction->"FromAbove"]-(2s+1)],{s,0,2}],
 "a2Residuals"->Table[FullSimplify[SeriesCoefficient[(4Pi t)^(3/2) heat[[s+1]],{t,0,1}]-a2[[s+1]]],{s,0,2}],
 "a4Residuals"->Table[FullSimplify[SeriesCoefficient[(4Pi t)^(3/2) heat[[s+1]],{t,0,2}]-a4[[s+1]]],{s,0,2}],
 "LowBandPrimitiveResiduals"->constants,"FullCoefficient"->full,
 "SmallHeatExpansion"->Series[full,{t,0,1}],
 "FiniteUncutLimitResidual"->FullSimplify[Limit[full,t->0,Direction->"FromAbove"]-(6-Sqrt[5])/(6Pi)],
 "PositiveTailSquareIdentityResidual"->positiveIdentity,
 "TailAsymptotic"->Series[h[r]/(6Pi^2 r),{r,Infinity,5/2}],
 "PositiveCutoffNumericalSamples"->samples,
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
Export[FileNameJoin[{out,"spectral_actual_output.wxf"}],report,"WXF"];
Export[FileNameJoin[{out,"spectral_actual_output.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
report
