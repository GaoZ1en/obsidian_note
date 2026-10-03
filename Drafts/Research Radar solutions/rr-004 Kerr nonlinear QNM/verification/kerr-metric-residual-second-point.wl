ClearAll["Global`*"];

wp=70;ss=1-z^2;si=Sqrt[ss];sig=r^2+a^2 z^2;de=r^2-2r+a^2;gg=r+I a z;gb=r-I a z;
g={{-(1-2r/sig),0,0,-2a r ss/sig},{0,sig/de,0,0},{0,0,sig/ss,0},{-2a r ss/sig,0,0,(r^2+a^2+2a^2 r ss/sig)ss}};
g=-g;gi=Simplify[Inverse[g]];
lv={(r^2+a^2)/de,1,0,a/de};nv={(r^2+a^2),-de,0,a}/(2sig);mv={I a si,0,-si,I/si}/(Sqrt[2]gg);mbv={-I a si,0,-si,-I/si}/(Sqrt[2]gb);
nc=Simplify[g.nv];mc=Simplify[g.mv];
kk=(r^2+a^2)w-a mm;gd=(I kk+4(r-1))/de;
vr=(kk^2-4I(r-1)kk)/de+8I w r-a^2 w^2+2a mm w-(av-4);
r2=-3D[de,r]/de r1-vr/de r0;
s2=(2z s1-(a^2 w^2 z^2+4a w z-2+av-(mm-2z)^2/ss)s0)/ss;
rvars={r0,r1,rr2,rr3,rr4};dr[f_]:=D[f,r]+Sum[D[f,rvars[[j+1]]]rvars[[j+2]],{j,0,3}];
dz[f_]:=D[f,z]+D[f,s0]s1+D[f,s1]s2;
ld[n_,f_]:=-si dz[f]+(a w si-mm/si+n z/si)f;
h1=r1+gd r0;h2=dr[h1]+gd h1;
ha=gg^2/2 r0(ld[1,ld[2,s0]]+2I a si/gg ld[2,s0]);
hb=-de gg^2/(2Sqrt[2]gb)(2a^2 si z/sig h1 s0+(h1-2r r0/sig)ld[2,s0]);
hc=de^2 gg^2/(4gb^2)(h2-2h1/gg)s0;
hm=Table[ha nc[[j]]nc[[k]]-hb(nc[[j]]mc[[k]]+mc[[j]]nc[[k]])+hc mc[[j]]mc[[k]],{j,4},{k,4}];

base="/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/verification/";
data=Get[base<>"kerr-dd-response-data-l18.wl"];hd=Get[base<>"kerr-dd-hertz-jets-l18-r2p5.wl"];ww=data["w"];asp=data["a"];bb=data["b"];rp=1+bb;rm=1-bb;rpt=hd["r"];zpt=N[-1/5,wp];bgrules={a->asp,r->rpt,z->zpt};
dd0[f_,j_]:=Switch[j,1,0f,2,D[f,r],3,D[f,z],4,0f];
dd1[f_,j_]:=Switch[j,1,-I w f,2,dr[f],3,dz[f],4,I mm f];
dhbase=Table[dd1[hm,j],{j,4}];d2hbase=Table[dd1[dd1[hm,j],k],{j,4},{k,4}];
jets[freq_,m_,eig_,rjs_,sjs_]:=Module[{rules=Join[bgrules,{w->freq,mm->m,av->eig,s0->sjs[[1]],s1->sjs[[2]]},Thread[rvars->rjs]]},N[{hm,dhbase,d2hbase}/.rules,wp]];
gn=N[g/.bgrules,wp];inv=N[gi/.bgrules,wp];dg=Table[N[dd0[g,j]/.bgrules,wp],{j,4}];d2g=Table[N[dd0[dd0[g,j],k]/.bgrules,wp],{j,4},{k,4}];
yp[ll_]:=Sqrt[(2ll+1)/(4Pi)]((1+z)/2)^2 JacobiP[ll-2,0,4,z];
yd[ll_]:=Sqrt[(2ll+1)/(4Pi)]Sqrt[Factorial[ll+4]Factorial[ll-4]/(Factorial[ll+2]Factorial[ll-2])](1-z)(1+z)^3/16 JacobiP[ll-4,2,6,z];
eigen[freq_,m_,vec_]:=Module[{ells=Range[m,21],mat,mat2,mt},
mat=N[Table[Which[jj==ii,2m/(ii(ii+1)),jj==ii+1,Sqrt[(((ii+1)^2-m^2)((ii+1)^2-4))/((ii+1)^2(2ii+1)(2ii+3))],jj==ii-1,Sqrt[((ii^2-m^2)(ii^2-4))/(ii^2(2ii-1)(2ii+1))],True,0],{ii,ells},{jj,ells}],wp];
mat2=(mat.mat)[[1;;-2,1;;-2]];mt=mat[[1;;-2,1;;-2]];vec.(DiagonalMatrix[Most[ells](Most[ells]+1)-2]-asp^2 freq^2 mat2-4asp freq mt).vec];
sp=Expand[data["parent_angular"].Table[yp[ll],{ll,2,20}]];avp=eigen[ww,2,data["parent_angular"]];
hor[cs_,xx_]:=Fold[#1 xx+#2&,0,Reverse[cs]];
pc=data["pc"];xp=(rpt-rp)/(rpt-rm);sigp=(2rp ww-2asp)/(2bb);bp=-3+2I ww+I sigp;cp=-2-I sigp;
pp=Exp[I ww rpt](rpt-rm)^bp(rpt-rp)^cp;
pr0=pp hor[pc,xp];pr1=pp((I ww+bp/(rpt-rm)+cp/(rpt-rp))hor[pc,xp]+2bb/(rpt-rm)^2 hor[Range[Length[pc]-1]Rest[pc],xp]);
drp[f_]:=D[f,r]+D[f,r0]r1+D[f,r1]r2;
pjs={pr0,pr1,Sequence@@(N[NestList[drp,r2,2]/.Join[bgrules,{w->ww,mm->2,av->avp,r0->pr0,r1->pr1}],wp])};
parent=jets[ww,2,avp,pjs,N[{sp,D[sp,z]}/.z->zpt,wp]];
childparts=Table[Module[{vec=data["daughter_angular"][ell],sd,ad},sd=Expand[vec.Table[yd[ll],{ll,4,20}]];ad=eigen[2ww,4,vec];jets[2ww,4,ad,hd["radial_jets"][ell],N[{sd,D[sd,z]}/.z->zpt,wp]]],{ell,4,18}];

einstein[jets0_]:=Module[{hin=jets0[[1]],dh=jets0[[2]],d2h=jets0[[3]],ginv1,invd,inv1d,cc0,cc1,dcc0,dcc1,gam0,gam1,gam2,dg0,dg1,dg2,gams,dgs,ric,sc0,sc1,sc2,ein0,ein1,ein2},ginv1=-inv.hin.inv;
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
ric=Table[Table[Sum[dgs[[o+1,l,l,j,k]]-dgs[[o+1,k,l,j,l]],{l,4}]+Sum[Sum[gams[[p+1,l,l,t]]gams[[o-p+1,t,j,k]]-gams[[p+1,l,k,t]]gams[[o-p+1,t,j,l]],{p,0,o}],{l,4},{t,4}],{j,4},{k,4}],{o,0,2}];
sc0=Tr[inv.ric[[1]]];sc1=Tr[inv.ric[[2]]+ginv1.ric[[1]]];sc2=Tr[inv.ric[[3]]+ginv1.ric[[2]]];
ein0=ric[[1]]-gn sc0/2;ein1=ric[[2]]-(gn sc1+hin sc0)/2;ein2=ric[[3]]-(gn sc2+hin sc1)/2;

{ein0,ein1,ein2}];

pe=einstein[parent];nv0=N[nv/.bgrules,wp];
out=Table[With[{ce=einstein[Total[Take[childparts,lmax-3]]]},<|"ellmax"->lmax,"relative_full_Einstein_residual"->Max[Abs[ce[[2]]+pe[[3]]]]/Max[Abs[pe[[3]]]]|>],{lmax,{6,10,14,18}}];
<|"point"->{rpt,zpt},"parent_linear_residual"->Max[Abs[pe[[2]]]],"source_max"->Max[Abs[pe[[3]]]],"convergence"->N[out,25]|>

