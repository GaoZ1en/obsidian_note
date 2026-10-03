ClearAll["Global`*"];

wp=70;base="/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/verification/";
data=Get[base<>"kerr-dd-response-data-l18.wl"];w=data["w"];a=data["a"];b=data["b"];om=2w;mm=4;rp=1+b;rm=1-b;rpt=N[3,wp];sigq=(2rp om-a mm)/(2b);
hor[cs_,xx_]:=Fold[#1 xx+#2&,0,Reverse[cs]];
gauss[nq_]:=Module[{ev,vec,jj},jj=SparseArray[{Band[{1,2}]->Table[j/Sqrt[4j^2-1],{j,nq-1}],Band[{2,1}]->Table[j/Sqrt[4j^2-1],{j,nq-1}]},{nq,nq}];{ev,vec}=Eigensystem[N[Normal[jj],wp]];Transpose[{ev,2vec[[All,1]]^2}]];
quad[nq_]:=Module[{gl=gauss[nq],edges={0,1,2,4,8,16,32,64,100}},Flatten[Table[Map[{(edges[[j+1]]+edges[[j]])/2+(edges[[j+1]]-edges[[j]])#[[1]]/2,(edges[[j+1]]-edges[[j]])#[[2]]/2}&,gl],{j,Length[edges]-1}],1]];
int[nq_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{qq,yy,ww,rr,xx,ds,basic,mom,pjet},
qq=quad[nq];yy=qq[[All,1]];ww=qq[[All,2]];rr=rpt+I yy;xx=(rr-rp)/(rr-rm);
ds=Table[hor[data["daughter_radial"][ell],xx],{ell,4,18}];
basic=I ww Exp[2I om rr](rr-rm)^(-1+4I om);
mom=Table[ds.(basic (I yy)^j),{j,0,3}];
Transpose[{32mom[[4]]/6,-16mom[[3]],32mom[[2]],-32mom[[1]]}]]];
p64=int[64];p96=int[96];
de=r^2-2r+a^2;k=(r^2+a^2)om-a mm;gd=(I k+4(r-1))/de;
pvars={p0,p1,p2,p3,p4};op[f_]:=D[f,r]+Sum[D[f,pvars[[j+1]]]pvars[[j+2]],{j,0,3}]-gd f;
uex=NestList[op,p0,4];
q0=((rpt-rp)(rpt-rm))^2 Exp[I om rpt](rpt-rp)^(I sigq)(rpt-rm)^(I(2om-sigq));
z0=Exp[2I om rpt](rpt-rm)^(-1+4I om);
x0=(rpt-rp)/(rpt-rm);
pfull=Table[Append[p96[[ell-3]],32z0 hor[data["daughter_radial"][ell],x0]],{ell,4,18}];
uJets=Association@Table[ell->N[(uex/.r->rpt/.Thread[pvars->pfull[[ell-3]]])/q0,wp],{ell,4,18}];
Put[<|"r"->rpt,"radial_jets"->uJets,"omega"->om,"quadrature_difference"->Max[Abs[(p64-p96)/p96]]|>,base<>"kerr-dd-hertz-jets-l18.wl"];
<|"relative_quadrature_change"->Max[Abs[(p64-p96)/p96]],"ell4_Hertz_jets"->N[uJets[4],25],"saved"->base<>"kerr-dd-hertz-jets-l18.wl"|>

