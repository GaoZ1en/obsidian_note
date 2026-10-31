(* Actual gravitational-CS Hermitian elliptic augmentation.
   Fresh xAct components kernel. Exact linear differential jets + finite algebra.
   This does not prove complete-manifold domains or heat/orbital estimates.
   Each run writes a fresh private archive. *)
report=Block[{$DefInfoQ=False,$Messages={},$MessageList={}},
 Module[{eps,pauli,gen,ww,ff,wjet,fjet,aa,ab,daa,dab,cs,density,target,
   coords,zz,metric,inv,christ,mom,dp,cov1,cov2,lap1,lap2,
   grad,div,rot,rotAdj,curl,alg,reg1,regK,vv,yy,
   checks,xbMetric,xbCD,ricci,heat,t,aa0,aa2,shift,res3,res1,count,
   pair,lam,r,mu,block,grading,zero,im,scalarSymbol,fieldSymbol,
   gaugeSymbol,totalSymbol,principalSquare,logs,physical,gauge,
   phaseExpected,results},
 eps[i_,j_,k_]:=Signature[{i,j,k}];
 pauli={{{0,1},{1,0}},{{0,-I},{I,0}},{{1,0},{0,-1}}};gen=(-I/2)pauli;
 checks=<||>;
 (* Independent action expansion in an oriented orthonormal normal frame.
    The background connection vanishes at the point, A=i e; perturbation
    values and their first derivatives are arbitrary. *)
 ww=Array[w,{3,3}];ff=Array[f,{3,3}];wjet=Array[wj,{3,3,3}];fjet=Array[fj,{3,3,3}];
 aa=Table[Sum[(I KroneckerDelta[m,b]+lam(ww[[m,b]]+I ff[[m,b]]))gen[[b]],{b,3}],{m,3}];
 ab=Table[Sum[(-I KroneckerDelta[m,b]+lam(ww[[m,b]]-I ff[[m,b]]))gen[[b]],{b,3}],{m,3}];
 daa=Table[lam Sum[(wjet[[n,m,b]]+I fjet[[n,m,b]])gen[[b]],{b,3}],{n,3},{m,3}];
 dab=Table[lam Sum[(wjet[[n,m,b]]-I fjet[[n,m,b]])gen[[b]],{b,3}],{n,3},{m,3}];
 cs[x_,dx_]:=Sum[eps[m,n,s]Tr[x[[m]].dx[[n,s]]+(2/3)x[[m]].x[[n]].x[[s]]],{m,3},{n,3},{s,3}];
 density=Coefficient[Expand[I(cs[aa,daa]-cs[ab,dab])],lam,2];
 target=Tr[ww]^2-Tr[ww.ww]-Tr[ff]^2+Tr[ff.ff]+
   Sum[eps[m,n,s](ww[[m,b]]fjet[[n,s,b]]+ff[[m,b]]wjet[[n,s,b]]),{m,3},{n,3},{s,3},{b,3}];
 AssociateTo[checks,"actual_CS_quadratic_density_and_Hessian_factor"->Expand[density-target]];
 (* Actual xCoba curvature and an independent full coordinate-jet realization. *)
 DefManifold[EllipticGravityBackground,3,{iA,iB,iC,iD,iE}];
 DefChart[ellChart,EllipticGravityBackground,{1,2,3},{ex[],ey[],ez[]}];
 xbMetric=CTensor[IdentityMatrix[3]/ez[]^2,{-ellChart,-ellChart}];
 SetCMetric[xbMetric,ellChart,SignatureOfMetric->{3,0,0}];xbCD=CovDOfMetric[xbMetric];
 ricci=Table[Ricci[xbCD][{i,-ellChart},{j,-ellChart}],{i,3},{j,3}];
 AssociateTo[checks,"xCoba_Ricci_minus_two"->Simplify[ricci+2 IdentityMatrix[3]/ez[]^2]];
 coords={xx,xy,zz};metric=IdentityMatrix[3]/zz^2;inv=Inverse[metric];
 christ=Table[Sum[inv[[l,k]](D[metric[[k,j]],coords[[i]]]+D[metric[[i,k]],coords[[j]]]-D[metric[[i,j]],coords[[k]]])/2,{k,3}],{l,3},{i,3},{j,3}];
 mom={px,py,pz};dp[x_,i_]:=D[x,coords[[i]]]+mom[[i]]x;
 cov1[v_]:=Table[dp[v[[j]],i]-Sum[christ[[l,i,j]]v[[l]],{l,3}],{i,3},{j,3}];
 cov2[h_]:=Table[dp[h[[j,k]],i]-Sum[christ[[l,i,j]]h[[l,k]]+christ[[l,i,k]]h[[j,l]],{l,3}],{i,3},{j,3},{k,3}];
 lap1[v_]:=Module[{dd=cov1[v]},Table[Expand[Sum[inv[[i,j]](dp[dd[[j,k]],i]-Sum[christ[[l,i,j]]dd[[l,k]]+christ[[l,i,k]]dd[[j,l]],{l,3}]),{i,3},{j,3}]],{k,3}]];
 lap2[h_]:=Module[{dd=cov2[h]},Table[Expand[Sum[inv[[i,j]](dp[dd[[j,k,s]],i]-Sum[christ[[l,i,j]]dd[[l,k,s]]+christ[[l,i,k]]dd[[j,l,s]]+christ[[l,i,s]]dd[[j,k,l]],{l,3}]),{i,3},{j,3}]],{k,3},{s,3}]];
 grad[v_]:=cov1[v];
 div[h_]:=Module[{dd=cov2[h]},Table[-Expand[Sum[inv[[i,j]]dd[[i,j,k]],{i,3},{j,3}]],{k,3}]];
 rot[v_]:=Table[Sum[eps[j,i,k]v[[k]]/zz,{k,3}],{i,3},{j,3}];
 rotAdj[h_]:=Table[zz Sum[eps[j,i,k]h[[i,j]],{i,3},{j,3}],{k,3}];
 curl[h_]:=Module[{dd=cov2[h]},Table[zz Sum[eps[i,j,k]dd[[j,k,b]],{j,3},{k,3}],{i,3},{b,3}]];
 alg[h_]:=metric Tr[inv.h]-Transpose[h];
 reg1[v_]:=-lap1[v]+2v;
 regK[h_]:=-lap2[h]+2alg[h];
 vv={v1,v2,v3};yy=Array[y,{3,3}];
 AssociateTo[checks,"proper_Gram_diagonal_all_jets"->Simplify[div[grad[vv]]+rotAdj[rot[vv]]-reg1[vv]]];
 AssociateTo[checks,"proper_Gram_cross_all_jets"->Simplify[-div[rot[vv]]+rotAdj[grad[vv]]]];
 AssociateTo[checks,"gauge_annihilation_first_row_all_jets"->Simplify[alg[grad[vv]]+curl[rot[vv]]]];
 AssociateTo[checks,"gauge_annihilation_second_row_all_jets"->Simplify[curl[grad[vv]]-alg[rot[vv]]]];
 AssociateTo[checks,"elliptic_square_diagonal_all_jets"->Simplify[alg[alg[yy]]+curl[curl[yy]]+grad[div[yy]]+rot[rotAdj[yy]]-regK[yy]]];
 AssociateTo[checks,"elliptic_square_cross_all_jets"->Simplify[curl[alg[yy]]-alg[curl[yy]]+rot[div[yy]]-grad[rotAdj[yy]]]];
 (* Leading full 24-component symbol; i p represents actual Fourier differentiation. *)
 fieldSymbol=Table[I Sum[eps[i,j,k]mom[[j]]KroneckerDelta[b,c],{j,3}],{i,3},{b,3},{k,3},{c,3}];
 fieldSymbol=ArrayReshape[fieldSymbol,{9,9}];
 gaugeSymbol=ArrayReshape[Table[I mom[[i]]KroneckerDelta[b,c],{i,3},{b,3},{c,3}],{9,3}];
 zero[n_,m_]:=ConstantArray[0,{n,m}];im[n_]:=IdentityMatrix[n];
 totalSymbol=ArrayFlatten[{{zero[9,9],fieldSymbol,gaugeSymbol,zero[9,3]},
  {fieldSymbol,zero[9,9],zero[9,3],gaugeSymbol},
  {-Transpose[gaugeSymbol],zero[3,9],zero[3,3],zero[3,3]},
  {zero[3,9],-Transpose[gaugeSymbol],zero[3,3],zero[3,3]}}];
 AssociateTo[checks,"full_elliptic_symbol_square"->Simplify[totalSymbol.totalSymbol-(mom.mom)im[24]]];
 grading=ArrayFlatten[{{zero[9,9],-im[9],zero[9,3],zero[9,3]},
 {im[9],zero[9,9],zero[9,3],zero[9,3]},
 {zero[3,9],zero[3,9],zero[3,3],im[3]},
 {zero[3,9],zero[3,9],-im[3],zero[3,3]}}];
 AssociateTo[checks,"grading_square_and_principal_anticommutator"->{grading.grading+im[24],Simplify[grading.totalSymbol+totalSymbol.grading]}];
 (* Exact finite gauge/multiplier block and scalar density factor. *)
 pair={{0,Sqrt[r]},{Sqrt[r],mu}};
 AssociateTo[checks,"gauge_block_characteristic_and_determinant"->{Expand[Det[lam im[2]-pair]-(lam^2-mu lam-r)],Simplify[Det[pair]+r]}];
 AssociateTo[checks,"upper_cycle_multiplier_normalization"->Simplify[(2aa0/I) I/(2aa0 Sqrt[r]) r-Sqrt[r]]];
 (* On W there are TWO real internal-vector copies, not one. *)
 heat=2(Exp[-5t]+2(1+2t)Exp[-4t]);
 aa0=Coefficient[Normal[Series[heat,{t,0,1}]],t,0];
 aa2=Coefficient[Normal[Series[heat,{t,0,1}]],t,1];
 AssociateTo[checks,"multiplier_heat_coefficients"->{aa0-6,aa2+18}];
 res3=aa0 vol/(2Pi^2);res1=(aa2-aa0 shift^2)vol/(4Pi^2);
 count=Expand[shift res1+shift^3 res3/3];
 AssociateTo[checks,"shifted_negative_count"->Simplify[count+shift(shift^2+9)vol/(2Pi^2)]];
 phaseExpected=I mu(mu^2+36)vol/(16Pi);
 AssociateTo[checks,"actual_gravity_mu_logdet_defect"->Simplify[(-I Pi count/.shift->mu/2)-phaseExpected]];
 AssociateTo[checks,"actual_gravity_mu_logZ_defect"->Simplify[-phaseExpected/2+I mu(mu^2+36)vol/(32Pi)]];
 AssociateTo[checks,"flat_torus_phase"->Simplify[(-phaseExpected/2/.vol->-Pi beta/2)-I mu(mu^2+36)beta/64]];
 AssociateTo[checks,"balanced_gaussian_metric_weights"->Expand[-(2(l0+l1+l2)+2l1)/4+2l1-(l1-l2/2-l0/2)]];
 results=<|"Residuals"->checks,"AllResidualsZero"->And@@(TrueQ[Simplify[#]==0]&/@Flatten[Values[checks]]),
 "Failed"->!FreeQ[Values[checks],$Failed|$Aborted],
 "UnevaluatedComputations"->!FreeQ[Values[checks],_D|_Sum|_Det|_Series],
 "Messages"->(ToString[#,InputForm]&/@$MessageList),"KernelVersion"->System`$Version,
 "Scope"->"Actual action, full linear differential jets, elliptic symbol, finite Gaussian normalization and local residue algebra. No CAS proof of closure, continuum gauge integration, orbital descent or analytic binomial continuation."|>;
 results
 ]];
report=Join[report,<|"Source"->$InputFileName,"SourceSHA256"->FileHash[$InputFileName,"SHA256","HexString"]|>];
root=FileNameJoin[{If[StringQ[Environment["DSH_HOME"]]&&Environment["DSH_HOME"]!="",Environment["DSH_HOME"],FileNameJoin[{$HomeDirectory,".dsh"}]],"research-results","kernel-exports"}];
If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"geometric-cs-elliptic.XXXXXX"}]}];
If[tmp["ExitCode"]=!=0,Print[tmp];Abort[]];dir=StringTrim[tmp["StandardOutput"]];
Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
<|"Preview"->FileNameJoin[{dir,"preview.txt"}],"Native"->FileNameJoin[{dir,"result.wxf"}],
"AllResidualsZero"->report["AllResidualsZero"],"Failed"->report["Failed"],"UnevaluatedComputations"->report["UnevaluatedComputations"],"KernelVersion"->report["KernelVersion"]|>
