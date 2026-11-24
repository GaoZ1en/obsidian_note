(* Ising n=2: CFT normalization, conditional FH algebra, and finite-grid odd-sector checks.
   Self-contained. Run with Get[".../ising_odd_sector_checks.wl"] in Wolfram Language.
   Prints Markdown to stdout. Does not export JSON or modify research notes.
   Finite checks supplement, but do not replace, the analytic proofs in the review.
*)
Block[{$Messages = {}, $MessageList = {}},
 Module[{checks = {}, add, fmt, row, qnome, theta, eta, fCft, rCft,
   x, z, t, aa, bb, cc, poly, sch, cftRows, cftResiduals, tau,
   betas, pairs, norms, exps, ratioExps, wantedRatios, shifts, values,
   minimizing, wantedShifts, fourRatios, wantedFour, chordResidual,
   oddRows, delta, report, allPassed, messages},

  add[label_, condition_] := AppendTo[checks, {label, TrueQ[condition]}];
  fmt[value_] := ToString[N[value, 12], InputForm];
  row[values_] := "| " <> StringRiffle[fmt /@ values, " | "] <> " |";

  (* I. CFT normalization: c_L=c_R=1/2, not c_L+c_R in the usual c formula. *)
  qnome[a_] := Exp[-Pi EllipticK[1-a]/EllipticK[a]];
  theta[j_, a_] := EllipticTheta[j, 0, qnome[a]];
  eta[a_] := qnome[a]^(1/12) QPochhammer[qnome[a]^2, qnome[a]^2];
  fCft[a_] := (1+a^(1/4)+(1-a)^(1/4))/2;
  rCft[a_] := (1-a)^(-1/8) fCft[a];
  poly = z (z-1) (z-x);
  sch = 3/8 (D[poly,z]/poly)^2 - 1/2 D[poly,{z,2}]/poly;
  add["twist h2=1/32", (1/2)/24 (2-1/2) == 1/32];
  add["Schwarzian double pole 3/8",
    FullSimplify[Limit[(z-x)^2 sch,z->x], Assumptions->0<x<1] == 3/8];
  add["Schwarzian residue",
    FullSimplify[Residue[sch,{z,x}] + (1/x+1/(x-1))/4,
      Assumptions->0<x<1] == 0];
  add["F2 crossing", FullSimplify[fCft[x]-fCft[1-x], Assumptions->0<x<1] == 0];
  add["small-x expansion, x=t^4 with t positive",
    Normal[Series[(1+t+(1-t^4)^(1/4))/(2 (1-t^4)^(1/8)),{t,0,9}]] ==
      1+t/2+t^5/16+t^8/128+9t^9/256];
  add["near-one scaled expansion, 1-x=t^4 with t positive",
    Normal[Series[(1+t+(1-t^4)^(1/4))/2,{t,0,8}]] ==
      1+t/2-t^4/8-3t^8/64];
  tau = I EllipticK[1-x]/EllipticK[x];
  cftResiduals = {};
  cftRows = Table[Module[{a=N[value,60], zz, residuals},
    zz = (theta[2,a]+theta[3,a]+theta[4,a])/(2 eta[a]);
    residuals = {
      theta[2,a]/theta[3,a]-a^(1/4),
      theta[4,a]/theta[3,a]-(1-a)^(1/4),
      2 eta[a]^3-theta[2,a] theta[3,a] theta[4,a],
      (a (1-a)/16)^(1/12) zz-fCft[a],
      (D[tau,x]+I Pi/(4 x (1-x) EllipticK[x]^2))/.x->a};
    AppendTo[cftResiduals, Max[Abs[residuals]]];
    {value, rCft[a], Max[Abs[residuals]]}],
    {value,{1/10000,1/10,1/2,9/10,9999/10000}}];
  add["theta/eta/Weyl/tau numerical residuals below 10^-45",
    Max[cftResiduals] < 10^-45];

  (* II. Only algebra conditional on an FH envelope; no discrete FH theorem is assumed. *)
  betas = {{-1,1,-1,1},{1,-1,-1,1},{-1,-1,1,1},{1,-3,1,1}}/4;
  pairs = Subsets[Range[4],{2}];
  norms = Total[#^2]& /@ betas;
  exps[b_] := (2 b[[#[[1]]]] b[[#[[2]]]]& /@ pairs);
  ratioExps = (exps[#]-exps[betas[[1]]])& /@ betas;
  wantedRatios = {{0,0,0,0,0,0}, {0,-1/4,1/4,1/4,-1/4,0},
    {1/4,-1/4,0,0,-1/4,1/4}, {-1/4,0,1/4,-1/4,-1/2,1/4}};
  add["FH squared norms", norms === {1/4,1/4,1/4,3/4}];
  add["FH six distance exponents for all four ratios", ratioExps === wantedRatios];
  shifts = Select[Tuples[Range[-2,2],4], Total[#]==0&];
  values = Total[(betas[[4]]+#)^2]& /@ shifts;
  minimizing = Pick[shifts,values,Min[values]];
  wantedShifts = Table[UnitVector[4,2]-UnitVector[4,j],{j,4}];
  add["finite shift-box agrees with four analytic minimizers",
    Min[values]==3/4 && Sort[minimizing]===Sort[wantedShifts]];
  fourRatios = Table[exps[ConstantArray[1/4,4]-UnitVector[4,j]]-exps[betas[[1]]],{j,4}];
  wantedFour = {{-1/4,-1/2,-1/4,1/4,0,1/4},
    {-1/4,0,1/4,-1/4,-1/2,1/4},
    {1/4,-1/2,1/4,-1/4,0,-1/4},
    {1/4,0,-1/4,1/4,-1/2,-1/4}};
  add["four minimizing representation distance ratios", fourRatios===wantedFour];
  chordResidual = FullSimplify[TrigExpand[
    Sin[aa+bb] Sin[bb+cc]-Sin[aa] Sin[cc]-Sin[bb] Sin[aa+bb+cc]],
    Assumptions->Element[{aa,bb,cc},Reals]];
  add["circle chord Ptolemy identity", chordResidual==0];

  (* III. Exact finite-grid setup, four arc fractions (1/5,1/4,3/10,1/4). *)
  oddRows = Table[Module[{ll=2 nn,lens,grid,ends,roots,g,g0,basis,a,a0,
     singularValues,f,phase,m,coeff,p,err,pnorm,trial,loss,blocks,indices,
     projection,ka,variance,hs13,hs24,lossResidual,t0,t3,midpointResidual,
     phaseResidual,jSwapResidual,label},
    lens = {2 nn/5,nn/2,3 nn/5,nn/2};
    grid = N[Exp[2 Pi I Range[0,ll-1]/ll],35];
    ends = Accumulate[lens]-1/2;
    roots = N[Exp[2 Pi I ends/ll],35];
    g = Flatten[MapThread[ConstantArray,{{I,-1,-I,1},lens}]];
    g0 = Flatten[MapThread[ConstantArray,{{I,1,I,1},lens}]];
    basis = N[Exp[2 Pi I Outer[Times,Range[0,ll-1],Range[0,nn-1]]/ll]/Sqrt[ll],35];
    projection = basis.ConjugateTranspose[basis];
    a = ConjugateTranspose[basis].DiagonalMatrix[g].basis;
    a0 = ConjugateTranspose[basis].DiagonalMatrix[g0].basis;
    singularValues = SingularValueList[N[a,25]];
    f = Times@@Table[(1-grid/root)^(-1/4),{root,roots}];
    phase = g[[1]]/(grid[[1]] f[[1]]/Conjugate[f[[1]]]);
    phaseResidual = Max[Abs[g-phase grid f/Conjugate[f]]];
    m = Floor[(nn-1)/4];
    coeff = Table[Pochhammer[1/4,k]/Factorial[k],{k,0,m}];
    p = Times@@Table[Sum[coeff[[k+1]] (grid/root)^k,{k,0,m}],{root,roots}];
    err = Norm[f-p]/Sqrt[ll];
    pnorm = Norm[p]/Sqrt[ll];
    trial = Norm[ConjugateTranspose[basis].(Conjugate[g] p)]/Norm[p];
    jSwapResidual = Norm[ConjugateTranspose[basis].(Conjugate[p]/grid)]/Sqrt[ll];
    midpointResidual = Max[Abs[Table[Total[Abs[grid-root]^(-2)]/nn^2-1,{root,roots}]]];
    loss = nn-Total[Flatten[Abs[a]^2]];
    blocks = Table[Range[1+Total[Take[lens,j-1]],Total[Take[lens,j]]],{j,4}];
    indices = Join[blocks[[1]],blocks[[3]]];
    ka = projection[[indices,indices]];
    variance = Length[indices]/2-Total[Flatten[Abs[ka]^2]];
    hs13 = Total[Flatten[Abs[projection[[blocks[[1]],blocks[[3]]]]]^2]];
    hs24 = Total[Flatten[Abs[projection[[blocks[[2]],blocks[[4]]]]]^2]];
    lossResidual = loss-2 variance-4 hs13-4 hs24;
    t0 = Abs[Det[a0]]; t3 = Abs[Det[a]];
    label = "N="<>ToString[nn]<>" ";
    add[label<>"exact phase factorization",phaseResidual<10^-25];
    add[label<>"midpoint inverse-square identity",midpointResidual<10^-25];
    add[label<>"J maps trial polynomial to empty half",jSwapResidual<10^-25];
    add[label<>"trial norm at least one",pnorm>=1-10^-25];
    add[label<>"trial residual bound",trial<=2 err/pnorm+10^-20];
    add[label<>"smallest singular value bounded by trial",Last[singularValues]<=trial+10^-15];
    add[label<>"exact leakage identity",Abs[lossResidual]<10^-25];
    add[label<>"FCS squared modulus identity",
      Abs[t0^2-Det[IdentityMatrix[Length[indices]]-2 ka.(IdentityMatrix[Length[indices]]-ka)]]<10^-25];
    add[label<>"T0 spectral lower bound",t0>=Exp[-2 Log[2] variance]-10^-25];
    add[label<>"determinant singular-value upper bound",
      t3<=Exp[1/2] Last[singularValues] Exp[-loss/2]+10^-15];
    add[label<>"finite odd/even bound",
      t3/t0<=Exp[1/2] Last[singularValues] Exp[(2 Log[2]-1) variance]+10^-15];
    {nn,err,Last[singularValues],trial,loss,variance,lossResidual,t3/t0}],
    {nn,{20,40,80}}];

  delta = 1/4-(4 Log[2]-2)/Pi^2;
  add["analytic suppression exponent positive",delta>0];
  messages = ToString[#,InputForm]& /@ $MessageList;
  add["no Wolfram messages",messages==={}];
  allPassed = And@@checks[[All,2]];
  report = StringRiffle[Join[{
    "# Ising n=2 CFT / FH algebra / odd-sector checks",
    "",
    "These checks supplement the analytic proof. Finite shift enumeration is not the proof of completeness; finite N tests are not the proof of suppression.",
    "",
    "## Exact and finite-matrix assertions",
    "",
    "| Check | Result |", "|---|---|"},
    ("| "<>#[[1]]<>" | "<>If[#[[2]],"PASS","FAIL"]<>" |"& /@ checks),
    {"", "## CFT numerical checks (60-digit input)", "",
    "| x | R2 | maximum residual |", "|---|---|---|"}, row /@ cftRows,
    {"", "## Finite-grid tests (35-digit input; singular values at 25 digits)", "",
    "Arc fractions: (1/5,1/4,3/10,1/4). Centering factors have unit modulus.", "",
    "| N | sample L2 error | s_min | trial residual/norm | leakage | Var_A | leakage identity residual | abs(T3)/T0 |",
    "|---|---|---|---|---|---|---|---|"}, row /@ oddRows,
    {"", "Suppression exponent delta = "<>fmt[delta]<>".",
    "Messages: "<>ToString[messages,InputForm]<>".",
    "Overall: "<>If[allPassed,"PASS","FAIL"]<>"."}],"\n"];
  Print[report];
  If[allPassed,"PASS",$Failed]
 ]
]
