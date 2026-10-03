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

dcov[vc_]:=Table[Factor[D[vc[[i]],coords[[j]]]-Sum[gam[[k,j,i]]vc[[k]],{k,4}]],{j,4},{i,4}];
dl=dcov[lc];dm=dcov[mc];
hcov=Table[Factor[2Sum[nn[[k]]dl[[j,k]]-mbv[[k]]dm[[j,k]],{k,4}]+4bcov[[j]]],{j,4}];
kk=(r^2+a^2)om-a azm;
dh[f_,j_]:=Switch[j,1,-I om f,2,D[f,r]+I kk/del f,3,D[f,z],4,I azm f];
eta=yy[r]ssph[z]/gb^4;
one=Table[Factor[dh[eta,j]+hcov[[j]]eta],{j,4}];
op=Factor[Sum[gi[[i,j]](dh[one[[j]],i]+hcov[[i]]one[[j]]-Sum[gam[[k,i,j]]one[[k]],{k,4}]),{i,4},{j,4}]+16eta/gb^3];
spin=-2;
ang=D[ss D[ssph[z],z],z]+(a^2 om^2 z^2-2a om spin z-(azm+spin z)^2/ss+spin)ssph[z];
vv=(kk^2-2I spin(r-1)kk)/del+4I spin om r-a^2 om^2+2a azm om;
target=(del D[yy[r],{r,2}]+(spin+1)D[del,r]D[yy[r],r]+vv yy[r])ssph[z]+yy[r]ang;
<|"Teukolsky_covariant_to_separated_residual"->Factor[-sig gb^4 op-target],"radial_principal_coefficient"->Factor[Coefficient[Expand[op],Derivative[2][yy][r]]]|>

