(* BF AdS5 scalar: auxiliary-circle identity, tree locality and mixed reconstruction. *)
(* Optional $LocalityCheckSection = "Exact", "Numerics", "Angular", or "Pole" permits short independent kernel runs. Default: all sections. *)
Clear[report];
report = Block[{$MessageList = {}},
  Module[{z,x,r,l,w,g,c,aa,bb,ss,pp,de,full,free,quad,exact,
    av,bv,cv,v,t,q1,q2,q3,c0,rxv,rvx,ryv,rvy,ex,ey,
    poleA,poleB,poleS,poleP,tx,ty,tv,eps,ray,poleSamples,
    circleSamples,starSamples,angularSamples,angleTree,sourceAverage,
    circleClosed,coords,radii,vals,check1,check2,section=If[ValueQ[$LocalityCheckSection],$LocalityCheckSection,"All"]},
    aa=z^2+x^2+r^2; bb=z^2+(x-l)^2+r^2; ss=l^2; pp=aa bb-z^2 ss;
    de[f_] := D[f,{z,2}]+D[f,z]/z+D[f,{x,2}]+D[f,{r,2}]+2D[f,r]/r;
    full=-g/(2 ss aa bb); free=c/(ss pp); quad=g z^2/(2 aa bb pp);
    circleClosed[av_,bv_] := av/(av^2-bv^2)^(3/2);
    poleA=1-(tx-ty)^2; poleB=2-(tx-tv)^2; poleS=1-(ty-tv)^2;
    poleP=Expand[poleA poleB-poleS];
    exact=If[MemberQ[{"All","Exact"},section],<|
      "CircleCovarianceDerivative" -> FullSimplify[-D[1/Sqrt[av^2-bv^2],av]-circleClosed[av,bv]],
      "CircleBoundaryTrace" -> FullSimplify[circleClosed[z^2+r^2,0]-1/(z^2+r^2)^2,Assumptions->z>0&&r>0],
      "CircleFreeEquation" -> FullSimplify[
         D[circleClosed[z^2+w^2+r^2,2z w],{z,2}]+D[circleClosed[z^2+w^2+r^2,2z w],z]/z+
         D[circleClosed[z^2+w^2+r^2,2z w],{r,2}]+3D[circleClosed[z^2+w^2+r^2,2z w],r]/r],
      "StarTriangleInnerIntegral" -> FullSimplify[Integrate[v/(cv+v(bv-cv))^3,{v,0,1},Assumptions->bv>0&&cv>0]-1/(2bv^2 cv)],
      "StarTriangleOuterIntegral" -> FullSimplify[Integrate[1/(q1+t(q2-q1))^2,{t,0,1},Assumptions->q1>0&&q2>0]-1/(q1 q2)],
      "SixDimensionalProductEquation" -> Together[(-4q2-4q1+4(q1+q2-q3))/(q3 q1^2 q2^2)+4/(q1^2 q2^2)],
      "ProjectiveParameterJacobian" -> With[{beta=t/(1-t)},With[{alpha=(beta q3/(beta q1+q2))v/(1-v)},Together[2alpha beta/(alpha beta q1+alpha q2+beta q3)^3 D[alpha,v]/(1-t)^2-2v/(q3(t q1+(1-t)q2)^2)]]],
      "VertexCircleNormalization" -> Simplify[-(2g/(2Pi^2))/(2Pi) Pi^3+g/2],
      "FullMixedEquation" -> FullSimplify[de[full]-2g/(aa^2 bb^2)],
      "FreeLiftEquation" -> FullSimplify[de[free]],
      "QuadraticEquation" -> FullSimplify[de[quad]-2g/(aa^2 bb^2)],
      "BoundaryCoefficient" -> FullSimplify[(full/.z->0)+g/(2l^2(x^2+r^2)((x-l)^2+r^2))],
      "QuadraticLeadingCoefficient" -> FullSimplify[Limit[quad/z^2,z->0]-g/(2(x^2+r^2)^2((x-l)^2+r^2)^2)],
      "UnphysicalPoleCancellation" -> FullSimplify[free+quad-((c+g/2)/(ss pp)-g/(2ss aa bb))],
      "RetardedChainCancellation" -> Expand[rxv I c0(rvy-ryv)+ryv I c0(rxv-rvx)-I c0(rxv rvy-ryv rvx)],
      "FiniteDampingCommonPastResidual" -> Expand[ex rxv I c0(rvy-ryv)+ey ryv I c0(rxv-rvx)-I c0(ex rxv rvy-ey ryv rvx+rxv ryv(ey-ex))],
      "SpacelikePoleGeometry" -> Simplify[({poleA,poleB,poleS,poleP}/.{tx->1/2,ty->0,tv->-1/2})-{3/4,1,3/4,0}],
      "PoleGradient" -> Simplify[({D[poleP,tx],D[poleP,ty],D[poleP,tv]}/.{tx->1/2,ty->0,tv->-1/2})-{-5/2,2,1/2}],
      "CompactSwitchTimelikeKernel" -> Simplify[4Pi^2 ((-5/4)/(Pi^2(16-25/16)^(3/2)))^2-25600/(Pi^2 231^3)]
    |>,Missing["NotRun"]];
    circleSamples=If[MemberQ[{"All","Numerics"},section],Table[With[{a=pair[[1]],b=pair[[2]]},
      <|"Parameters_A_B"->pair,"Residual"->(NIntegrate[1/(a-b Cos[t])^2,{t,0,2Pi},WorkingPrecision->50,AccuracyGoal->35,PrecisionGoal->35]/(2Pi)-N[circleClosed[a,b],50])|>],
      {pair,{{3,1},{5/2,2},{7,0}}}],Missing["NotRun"]];
    starSamples=If[MemberQ[{"All","Numerics"},section],Table[With[{a=tr[[1]],b=tr[[2]],d=tr[[3]]},
      <|"SquaredDistances"->tr,"ParameterIntegral"->NIntegrate[
        (* Projective Feynman parameters after the verified rational map; no corner singularities. *)
        2v/(d(t a+(1-t)b)^2),
        {v,0,1},{t,0,1},WorkingPrecision->45,AccuracyGoal->25,PrecisionGoal->25,MaxRecursion->30],
        "ExactValue"->N[1/(a b d),45]|>],{tr,{{1,1,1},{1,2,2},{3,4,5}}}],Missing["NotRun"]];
    (* Smooth periodic integrand: trapezoidal meshes expose convergence directly. *)
    angleTree[zz_List,xx_List,n_Integer] := Module[{zzn=N[zz,50],xxn=N[xx,50],co,qa,qb,qab},
      co=Cos[N[2Pi Range[0,n-1]/n,50]];
      qa=(xxn[[1]]-xxn[[2]])^2+zzn[[1]]^2+zzn[[2]]^2-2zzn[[1]]zzn[[2]]co;
      qb=(xxn[[1]]-xxn[[3]])^2+zzn[[1]]^2+zzn[[3]]^2-2zzn[[1]]zzn[[3]]co;
      qab=Table[(xxn[[2]]-xxn[[3]])^2+zzn[[2]]^2+zzn[[3]]^2-2zzn[[2]]zzn[[3]]co[[Mod[i-j,n]+1]],{i,n},{j,n}];
      -Total[Flatten[1/(Outer[Times,qa,qb] qab)]]/(2n^2)];
    angularSamples=If[MemberQ[{"All","Angular"},section],Table[
      radii=data[[1]];coords=data[[2]];
      vals=Table[angleTree[radii,coords,n],{n,{16,32,64}}];
      check1=Last[vals];check2=angleTree[radii[[{2,1,3}]],coords[[{2,1,3}]],64];
      <|"Radii"->radii,"CollinearEuclideanCoordinates"->coords,
        "Meshes"->{16,32,64},"Tree_g1"->vals,"MeshDifferences"->Differences[vals],"ExchangeResidual"->check1-check2|>,
      {data,{{{1/3,1/2,2/3},{0,1,3}},{{1,0,0},{0,1,3}}}}],Missing["NotRun"]];
    ray[ee_,order_] := Module[{rules,a,b,s,p,f,h,tot},
      rules=If[order==1,{tx->1/2-2I ee,ty->-I ee,tv->-1/2},{tx->1/2-I ee,ty->-2I ee,tv->-1/2}];
      {a,b,s,p}={poleA,poleB,poleS,poleP}/.rules;
      f=N[-1/(2s p),50];h=N[1/(2a b p),50];tot=N[-1/(2s a b),50];
      <|"FreeLift"->f,"Quadratic"->h,"Full"->tot,"CancellationResidual"->f+h-tot|>];
    poleSamples=If[MemberQ[{"All","Pole"},section],Table[<|"epsilon"->ee,"Order_X_y_v"->ray[ee,1],"Order_y_X_v"->ray[ee,2],
      "FullOrderingDifference"->ray[ee,1]["Full"]-ray[ee,2]["Full"]|>,{ee,{1/10,1/100,1/1000}}],Missing["NotRun"]];
    <|"ExactResiduals"->exact,"AllExactResidualsZero"->If[AssociationQ[exact],And@@(TrueQ[#==0]&/@Flatten[Values[exact]]),Missing["NotRun"]],
      "CircleSamples"->circleSamples,"StarTriangleSamples"->starSamples,
      "FiniteRadiusAngularSamples"->angularSamples,"SpuriousPoleSamples"->poleSamples,
      "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
  ]
];
report
