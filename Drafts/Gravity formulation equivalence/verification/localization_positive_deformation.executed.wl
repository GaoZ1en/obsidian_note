(* Parent check of a positive localization-deformation repair.
   Ordinary Wolfram algebra, no inherited definitions or xAct profile.
   Fresh private exports preserve all prior evidence. *)
ClearAll["Global`*"];
locSource = $InputFileName;
locReport = Block[{$Messages = {}, $MessageList = {}},
 Module[{dim = 3, gg, dg, vv, ww, uu, ps, pp, jac, vplus, vminus,
   q2density, ydensity, lieg, checks, printed, repaired, loop, vel, flow,
   printedIntegral, repairedIntegral, assumptions},
  gg = Table[g[Min[i,j],Max[i,j]], {i,dim}, {j,dim}];
  dg = Table[gd[k,Min[i,j],Max[i,j]], {k,dim}, {i,dim}, {j,dim}];
  vv = Array[v,dim]; ww = Array[w,dim]; uu = Array[u,dim];
  ps = Array[psi,dim]; pp = Array[psidot,dim];
  jac = Array[a,{dim,dim}];
  vplus = vv + I ww; vminus = vv - I ww;
  (* Q^2 acts as delta_v - i partial_y. Here w=xdot, u=xddot,
     jac_ij=partial_j v_i; psi symbols occur only linearly. *)
  q2density = Sum[vminus[[k]] vplus . dg[[k]] . ps, {k,dim}]
    + (jac.vv+uu).gg.ps + vplus.gg.(jac.ps-I pp);
  ydensity = Sum[ww[[k]] vplus . dg[[k]] . ps, {k,dim}]
    + (jac.ww+I uu).gg.ps + vplus.gg.pp;
  lieg = Sum[vv[[k]] dg[[k]], {k,dim}] + Transpose[jac].gg + gg.jac;
  printed = Expand[vminus.gg.vminus];
  repaired = Expand[vplus.gg.vminus];
  assumptions = beta > 0 && freq > 0 && Element[{amp,beta,freq},Reals];
  loop = {amp Cos[2 Pi yy/beta],0};
  vel = D[loop,yy];
  flow = freq {-loop[[2]],loop[[1]]};
  printedIntegral = FullSimplify[Integrate[(flow-I vel).(flow-I vel),
    {yy,0,beta}, Assumptions->assumptions],assumptions];
  repairedIntegral = FullSimplify[Integrate[(flow+I vel).(flow-I vel),
    {yy,0,beta}, Assumptions->assumptions],assumptions];
  checks = <|
    "printed_bosonic_deformation_has_wrong_kinetic_sign" ->
      TrueQ[Expand[printed-(vv.gg.vv-ww.gg.ww-2 I vv.gg.ww)]===0],
    "repaired_bosonic_deformation_is_sum_of_real_norms" ->
      TrueQ[Expand[repaired-(vv.gg.vv+ww.gg.ww)]===0],
    "Q2_gauge_fermion_equals_Lie_metric_minus_time_derivative" ->
      TrueQ[Expand[q2density + I ydensity - vplus.lieg.ps]===0],
    "confined_oscillator_printed_high_frequency_counterexample" ->
      TrueQ[FullSimplify[printedIntegral-amp^2 beta/2 (freq^2-(2 Pi/beta)^2),assumptions]===0],
    "confined_oscillator_repaired_positive_integral" ->
      TrueQ[FullSimplify[repairedIntegral-amp^2 beta/2 (freq^2+(2 Pi/beta)^2),assumptions]===0]
    |>;
  <|"kernel"->System`$Version,"source"->locSource,
    "scope"->"Local algebra and a real harmonic-oscillator loop; not an infinite-dimensional path-integral localization theorem",
    "checks"->checks,"all_passed"->And@@Values[checks],"check_count"->Length[checks],
    "printed_loop_integral"->ToString[printedIntegral,InputForm],
    "repaired_loop_integral"->ToString[repairedIntegral,InputForm],
    "messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]
];
locHome = Environment["DSH_HOME"];
If[!StringQ[locHome] || locHome=="",locHome=FileNameJoin[{$HomeDirectory,".dsh"}]];
locRoot=FileNameJoin[{locHome,"research-results","kernel-exports"}];
If[!DirectoryQ[locRoot],CreateDirectory[locRoot,CreateIntermediateDirectories->True]];
locTmp=RunProcess[{"mktemp","-d",FileNameJoin[{locRoot,"positive-localizer.XXXXXX"}]}];
If[locTmp["ExitCode"] =!= 0,Print[locTmp];Abort[]];
locOut=StringTrim[locTmp["StandardOutput"]];
CopyFile[locSource,FileNameJoin[{locOut,"executed-source.wl"}],OverwriteTarget->False];
Export[FileNameJoin[{locOut,"result.json"}],locReport,"RawJSON"];
Export[FileNameJoin[{locOut,"result.wxf"}],locReport,"WXF"];
<|"all_passed"->locReport["all_passed"],"check_count"->locReport["check_count"],
 "messages"->locReport["messages"],"result"->FileNameJoin[{locOut,"result.json"}],
 "exact"->FileNameJoin[{locOut,"result.wxf"}],"executed_source"->FileNameJoin[{locOut,"executed-source.wl"}]|>
