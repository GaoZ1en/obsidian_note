(* Independent reproducible exact algebra checks. No project reports were read.
   Run with wolframscript -file checks.wl. All exports stay beside this new file. *)
ClearAll[m,n,p,j,k,f,sumFormula,root,report];
root = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr";
report = Block[{$MessageList = {}},
  sumFormula = FullSimplify[Sum[(m-j)(-2 m-j), {j, 2-m, 1}], Assumptions -> Element[m, Integers] && m >= 1];
  f[t_] := -(13/6) t (t^2-1);
  <|
    "KernelVersion" -> $Version,
    "Assumptions" -> "m is an integer >= 1; complex Fourier modes e_m=i exp(i m x) d_x; cutoff j<=1",
    "FiniteCrossingTrace" -> sumFormula,
    "TraceFormulaResidual" -> FullSimplify[sumFormula-f[m], Assumptions -> Element[m, Integers] && m >= 1],
    "FirstEightTraces" -> Table[{r, Sum[(r-j)(-2 r-j), {j,2-r,1}]}, {r,1,8}],
    "GeneralCutoffTrace" -> FullSimplify[Sum[(m-j)(-2 m-j), {j,k+1-m,k}], Assumptions -> Element[{m,k},Integers] && m>=1],
    "JacobiResidual" -> Expand[((m-n)f[m+n]+(n-p)f[n+p]+(p-m)f[p+m]) /. p -> -m-n],
    "ProjectiveGeneratorTraces" -> Table[f[r], {r,-1,1}],
    "KSinCos" -> Simplify[(-1/2)(-I/2)f[m]+(1/2)(-I/2)f[-m]],
    "OmegaSinCos" -> Simplify[-I ((-1/2)(-I/2)f[m]+(1/2)(-I/2)f[-m])],
    "SigmaCoefficient" -> Simplify[-12 f[m]/(m(m^2-1)), Assumptions -> m>1],
    "Messages" -> (ToString[#,InputForm]& /@ $MessageList)
  |>
];
Export[FileNameJoin[{root,"checks-result.wxf"}],report,"WXF"];
Export[FileNameJoin[{root,"checks-result.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
Print[report];
