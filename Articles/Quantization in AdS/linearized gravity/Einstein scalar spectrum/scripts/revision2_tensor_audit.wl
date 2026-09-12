(* Independent audit of the revision-2 off-shell identities; no source equations or gauge condition imposed. *)
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e,i,j}];
DefMetric[-1,g[-a,-b],CD];
DefMetricPerturbation[g,h,eps];
DefTensor[q[-a,-b],M,Symmetric[{-a,-b}]];
DefTensor[k[-a,-b],M,Symmetric[{-a,-b}]];
tr[t_]:=With[{z=DummyIn[TangentM]},t[z,-z]];
cf[t_,i_]:=With[{z=DummyIn[TangentM]},CD[z][t[-z,i]]-CD[i][tr[t]]/2];
pr[t_,i_,j_]:=t[i,j]-g[i,j]tr[t]/2;
ap[t_,i_,j_]:=With[{z=DummyIn[TangentM]},CD[z][CD[-z][t[i,j]]]/2+t[i,j]-g[i,j]tr[t]];
ee[t_,i_,j_]:=With[{z=DummyIn[TangentM]},-CD[z][CD[-z][t[i,j]]]/2-t[i,j]+g[i,j]CD[z][CD[-z][tr[t]]]/4+(CD[i][cf[t,j]]+CD[j][cf[t,i]])/2-g[i,j]CD[z][cf[t,-z]]/2];
ads=Join[EinsteinSpaceRules[CD,-1],{RiemannCD[ii_,jj_,kk_,ll_]:>g[ii,ll]g[jj,kk]-g[ii,kk]g[jj,ll]}];
norm[ex_]:=FullSimplification[][ToCanonical[ContractMetric[Expand[ex]]]];
normads[ex_]:=FixedPoint[(norm[#]/.ads)&,SymmetrizeCovDs[ex,CD],4]//norm;
ein=RicciCD[-i,-j]-g[-i,-j]RicciScalarCD[]/2-g[-i,-j];
lin=ExpandPerturbation[Perturbation[ein,1]]/.h[LI[1],ii_,jj_]:>q[ii,jj];
checks=<|"off_shell_Einstein_identity"->normads[lin-ee[q,-i,-j]]|>;
ja=k[a,b]CD[i][q[-a,-b]]/2-q[a,b]CD[i][k[-a,-b]]/2;
je=-ja+(tr[k]CD[i][tr[q]]-tr[q]CD[i][tr[k]])/4+pr[k,i,a]cf[q,-a]-pr[q,i,a]cf[k,-a];
AppendTo[checks,"Casimir_Green_current"->norm[k[a,b]ap[q,-a,-b]-q[a,b]ap[k,-a,-b]-CD[-i][ja]]];
AppendTo[checks,"Einstein_Green_current"->norm[k[a,b]ee[q,-a,-b]-q[a,b]ee[k,-a,-b]-CD[-i][je]]];
report=<|"engine"->System`$Version,"packages"->{"xTensor","xPert","xTras"},"assumptions"->"unit-radius AdS3; q and k arbitrary symmetric tensors; no gauge/source equations", "residuals"->Map[ToString[#,InputForm]&,checks],"allPassed"->AllTrue[Values[checks],SameQ[#,0]&]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"revision2_tensor_audit_results.json"}],report,"RawJSON"];
If[!TrueQ[report["allPassed"]],Print[report];Exit[1]];
report
