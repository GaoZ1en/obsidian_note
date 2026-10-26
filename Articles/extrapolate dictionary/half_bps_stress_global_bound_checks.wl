(* Reproducible exact identities and high-precision edge checks.
   Conventions and analytic proof are in the neighboring .md file.
   Every variable is local; works in a fresh Wolfram kernel. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{a,b,k,z,y,theta,t,u,den,d2,s,x,g,lg,hp,lh,delta,
   integrand,pts,rows,ee,checks},
  d2=(k^2+(a+b)^2)(k^2+(a-b)^2);
  x=a^2+k^2-b^2;
  t=a^2+b^2-2a b Cos[theta];
  u=a-b Cos[theta]; den=k^2+t; g=1/den;
  lg=8u^2/den^3-2b Cos[theta]/(a den^2);
  checks=<|
   "DiscriminantIdentity" -> (Expand[d2-x^2-4b^2 k^2]===0),
   "BoundaryDerivativeIdentity" ->
    (FullSimplify[D[1/Sqrt[d2],{a,2}]-D[1/Sqrt[d2],a]/a
      -4a^2(3x^2-d2)/d2^(5/2),
       Assumptions->a>0&&b>0&&k>0]===0),
   "AngularDenominatorDerivative" ->
    (Simplify[D[g,{a,2}]-D[g,a]/a-lg]===0),
   "UniversalPolynomialInequality" ->
    Resolve[ForAll[y,y>=0,
      125/192(4y^4+64y^3+7200y^2)<=5000y^2(1+y^2)],Reals]
  |>;
  delta=BesselJ[0,z Sqrt[t]]-1;
  hp=-z u BesselJ[1,z Sqrt[t]]/Sqrt[t];
  lh=-b Cos[theta]z BesselJ[1,z Sqrt[t]]/(a Sqrt[t])
      +u^2 z^2 BesselJ[2,z Sqrt[t]]/t;
  integrand=delta lg+2D[g,a]hp+lh/den;
  pts={{1,1,1/10000,3/10},{1/10000,1,1/10000,1},
    {1,1/10000,1/10000,1},{1/10000,1/10000,1,1},
    {10,10,1/100,3}};
  rows=Table[
    ee=Total[Take[pt,3]];
    {pt,N[(d2/.Thread[{a,b,k,z}->pt])^(3/2)/pt[[1]]^2
      NIntegrate[Evaluate[integrand/.Thread[{a,b,k,z}->pt]],
        {theta,0,Pi},WorkingPrecision->70,AccuracyGoal->30,
        PrecisionGoal->30,MaxRecursion->40]/Pi/
      (pt[[4]]^2 ee^2(1+pt[[4]]^2 ee^2)),15]}, {pt,pts}];
  <|"ExactChecks"->checks,"DimensionlessSignedRatios"->rows,
    "UniversalAbsoluteBound"->5000,
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]
]
