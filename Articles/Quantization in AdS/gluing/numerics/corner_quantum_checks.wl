(* Finite exact diagnostics for the smooth rectangle quantum sewing notes.
   These checks do not prove trace, elliptic, Hadamard, or renormalization theorems. *)
ClearAll["Global`*"];
checks = <||>;
checks["reflectionJetOrders0to4"] = And @@ Flatten[Table[
 FullSimplify[D[f[x + lx, ly - y], {x,a}, {y,b}] ==
   (-1)^b Derivative[a,b][f][x+lx,ly-y]],{a,0,4},{b,0,4}]];
jmat = DiagonalMatrix[{1,-1}];
checks["positiveDensityReflection"] = Abs[Det[jmat]] == 1;
checks["reflectionMetric"] = Transpose[jmat].jmat == IdentityMatrix[2];
checks["reflectionLaplacian"] = FullSimplify[
 D[f[x+lx,ly-y],{x,2}] + D[f[x+lx,ly-y],{y,2}] ==
 Derivative[2,0][f][x+lx,ly-y]+Derivative[0,2][f][x+lx,ly-y]];
kap[{a_,b_}] := {a+lx,ly-b};
checks["kleinDeckSquare"] = Simplify[kap[kap[{x,y}]] == {x+2lx,y}];
checks["kleinCoverScalarNormalization"] = With[
 {d={{0,1},{1,0}}, k={{a,b},{b,a}}},
 Simplify[2 ((IdentityMatrix[2]+d)/2).k.((IdentityMatrix[2]+d)/2) == k+k.d]];
sym = {{w11,w12},{w21,w22}};
fpoly[z1_,z2_] := a1 z1^3 + a2 z1 z2 + a3 z2^2;
gpoly[z1_,z2_] := b1 z1^2 + b2 z1 z2^2;
vars={x,y};
contraction[ff_,gg_,ww_,rr_] := If[rr==0,ff gg,
 Total[Flatten[Table[Times@@(MapThread[ww[[#1,#2]]&,{ii,jj}])
   Fold[D[#1,vars[[#2]]]&,ff,ii] Fold[D[#1,vars[[#2]]]&,gg,jj],
  {ii,Tuples[Range[2],rr]},{jj,Tuples[Range[2],rr]}]]]];
fs=fpoly[x,-y]; gs=gpoly[x,-y]; ws=jmat.sym.Transpose[jmat];
checks["reflectionWickContractions0to3"] = And@@Table[
 Expand[contraction[fs,gs,ws,r]-(contraction[fpoly[x,y],gpoly[x,y],sym,r]/. y->-y)]==0,{r,0,3}];
checks["zeroModeCausalFinite"] = Limit[Sin[w tau]/w,w->0] == tau;
checks["zeroModeWickNeedsPositiveGap"] = Limit[1/(2 w),w->0,Direction->"FromAbove"] === Infinity;
checks["massGapPositive"] = FullSimplify[m^2+kx^2+ky^2>0,Assumptions->{m>0,Element[kx,Reals],Element[ky,Reals]}];
checks["localDensityDerivativeReflection"] = Expand[(-gy)^2+gx^2+m^2 ph^2-(gy^2+gx^2+m^2 ph^2)]==0;
result = <|"checks"->checks,"allPassed"->And@@Values[checks],"count"->Length[checks]|>;
resultPath = FileNameJoin[{DirectoryName[$InputFileName], "corner_quantum_check_results.json"}];
Export[resultPath, result, "RawJSON"];
Print[ExportString[result, "RawJSON"]];
If[!TrueQ[result["allPassed"]], Exit[1]];
