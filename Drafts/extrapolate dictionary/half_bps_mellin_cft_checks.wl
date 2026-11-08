(* Independent CFT checks for four unit Delta=2 operators with
   Y=diag(1,1,1,-1,-1,-1)/Sqrt[6]. No bulk matching is assumed.
   Sources: https://arxiv.org/html/1710.05923v2, equations 59,63-71,
   111,170-175. Read HTML equations; not a PDF visual audit.
   Ordinary Mellin measure ds dt/(4 Pi I)^2, s+t+u=8.
   Supersymmetric reduced variable utilde=4-s-t=u-4.
   This script verifies exact algebra, Wick combinatorics and Barnes moments.
   It DOES NOT prove equality of arbitrary inverse-Mellin prescriptions.
   Run: wolframscript -file half_bps_mellin_cft_checks.wl
*)
ClearAll["Global`*"];
report = Block[{$MessageList = {}}, Module[
  {signs, edgeGraphs, graphProjection, projection, pairs, graphs, counts,
   uu, seed, rf, coeffs, shifted, ordinary, residue, moments, pol, k,
   expectation, barnes, expected, h, aa, yy, tensorNorm, traceResiduals,
   dPrefactor, rPoly, projectionR, checks, a0, a1, zroot, zbroot,
   logSeries, boxLog, boxLeading, barnesOneFifth, logCoefficient, gammaConditional,
   p12,p13,p14,p23,p24,p34,boxff,bx,dbOperator,dbExpected,dbResidual,
   clusterTerms,internalCount,prefDegree,clusterExponent,jointMargin,
   clusterWorst,clusterMargins,allClusterMargins,normBridgeResidual,bridgeConstant,
   bNormSquared,bNormResidual,bNormUpper},
  signs = {1,1,1,-1,-1,-1};
  edgeGraphs = {
    {{1,2},{1,2},{3,4},{3,4}},
    {{1,3},{1,3},{2,4},{2,4}},
    {{1,4},{1,4},{2,3},{2,3}},
    {{1,2},{3,4},{1,3},{2,4}},
    {{1,2},{3,4},{1,4},{2,3}},
    {{1,3},{2,4},{1,4},{2,3}}};
  (* Each vertex contraction is (Y_ab/2) d_ta d_tb.
     Diagonal Y sets both incident indices equal; the two derivatives
     cancel 1/2. Product of four diagonal entries is signs product/36. *)
  graphProjection[edges_] := Total[Function[inds,
    Times@@(signs[[#]]& /@ inds)/36 *
      Times@@(KroneckerDelta[inds[[#[[1]]]],inds[[#[[2]]]]]& /@ edges)
    ] /@ Tuples[Range[6],4]];
  projection = graphProjection /@ edgeGraphs;
  pairs[{}] = {{}};
  pairs[xs_List] := Flatten[Table[
    If[Quotient[xs[[1]],2] == Quotient[xs[[j]],2], {},
      (Prepend[#, Sort[{Quotient[xs[[1]],2],Quotient[xs[[j]],2]}]]& /@
        pairs[Delete[xs,{{j},{1}}]])], {j,2,Length[xs]}],1];
  graphs = Sort /@ pairs[Range[0,7]];
  counts = Sort[Last /@ Tally[graphs]];
  rPoly = tau+(1-sigma-tau)v+(-tau-sigma tau+tau^2)u0+
    (sigma^2-sigma-sigma tau)u0 v+sigma v^2+sigma tau u0^2;
  projectionR = Expand[Coefficient[rPoly,sigma,0]/.tau->0] +
    Coefficient[Coefficient[rPoly,sigma,2],tau,0] +
    Coefficient[Coefficient[rPoly,sigma,0],tau,2] +
    (Coefficient[Coefficient[rPoly,sigma,1],tau,0]+
     Coefficient[Coefficient[rPoly,sigma,0],tau,1]+
     Coefficient[Coefficient[rPoly,sigma,1],tau,1])/6;
  uu = 8-s-t;
  seed[x_,y_] := 32/((x-2)(y-2)(2-x-y));
  rf[x_,n_Integer] := Product[x+j,{j,0,n-1}];
  coeffs = {{0,0,1/6},{0,1,2/3},{1,0,2/3},
    {1,1,2/3},{0,2,1/6},{2,0,1/6}};
  shifted = Together[Total[Function[q, With[{m=q[[1]],n=q[[2]],c=q[[3]]},
    c seed[s-2m,t-2n] rf[2-s/2,m]^2 rf[2-t/2,n]^2
      rf[2-uu/2,2-m-n]^2]] /@ coeffs]];
  ordinary = 1/3-1/2 (((t-uu)^2+4/3)/(s-2)+
    ((s-uu)^2+4/3)/(t-2)+((s-t)^2+4/3)/(uu-2));
  residue = Factor[Limit[(s-2) shifted,s->2]];
  (* First Barnes lemma: integral Gamma(q)^2 Gamma(1-q)^2(q)_k
     = (k!)^2/(k+1)! = k!/(k+1). *)
  moments = ConstantArray[0,11];
  Do[pol=Expand[rf[q,k]];
    moments[[k+1]]=k!/(k+1)-Sum[Coefficient[pol,q,j]moments[[j+1]],{j,0,k-1}],
    {k,0,10}];
  expectation[p_] := Sum[Coefficient[Expand[p],q,j]moments[[j+1]],{j,0,10}];
  barnes = Table[expectation[((2q-1)^2+1/3)
    Product[q-1-j,{j,0,n-1}]/n!],{n,0,8}];
  expected = Table[If[n<2,0,2/45 (-1)^n rf[3,n-2]^2/(rf[6,n-2](n-2)!)],{n,0,8}];
  yy[i_,j_] := signs[[i]] KroneckerDelta[i,j];
  aa[i_,j_,k_,l_] := (KroneckerDelta[i,j]KroneckerDelta[k,l]+
    KroneckerDelta[i,k]KroneckerDelta[j,l]+KroneckerDelta[i,l]KroneckerDelta[j,k])/3;
  h[i_,j_,k_,l_] := (yy[i,j]yy[k,l]+yy[i,k]yy[j,l]+yy[i,l]yy[j,k])/18-aa[i,j,k,l]/24;
  tensorNorm=Total[(h@@#)^2& /@ Tuples[Range[6],4]];
  traceResiduals=Flatten[Table[Sum[h[i,i,j,k],{i,1,6}],{j,1,6},{k,1,6}]];
  (* RZ eq111 for Delta=(2,4,2,2), Sigma=5, d=4:
     D2422 = (Pi^2/6) P14 P34/(P13^3 P24^4) Dbar2422.
     D2422 has integrand z^5 / product_i(z^2+|x-x_i|^2)^Delta_i. *)
  dPrefactor=Pi^2 Gamma[5-2]/(2 Times@@(Gamma /@ {2,4,2,2}));
  (* Direct position-space OPE, independent of ordinary Mellin evaluation at s=4.
     Initially 0<V<1; continue the removable coefficient limits to V=1.
     z=1-V-U V/(1-V)+O(U^2), zb=U/(1-V)+O(U^2).
     Li2 terms are analytic in U in this patch, so explicit Log[U] fixes a0,a1. *)
  zroot=1-v-u0 v/(1-v); zbroot=u0/(1-v);
  logSeries=Normal[Series[(Log[1-zroot]-Log[1-zbroot])/(zroot-zbroot),{u0,0,1}]];
  a0=Log[v]/(1-v);
  a1=(2(v-1)-(v+1)Log[v])/(v-1)^3;
  bx=boxff[p12 p34/(p13 p24),p14 p23/(p13 p24)]/(p13 p24);
  dbOperator=-p13^3 p24^4/(p14 p34) D[bx,p12,p23,p24];
  dbExpected=3 Derivative[1,1][boxff][u0,v]+u0 Derivative[2,1][boxff][u0,v]+
    v Derivative[1,2][boxff][u0,v];
  dbResidual=Simplify[(dbOperator/.{p12->u0,p13->1,p14->1,p23->v,p24->1,p34->1})-dbExpected];
  boxLeading=Limit[2D[a0,v]+v D[a0,{v,2}],v->1];
  boxLog=Limit[3D[a1,v]+v D[a1,{v,2}],v->1];
  (* First Barnes lemma for Gamma(1+q)Gamma(2+q)Gamma(2-q)Gamma(1-q).
     A contour with -1<Re q<1 separates left/right poles. *)
  barnesOneFifth=Gamma[3]Gamma[2]Gamma[4]Gamma[3]/Gamma[6];
  logCoefficient=-2/3*6*boxLog;
  gammaConditional=2 logCoefficient/(1/10);
  (* Positive-integrand collision power counting. Each row is
     {name, Delta_i, numerator P-edges, denominator P-edges}.
     Other channels/cross edges follow by relabeling.
     For the integrated D function use Min[0,totalDelta-2 Delta_S],
     allowing logs at equality. For the joint bulk/external integral use
     RAW totalDelta-2 Delta_S. Nested sectors require all subset margins,
     not merely full-diagonal scaling. Clusters not containing the bulk
     point see at worst P12^-1, degree2<dimension4. Bulk infinity converges
     as R^(-totalDelta-1) for compact external support. *)
  clusterTerms={
    {"D1122/P12",{1,1,2,2},{},{{1,2}}},
    {"P13 D2132/P12",{2,1,3,2},{{1,3}},{{1,2}}},
    {"P13P24 D2233/P12",{2,2,3,3},{{1,3},{2,4}},{{1,2}}},
    {"P14P23 D2233/P12",{2,2,3,3},{{1,4},{2,3}},{{1,2}}},
    {"P12P34 D2233/P12",{2,2,3,3},{{1,2},{3,4}},{{1,2}}},
    {"D2222",{2,2,2,2},{},{}}};
  internalCount[edges_,ss_] := Count[(AllTrue[#,MemberQ[ss,#]&]& /@ edges),True];
  prefDegree[row_,ss_] := 2(internalCount[row[[3]],ss]-internalCount[row[[4]],ss]);
  clusterExponent[row_,ss_] := Min[0,Total[row[[2]]]-2 Total[row[[2,ss]]]]+prefDegree[row,ss];
  jointMargin[row_,ss_] := 4(Length[ss]-1)+Total[row[[2]]]-2 Total[row[[2,ss]]]+prefDegree[row,ss];
  clusterWorst=Association[Function[row,row[[1]]->Table[
    Min[clusterExponent[row,#]& /@ Subsets[Range[4],{kk}]],{kk,2,4}]] /@ clusterTerms];
  clusterMargins=Association[Function[row,row[[1]]->Table[
    Min[jointMargin[row,#]& /@ Subsets[Range[4],{kk}]],{kk,1,4}]] /@ clusterTerms];
  allClusterMargins=Flatten[Values[clusterMargins]];
  (* Source-pair bridge, conditional on the independently audited exact
     Einstein response h2=-W q tensor q/3, W*zeta=F12, |q|^2=4*zeta.
     Unit |a_i| gives 0<=zeta<=1. Use the UNHALVED cross stress in d=5:
     B34=4F34(a3 tensor a4+a4 tensor a3)+8*zeta*F34*g.
     For c=a3.a4=1-2*zeta, |a3a4+a4a3|^2=2+2c^2 and trace=2c.
     Thus |B34|^2/F34^2=32(1+c^2)+128*zeta*c+320*zeta^2
       =64(1+3*zeta^2)<=256. Consequently |B34|<=16F34
     and |h2:B34|<=(64/3)F12 F34, with no symmetrization ambiguity.
     Fubini against absolute Schwartz sources follows from the proven
     positive contact bound. h2 smearing <= (4/3)z^4(C0*|j1|)(C0*|j2|)
     has UV z^4 log^2 and IR z^-4; fixed UV frame/regular inverse uniqueness
     identifies the boundary source functional, not an arbitrary contact extension.
     This algebraic check does not reverify the Einstein tensor equation. *)
  normBridgeResidual=Together[(ww qnorm/3/.{ww->f12/zeta,qnorm->4zeta})-4f12/3];
  bNormSquared=Expand[32(1+(1-2zeta)^2)+128zeta(1-2zeta)+320zeta^2];
  bNormResidual=Expand[bNormSquared-64(1+3zeta^2)];
  bNormUpper=FullSimplify[bNormSquared<=256,Assumptions->0<=zeta<=1];
  bridgeConstant=4/3*16;
  checks=<|
    "SixPolarizationStructures" -> (projection==={1,1,1,1/6,1/6,1/6}),
    "WickGraphMultiplicities" -> (counts==={4,4,4,16,16,16}),
    "AllWickPairings" -> (Length[graphs]===60),
    "ProjectedWardPolynomial" -> (Expand[projectionR-(1+u0^2+v^2+4u0+4v+4u0 v)/6]===0),
    "ReducedToOrdinaryShift" -> (Together[shifted-ordinary]===0),
    "CrossingST" -> (Together[shifted-(shifted/.{s->t,t->s})]===0),
    "CrossingSU" -> (Together[shifted-(shifted/.s->8-s-t)]===0),
    "StressPoleResidue" -> (Expand[residue+2((t-3)^2+1/3)]===0),
    "BarnesStressBlockSeries0to8" -> (barnes===expected),
    "Rank4Traceless" -> (traceResiduals===ConstantArray[0,36]),
    "Rank4Norm" -> (tensorNorm===5/12),
    "Rank4NonzeroComponent" -> (h[1,1,1,1]===1/8),
    "DbarNormalization" -> (dPrefactor===Pi^2/6),
    "FlatBoxLogA0" -> (Together[Coefficient[logSeries,u0,0]-a0]===0),
    "FlatBoxLogA1" -> (Together[Coefficient[logSeries,u0,1]-a1]===0),
    "Dbar2422DifferentialOperator" -> (dbResidual===0),
    "DbarLeadingAtV1" -> (boxLeading===1/3),
    "DbarLogAtV1" -> (boxLog===1/5),
    "BarnesOneFifth" -> (barnesOneFifth===1/5),
    "PositionAndBarnesOPEAgree" -> (boxLog===barnesOneFifth),
    "NoDelta2ScalarAtV1" -> (4/3-2/3*6*boxLeading===0),
    "U2LogUCoefficientTimesN2" -> (logCoefficient===-4/5),
    "ConditionalSingletGammaTimesN2" -> (gammaConditional===-16),
    "ClusterWorstDegrees" -> (Values[clusterWorst]==={{-2,-4,-8},{-2,-4,-8},{-2,-4,-8},{-2,-4,-8},{0,-4,-8},{0,-4,-8}}),
    "AllNestedBulkClusterMarginsPositive" -> And@@(#>0& /@ allClusterMargins),
    "ExactResponseNormBridgeAlgebra" -> (normBridgeResidual===0),
    "UnhalvedStressExactNorm" -> (bNormResidual===0),
    "UnhalvedStressUniformNormBound" -> (bNormUpper===True)|>;
  <|"Checks"->checks,"AllPassed"->And@@Values[checks],
    "Projection"->projection,"WickMultiplicities"->counts,
    "OrdinaryMellinTimesN2"->ordinary,"ResidueTimesN2"->residue,
    "BarnesMoments0to4"->Take[moments,5],
    "StressSeriesInVminus1"->barnes,"Rank4Norm"->tensorNorm,
    "GFFScalarCoefficientsSinglet20prime10584"->{1/10,0,5/6,16/15},
    "D2422Prefactor"->dPrefactor,
    "FlatBoxLogA0"->a0,"FlatBoxLogA1"->a1,
    "FlatBoxA1SeriesAtV1"->Series[a1/.v->1+w,{w,0,4}],
    "DbarLeadingAtV1"->boxLeading,"DbarLogAtV1"->boxLog,
    "BarnesOneFifth"->barnesOneFifth,"U2LogUCoefficientTimesN2"->logCoefficient,
    "ConditionalSingletGammaTimesN2"->gammaConditional,
    "GammaCondition"->"Unique light leading-Delta4 singlet scalar doubletrace [O2 O2]_1 at strong coupling, a0=1/10; protected 105/84 gamma=0, marginal singlet descendant separated coupling=0; no finite-N mixing resolution.",
    "ClusterWorstExponentsFor2Through4Points"->clusterWorst,
    "JointBulkClusterMinimumMarginsFor1Through4Points"->clusterMargins,
    "UnhalvedStressSquaredNormOverF34Squared"->bNormSquared,
    "ExchangeContactMajorantConstant"->bridgeConstant,
    "BridgeScope"->"Given independently audited h2=-W q q/3 and fixed UV frame/regular inverse: |h2|=4F12/3; unhalved B34 has |B34|^2=64F34^2(1+3*zeta^2)<=256F34^2, so |h2:B34|<=(64/3)F12F34. Positive contact Schwartz bound implies Fubini; no arbitrary diagonal counterterm is inserted.",
    "NotVerifiedHere"->{"Arbitrary inverse-Mellin contour equivalence", "Finite-N Delta4 operator mixing", "Einstein response tensor equation and full position identity (separate checks)"},
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
Print[ToString[report,InputForm,PageWidth->100]];
report
