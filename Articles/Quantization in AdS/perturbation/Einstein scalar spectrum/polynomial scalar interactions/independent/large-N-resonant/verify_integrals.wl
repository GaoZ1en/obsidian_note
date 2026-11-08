(* Independent Wolfram integration checks; no Sage vertex import. *)
Block[{$MessageList = {}},
 Module[{j,d,ii,pairs,vals,diag,hop,cases,general,k,del,a,n,lhs,rhs},
  j[p_,q_]:=JacobiP[Min[p,q],1,Abs[p-q],1-2 x];
  d[p_,q_]:=Sqrt[(Max[p,q]+1)/(Min[p,q]+1)];
  ii[{p_,q_},{r_,s_}]:=FullSimplify[d[p,q] d[r,s]
    Integrate[x^4 (1-x)^((Abs[p-q]+Abs[r-s])/2) j[p,q] j[r,s],{x,0,1}]];
  pairs={{{0,0},{2,2}},{{0,1},{2,1}},{{0,2},{2,0}},{{1,0},{1,2}},{{1,1},{1,1}}};
  vals=Table[{a,ii@@a},{a,pairs}];
  diag=Table[{{n,n},ii[{n,n},{n,n}],ii[{n,n},{n,n}]/4-(2+2 n)/120},{n,1,5}];
  hop=Table[{n,ii[{n+2,n+2},{n,n}]},{n,0,5}];
  cases={{3,2,1},{3,3,1},{4,3/2,2},{4,2,1},{4,2,2},{5,4/3,3},{5,5/2,2}};
  general=Table[
    {k,del,a}=cs;n=a*del;
    lhs=Integrate[x^(k*del-2) JacobiP[n,del-1,0,1-2*x],{x,0,1}];
    rhs=Pochhammer[1-(k-1)*del,n]/((k*del-1)*Pochhammer[k*del,n]);
    <|"case"->cs,"integral"->lhs,"matches"->TrueQ[FullSimplify[lhs-rhs]==0]|>,
    {cs,cases}];
  <|"I_units_1_over_8pi2"->vals,"diagonal_Q_units_1_over_8pi2"->diag,
    "radial_plus2_hopping_integrals"->hop,"one_to_five"->ii[{4,4},{0,0}],
    "collaborative_general_extension"->general,
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]]
