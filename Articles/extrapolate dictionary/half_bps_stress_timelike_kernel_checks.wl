(* Standalone independent checks. No source-file edits or exports. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  Module[{a,b,tau,z,t,v,D2,ser,src,r1,r2,r3,aser,r4,f2,rr,samples,rows},
    D2 = ((a+b)^2-tau^2)((a-b)^2-tau^2);
    ser = -z^6/36 + (3a^2+9b^2+tau^2)z^8/2304;
    src = -8/a^2 z^2 BesselJ[2,a z] BesselJ[0,b z];
    r1 = Simplify[Normal@Series[
      D[ser,{z,2}]+D[ser,z]/z+tau^2 ser-src,{z,0,6}]];
    r2 = Together[(D[D2^(-1/2),{a,2}]-D[D2^(-1/2),a]/a)
      -8a^2(D2+6b^2 tau^2)/D2^(5/2)];
    r3 = Integrate[t^2 v^2,{t,0,1},{v,0,1}];
    aser = z^2/4 Sum[(-1)^(n+m+l) (a^2 z^2/4)^n
      (b^2 z^2/4)^m (tau^2 z^2/4)^l
      Factorial[n+m]^2/(Factorial[n]^2 Factorial[m]^2
        Factorial[n+m+l+1]^2),
      {n,0,4},{m,0,4-n},{l,0,4-n-m}];
    r4 = Simplify[Normal@Series[D[aser,{z,2}]+D[aser,z]/z
      +tau^2 aser-BesselJ[0,a z] BesselJ[0,b z],{z,0,8}]];
    f2[x_?NumericQ] := If[Abs[x]<10^-6,
      1-x^2/12+x^4/384,8 BesselJ[2,x]/x^2];
    rr[tt_?NumericQ,zz_?NumericQ,uu_?NumericQ] := If[tt==0,
      uu Log[zz/uu],Pi uu/2 (BesselJ[0,tt uu] BesselY[0,tt zz]
        -BesselY[0,tt uu] BesselJ[0,tt zz])];
    samples=N[{{3,1,1,1},{3,1,2,1},{0,1,1,1},
      {1,1,0,1},{0,0,0,1},{1,1,1,2}}];
    rows=Table[With[{aa=s[[1]],bb=s[[2]],tt=s[[3]],zz=s[[4]]},
      With[{
        v1=NIntegrate[rr[tt,zz,u] u^4 f2[aa u] BesselJ[0,bb u],
          {u,0,zz},Method->{"GlobalAdaptive","SymbolicProcessing"->0},
          AccuracyGoal->12,PrecisionGoal->12],
        v2=zz^6/4 NIntegrate[(t v)^2 f2[aa zz Sqrt[t v]]
          BesselJ[0,bb zz Sqrt[t v]]
          BesselJ[0,tt zz Sqrt[(1-t)(1-v)]],{t,0,1},{v,0,1},
          Method->{"GlobalAdaptive","SymbolicProcessing"->0},
          AccuracyGoal->12,PrecisionGoal->12]},
        {s,v1,v2,Abs[v1-v2]}]],{s,samples}];
    <|"stressSeriesResidual"->r1,"massDerivativeResidual"->r2,
      "stressWeightIntegral"->r3,"doubleIntegralSeriesResidual"->r4,
      "quadratures"->rows,"messages"->ToString[$MessageList,InputForm]|>
  ]
];
Print[InputForm[report]];
report
