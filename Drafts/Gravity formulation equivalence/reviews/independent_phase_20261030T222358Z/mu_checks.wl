(* Reproduction inputs for the three actual mu-family Wolfram calls. *)
(* Part 1: spectral asymptotics and finite shear. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{x,z,t,p,c,mu,r,v,fp,fm,asym,coefficient,etaOne,etaAll,a0,a2,etaResidue,mat,shear},
  fp=(Sqrt[1+(p+t^2)x^2]+t x)^(-z);
  fm=(Sqrt[1+(p+t^2)x^2]-t x)^(-z);
  asym=FullSimplify[Normal[Series[fp-fm,{x,0,3}]]];
  coefficient=FullSimplify[Coefficient[Expand[asym],x,3]+c Coefficient[Expand[asym],x,1]];
  etaOne=FullSimplify[Limit[coefficient/z,z->0]];
  etaAll=FullSimplify[v/(2 Pi^2) 2 ((etaOne/.{p->5,c->0})+2(etaOne/.{p->4,c->1}))];
  a0=6v/(4Pi)^(3/2); a2=-18v/(4Pi)^(3/2);
  etaResidue=FullSimplify[-4t a2/Sqrt[Pi]+4t^3 a0/(3Sqrt[Pi])];
  mat={{0,Sqrt[r]},{Sqrt[r],mu}}; shear={{1,mu/(2Sqrt[r])},{0,1}};
  Print[<|"eta_difference_large_lambda"->asym,"eta_pole_coefficient"->Factor[coefficient],
    "eta_per_channel_without_density"->etaOne,"eta_two_vectors"->etaAll,
    "eta_heat_residue_agrees"->FullSimplify[etaAll==etaResidue],
    "eta_in_mu"->FullSimplify[etaAll/.t->mu/2],
    "logdet_phase_defect"->FullSimplify[I Pi etaAll/2/.t->mu/2],
    "logZ_phase_defect"->FullSimplify[-I Pi etaAll/4/.t->mu/2],
    "pair_product_r"->FullSimplify[(Sqrt[r+t^2]+t)(Sqrt[r+t^2]-t),Assumptions->{r>0,Element[t,Reals]}],
    "pair_sum_has_no_x3"->(FullSimplify[Coefficient[Normal[Series[fp+fm,{x,0,3}]],x,3]]===0),
    "multiplicative_anomaly_residue_zero"->(FullSimplify[Coefficient[Normal[Series[
      Log[(Sqrt[1+(p+t^2)x^2]+t x)/(Sqrt[1+(p+t^2)x^2]-t x)]^2,{x,0,3}]],x,3]]===0),
    "shear_congruence"->FullSimplify[Transpose[shear].{{0,Sqrt[r]},{Sqrt[r],0}}.shear==mat,Assumptions->r>0],
    "shear_determinant"->Det[shear],"Messages"->(ToString[#,InputForm]&/@$MessageList)|>]
 ]]
(* Part 2: actual augmented differential symbol, independent heat variation. *)
Block[{$Messages={},$MessageList={}},
 Module[{ind,z,dj,p,aj,traces,mu,v,a2ins,derivative,eta},
  ind=Flatten[Table[{i,a},{i,3},{a,3}],1]; z[n_,m_]:=ConstantArray[0,{n,m}];
  dj[h_]:=ArrayFlatten[{{Table[KroneckerDelta[ind[[r,1]],h] KroneckerDelta[ind[[r,2]],a],{r,9},{a,3}],z[9,3]},
    {z[9,3],Table[KroneckerDelta[ind[[r,1]],h] KroneckerDelta[ind[[r,2]],a],{r,9},{a,3}]}}];
  p=DiagonalMatrix[Join[ConstantArray[0,18],ConstantArray[1,6]]];
  aj[h_]:=ArrayFlatten[{{z[18,18],dj[h]},{-Transpose[dj[h]],z[6,6]}}];
  traces=Table[Tr[p.aj[h].aj[h]],{h,3}];
  a2ins=FullSimplify[v/(4Pi)^(3/2) (-6-12-mu^2 (6+Total[traces]/4))];
  derivative=FullSimplify[-2a2ins/Sqrt[Pi]];
  eta=Integrate[derivative,{mu,0,mu}];
  Print[<|"Tr_P_Aj_squared"->traces,"sum_Tr_P_Aj_squared"->Total[traces],
    "a2_with_multiplier_insertion"->a2ins,"eta_derivative"->derivative,
    "eta_from_local_variation"->eta,
    "matches_residue_method"->FullSimplify[eta==v mu(36+mu^2)/(8Pi^2)],
    "Messages"->(ToString[#,InputForm]&/@$MessageList)|>]
 ]]
(* Part 3: explicit spectral counting asymptotics, exact and 40-digit checks. *)
Block[{$Messages={},$MessageList={}},
 Module[{l,t,p,c,nfun,ndiff,nall,series,rows,expected},
  nfun[y_]:=((y-p)^(3/2)/3+c Sqrt[y-p])/(2Pi^2);
  ndiff=nfun[l^2-2t l]-nfun[l^2+2t l];
  series=Assuming[{Element[{t,p,c},Reals],l>0},FullSimplify[Normal[Series[ndiff,{l,Infinity,0}]]]];
  nall=2((ndiff/.{p->5,c->0})+2(ndiff/.{p->4,c->1}));
  expected=(9t+t^3)/Pi^2;
  rows=Table[{ll,N[(nall+6t l^2/Pi^2)/.{l->ll,t->1/2},40],N[expected/.t->1/2,40]},
    {ll,{10,20,50,100,200,500}}];
  Print[<|"single_channel_eta_count_asymptotic"->series,
    "two_vector_eta_finite_part"->FullSimplify[Limit[nall+6t l^2/Pi^2,l->Infinity,Assumptions->Element[t,Reals]]],
    "numerical_count_check_mu1_V1"->rows,"Messages"->(ToString[#,InputForm]&/@$MessageList)|>]
 ]]
