(* UNEXECUTED DRAFT. Prepared before the parent requested no additional kernel runs.
   No output files have been generated from this source. The supplement proves
   its claims analytically and does not cite this draft as verification.
   Original independent report and outputs remain unchanged. *)
ClearAll["Global`*"];
outdir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm";
report = Block[{$Messages = {}, $MessageList = {}},
  Module[{a,b,c,d,aa,bb,cc,dd,q,qq,z,zz,s,ss,
    f11,f12,f21,f22,ff11,ff12,ff21,ff22,
    u,ubar,schur,schurbar,f,fbar,upper,upperbar,full,fullbar,
    gram,detf,detfbar,checks,m,j,x,result},
    (* Independent barred symbols encode formal complex conjugates. *)
    u={{a,b},{c,d}}; ubar={{aa,bb},{cc,dd}};
    schur=d-c b/a; schurbar=dd-cc bb/aa;
    f={{f11,f12},{f21,f22}};
    fbar={{ff11,ff12},{ff21,ff22}};
    upper={{q,z},{0,s}}; upperbar={{qq,zz},{0,ss}};
    full=f.upper; fullbar=fbar.upperbar;
    gram=Factor[Det[Transpose[fullbar].full]];
    detf=Det[f]; detfbar=Det[fbar];
    checks=<|
      "BigCellGramFactorizationResidual" -> Together[
        Det[Transpose[ubar].u]-aa a schurbar schur],
      "GlobalAdmissibleFrameFactorizationResidual" -> Factor[
        gram-detfbar detf qq q ss s],
      "GlobalPairNormResidual" -> Together[
        1/(detfbar detf ss s)-qq q/gram],
      "QuotientDualMultiplierNormResidual" -> Together[
        (qq/aa)(q/a)(aa a)-qq q],
      "RealWittPerfectnessConstantBracketResidual" -> TrigExpand[
        Cos[x] D[Sin[x],x]-Sin[x] D[Cos[x],x]-1],
      "LiftLieCocycleSignResidual" -> Factor[
        -Sum[(m-j)(j+2m),{j,2-m,1}]+13 m(m^2-1)/6]|>;
    result=<|"KernelVersion"->$Version,
      "FormalConjugateConvention"->"aa,bb,... are independent symbols for conjugates; identities are rational identities away from displayed denominator zeros",
      "Checks"->checks,
      "AllResidualsZero"->And@@(TrueQ[#==0]&/@Values[checks]),
      "FullGramFactorization"->gram,
      "ConcreteNonunitaryExample"-><|
        "U"->{{2,1},{3,2}},"GramDeterminant"->Det[Transpose[{{2,1},{3,2}}].{{2,1},{3,2}}],
        "a"->2,"S"->1/2,"IntrinsicGraphDeterminantMetric"->4,
        "UnitaryLiftChoice_q"->1,"QuotientDualMultiplier"->1/2,
        "TransportedNormSquared"->(1/2)^2 4|>|>;
    <|"Result"->result,"Failed"->!FreeQ[result,$Failed|$Aborted],
      "UnevaluatedSumOrLimit"->!FreeQ[result,_Sum|_Limit],
      "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
  ]
];
Export[FileNameJoin[{outdir,"lift_audit_checks.wxf"}],report,"WXF"];
Export[FileNameJoin[{outdir,"lift_audit_checks.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
<|"OutputDirectory"->outdir,"AllResidualsZero"->report["Result"]["AllResidualsZero"],
  "Failed"->report["Failed"],"UnevaluatedSumOrLimit"->report["UnevaluatedSumOrLimit"],"Messages"->report["Messages"]|>
