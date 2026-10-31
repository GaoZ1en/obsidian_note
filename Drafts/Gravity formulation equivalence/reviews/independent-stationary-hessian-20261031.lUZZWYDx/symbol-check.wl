(* Exact finite principal-symbol check; not a global spectral proof.
   Basis: {J1,J2,J3,P1,P2,P3}; [Ja,Jb]=eps_ab^c Jc,
   [Ja,Pb]=eps_ab^c Pc, [Pa,Pb]=-eps_ab^c Jc.
   At a normal frame e0=I and unit covector k=dx3.
   Physical local model: w=0, f=t e0.
*)
Module[{dir, report},
 dir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx";
 report = Block[{$Messages = {}, $MessageList = {}},
  Module[{eps, cross, adjJ, adjP, jp, z3, id3, id6, k, w, f, t,
    freeG, deltaG, leftGhost, geomT, exteriorSigns, csSym,
    parity, checks, principalData, powers, result},
   eps = Normal[LeviCivitaTensor[3]];
   cross[a_] := Table[eps[[a,b,c]], {c,3},{b,3}];
   z3 = ConstantArray[0,{3,3}]; id3=IdentityMatrix[3]; id6=IdentityMatrix[6];
   adjJ[a_] := ArrayFlatten[{{cross[a],z3},{z3,cross[a]}}];
   adjP[a_] := ArrayFlatten[{{z3,-cross[a]},{cross[a],z3}}];
   jp = adjP[3];
   k = {0,0,1};
   w = Array[ww,{3,3}]; f = Array[ff,{3,3}];
   geomT = ArrayFlatten[{{z3,w},{z3,f}}];
   (* Physical output order is (w^a_mu,f^a_mu), mu fastest in each Lie component. *)
   freeG = I KroneckerProduct[id6,Transpose[{k}]];
   deltaG = freeG.geomT;
   leftGhost = FullSimplify[ConjugateTranspose[freeG].deltaG];
   (* Coexact form basis at k=dx3: {1,dx1,dx2,dx1^dx2}; parities odd,even,even,odd. *)
   exteriorSigns = {-1,1,1,-1};
   csSym = -I t KroneckerProduct[IdentityMatrix[4],jp];
   parity = KroneckerProduct[DiagonalMatrix[exteriorSigns],id6];
   powers = Table[MatrixPower[csSym,n],{n,1,4}];
   checks = <|
    "grav_adP3_symmetric" -> TrueQ[Transpose[jp] == jp],
    "grav_adP3_rank4" -> TrueQ[MatrixRank[jp] == 4],
    "grav_adP3_spectrum" -> TrueQ[Sort[Eigenvalues[jp]] == {-1,-1,0,0,1,1}],
    "grav_adP3_square_trace4" -> TrueQ[Tr[jp.jp] == 4],
    "grav_adP3_cube_nonzero" -> TrueQ[MatrixPower[jp,3] != ConstantArray[0,{6,6}]],
    "grav_adP3_commutator" -> TrueQ[adjP[1].adjP[2]-adjP[2].adjP[1] == -adjJ[3]],
    "free_ghost_symbol_norm" -> TrueQ[ConjugateTranspose[freeG].freeG == id6],
    "geometric_left_ratio_symbol" -> TrueQ[leftGhost == geomT],
    "geometric_isotropic_model" -> TrueQ[(geomT /. {ww[_,_]->0,ff[a_,b_]:>t KroneckerDelta[a,b]}) == ArrayFlatten[{{z3,z3},{z3,t id3}}]],
    "cs_symbol_rank16_at_t1" -> TrueQ[MatrixRank[csSym /. t->1] == 16],
    "cs_symbol_all_early_powers_nonzero" -> And@@Table[TrueQ[(powers[[n]] /. t->1) != ConstantArray[0,{24,24}]],{n,1,3}],
    "cs_symbol_supertrace_cancels_1_through_4" -> And@@Table[TrueQ[Expand[Tr[parity.powers[[n]]]] == 0],{n,1,4}],
    "cs_symbol_absolute_square_trace16" -> TrueQ[Tr[ConjugateTranspose[csSym /. t->1].(csSym /. t->1)] == 16],
    "geometric_power_never_vanishes_1_through_8" -> And@@Table[TrueQ[MatrixPower[ArrayFlatten[{{z3,z3},{z3,id3}}],n] == ArrayFlatten[{{z3,z3},{z3,id3}}]],{n,1,8}]
   |>;
   principalData = <|
    "adP3" -> jp,
    "geometricGhostPrincipal" -> geomT,
    "isotropicGhostPrincipalSpectrum" -> Eigenvalues[ArrayFlatten[{{z3,z3},{z3,t id3}}]],
    "CS_coexact_symbol_supertraces_n1to4" -> Table[Expand[Tr[parity.powers[[n]]]],{n,1,4}],
    "CS_coexact_symbol_rank_at_t1" -> MatrixRank[csSym /. t->1],
    "IR_and_global_scope" -> "Finite algebra only. Schatten membership, noncompactness, stationary realization and sharp-cutoff smoothing require the analytic proof."
   |>;
   result = <|"Checks"->checks,"AllPassed"->And@@Values[checks],"PrincipalData"->principalData|>;
   <|"Result"->result,"Failed"->(result===$Failed || result===$Aborted),
     "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
  ]
 ];
 Export[FileNameJoin[{dir,"symbol-check-result.wxf"}],report,"WXF"];
 Export[FileNameJoin[{dir,"symbol-check-result.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
 {FileNameJoin[{dir,"symbol-check-result.txt"}],report["Result"]["AllPassed"],report["Failed"],report["Messages"]}
]
