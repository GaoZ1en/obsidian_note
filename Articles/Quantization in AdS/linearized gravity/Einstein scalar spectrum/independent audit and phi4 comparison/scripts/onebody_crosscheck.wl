(* Compare only independently generated audit outputs, never supplied source reports. *)
ClearAll["Global`*"];
root="/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/";
num=Import[root<>"onebody_trace_audit.json","RawJSON"];
exact=Import[root<>"onebody_exact_shells.json","RawJSON"];
rows={};
Do[
 If[r["path"]=={1,1},
  e=SelectFirst[exact["traces"],#["Delta"]==r["Delta"]&&#["p"]==r["p"]&&#["q"]==r["q"]&];
  ee=ToExpression[r["eps"]];
  val=N[ToExpression[e["trace"]]/.z->Exp[-ee],60];
  nv=ToExpression[r["exchange"]];
  err=Abs[val-nv];
  AppendTo[rows,<|"Delta"->r["Delta"],"p"->r["p"],"q"->r["q"],"eps"->r["eps"],"abs_error"->ToString[err,InputForm]|>]
 ],{r,num["results"]}];
extrap=Table[
 rr=ToExpression/@r["residuals"];
 est={-1/21,2/3,-8/3,64/21}.rr;
 <|"Delta"->r["Delta"],"p"->r["p"],"q"->r["q"],"path"->r["path"],"four_scale_constant_estimate"->ToString[est,InputForm]|>
,{r,num["convergence"]}];
report=<|"scope"->"80 independent NumPy finite sums compared to exact Wolfram shell sums; 40 four-scale zero-constant diagnostics, NOT rigorous extrapolation-error bounds.","cross_comparisons"->Length[rows],"max_cross_error"->Max[ToExpression/@Lookup[rows,"abs_error"]],"all_cross_errors_below_1e-9"->AllTrue[ToExpression/@Lookup[rows,"abs_error"],#<10^-9&],"constant_diagnostics"->Length[extrap],"max_abs_constant_estimate"->Max[Abs[ToExpression/@Lookup[extrap,"four_scale_constant_estimate"]]],"comparisons"->rows,"extrapolations"->extrap|>;
Export[root<>"onebody_crosscheck.json",report,"RawJSON"];
KeyTake[report,{"cross_comparisons","max_cross_error","all_cross_errors_below_1e-9","constant_diagnostics","max_abs_constant_estimate"}]
