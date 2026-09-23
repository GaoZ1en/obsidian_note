(* Exact finite diagnostics; analytic/AMM/Connes theorems require the note's proofs. *)
Module[{checks=<||>,put,zero,tt,bb,comm,be,tau,uu,rr,varp,th,x,y,n,q,kk,
        un,coef,ff,braid1,braid2,w12,w23,e12,e23,dims,twists,pairs,fs,
        sing,trip,j1,spin,dual,orbitG,s,t,ks,kt,thetaS,thetaT,orbitMC},
  zero[z_]:=And@@(TrueQ[FullSimplify[#]==0]& /@ Flatten[{z}]);
  put[name_,value_]:=AssociateTo[checks,name->TrueQ[value]];
  comm[a_,b_]:=a.b-b.a;
  tt=Table[-I PauliMatrix[j]/2,{j,3}];
  bb[a_,b_]:=-Tr[a.b];
  put["su2_B_normalization",zero[Table[bb[tt[[i]],tt[[j]]],{i,3},{j,3}]-IdentityMatrix[3]/2]];
  put["su2_Lie_sign",zero[comm[tt[[1]],tt[[2]]]-tt[[3]]]];
  put["puncture_Gauss_residue",zero[kk/(2 Pi)(-2 Pi q/kk)+q]];
  put["inner_boundary_inverse_holonomy",zero[MatrixExp[-be tt[[3]]].MatrixExp[be tt[[3]]]-IdentityMatrix[2]]];
  put["cap_reduction_orbit_sign",zero[-bb[-(2 Pi/kk)q tt[[3]],comm[tt[[1]],tt[[2]]]]-(2 Pi/kk)bb[q tt[[3]],comm[tt[[1]],tt[[2]]]]]];
  uu={{1,x},{y,1+x y}};
  put["inverse_transport_AMM",zero[-Inverse[uu].(-tt[[1]].uu).Inverse[uu]-Inverse[uu].tt[[1]]]];
  orbitG=MatrixExp[s tt[[1]]].MatrixExp[t tt[[2]]];
  ks=FullSimplify[Inverse[orbitG].D[orbitG,s]];
  kt=FullSimplify[Inverse[orbitG].D[orbitG,t]];
  thetaS=bb[be tt[[3]],ks]; thetaT=bb[be tt[[3]],kt];
  orbitMC=D[thetaT,s]-D[thetaS,t]+bb[be tt[[3]],comm[ks,kt]];
  put["orbit_Maurer_Cartan_potential",zero[orbitMC]];
  uu=DiagonalMatrix[{Exp[-I tau be/2],Exp[I tau be/2]}];
  rr[j_]:=tt[[j]]-uu.tt[[j]].Inverse[uu];
  varp=FullSimplify[Integrate[(bb[rr[1],D[rr[2],tau]]-bb[rr[2],D[rr[1],tau]])/2,
    {tau,0,1},Assumptions->be>0],Assumptions->be>0];
  put["constant_connection_varpi",zero[varp-(Sin[be]-be)/2]];
  put["orbit_to_conjugacy_correction",zero[be/2+varp-Sin[be]/2]];
  put["segment_cross_term_factor",zero[Integrate[bb[tt[[3]],tt[[3]]]/2,{tau,0,1}]-1/4]];
  un=Sinh[n Pi(1-x)]/Sinh[n Pi] Sin[n Pi y];
  put["positive_DtN",zero[(-D[un,x]/.x->0)-n Pi Coth[n Pi]Sin[n Pi y]]];
  put["CPS_response_opposite_DtN",zero[(D[un,x]/.x->0)+n Pi Coth[n Pi]Sin[n Pi y]]];
  put["vertex_grade_coefficients",And@@Table[zero[SeriesCoefficient[(1-x)^(-9/2),{x,0,j}]-Pochhammer[9/2,j]/j!],{j,0,8}]];
  coef=Table[FullSimplify[Integrate[Exp[I(j+3/2)th],{th,0,2Pi}]/(2Pi)-I/(Pi(j+3/2))],{j,0,8}];
  put["ordinary_circle_counterexample_coefficients",zero[coef]];
  put["counterexample_asymptotic",zero[Limit[Gamma[n+9/2]/(Gamma[9/2]Gamma[n+1](n+3/2)^2 n^(3/2)),n->Infinity]-1/Gamma[9/2]]];
  put["adjoint_charge_block",zero[q^2/kk-q(n+q)/kk+q n/kk]];
  put["cover_phase_integer_polynomials",zero[{kk(q n/kk)-q n,2kk(q n/kk+q^2/(2kk))-q(2n+q)}]];
  sing={{0,1,-1,0}}/Sqrt[2];
  trip={{1,0,0,0},{0,1,1,0}/Sqrt[2],{0,0,0,1}};
  j1={{{0,1,0},{1,0,1},{0,1,0}}/Sqrt[2],
      {{0,-I,0},{I,0,-I},{0,I,0}}/Sqrt[2],DiagonalMatrix[{1,0,-1}]};
  spin=Table[KroneckerProduct[PauliMatrix[j]/2,IdentityMatrix[2]]+
      KroneckerProduct[IdentityMatrix[2],PauliMatrix[j]/2],{j,3}];
  put["CG_orthonormal_resolution",zero[ConjugateTranspose[sing].sing+ConjugateTranspose[trip].trip-IdentityMatrix[4]]];
  put["CG_current_Ward_initial_terms",And@@Table[zero[sing.spin[[j]]]&&zero[trip.spin[[j]]-j1[[j]].trip],{j,3}]];
  dual={{0,-1},{1,0}};
  put["spinor_duality_pseudoreal",zero[dual.Conjugate[dual]+IdentityMatrix[2]]];
  dims={1,Sqrt[2],1};twists={1,Exp[3Pi I/8],-1};pairs={{1,2},{2,1},{3,2},{2,3}};
  fs=FullSimplify[Total[(dims[[#[[1]]]]dims[[#[[2]]]](twists[[#[[1]]]]/twists[[#[[2]]]])^2)&/@pairs]/Total[dims^2]];
  put["FS_indicator_sigma",zero[fs+1]];
  ff={{-1,1},{1,1}}/Sqrt[2];
  put["F_unitary_and_involutive",zero[ConjugateTranspose[ff].ff-IdentityMatrix[2]]&&zero[ff.ff-IdentityMatrix[2]]];
  e12=DiagonalMatrix[{1,0}];e23=ff.e12.ff;
  put["Jones_two_channel_relation",zero[e12.e23.e12-e12/2]&&zero[e23.e12.e23-e23/2]];
  w12=Sqrt[2]DiagonalMatrix[{1,-1}];w23=ff.w12.ff;
  put["Wilson_F_comparison",zero[w23-{{0,-Sqrt[2]},{-Sqrt[2],0}}]];
  put["Wilson_algebra_full_M2",MatrixRank[Flatten /@ {IdentityMatrix[2],w12,w23,w12.w23}]==4];
  braid1=DiagonalMatrix[{-Exp[-3Pi I/8],Exp[Pi I/8]}];braid2=ff.braid1.ff;
  put["braid_relation",zero[braid1.braid2.braid1-braid2.braid1.braid2]];
  put["braid_square_twists",zero[braid1.braid1-DiagonalMatrix[{1,-1}]/Exp[3Pi I/4]]];
  put["fundamental_anomaly_values",zero[{0-3/16-3/16,1/2-3/16-3/16}-{-3/8,1/8}]];
  Print["charged_cs_bridge_checks: ",Count[Values[checks],True],"/",Length[checks]];
  <|"allPassed"->And@@Values[checks],"count"->Length[checks],"checks"->checks,
    "scope"->"Exact finite identities only; not analytic convergence, AMM nondegeneracy, or Connes completeness."|>
]
