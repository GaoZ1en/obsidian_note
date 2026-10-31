(* Euclidean geometric-CS Gaussian bridge. Fresh xAct components kernel.
   Exact differential-operator symbols and finite algebra, not a domain theorem.
   Exports to a fresh private directory; never overwrites earlier evidence. *)
report = Block[{$DefInfoQ=False, $Messages={}, $MessageList={}},
 Module[{eps3, pauli, gen, ef, wf, de, dw, aa, ab, da, db, cs,
   pal, boundary, trans, checks, coords, zz, mat, inv, christ, mom,
   dp, cov1, cov2, lap1, lap2, reg1, reg2, bmap, curl, strain, gaugeF,
   hh, vv, bb, metric, cd, ricci, frame, spin, avec, abarvec, fa, fb,
   torsion, rotation, gradv, rhs, hmat, qmat, deriv, shear, full,
   heat, count, tt, ss, pp, weights, logSeries, results},
  eps3[i_,j_,k_] := Signature[{i,j,k}];
  pauli={{{0,1},{1,0}},{{0,-I},{I,0}},{{1,0},{0,-1}}};
  gen=(-I/2)pauli;
  checks=<||>;
  AssociateTo[checks,"su2_trace"->Table[Simplify[Tr[gen[[i]].gen[[j]]]+KroneckerDelta[i,j]/2],{i,3},{j,3}]];
  AssociateTo[checks,"su2_bracket"->Table[Simplify[gen[[i]].gen[[j]]-gen[[j]].gen[[i]]-Sum[eps3[i,j,k]gen[[k]],{k,3}]],{i,3},{j,3}]];
  AssociateTo[checks,"su2_cubic_trace"->Table[Simplify[Tr[gen[[i]].gen[[j]].gen[[k]]]+eps3[i,j,k]/4],{i,3},{j,3},{k,3}]];
  (* All components and first jets are independent. mu is the first index. *)
  ef=Array[ec,{3,3}]; wf=Array[wc,{3,3}];
  de=Array[ej,{3,3,3}]; dw=Array[wj,{3,3,3}];
  aa=Table[Sum[(wf[[m,a]]+I ef[[m,a]])gen[[a]],{a,3}],{m,3}];
  ab=Table[Sum[(wf[[m,a]]-I ef[[m,a]])gen[[a]],{a,3}],{m,3}];
  da=Table[Sum[(dw[[n,m,a]]+I de[[n,m,a]])gen[[a]],{a,3}],{n,3},{m,3}];
  db=Table[Sum[(dw[[n,m,a]]-I de[[n,m,a]])gen[[a]],{a,3}],{n,3},{m,3}];
  cs[av_,dv_]:=Sum[eps3[m,n,r]Tr[av[[m]].dv[[n,r]]+(2/3)av[[m]].av[[n]].av[[r]]],{m,3},{n,3},{r,3}];
  pal=2 Sum[eps3[m,n,r]ef[[m,a]](dw[[n,r,a]]+Sum[eps3[a,b,c]wf[[n,b]]wf[[r,c]],{b,3},{c,3}]/2),{m,3},{n,3},{r,3},{a,3}]-Sum[eps3[m,n,r]eps3[a,b,c]ef[[m,a]]ef[[n,b]]ef[[r,c]],{m,3},{n,3},{r,3},{a,3},{b,3},{c,3}]/3;
  boundary=Sum[eps3[m,n,r](de[[m,n,a]]wf[[r,a]]-ef[[m,a]]dw[[n,r,a]]),{m,3},{n,3},{r,3},{a,3}];
  trans=Expand[I(cs[aa,da]-cs[ab,db])-pal-boundary];
  AssociateTo[checks,"Euclidean_generic_offshell_transgression_scaled_by_gamma"->trans];
  (* Actual xCoba curvature, not merely a package-loaded component calculation. *)
  DefManifold[GeometricCSBackground,3,{ia,ib,ic,id,ie}];
  DefChart[csChart,GeometricCSBackground,{1,2,3},{cx[],cy[],cz[]}];
  metric=CTensor[IdentityMatrix[3]/cz[]^2,{-csChart,-csChart}];
  SetCMetric[metric,csChart,SignatureOfMetric->{3,0,0}];
  cd=CovDOfMetric[metric];
  ricci=Table[Ricci[cd][{i,-csChart},{j,-csChart}],{i,3},{j,3}];
  AssociateTo[checks,"xCoba_hyperbolic_Ricci"->Simplify[ricci+2 IdentityMatrix[3]/cz[]^2]];
  coords={xx,yy,zz}; mat=IdentityMatrix[3]/zz^2; inv=Inverse[mat];
  christ=Table[Sum[inv[[l,k]](D[mat[[k,j]],coords[[i]]]+D[mat[[i,k]],coords[[j]]]-D[mat[[i,j]],coords[[k]]])/2,{k,3}],{l,3},{i,3},{j,3}];
  frame=IdentityMatrix[3]/zz;
  spin=Table[-Sum[eps3[a,b,c](-KroneckerDelta[b,m]KroneckerDelta[c,3]+KroneckerDelta[c,m]KroneckerDelta[b,3])/(2zz),{b,3},{c,3}],{a,3},{m,3}];
  avec=Table[Sum[(spin[[a,m]]+I frame[[a,m]])gen[[a]],{a,3}],{m,3}];
  abarvec=Table[Sum[(spin[[a,m]]-I frame[[a,m]])gen[[a]],{a,3}],{m,3}];
  fa=Table[Simplify[D[avec[[n]],coords[[m]]]-D[avec[[m]],coords[[n]]]+avec[[m]].avec[[n]]-avec[[n]].avec[[m]]],{m,3},{n,3}];
  fb=Table[Simplify[D[abarvec[[n]],coords[[m]]]-D[abarvec[[m]],coords[[n]]]+abarvec[[m]].abarvec[[n]]-abarvec[[n]].abarvec[[m]]],{m,3},{n,3}];
  AssociateTo[checks,"both_hyperbolic_CS_curvatures"->{fa,fb}];
  torsion=Table[Simplify[D[frame[[a,n]],coords[[m]]]-D[frame[[a,m]],coords[[n]]]+Sum[eps3[a,b,c](spin[[b,m]]frame[[c,n]]-spin[[b,n]]frame[[c,m]]),{b,3},{c,3}]],{a,3},{m,3},{n,3}];
  AssociateTo[checks,"hyperbolic_torsion"->torsion];
  (* Conjugate every derivative by exp(p.x). Arbitrary polarizations and p
     determine every coefficient of these LINEAR differential operators. *)
  mom={px,py,pz}; dp[f_,i_]:=D[f,coords[[i]]]+mom[[i]]f;
  cov1[v_]:=Table[dp[v[[j]],i]-Sum[christ[[l,i,j]]v[[l]],{l,3}],{i,3},{j,3}];
  cov2[h_]:=Table[dp[h[[j,k]],i]-Sum[christ[[l,i,j]]h[[l,k]]+christ[[l,i,k]]h[[j,l]],{l,3}],{i,3},{j,3},{k,3}];
  lap1[v_]:=Module[{d=cov1[v]},Table[Expand[Sum[inv[[i,j]](dp[d[[j,k]],i]-Sum[christ[[l,i,j]]d[[l,k]]+christ[[l,i,k]]d[[j,l]],{l,3}]),{i,3},{j,3}]],{k,3}]];
  lap2[h_]:=Module[{d=cov2[h]},Table[Expand[Sum[inv[[i,j]](dp[d[[j,k,r]],i]-Sum[christ[[l,i,j]]d[[l,k,r]]+christ[[l,i,k]]d[[j,l,r]]+christ[[l,i,r]]d[[j,k,l]],{l,3}]),{i,3},{j,3}]],{k,3},{r,3}]];
  reg1[v_]:=-lap1[v]+2v;
  reg2[h_]:=-lap2[h]-2Transpose[h]+2mat Tr[inv.h];
  bmap[h_]:=Module[{d=cov2[h]},Table[Expand[zz Sum[eps3[r,a,b]d[[a,m,b]],{a,3},{b,3}]/2],{r,3},{m,3}]];
  curl[v_]:=Module[{d=cov1[v]},Table[Expand[zz Sum[eps3[r,a,b]d[[a,b]],{a,3},{b,3}]],{r,3}]];
  strain[v_]:=cov1[v]+Transpose[cov1[v]];
  gaugeF[h_]:=Module[{d=cov2[h],tr=Tr[inv.h]},Table[Expand[Sum[inv[[i,j]]d[[j,m,i]],{i,3},{j,3}]-dp[tr,m]/2],{m,3}]];
  hh={{h11,h12,h13},{h12,h22,h23},{h13,h23,h33}}; vv={v1,v2,v3};
  AssociateTo[checks,"Casimir_LC_connection_intertwiner_all_linear_jets"->Simplify[reg2[bmap[hh]]-bmap[reg2[hh]]]];
  gradv=Transpose[cov1[vv]];
  AssociateTo[checks,"Casimir_covariant_gradient_intertwiner_all_linear_jets"->Simplify[reg2[gradv]-Transpose[cov1[reg1[vv]]]]];
  AssociateTo[checks,"Casimir_metric_strain_intertwiner_all_linear_jets"->Simplify[reg2[strain[vv]]-strain[reg1[vv]]]];
  AssociateTo[checks,"de_Donder_proper_FP_sign"->Simplify[gaugeF[strain[vv]]+reg1[vv]]];
  rhs=Transpose[cov1[curl[vv]]]/2-Table[Sum[eps3[r,m,n]vv[[n]],{n,3}]/zz,{r,3},{m,3}];
  AssociateTo[checks,"LC_connection_on_adapted_diffeomorphism"->Simplify[bmap[strain[vv]]-rhs]];
  (* Common finite multiplicity-space Schur identity; no continuum claim. *)
  hmat=DiagonalMatrix[{ha,hb}]; qmat=DiagonalMatrix[{qa,qb,qc}]; deriv=Array[dd,{3,2}];
  shear=ArrayFlatten[{{IdentityMatrix[2],ConstantArray[0,{2,3}]},{-deriv,IdentityMatrix[3]}}];
  full=Transpose[shear].ArrayFlatten[{{hmat,ConstantArray[0,{2,3}]},{ConstantArray[0,{3,2}],qmat}}].shear;
  AssociateTo[checks,"finite_general_shear_determinant"->Expand[Det[shear]-1]];
  AssociateTo[checks,"finite_general_Schur_determinant"->Expand[Det[full]-Det[hmat]Det[qmat]]];
  logSeries=ss {{0,-1},{-1,0}}+ss^2({{1,0},{0,0}}-IdentityMatrix[2]/2);
  AssociateTo[checks,"unequal_weight_log_counterexample_coefficient"->Expand[Coefficient[Tr[DiagonalMatrix[{wa,wb}].logSeries],ss,2]-(wa-wb)/2]];
  heat={Exp[-5tt],Exp[-5tt]+2(1+2tt)Exp[-4tt],Exp[-5tt]+2(1+2tt)Exp[-4tt]+2(1+8tt)Exp[-tt]};
  count=Table[Coefficient[Normal[Series[(heat[[i]]/.tt->ss^2)/((4Pi)^(3/2)ss^3),{ss,0,1}]],ss,0],{i,3}];
  AssociateTo[checks,"three_spin_heat_counts_have_no_constant"->count];
  results=<|"Residuals"->checks,
    "AllResidualsZero"->And@@(TrueQ[Simplify[#]==0]&/@Flatten[Values[checks]]),
    "Scope"->"Exact first-order normalization, linear differential symbols, finite Schur algebra and heat-count coefficients. No CAS proof of self-adjointness, representation-fiber disintegration, orbital convergence, or measure equivalence.",
    "UnevaluatedComputations"->!FreeQ[Values[checks],_D|_Sum|_Det|_Series],
    "Failed"->!FreeQ[Values[checks],$Failed|$Aborted],
    "Messages"->(ToString[#,InputForm]&/@$MessageList),
    "KernelVersion"->System`$Version|>;
  results
 ] /. Null->Null
];
(* Capture message metadata without interpreting transport success as a pass. *)
report=Join[report,<|"Source"->$InputFileName,"SourceSHA256"->FileHash[$InputFileName,"SHA256","HexString"]|>];
root=FileNameJoin[{If[StringQ[Environment["DSH_HOME"]]&&Environment["DSH_HOME"]!="",Environment["DSH_HOME"],FileNameJoin[{$HomeDirectory,".dsh"}]],"research-results","kernel-exports"}];
If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"geometric-cs-parent.XXXXXX"}]}];
If[tmp["ExitCode"]=!=0,Print[tmp];Abort[]];
dir=StringTrim[tmp["StandardOutput"]];
Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
<|"Preview"->FileNameJoin[{dir,"preview.txt"}],"Native"->FileNameJoin[{dir,"result.wxf"}],"AllResidualsZero"->report["AllResidualsZero"],"KernelVersion"->report["KernelVersion"],"UnevaluatedComputations"->report["UnevaluatedComputations"]|>
