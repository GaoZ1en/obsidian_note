ClearAll["Global`*"];

ss=1-z^2;sig=r^2+a^2 z^2;del=r^2-2r+a^2;
g={{-(1-2r/sig),1,0,-2a r ss/sig},{1,0,0,-a ss},{0,0,sig/ss,0},{-2a r ss/sig,-a ss,0,(r^2+a^2+2a^2 r ss/sig)ss}};
nv={0,1,0,0};mv={I a ss,0,-ss,I};nc=g.nv;mc=Factor/@(g.mv);
h=Table[aa nc[[j]]nc[[k]]+bb(nc[[j]]mc[[k]]+mc[[j]]nc[[k]])+cc mc[[j]]mc[[k]],{j,4},{k,4}];
gi=Simplify[Inverse[g]];
<|"null_covector"->nc,"complex_null_covector"->mc,"null_plane"->Simplify[{nv.g.nv,nv.g.mv,mv.g.mv}],"nilpotency"->Simplify[h.gi.h],"radial_components"->h[[2]]|>

