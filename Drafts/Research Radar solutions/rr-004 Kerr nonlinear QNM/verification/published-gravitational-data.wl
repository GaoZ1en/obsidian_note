ClearAll["Global\`*"];
root="/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/sources/tgr-data/";
fp=root<>"quadratic_2201_2201.h5";fm=root<>"quadratic_2201_2-20-1.h5";
parse[s_String]:=If[StringMatchQ[s,RegularExpression["[0-9eE.+\\- ]+(im)?"]],ToExpression[StringReplace[s,{"im"->" I","e"->"*^","E"->"*^"}]],Throw["non-numeric data"]];
parse[n_?NumberQ]:=n;
read[file_,channel_,prec_,nn_,basis_]:=Module[{b,aa,rr},
b="/"<>channel<>"/Complex{MultiFloat{Float64, "<>ToString[prec]<>"}}/nmax_"<>ToString[nn]<>"_lmax_31/separation_radial/"<>basis<>"/";
aa=parse/@Flatten[Import[file,{"Datasets",b<>"a"}]];
rr=parse/@Import[file,{"Datasets",b<>"Ratio"}][[All,1]];
Transpose[{aa,rr}]];
dp=read[fp,"++",4,127,"spherical"];dm=read[fm,"+-",4,63,"spherical"];
dps=read[fp,"++",4,127,"spheroidal"];dms=read[fm,"+-",4,63,"spheroidal"];
low=read[fp,"++",3,63,"spherical"];
spinerr=Max[Abs[dp[[All,1]]-dm[[All,1]]]];
inds={1,7,20};
N[<|"spin_grid_mismatch"->spinerr,
"rows_spherical_spin_pp_pm_sum_abs_phase"->Table[With[{tot=dp[[j,2]]+dm[[j,2]]},{dp[[j,1]],dp[[j,2]],dm[[j,2]],tot,Abs[tot],Arg[tot]}],{j,inds}],
"spheroidal_total_at_same_indices"->Table[{dps[[j,1]],dps[[j,2]]+dms[[j,2]]},{j,inds}],
"relative_pp_resolution_changes_at_indices"->Table[{dp[[j,1]],Abs[(dp[[j,2]]-low[[j,2]])/dp[[j,2]]]},{j,inds}],
"max_pp_resolution_change"->Max[Abs[(dp[[All,2]]-low[[All,2]])/dp[[All,2]]]]|>,18]
