ClearAll["Global\`*"];
s[ff_]:=aa[x]D[ff,{x,2}]+bb[x]D[ff,x]+cc[x]ff;
sa[uu_]:=D[aa[x]uu,{x,2}]-D[bb[x]uu,x]+cc[x]uu;
js[uu_,ff_]:=uu aa[x]D[ff,x]-D[uu aa[x],x]ff+uu bb[x]ff;
ee[ff_]:=D[ff,{x,2}]+ww^2 ff;
jj[uu_,ff_]:=uu D[ff,x]-D[uu,x]ff;
general=FullSimplify[D[js[u[x],f[x]],x]-u[x]s[f[x]]+sa[u[x]]f[x]];
composition=FullSimplify[jj[u[x],D[h[x],x]]-jj[-D[u[x],x],h[x]]-u[x]ee[h[x]]+ee[u[x]]h[x]];
off=FullSimplify[(jj[-D[u[x],x],h[x]]-jj[u[x],D[h[x],x]])/.Derivative[2][u][x]->-ww^2 u[x]];
<|"variable_coefficient_adjoint_current"->general,"off_shell_composition_current"->composition,"on_shell_test_difference"->off,"difference_equals_minus_u_source"->FullSimplify[off+u[x]ee[h[x]]]|>
