ClearAll["Global\`*"];
xx={t,x,y,z}; nn=4; et=DiagonalMatrix[{-1,1,1,1}];
hh={{x y,t z,0,x^2},{t z,t^2+z^2,x y,0},{0,x y,t z,y^2},{x^2,0,y^2,x z}};
vv={t x,y z,t^2,x y};
lie[tt_]:=Table[Expand[Sum[vv[[c]] D[tt[[a,b]],xx[[c]]]+tt[[c,b]] D[vv[[c]],xx[[a]]]+tt[[a,c]] D[vv[[c]],xx[[b]]],{c,nn}]],{a,nn},{b,nn}];
kk=lie[et]; ll=lie[hh];
g1[ss_]:=Table[Expand[1/2 Sum[et[[a,d]](D[ss[[d,b]],xx[[c]]]+D[ss[[d,c]],xx[[b]]]-D[ss[[b,c]],xx[[d]]]),{d,nn}]],{a,nn},{b,nn},{c,nn}];
ric1[ss_]:=Module[{gg=g1[ss]},Table[Expand[Sum[D[gg[[c,a,b]],xx[[c]]]-D[gg[[c,a,c]],xx[[b]]],{c,nn}]],{a,nn},{b,nn}]];
ein1[ss_]:=Module[{rr=ric1[ss]},Expand[rr-et Tr[et.rr]/2]];
ch=g1[hh]; ck=g1[kk]; ih=-et.hh.et; ik=-et.kk.et;
cm=Table[Expand[1/2 Sum[ih[[a,d]](D[kk[[d,b]],xx[[c]]]+D[kk[[d,c]],xx[[b]]]-D[kk[[b,c]],xx[[d]]])+ik[[a,d]](D[hh[[d,b]],xx[[c]]]+D[hh[[d,c]],xx[[b]]]-D[hh[[b,c]],xx[[d]]]),{d,nn}]],{a,nn},{b,nn},{c,nn}];
rm=Table[Expand[Sum[D[cm[[c,a,b]],xx[[c]]]-D[cm[[c,a,c]],xx[[b]]]+Sum[ch[[c,c,d]]ck[[d,a,b]]+ck[[c,c,d]]ch[[d,a,b]]-ch[[c,b,d]]ck[[d,a,c]]-ck[[c,b,d]]ch[[d,a,c]],{d,nn}],{c,nn}]],{a,nn},{b,nn}];
rh=ric1[hh]; rk=ric1[kk];
sm=Tr[et.rm+ih.rk+ik.rh];
em=Expand[rm-et sm/2-hh Tr[et.rk]/2-kk Tr[et.rh]/2];
res=Expand[em+ein1[ll]-lie[ein1[hh]]];
<|"mixed_identity_residual"->res,"pure_gauge_linear_residual"->ein1[kk],"off_shell_parent_E1"->ein1[hh],"mixed_source_nonzero"->(em=!=ConstantArray[0,{4,4}]),"factor_convention"->"coefficient of epsilon eta, with no factor 1/2"|>
