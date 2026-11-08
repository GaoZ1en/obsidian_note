Block[{$Messages={},$MessageList={}},
 Module[{k=3,m=6,n=7,dd=6/5,a,b,iv,ff,terms,j},
  a=n dd/2-1; b=1-(n-2)dd/2;
  iv[j_]:=Pochhammer[b,j]/Pochhammer[a,j+1];
  ff[j_]:=Sum[Factorial[m]/(Factorial[r]^2 Factorial[m-r]^2
      ((2r-m)dd-(dd+2j))),{r,0,m}];
  terms=Table[Together[iv[j]^2 ff[j]/128],{j,0,k-1}];
  <|"B6Pi5Terms"->terms,"B6Pi5"->Total[terms],
    "ExactTargetPassed"->(Total[terms]===-168524890325/523590680051712),
    "AllNegative"->And@@(#<0&/@terms),
    "FmidSamples"->Table[{kk,Table[
       Sum[Binomial[2kk,rr]^2/(2rr-2kk-(2vv+1)),{rr,0,2kk}],
       {vv,0,kk-1}]},{kk,1,5}],
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]
]
