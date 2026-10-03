ClearAll["Global`*"];

dim=4;xx={1,2};yy={3,4};sym[u_,v_]:=Sort[{u,v}];
gn=ArrayFlatten[{{ConstantArray[0,{2,2}],IdentityMatrix[2]},{IdentityMatrix[2],ConstantArray[0,{2,2}]}}];inv=gn;
hin=Table[If[j<=2&&k<=2,hh@@sym[j,k],0],{j,4},{k,4}];ginv1=-inv.hin.inv;
dg=Table[If[j>2&&k>2,0,gg1[l,Sequence@@sym[j,k]]],{l,4},{j,4},{k,4}];
dh=Table[If[j<=2&&k<=2,hh1[l,Sequence@@sym[j,k]],0],{l,4},{j,4},{k,4}];
d2g=Table[If[j>2&&k>2,0,gg2[Sequence@@sym[l,t],Sequence@@sym[j,k]]],{l,4},{t,4},{j,4},{k,4}];
d2h=Table[If[j<=2&&k<=2,hh2[Sequence@@sym[l,t],Sequence@@sym[j,k]],0],{l,4},{t,4},{j,4},{k,4}];
invd=Table[-inv.dg[[j]].inv,{j,4}];
inv1d=Table[-invd[[j]].hin.inv-inv.dh[[j]].inv-inv.hin.invd[[j]],{j,4}];
cc0=Table[dg[[j,b,k]]+dg[[k,b,j]]-dg[[b,j,k]],{b,4},{j,4},{k,4}];
cc1=Table[dh[[j,b,k]]+dh[[k,b,j]]-dh[[b,j,k]],{b,4},{j,4},{k,4}];
dcc0=Table[d2g[[j,l,b,k]]+d2g[[k,l,b,j]]-d2g[[b,l,j,k]],{l,4},{b,4},{j,4},{k,4}];
dcc1=Table[d2h[[j,l,b,k]]+d2h[[k,l,b,j]]-d2h[[b,l,j,k]],{l,4},{b,4},{j,4},{k,4}];
gam0=Table[Sum[inv[[i,b]]cc0[[b,j,k]],{b,4}]/2,{i,4},{j,4},{k,4}];
gam1=Table[Sum[inv[[i,b]]cc1[[b,j,k]]+ginv1[[i,b]]cc0[[b,j,k]],{b,4}]/2,{i,4},{j,4},{k,4}];
gam2=Table[Sum[ginv1[[i,b]]cc1[[b,j,k]],{b,4}]/2,{i,4},{j,4},{k,4}];
dg0=Table[Sum[invd[[l,i,b]]cc0[[b,j,k]]+inv[[i,b]]dcc0[[l,b,j,k]],{b,4}]/2,{l,4},{i,4},{j,4},{k,4}];
dg1=Table[Sum[invd[[l,i,b]]cc1[[b,j,k]]+inv[[i,b]]dcc1[[l,b,j,k]]+inv1d[[l,i,b]]cc0[[b,j,k]]+ginv1[[i,b]]dcc0[[l,b,j,k]],{b,4}]/2,{l,4},{i,4},{j,4},{k,4}];
dg2=Table[Sum[inv1d[[l,i,b]]cc1[[b,j,k]]+ginv1[[i,b]]dcc1[[l,b,j,k]],{b,4}]/2,{l,4},{i,4},{j,4},{k,4}];
gams={gam0,gam1,gam2};dgs={dg0,dg1,dg2};
ric=Table[Map[Expand,Table[If[o<=2,Sum[dgs[[o+1,l,l,j,k]]-dgs[[o+1,k,l,j,l]],{l,4}],0]+Sum[Sum[If[0<=p<=2&&0<=o-p<=2,gams[[p+1,l,l,t]]gams[[o-p+1,t,j,k]]-gams[[p+1,l,k,t]]gams[[o-p+1,t,j,l]],0],{p,0,o}],{l,4},{t,4}],{j,4},{k,4}],{2}],{o,0,4}];
sc2=Expand[Tr[inv.ric[[3]]+ginv1.ric[[2]]]];
sc1=Expand[Tr[inv.ric[[2]]+ginv1.ric[[1]]]];
ein2=Map[Expand,ric[[3]]-(gn sc2+hin sc1)/2,{2}];
riem2[i_,j_,c_,d_]:=Expand[dg2[[c,i,d,j]]-dg2[[d,i,c,j]]+Sum[Sum[gams[[p+1,i,c,k]]gams[[3-p,k,d,j]]-gams[[p+1,i,d,k]]gams[[3-p,k,c,j]],{p,0,2}],{k,4}]];
ryxyx=Table[Expand[Sum[gn[[al,i]]riem2[i,j,be,k],{i,4}]],{al,yy},{j,xx},{be,yy},{k,xx}];

rridx[o_,i_,j_,c_,d_]:=Expand[dgs[[o+1,c,i,d,j]]-dgs[[o+1,d,i,c,j]]+Sum[Sum[gams[[p+1,i,c,k]]gams[[o-p+1,k,d,j]]-gams[[p+1,i,d,k]]gams[[o-p+1,k,c,j]],{p,0,o}],{k,4}]];
r1yyyx=Table[Expand[Sum[gn[[al,i]]rridx[1,i,be,ga,k],{i,4}]],{al,yy},{be,yy},{ga,yy},{k,xx}];
r0yyyy=Table[Expand[Sum[gn[[al,i]]rridx[0,i,be,ga,dd],{i,4}]],{al,yy},{be,yy},{ga,yy},{dd,yy}];
<|"quadratic_Riemann_YXYX"->ryxyx,"linear_Riemann_YYYX"->r1yyyx,"background_Riemann_YYYY"->r0yyyy,"quadratic_Einstein_Y_all"->ein2[[yy,All]],"cubic_quartic_Ricci"->ric[[4;;5]],"quadratic_scalar"->sc2|>

