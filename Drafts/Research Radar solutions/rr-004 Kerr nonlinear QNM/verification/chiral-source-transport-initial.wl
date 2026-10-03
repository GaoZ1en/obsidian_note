ClearAll["Global`*"];

ss=1-z^2;sig=r^2+a^2 z^2;
g=-{{-(1-2r/sig),1,0,-2a r ss/sig},{1,0,0,-a ss},{0,0,sig/ss,0},{-2a r ss/sig,-a ss,0,(r^2+a^2+2a^2 r ss/sig)ss}};
gi=Simplify[Inverse[g]];coords={v,r,z,ph};nv={0,1,0,0};mv={I a ss,0,-ss,I};
gam=Table[Factor[Sum[gi[[i,b]](D[g[[b,j]],coords[[k]]]+D[g[[b,k]],coords[[j]]]-D[g[[j,k]],coords[[b]]]),{b,4}]/2],{i,4},{j,4},{k,4}];

del=r^2-2r+a^2;gg=r+I a z;gb=r-I a z;
nn=-del/(2sig)nv;ll={2(r^2+a^2)/del,1,0,2a/del};
mmv=mv/(Sqrt[2]Sqrt[ss]gg);
mbv={-I a ss,0,-ss,-I}/(Sqrt[2]Sqrt[ss]gb);
nc=g.nn;mc=g.mmv;lc=g.ll;
dn=Table[Factor[D[nc[[i]],coords[[j]]]-Sum[gam[[k,j,i]]nc[[k]],{k,4}]],{j,4},{i,4}];
rhop=Factor[Sum[mbv[[i]]mmv[[j]]dn[[j,i]],{i,4},{j,4}]];
taup=Factor[Sum[mbv[[i]]ll[[j]]dn[[j,i]],{i,4},{j,4}]];
bcov=Factor/@(-rhop lc+taup mc);
zz=Table[Factor[nn[[i]]mbv[[j]]-mbv[[i]]nn[[j]]],{i,4},{j,4}];
nnc=g.nv;mmc=g.mv;
tt=Table[aa[r,z]nnc[[i]]nnc[[j]]+bb[r,z](nnc[[i]]mmc[[j]]+mmc[[i]]nnc[[j]])+cc[r,z]mmc[[i]]mmc[[j]],{i,4},{j,4}];
dh[f_,j_]:=Switch[j,1,-I om f,2,D[f,r],3,D[f,z],4,I azm f];
dt=Table[Factor[dh[tt[[i,j]],b]-Sum[gam[[k,b,i]]tt[[k,j]]+gam[[k,b,j]]tt[[i,k]],{k,4}]],{b,4},{i,4},{j,4}];
vd=Table[Factor[Sum[zz[[b,c]]dt[[b,c,j]],{b,4},{c,4}]],{j,4}];
dzz=Table[Factor[D[zz[[b,c]],coords[[j]]]+Sum[gam[[b,j,k]]zz[[k,c]]+gam[[c,j,k]]zz[[b,k]],{k,4}]],{j,4},{b,4},{c,4}];
ssource=Factor[Sum[zz[[j,a]](dh[vd[[j]],a]-Sum[gam[[k,a,j]]vd[[k]],{k,4}]+4bcov[[a]]vd[[j]]-Sum[dzz[[a,b,c]]dt[[b,c,j]],{b,4},{c,4}]),{j,4},{a,4}]];
cphys=2ss gg^2 cc[r,z];
pred=Factor[del^2/(4sig^2)(D[D[cphys,r]+(2/gb-1/gg)cphys,r]+(6/gb-1/gg)(D[cphys,r]+(2/gb-1/gg)cphys))];
<|"rho_prime"->rhop,"tau_prime"->taup,"source"->ssource,"predicted"->pred,"sum_residual"->Factor[ssource+pred],"difference_residual"->Factor[ssource-pred]|>

