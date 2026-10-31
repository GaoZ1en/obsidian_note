(* Supplementary exact sign, modulus, and normalization checks. *)
ClearAll[m,c,kappa,a,f,root,report];
root = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr";
report = Block[{$MessageList = {}},
 f[t_] := -(13/6)t(t^2-1);
 kappa = 13/6;
 a = -I kappa/2;
 <|
  "KernelVersion" -> $Version,
  "CosModeCrossingTrace" -> Expand[-f[m]/4],
  "Cos2InversePairDeterminantQuadraticCoefficient" -> -f[2]/4,
  "ShiftedCubicCentralResidual" -> Expand[I kappa (m^3-m)-2m a-I kappa m^3],
  "CubicRotationCentralShift" -> Simplify[-I a],
  "CubicRotationLoopPhase" -> FullSimplify[Exp[-2 Pi I 13/12]],
  "RelativeRotationLoopPhase" -> 1,
  "Messages" -> (ToString[#,InputForm]& /@ $MessageList)
 |>
];
Export[FileNameJoin[{root,"additional-result.wxf"}],report,"WXF"];
Export[FileNameJoin[{root,"additional-result.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
Print[report];
