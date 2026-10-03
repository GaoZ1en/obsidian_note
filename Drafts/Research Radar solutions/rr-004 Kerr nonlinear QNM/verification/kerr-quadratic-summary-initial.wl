
ClearAll["Global`*"];
base="/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/verification/";
read[n_]:=ToExpression[Import[base<>n,"RawJSON"]["structuredContent"]["result"]];
r400=read["kerr-quadratic-result.json"];r800=read["kerr-quadratic-refined-result.json"];r1200=read["kerr-quadratic-final-result.json"];
<|"delta_400_800"->Abs[r400["spherical_total"]-r800["spherical_total"]],"delta_800_1200"->Abs[r800["spherical_total"]-r1200["spherical_total"]],"absolute_data_difference"->Abs[r1200["data_difference"]],"relative_data_difference"->Abs[r1200["data_difference"]/r1200["spherical_total"]],"source_moment_geometric_ratio_max"->N[(3/10)/(1+Sqrt[1-(3/10)^2]),25],"max_offgrid_relative_residual"->Max[Flatten[Lookup[r1200["results"],"offgrid_relative_residuals"][[All,2]]]]|>

