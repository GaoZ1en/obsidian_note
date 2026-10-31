(* Independent real-Barbero/Holst regional checks. No parent report imported.
   Executed by xact_run, core profile; explicit finite exterior algebra.
   All indices use 0,1,2,3; FULL antisymmetric-pair sums; eta=-+++.
   kappa=1 in homogeneous identity checks; beta,gamma retained where needed. *)
ClearAll[rbBits, rbWedge, rbBasis, rbInterior, rbHodge, rbPullWall,
  rbPullCut, rbD, rbZero, rbRecord, rbEps, rbEps3];
(* Export-only rerun plumbing added after the successful clean run.
   Its exact executed source is preserved separately as checks-executed-clean.wl.
   Every rerun receives a new private 0700 directory and snapshots its own source. *)
rbSource = $InputFileName;
rbBase = DirectoryName[rbSource];
rbTmp = RunProcess[{"mktemp", "-d", FileNameJoin[{rbBase, "rerun-XXXXXX"}]}];
If[rbTmp["ExitCode"] =!= 0, Print[rbTmp]; Abort[]];
rbOut = StringTrim[rbTmp["StandardOutput"]];
CopyFile[rbSource, FileNameJoin[{rbOut, "executed-source.wl"}], OverwriteTarget -> False];
rbEta = {-1, 1, 1, 1};
rbCoords = {xx0, xx1, xx2, xx3};
rbBits[m_Integer] := Select[Range[0, 3], BitGet[m, #] == 1 &];
rbEps[i_, j_, k_, l_] := Signature[{i, j, k, l}];
rbEps3[i_, j_, k_] := Signature[{i, j, k}];
rbMul = Flatten[Table[If[BitAnd[a, b] == 0,
  {{a + 1, b + 1, BitOr[a, b] + 1, Signature[Join[rbBits[a], rbBits[b]]]}},
  {}], {a, 0, 15}, {b, 0, 15}], 2];
rbWedge[x_List, y_List] := Module[{z = ConstantArray[0, 16]},
  Do[z[[p[[3]]]] += p[[4]] x[[p[[1]]]] y[[p[[2]]]], {p, rbMul}]; Expand[z]];
rbBasis[i_Integer] := UnitVector[16, 2^i + 1];
rbInterior[i_Integer, f_List] := Module[{z = ConstantArray[0, 16], b, p},
  Do[b = rbBits[m]; p = FirstPosition[b, i];
    If[!MissingQ[p], z[[BitXor[m, 2^i] + 1]] += (-1)^(First[p] - 1) f[[m + 1]]],
    {m, 0, 15}]; z];
rbHodge[f_List] := Module[{z = ConstantArray[0, 16], b, c},
  Do[b = rbBits[m]; c = Complement[Range[0, 3], b];
    z[[BitXor[15, m] + 1]] += Times @@ (rbEta[[# + 1]] & /@ b)
      Signature[Join[b, c]] f[[m + 1]], {m, 0, 15}]; Expand[z]];
rbPullWall[f_List] := Table[If[BitGet[m, 3] == 1, 0, f[[m + 1]]], {m, 0, 15}];
rbPullCut[f_List] := Table[If[BitGet[m, 0] == 1, 0, f[[m + 1]]], {m, 0, 15}];
rbD[f_List] := Sum[rbWedge[rbBasis[i], D[f, rbCoords[[i + 1]]]], {i, 0, 3}];
rbZero[x_] := And @@ (TrueQ[# == 0] & /@ Flatten[{FullSimplify[x]}]);
rbChecks = <||>; rbDetails = <||>;
rbRecord[name_String, residual_] := Module[{r = FullSimplify[residual]},
  AssociateTo[rbChecks, name -> <|"pass" -> rbZero[r], "residual" -> r|>]];
rbMessages = {};
rbBody = Block[{$MessageList = {}},
  rbVol = rbWedge[rbWedge[rbBasis[0], rbBasis[1]], rbWedge[rbBasis[2], rbBasis[3]]];
  rbSpatialE = Table[Sum[rbEps3[i, j, k] rbWedge[rbBasis[j], rbBasis[k]]/2,
    {j, 1, 3}, {k, 1, 3}], {i, 1, 3}];
  rbRecord["hodge_star_squared_two_forms",
    Table[rbHodge[rbHodge[UnitVector[16, m + 1]]]+UnitVector[16, m + 1],
      {m, Select[Range[0, 15], Length[rbBits[#]] == 2 &]}]];

  (* 1: derive raw time-gauge bulk coefficients by full pair contraction. *)
  rbDW[i_, j_] := If[i == j, ConstantArray[0,16],
    If[i == 0, Sum[kk[j,a] rbBasis[a],{a,1,3}],
      If[j == 0, -rbDW[0,i],
        -Sum[rbEps3[i,j,k] gg[k,a] rbBasis[a],{k,1,3},{a,1,3}]]]];
  rbCutE[0] = ConstantArray[0,16]; rbCutE[i_Integer /; i>0] := rbBasis[i];
  rbThetaEC = Sum[rbEps[i,j,k,l] rbWedge[rbWedge[rbCutE[i],rbCutE[j]],rbDW[k,l]]/4,
    {i,0,3},{j,0,3},{k,0,3},{l,0,3}];
  rbThetaH = Sum[rbEta[[i+1]] rbEta[[j+1]]
    rbWedge[rbWedge[rbCutE[i],rbCutE[j]],rbDW[i,j]]/2,{i,0,3},{j,0,3}];
  rbRecord["full_pair_EC_cut_coefficient",rbThetaEC[[15]]-Sum[kk[i,i],{i,1,3}]];
  rbRecord["full_pair_Holst_cut_coefficient",rbThetaH[[15]]+Sum[gg[i,i],{i,1,3}]];
  AssociateTo[rbDetails,"raw_bulk_coefficients" -> {rbThetaEC[[15]],rbThetaH[[15]]}];

  (* 2: solve all nine linearized spatial compatibility equations at an arbitrary jet. *)
  rbDDE[i_] := Sum[jet[i,b,a] rbWedge[rbBasis[a],rbBasis[b]],{a,1,3},{b,1,3}];
  rbDeltaGamma[i_] := Sum[dg[i,a] rbBasis[a],{a,1,3}];
  rbLinT = Table[rbDDE[i]+Sum[rbEps3[i,j,k] rbWedge[rbDeltaGamma[j],rbBasis[k]],
      {j,1,3},{k,1,3}],{i,1,3}];
  rbGvars=Flatten[Table[dg[i,a],{i,1,3},{a,1,3}]];
  rbEq=DeleteCases[Flatten[rbLinT],0];
  rbSol=First[Solve[Thread[rbEq==0],rbGvars]];
  rbCompatRHS=-Sum[rbWedge[rbBasis[i],rbDDE[i]],{i,1,3}];
  rbCompatLHS=2 Sum[rbWedge[rbSpatialE[[i]],rbDeltaGamma[i]],{i,1,3}];
  rbRecord["compatibility_d_e_delta_e_equals_2E_deltaGamma",(rbCompatRHS-rbCompatLHS)/.rbSol];
  AssociateTo[rbDetails,{"compatibility_rank" -> MatrixRank[Table[Coefficient[rbEq[[r]],rbGvars[[c]]],
    {r,Length[rbEq]},{c,Length[rbGvars]}]],"compatibility_solution" -> rbSol}];

  (* 3: real Holst constitutive map and full-rank tetrad-to-torsion map. *)
  rbPairs=Subsets[Range[0,3],{2}];
  rbPairBasis[p_,i_,j_]:=If[{i,j}==p,1,If[{j,i}==p,-1,0]];
  rbStar=Table[Sum[rbEta[[ij[[1]]+1]] rbEta[[ij[[2]]+1]] rbEps[ij[[1]],ij[[2]],k,l]
    rbPairBasis[kl,k,l]/2,{k,0,3},{l,0,3}],{ij,rbPairs},{kl,rbPairs}];
  rbRecord["Lorentz_bivector_star_squared",rbStar.rbStar+IdentityMatrix[6]];
  rbRecord["real_Holst_map_determinant",Det[rbStar+IdentityMatrix[6]/beta]-(1+1/beta^2)^3];
  rbRecord["real_Holst_map_inverse",(rbStar+IdentityMatrix[6]/beta).
    (IdentityMatrix[6]/beta-rbStar)-(1+1/beta^2)IdentityMatrix[6]];
  rbT[i_] := Sum[tt[i,p[[1]],p[[2]]] rbWedge[rbBasis[p[[1]]],rbBasis[p[[2]]]],{p,rbPairs}];
  rbTvars=Flatten[Table[tt[i,p[[1]],p[[2]]],{i,0,3},{p,rbPairs}]];
  rbTorMap=Flatten[Table[rbWedge[rbT[p[[1]]],rbBasis[p[[2]]]]-
    rbWedge[rbBasis[p[[1]]],rbT[p[[2]]]],{p,rbPairs}]];
  rbTorRank=MatrixRank[Table[Coefficient[rbTorMap[[r]],rbTvars[[c]]],
    {r,Length[rbTorMap]},{c,Length[rbTvars]}]];
  rbRecord["nondegenerate_coframe_torsion_map_rank",rbTorRank-24];
  AssociateTo[rbDetails,{"Holst_map_determinant" -> Factor[Det[rbStar+IdentityMatrix[6]/beta]],
    "torsion_map_rank" -> rbTorRank}];

  (* 4: off-shell Holst wall identity, with unconstrained torsion and variation jets. *)
  rbDE[i_] := Sum[ve[i,a] rbBasis[a],{a,0,3}];
  rbDDE4[i_] := Sum[vde[i,p[[1]],p[[2]]] rbWedge[rbBasis[p[[1]]],rbBasis[p[[2]]]],{p,rbPairs}];
  rbDW4[i_,j_] := If[i==j,ConstantArray[0,16],If[i<j,Sum[w[i,j,a]rbBasis[a],{a,0,3}],-rbDW4[j,i]]];
  rbDT[i_] := rbDDE4[i]+Sum[rbEta[[j+1]]rbWedge[rbDW4[i,j],rbBasis[j]],{j,0,3}];
  rbBder=Sum[rbEta[[i+1]](rbWedge[rbT[i],rbDE[i]]-rbWedge[rbBasis[i],rbDDE4[i]]),{i,0,3}];
  rbHthetaNum=Sum[rbEta[[i+1]]rbEta[[j+1]]
    rbWedge[rbWedge[rbBasis[i],rbBasis[j]],rbDW4[i,j]],{i,0,3},{j,0,3}];
  rbHwallVar=Sum[rbEta[[i+1]](rbWedge[rbDE[i],rbT[i]]+rbWedge[rbBasis[i],rbDT[i]]),{i,0,3}];
  rbRecord["off_shell_Holst_wall_identity",rbHthetaNum+rbHwallVar-
    2 Sum[rbEta[[i+1]]rbWedge[rbDE[i],rbT[i]],{i,0,3}]+rbBder];

  (* 5: EC wall variation on T|wall=0, arbitrary Lorentz frame variation. *)
  rbWallE[i_]:=rbPullWall[rbBasis[i]];
  rbLam[i_,j_]:=If[i==j,0,If[i<j,lam[i,j],-lam[j,i]]];
  rbSymK[i_,j_]:=If[i<=j,ext[i,j],ext[j,i]];
  rbWallDE[i_]:=Sum[rbEta[[i+1]]rbLam[i,j]rbWallE[j],{j,0,3}];
  rbN={0,0,0,1};
  rbDeltaN=Table[rbEta[[i+1]]rbLam[i,3],{i,0,3}];
  rbDN[i_]:=If[i==3,ConstantArray[0,16],Sum[rbEta[[i+1]]rbSymK[i,a]rbWallE[a],{a,0,2}]];
  rbECWallR=Sum[rbEps[i,j,k,l](
    rbWedge[rbWedge[rbWallE[i],rbWallE[j]],rbPullWall[rbDW4[k,l]]]/2+
    2 rbN[[k+1]]rbWedge[rbWedge[rbWallDE[i],rbWallE[j]],rbDN[l]]+
    rbDeltaN[[k+1]]rbWedge[rbWedge[rbWallE[i],rbWallE[j]],rbDN[l]]+
    rbN[[k+1]]Sum[rbEta[[m+1]]rbN[[m+1]]rbWedge[rbWedge[rbWallE[i],rbWallE[j]],
      rbPullWall[rbDW4[l,m]]],{m,0,3}]-
    rbDeltaN[[l+1]]rbWedge[rbWedge[rbWallE[i],rbWallE[j]],rbDN[k]]),
    {i,0,3},{j,0,3},{k,0,3},{l,0,3}];
  rbRecord["EC_wall_theta_plus_deltaell_minus_dC_fixed_q",rbECWallR];

  (* 6: independently derive metric/EC bulk and wall relative representatives. *)
  rbBB[i_,j_]:=bb[i,j]+Sum[bbd[i,j,a]rbCoords[[a+1]],{a,0,3}];
  rbSS[i_,j_]:=(rbBB[i,j]+rbBB[j,i])/2;
  rbAA[i_,j_]:=(rbBB[i,j]-rbBB[j,i])/2;
  rbVarE[i_]:=Sum[rbEta[[i+1]]rbBB[i,j]rbBasis[j],{j,0,3}];
  rbAlpha=rbHodge[Sum[rbEta[[i+1]]rbWedge[rbBasis[i],rbVarE[i]],{i,0,3}]]/2;
  rbDWLC[i_,j_]:=Sum[rbEta[[i+1]]rbEta[[j+1]](
    D[rbSS[i,a],rbCoords[[j+1]]]-D[rbSS[j,a],rbCoords[[i+1]]]-
    D[rbAA[i,j],rbCoords[[a+1]]])rbBasis[a],{a,0,3}];
  rbThetaLC=Sum[rbEps[i,j,k,l]rbWedge[rbWedge[rbBasis[i],rbBasis[j]],rbDWLC[k,l]]/4,
    {i,0,3},{j,0,3},{k,0,3},{l,0,3}];
  rbMetricV[mu_]:=rbEta[[mu+1]]Sum[rbEta[[nu+1]]D[rbSS[mu,nu],rbCoords[[nu+1]]],{nu,0,3}]-
    rbEta[[mu+1]]D[Sum[rbEta[[nu+1]]rbSS[nu,nu],{nu,0,3}],rbCoords[[mu+1]]];
  rbThetaMetric=Sum[rbMetricV[mu]rbInterior[mu,rbVol],{mu,0,3}];
  rbRecord["metric_bulk_theta_equals_EC_plus_dalpha",rbThetaMetric-rbThetaLC-rbD[rbAlpha]];
  rbDeltaNMetric=Table[If[i==3,0,-rbEta[[i+1]]rbBB[3,i]],{i,0,3}];
  rbCECMetric=Sum[rbEps[i,j,k,l]rbN[[k+1]]rbDeltaNMetric[[l+1]]
    rbWedge[rbWallE[i],rbWallE[j]]/2,{i,0,3},{j,0,3},{k,0,3},{l,0,3}];
  rbMetricC=-Sum[rbEta[[i+1]](rbBB[i,3]+rbBB[3,i])rbInterior[i,rbInterior[3,rbVol]],{i,0,2}]/2;
  rbRecord["metric_wall_C_equals_EC_C_plus_alpha",rbMetricC-rbCECMetric-rbPullWall[rbAlpha]];

  (* 7: the general-tilt EC corner, with arbitrary transverse normal rotation. *)
  rbTiltN={Sinh[chi],Cosh[chi],0,0};
  rbTiltDN={Cosh[chi]dchi,Sinh[chi]dchi,Cosh[chi]ds2,Cosh[chi]ds3};
  rbCornerE[i_]:=If[MemberQ[{0,1},i],ConstantArray[0,16],rbBasis[i]];
  rbTiltC=Sum[rbEps[i,j,k,l]rbWedge[rbCornerE[i],rbCornerE[j]]rbTiltN[[k+1]]rbTiltDN[[l+1]]/2,
    {i,0,3},{j,0,3},{k,0,3},{l,0,3}];
  rbRecord["time_gauge_general_tilt_C_EC",rbTiltC+dchi rbWedge[rbBasis[2],rbBasis[3]]];
  AssociateTo[rbDetails,"tilt_corner_coefficient"->FullSimplify[rbTiltC[[13]]]];

  (* 8: actual flat-cylinder SO(3) frame orbit; compute raw bulk potential, not merely the proposed boundary answer. *)
  rbRy[a_]:={{Cos[a],0,Sin[a]},{0,1,0},{-Sin[a],0,Cos[a]}};
  rbRz[a_]:={{Cos[a],-Sin[a],0},{Sin[a],Cos[a],0},{0,0,1}};
  rbR=rbRy[s x/len].rbRz[t x/len];
  rbOmegaX=FullSimplify[-D[rbR,x].Transpose[rbR]];
  rbGammaX=Table[FullSimplify[-Sum[rbEps3[i,j,k]rbOmegaX[[j,k]]/2,{j,1,3},{k,1,3}]],{i,1,3}];
  rbThetaS=FullSimplify[Sum[rbR[[i,1]]D[rbGammaX[[i]],s],{i,1,3}]];
  rbThetaT=FullSimplify[Sum[rbR[[i,1]]D[rbGammaX[[i]],t],{i,1,3}]];
  rbRawOmega=FullSimplify[Sum[D[rbR[[i,1]],s]D[rbGammaX[[i]],t]-
    D[rbR[[i,1]],t]D[rbGammaX[[i]],s],{i,1,3}]];
  rbRecord["raw_example_density_theta_s",rbThetaS-D[-x Sin[t x/len]/len,x]];
  rbRecord["raw_example_density_theta_t",rbThetaT];
  rbRecord["raw_example_density_omega_st",rbRawOmega-D[x^2 Cos[t x/len]/len^2,x]];
  rbBodyS=FullSimplify[Transpose[rbR].D[rbR,s]];
  rbBodyT=FullSimplify[Transpose[rbR].D[rbR,t]];
  rbCornerS=FullSimplify[rbBodyS[[2,3]]];
  rbCornerT=FullSimplify[rbBodyT[[2,3]]];
  rbRecord["raw_example_prescribed_corner_cancels_theta_s",
    (-Sin[t])-(rbCornerS/.x->len)+(rbCornerS/.x->0)];
  rbRecord["raw_example_prescribed_corner_cancels_theta_t",
    0-(rbCornerT/.x->len)+(rbCornerT/.x->0)];
  AssociateTo[rbDetails,{"example_rotation_matrix"->rbR,"example_Gamma_x"->rbGammaX,
    "example_raw_theta_density"->{rbThetaS,rbThetaT},"example_raw_omega_density"->rbRawOmega,
    "example_integrated_theta_coefficients_without_area_over_kappa_gamma"->{-Sin[t],0},
    "example_integrated_omega_without_area_over_kappa_gamma"->Cos[t],
    "example_completed_theta_coefficients"->{0,0},"example_completed_omega"->0}];

  (* 9: triad inversion on a fixed orientation sector, entirely polynomial checks. *)
  rbTriad=Array[tri,{3,3}]; rbCofactor[m_]:=Transpose[Map[Expand,Inverse[m] Det[m],{2}]];
  rbDens=Map[Cancel,rbCofactor[rbTriad],{2}];
  rbRecord["densitized_triad_determinant",Det[rbDens]-Det[rbTriad]^2];
  rbRecord["densitized_triad_inverse_on_positive_orientation",
    Map[Cancel,rbCofactor[rbDens]-Det[rbTriad]rbTriad,{2}]];
  (* 10: normalized ADM bridge at an arbitrary orthonormal-triad point; K_ab symmetric. *)
  rbKsym=Table[If[a<=b,admK[a,b],admK[b,a]],{a,1,3},{b,1,3}];
  rbDEmat=Array[admDe,{3,3}]; rbDKmat=Array[admDk,{3,3}];
  rbDH=rbDEmat+Transpose[rbDEmat];
  rbPi=(rbKsym-Tr[rbKsym]IdentityMatrix[3])/2;
  rbDeltaCap=Tr[rbDKmat]-Tr[rbKsym.rbDEmat]+Tr[rbKsym]Tr[rbDEmat];
  rbRecord["ADM_bridge_thetaK_equals_pi_deltah_plus_delta_cap",
    Tr[rbDKmat]-Tr[Transpose[rbPi].rbDH]-rbDeltaCap];
  AssociateTo[rbDetails,"ADM_cap_sign"->"ThetaK = pi^{ab} delta h_ab + delta(sqrt(h) trK / kappa)"];
  rbMessages=ToString[#,InputForm]& /@ $MessageList;
  True
];
rbReport=<|"kernel"->System`$Version,"profile"->"xact/core; explicit finite exterior algebra",
  "source"->$InputFileName,"normalization"->"kappa=1 in homogeneous checks; eta=-+++; epsilon_0123=+1; full pair sums",
  "checks"->rbChecks,"details"->rbDetails,"messages"->rbMessages,
  "all_passed"->And@@(TrueQ[#["pass"]]& /@ Values[rbChecks]),"check_count"->Length[rbChecks]|>;
Export[FileNameJoin[{rbOut,"results-clean.wxf"}],rbReport,"WXF"];
Export[FileNameJoin[{rbOut,"diagnostics-clean.txt"}],ToString[rbReport,InputForm,PageWidth->110],"Text"];
<|"all_passed"->rbReport["all_passed"],"check_count"->rbReport["check_count"],
  "messages"->rbMessages,"checks"->Map[#["pass"]&,rbChecks],
  "diagnostics"->FileNameJoin[{rbOut,"diagnostics-clean.txt"}],"exact_results"->FileNameJoin[{rbOut,"results-clean.wxf"}]|>
