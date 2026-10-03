ClearAll["Global`*"];

op[f_]:=D[D[f,r]+bb[r]f,r]+aa[r](D[f,r]+bb[r]f);
adjw=D[ww[r],{r,2}]-D[(aa[r]+bb[r])ww[r],r]+(D[bb[r],r]+aa[r]bb[r])ww[r];
jj=ww[r]D[cc[r],r]-D[ww[r],r]cc[r]+(aa[r]+bb[r])ww[r]cc[r];
res=Expand[D[jj,r]-ww[r]op[cc[r]]+adjw cc[r]];
ut=Exp[I om t];vt=Exp[-I om t];cur=-ut D[vt,t]+D[ut,t]vt;
<|"factorized_radial_source_current"->res,"time_current_norm_factor"->Simplify[cur-I D[om^2-nu^2,om]],"incoming_source_current_power"->Simplify[(1-2I om)+(-4+2I om)],"outgoing_source_current_power"->Simplify[(5+2I om)+(-4+2I om)]|>

