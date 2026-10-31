(* Follow-up requested by parent after the independent principal-symbol finding.
   This verifies scalar radial formulas only, not the full ghost spectral projector.
*)
Module[{dir,report},
 dir="/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx";
 report=Block[{$Messages={},$MessageList={}},
  Module[{r,b,lam,phi,u,sine,normIntegral,residual,checks,result},
   phi=(1-Cos[b r])/(r Sinh[r]); u=(1-Cos[b r])/r;
   sine=Integrate[Sin[lam r],{lam,0,b},Assumptions->b>0&&r>0];
   normIntegral=Integrate[(1-Cos[b r])^2/r^2,{r,0,Infinity},Assumptions->b>0];
   residual=FullSimplify[-D[phi,{r,2}]-2 Coth[r]D[phi,r]-(-D[u,{r,2}]+u)/Sinh[r],Assumptions->b>0&&r>0];
   checks=<|
    "sine_band_representation"->TrueQ[FullSimplify[sine-u,Assumptions->b>0&&r>0]==0],
    "regular_origin_value"->TrueQ[FullSimplify[Limit[phi,r->0]-b^2/2,Assumptions->b>0]==0],
    "radial_laplacian_conjugation"->TrueQ[residual==0],
    "radial_L2_integral"->TrueQ[FullSimplify[normIntegral-Pi b/2,Assumptions->b>0]==0],
    "H3_scalar_L2_norm"->TrueQ[FullSimplify[4 Pi normIntegral-2 Pi^2 b,Assumptions->b>0]==0],
    "nonnegative_numerator"->TrueQ[FullSimplify[1-Cos[b r]>=0,Assumptions->b>0&&r>0]],
    "even_origin_expansion"->TrueQ[FullSimplify[Normal[Series[phi,{r,0,3}]]-(b^2/2-b^2(b^2+2)r^2/24)]==0]
   |>;
   result=<|"Checks"->checks,"AllPassed"->And@@Values[checks],
    "L2NormSquared"->2 Pi^2 b,"OriginValue"->b^2/2,
    "Scope"->"Exact scalar identities. Band support follows from the half-line sine transform; the actual rank-3 ghost projector trace divergence is proved analytically in followup.md."|>;
   <|"Result"->result,"Failed"->(result===$Failed||result===$Aborted),"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
  ]
 ];
 Export[FileNameJoin[{dir,"followup-radial-result.wxf"}],report,"WXF"];
 Export[FileNameJoin[{dir,"followup-radial-result.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
 {FileNameJoin[{dir,"followup-radial-result.txt"}],report["Result"]["AllPassed"],report["Failed"],report["Messages"]}
]
