ClearAll["Global`*"];

ss=1-z^2;sig=r^2+a^2 z^2;
g=-{{-(1-2r/sig),1,0,-2a r ss/sig},{1,0,0,-a ss},{0,0,sig/ss,0},{-2a r ss/sig,-a ss,0,(r^2+a^2+2a^2 r ss/sig)ss}};
gi=Simplify[Inverse[g]];coords={v,r,z,ph};nv={0,1,0,0};mv={I a ss,0,-ss,I};
gam=Table[Factor[Sum[gi[[i,b]](D[g[[b,j]],coords[[k]]]+D[g[[b,k]],coords[[j]]]-D[g[[j,k]],coords[[b]]]),{b,4}]/2],{i,4},{j,4},{k,4}];
nm=Table[Factor[Sum[gam[[i,2,k]]mv[[k]],{k,4}]],{i,4}];
beta=Factor[nm[[3]]/mv[[3]]];alpha=Factor[nm[[2]]];
vec=Table[Factor[nm[[i]]-alpha nv[[i]]-beta mv[[i]]],{i,4}];
divn=Factor[Sum[gam[[i,i,2]],{i,4}]];
aT=aa[r,z];bT=bb[r,z];nc=g.nv;mc=g.mv;tt=Table[aT nc[[j]]nc[[k]]+bT(nc[[j]]mc[[k]]+mc[[j]]nc[[k]]),{j,4},{k,4}];
d[f_,j_]:=Switch[j,1,-I om f,2,D[f,r],3,D[f,z],4,I mm f];
div=Table[Factor[Sum[gi[[i,j]](d[tt[[i,k]],j]-Sum[gam[[b,j,i]]tt[[b,k]]+gam[[b,j,k]]tt[[i,b]],{b,4}]),{i,4},{j,4}]],{k,4}];
divup=Factor/@(gi.div);
bbres=Factor[divup[[3]]/mv[[3]]];
aares=Factor[(divup[[2]]/.bb->Function[{rr,zz},0])];
<|"nabla_N_M_coefficient_N"->alpha,"nabla_N_M_coefficient_M"->beta,"plane_residual"->vec,"div_N"->divn,"B_conservation_equation"->bbres,"A_equation_when_B_zero"->aares,"B_factor_check"->Factor[bbres-(D[bb[r,z],r]+(2r/sig+2/(r-I a z))bb[r,z])]|>

