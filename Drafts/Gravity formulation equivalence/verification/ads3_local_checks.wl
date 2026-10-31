(* Reproducible exact checks for Gravity formulation equivalence.
   Wolfram Language 14.3; no external packages.
   Run via Get[absolute path] in a fresh kernel. Returns an Association.
   Coordinates/orientation: x^1,x^2,x^3, epsilon^(123)=+1.
   Internal basis J_0,J_1,J_2, eta=(-,+,+), epsilon_012=+1.
   All coefficients and first derivatives are algebraically independent.
   No positivity, field equations or boundary conditions enter transgression.
   These checks do NOT establish a global gravitational phase-space quotient.
*)
ClearAll["Global`*"];
Block[{$Messages = {}, $MessageList = {}},
 Module[{jj, etaInt, e, w, de, dw, ve, vw, e1, w1, e2, w2,
   ell, x, nn, ll, ff, eps, et, a, lam, dg, lf, df1, df2,
   wden, target, bd, mm, y1, y2, checks, cs, curv, tors,
   aa, ab, daa, dab, pal, trans, dB, thcs, thp, dbvar,
   currentCS, currentP, emat, metric, zero, ev, tr, comm, eps3},
  jj={{{0,1},{-1,0}}/2,{{0,1},{1,0}}/2,{{1,0},{0,-1}}/2};
  etaInt=DiagonalMatrix[{-1,1,1}];
  eps3[i_,j_,k_]:=Signature[{i,j,k}];
  comm[u_,v_]:=u.v-v.u;
  tr[u_]:=Tr[u];
  zero[z_]:=And@@(TrueQ[#===0]& /@ Flatten[{Expand[z]}]);
  emat=Array[ee,{3,3}];
  e=Table[Sum[emat[[b,i]] jj[[b]],{b,3}],{i,3}];
  w=Table[Sum[ww[b,i] jj[[b]],{b,3}],{i,3}];
  de=Table[Sum[dee[b,i,j] jj[[b]],{b,3}],{i,3},{j,3}];
  dw=Table[Sum[dww[b,i,j] jj[[b]],{b,3}],{i,3},{j,3}];
  ve=Table[Sum[vev[b,i] jj[[b]],{b,3}],{i,3}];
  vw=Table[Sum[vwv[b,i] jj[[b]],{b,3}],{i,3}];
  e1=Table[Sum[eone[b,i] jj[[b]],{b,3}],{i,3}];
  w1=Table[Sum[wone[b,i] jj[[b]],{b,3}],{i,3}];
  e2=Table[Sum[etwo[b,i] jj[[b]],{b,3}],{i,3}];
  w2=Table[Sum[wtwo[b,i] jj[[b]],{b,3}],{i,3}];
  cs[u_,du_]:=Sum[eps3[i,j,h] tr[u[[i]].du[[h,j]]+
      (2/3) u[[i]].u[[j]].u[[h]]],{i,3},{j,3},{h,3}];
  curv[u_,du_,i_,j_]:=du[[j,i]]-du[[i,j]]+comm[u[[i]],u[[j]]];
  tors[i_,j_]:=de[[j,i]]-de[[i,j]]+comm[w[[i]],e[[j]]]-comm[w[[j]],e[[i]]];
  aa=w+e/ell; ab=w-e/ell; daa=dw+de/ell; dab=dw-de/ell;
  pal=(4/ell) Sum[eps3[i,j,h] tr[e[[i]].(dw[[h,j]]+w[[j]].w[[h]])],
        {i,3},{j,3},{h,3}]+(4/(3 ell^3)) Sum[eps3[i,j,h] tr[e[[i]].e[[j]].e[[h]]],
        {i,3},{j,3},{h,3}];
  dB=-(2/ell) Sum[eps3[i,j,h] tr[dw[[j,i]].e[[h]]+w[[j]].de[[h,i]]],
        {i,3},{j,3},{h,3}];
  trans=Together[cs[aa,daa]-cs[ab,dab]-pal-dB];
  thcs[i_,j_]:=-tr[aa[[i]].(vw[[j]]+ve[[j]]/ell)-
      aa[[j]].(vw[[i]]+ve[[i]]/ell)-
      ab[[i]].(vw[[j]]-ve[[j]]/ell)+ab[[j]].(vw[[i]]-ve[[i]]/ell)];
  thp[i_,j_]:=-(4/ell) tr[e[[i]].vw[[j]]-e[[j]].vw[[i]]];
  dbvar[i_,j_]:=-(2/ell) tr[vw[[i]].e[[j]]+w[[i]].ve[[j]]-
      vw[[j]].e[[i]]-w[[j]].ve[[i]]];
  currentCS[i_,j_]:=-2 tr[(w1[[i]]+e1[[i]]/ell).(w2[[j]]+e2[[j]]/ell)-
      (w1[[j]]+e1[[j]]/ell).(w2[[i]]+e2[[i]]/ell)-
      (w1[[i]]-e1[[i]]/ell).(w2[[j]]-e2[[j]]/ell)+
      (w1[[j]]-e1[[j]]/ell).(w2[[i]]-e2[[i]]/ell)];
  currentP[i_,j_]:=-(4/ell) tr[e1[[i]].w2[[j]]-e1[[j]].w2[[i]]-
      e2[[i]].w1[[j]]+e2[[j]].w1[[i]]];
  metric=Table[2 tr[e[[i]].e[[j]]],{i,3},{j,3}];
  a={{0,ll[x]},{1,0}};
  lam={{-eps'[x]/2,ll[x] eps[x]-eps''[x]/2},{eps[x],eps'[x]/2}};
  dg=Simplify[D[lam,x]+comm[a,lam]];
  lf=-ff'[x]^2/4-(ff'''[x]/ff'[x]-3 ff''[x]^2/(2 ff'[x]^2))/2;
  df1=ff'[x] eps[x]; df2=ff'[x] et[x];
  wden=(D[df1,x] D[df2,{x,2}]-D[df2,x] D[df1,{x,2}])/ff'[x]^2-
      (df1 D[df2,x]-df2 D[df1,x]);
  target=4 lf (eps[x] et'[x]-et[x] eps'[x])-2 eps[x] et'''[x];
  bd=ff''[x]/ff'[x] (eps[x] et'[x]-et[x] eps'[x])+2 eps[x] et''[x]-eps'[x] et'[x];
  mm={{0,1},{-nn^2/4,0}};
  y1=Cos[ff[x]/2]/Sqrt[ff'[x]];
  y2=Sin[ff[x]/2]/Sqrt[ff'[x]];
  checks=<|
    "trace_bilinear"->zero[Table[tr[jj[[i]].jj[[j]]]-etaInt[[i,j]]/2,{i,3},{j,3}]],
    "trace_trilinear"->zero[Table[tr[jj[[i]].jj[[j]].jj[[h]]]-eps3[i,j,h]/4,{i,3},{j,3},{h,3}]],
    "off_shell_transgression"->zero[trans],
    "potential_field_exact_relation"->zero[Table[Together[thcs[i,j]-thp[i,j]-dbvar[i,j]],{i,3},{j,3}]],
    "bulk_symplectic_current_relation"->zero[Table[Together[currentCS[i,j]-currentP[i,j]],{i,3},{j,3}]],
    "flatness_difference_torsion"->zero[Table[Together[curv[aa,daa,i,j]-curv[ab,dab,i,j]-2 tors[i,j]/ell],{i,3},{j,3}]],
    "flatness_sum_curvature"->zero[Table[Together[curv[aa,daa,i,j]+curv[ab,dab,i,j]-2 curv[w,dw,i,j]-2 comm[e[[i]],e[[j]]]/ell^2],{i,3},{j,3}]],
    "metric_trace_dictionary"->zero[metric-Transpose[emat].etaInt.emat],
    "metric_determinant"->zero[Det[metric]+Det[emat]^2],
    "DS_residual_gauge"->zero[dg-{{0,eps[x] ll'[x]+2 ll[x] eps'[x]-eps'''[x]/2},{0,0}}],
    "DS_charge_trace"->zero[tr[lam.{{0,dl},{0,0}}]-eps[x] dl],
    "KKS_pullback_density_total_derivative"->TrueQ[Simplify[wden-target-D[bd,x]]===0],
    "Hill_half_density_cos"->TrueQ[FullSimplify[D[y1,{x,2}]-lf y1,Assumptions->ff'[x]>0]===0],
    "Hill_half_density_sin"->TrueQ[FullSimplify[D[y2,{x,2}]-lf y2,Assumptions->ff'[x]>0]===0],
    "Hill_Wronskian"->TrueQ[FullSimplify[y1 D[y2,x]-D[y1,x] y2-1/2,Assumptions->ff'[x]>0]===0],
    "constant_Hill_matrix_square"->zero[mm.mm+nn^2 IdentityMatrix[2]/4],
    "constant_Hill_matrix_exponential"->zero[FullSimplify[MatrixExp[2 Pi mm]-
       Cos[Pi nn] IdentityMatrix[2]-(2/nn) Sin[Pi nn] mm,Assumptions->nn>0]],
    "constant_Hill_monodromy_integer"->zero[FullSimplify[MatrixExp[2 Pi mm]-(-1)^nn IdentityMatrix[2],
       Assumptions->Element[nn,Integers]&&nn>0]],
    "exceptional_stabilizer_modes"->zero[FullSimplify[Table[-nn^2 D[ev,x]/2-D[ev,{x,3}]/2,
       {ev,{1,Sin[nn x],Cos[nn x]}}]]]
  |>;
  <|"KernelVersion"->$Version,"Checks"->checks,"AllPassed"->And@@Values[checks],
    "Messages"->(ToString[#,InputForm]& /@ $MessageList),
    "Scope"->"Exact local algebra and projective-orbit identities; not a global filling, quotient or quantum-equivalence proof."|>
 ]
]
