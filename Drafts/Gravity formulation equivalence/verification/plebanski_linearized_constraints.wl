(* A local flat-background, time-gauge diagnostic, NOT the nonlinear Dirac algebra.
   eta=(-+++), eps0123=+1; full antisymmetric-pair sums. kappa=8 Pi G4.
   Spatial unit cell; no boundary period is inferred from this calculation.
   p^{ai}=-pi^{a0i}, q^{ai}=-eps^{i}_{jk} pi^{ajk}/2,
   K_a^i=omega_a^{0i}, Gamma_a^i=-eps^{i}_{jk}omega_a^{jk}/2.
   Omega=delta Theta, i_XH Omega=-delta H, {F,G}=X_G F.
   Run in a fresh Wolfram kernel. Returns a report without overwriting evidence. *)
ClearAll["Global`*"];
Block[{$Messages = {}, $MessageList = {}},
 eta = {-1,1,1,1}; ep4[ii__Integer] := Signature[{ii}];
 ep3[ii__Integer] := Signature[{ii}];
 p = Array[pp,{3,3}]; q = Array[qq,{3,3}];
 gam = Array[gg,{3,3}]; dk = Array[dkv,{3,3}]; dg = Array[dgv,{3,3}];
 pi[a_,i_,j_] := Which[i==j,0,i==1,-p[[a,j-1]],j==1,p[[a,i-1]],
   True,-Sum[ep3[i-1,j-1,h] q[[a,h]],{h,3}]];
 da[a_,i_,j_] := Which[i==j,0,i==1,dk[[a,j-1]],j==1,-dk[[a,i-1]],
   True,-Sum[ep3[i-1,j-1,h] dg[[a,h]],{h,3}]];
 simplicity = Table[Expand[Sum[ep4[i,j,k,l] pi[a,i,j] pi[b,k,l],
   {i,4},{j,4},{k,4},{l,4}]],{a,3},{b,3}];
 theta = Expand[Sum[eta[[i]] eta[[j]] pi[a,i,j] da[a,i,j],{a,3},{i,4},{j,4}]/(2 kap)];
 tors[i_,a_,b_] := Sum[ep3[i,j,b] gam[[a,j]]-ep3[i,j,a] gam[[b,j]],{j,3}];
 torsDual = Table[Expand[Sum[ep3[c,a,b] tors[i,a,b],{a,3},{b,3}]/2],{i,3},{c,3}];
 torsMap = Table[Coefficient[f,x],{f,Flatten[torsDual]},{x,Flatten[gam]}];
 gauss = Table[Expand[Sum[ep3[i,j,a] gam[[a,j]],{a,3},{j,3}]],{i,3}];
 symBasis = Join[Table[Normal[SparseArray[{{i,i}->1},{3,3}]],{i,3}],
   Table[Normal[SparseArray[{pair->1/Sqrt[2],Reverse[pair]->1/Sqrt[2]},{3,3}]],{pair,Subsets[Range[3],{2}]}]];
 antiBasis = Table[Normal[SparseArray[{pair->1/Sqrt[2],Reverse[pair]->-1/Sqrt[2]},{3,3}]],{pair,Subsets[Range[3],{2}]}];
 inner[x_,y_] := Tr[Transpose[x].y];
 primary = inner[#,q]& /@ symBasis;
 secondary = inner[#,gam]& /@ symBasis;
 pb[f_,g_] := Expand[kap Sum[D[f,gam[[a,i]]] D[g,q[[a,i]]] - D[f,q[[a,i]]] D[g,gam[[a,i]]],{a,3},{i,3}]];
 constraints = Join[primary,secondary]; dirac = Table[pb[f,g],{f,constraints},{g,constraints}];
 (* Recover the homogeneous Gamma quadratic from the original EC wedge action. *)
 wc[i_,j_,m_] := If[i==1||j==1||m==1,0,-Sum[ep3[i-1,j-1,h] gam[[m-1,h]],{h,3}]];
 qEC = Expand[Sum[ep4[i,j,k,l] ep4[i,j,m,n] eta[[h]] wc[k,h,m] wc[h,l,n],
   {i,4},{j,4},{k,4},{l,4},{m,4},{n,4},{h,4}]/(4 kap)];
 hGamma = -qEC;
 preserved = Expand[pb[#,hGamma]]& /@ primary;
 expectedPreserved = inner[#,Transpose[gam]-Tr[gam] IdentityMatrix[3]]& /@ symBasis;
 symLinear = Table[Coefficient[Expand[expectedPreserved[[a]] /. Thread[Flatten[gam] -> Flatten[Sum[ss[b] symBasis[[b]],{b,6}]]]],ss[c]],{a,6},{c,6}];
 checks = <|
   "simplicity_full_sum_normalization" -> (Expand[simplicity-4(p.Transpose[q]+q.Transpose[p])] === ConstantArray[0,{3,3}]),
   "canonical_BF_potential_normalization" -> (Expand[theta-Sum[p[[a,i]] dk[[a,i]]+q[[a,i]] dg[[a,i]],{a,3},{i,3}]/kap]===0),
   "spatial_torsion_dual_identity" -> (Expand[torsDual-(Tr[gam] IdentityMatrix[3]-gam)]===ConstantArray[0,{3,3}]),
   "spatial_torsion_rank_nine" -> (MatrixRank[torsMap]===9),
   "boost_Gauss_annihilates_symmetric_Gamma" -> And@@Flatten[Table[Expand[gauss /. Thread[Flatten[gam]->Flatten[b]]]===ConstantArray[0,3],{b,symBasis}]],
   "boost_Gauss_detects_all_antisymmetric_Gamma" -> (MatrixRank[Transpose[Table[gauss /. Thread[Flatten[gam]->Flatten[b]],{b,antiBasis}]]]===3),
   "symmetric_basis_is_orthonormal" -> (Table[inner[a,b],{a,symBasis},{b,symBasis}]===IdentityMatrix[6]),
   "simplicity_compatibility_bracket" -> (Table[pb[f,g],{f,primary},{g,secondary}]===-kap IdentityMatrix[6]),
   "full_twelve_constraint_matrix" -> (dirac===ArrayFlatten[{{ConstantArray[0,{6,6}],-kap IdentityMatrix[6]},{kap IdentityMatrix[6],ConstantArray[0,{6,6}]}}]),
   "Dirac_determinant" -> (Factor[Det[dirac]]===kap^12),
   "original_wedge_Gamma_quadratic" -> (Expand[qEC-(Tr[gam.gam]-Tr[gam]^2)/(2 kap)]===0),
   "primary_preservation_gives_spatial_compatibility" -> (Expand[preserved-expectedPreserved]===ConstantArray[0,6]),
   "symmetric_secondary_map_invertible" -> (Det[symLinear]===-2)
 |>;
 <|"Scope"->"Linearized time gauge at Minkowski, p=Identity and q=0; homogeneous/spatial-zero-jet transverse simplicity test. Not full nonlinear constraint algebra, not a global phase-space classification.",
   "Checks"->checks,"AllPassed"->And@@Values[checks],
   "TorsionMapDeterminant"->Det[torsMap],
   "GammaLagrangian"->ToString[qEC,InputForm],
   "PrimaryPreservationMap"->symLinear,
   "DiracMatrix"->dirac,
   "DiracDeterminant"->Factor[Det[dirac]],
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]
