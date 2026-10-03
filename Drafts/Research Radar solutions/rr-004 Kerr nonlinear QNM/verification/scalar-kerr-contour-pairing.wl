Clear[wp,asp,mm,bb,qq,ells,cp,cm,cc,ang,dats,cf,solve,w0,w1,ww];
wp=80; asp=N[3/10,wp]; mm=1; bb=Sqrt[1-asp^2]; qq=asp mm;
ells=Range[1,13,2];
cp[l_]:=Sqrt[((l+1)^2-mm^2)/((2l+1)(2l+3))];
cm[l_]:=Sqrt[(l^2-mm^2)/((2l-1)(2l+1))];
cc=N[Table[Which[lj==li,cp[li]^2+cm[li]^2,lj==li+2,cp[li]cp[li+1],lj==li-2,cm[li]cm[li-1],True,0],{li,ells},{lj,ells}],wp];
ang[w_?NumericQ]:=Module[{ee=Eigenvalues[DiagonalMatrix[ells(ells+1)]-asp^2 w^2 cc]},First[MinimalBy[ee,Abs[#-2]&]]];
dats[w_?NumericQ]:=Module[{b0,b1,b2,c0,c1,av=ang[w]},
b0=(bb-2 I w-2 I bb w+I qq)/bb;
b1=2 I(2w+2bb^2 w+bb(2 I+4w)-qq)/bb;
b2=-I(2w+bb(3 I+6w)-qq)/bb;
c0=-1+15w^2+bb^2 w^2+2bb w(I+4w)+(I+4w)(2w-qq)/bb-2w(-2 I+qq)-av;
c1=-(I+4w)(2w+bb(I+2w)-qq)/bb;
{b0,b1,b2,c0,c1,av}];
cf[w_?NumericQ,nn_Integer]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{b0,b1,b2,c0,c1,av,rat=0,n},{b0,b1,b2,c0,c1,av}=dats[w];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat),{n,nn,1,-1}];
c0+b0 rat]];

solve[seed_,nn_]:=ww/.FindRoot[cf[ww,nn]==0,{ww,N[seed,wp],N[seed(1+10^-5),wp]},WorkingPrecision->wp,AccuracyGoal->40,PrecisionGoal->40,MaxIterations->60];
rp=1+bb;rm=1-bb;
roots={solve[32/100-96 I/1000,1200],solve[30/100-3 I/10,1200]};
makeMode[w_,nn_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{b0,b1,b2,c0,c1,av,rat=0,rr=ConstantArray[0,nn],ee,vec,pos,coef,n},
{b0,b1,b2,c0,c1,av}=dats[w];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat);rr[[n]]=rat,{n,nn,1,-1}];
coef=FoldList[Times,1,rr];
ee=Eigensystem[DiagonalMatrix[ells(ells+1)]-asp^2 w^2 cc];
pos=First[Ordering[Abs[ee[[1]]-2],1]];vec=ee[[2,pos]];vec=vec/Sqrt[vec.vec];
<|"w"->w,"A"->av,"coef"->coef,"vec"->vec,"sigma"->(2w rp-qq)/(2bb)|>]];
modes=makeMode[#,800]&/@roots;
horner[cs_,zz_]:=Fold[#1 zz+#2&,Last[cs],Reverse[Most[cs]]];
rad[md_,rr_,logz_]:=Module[{w=md["w"],sg=md["sigma"],cs=md["coef"],zz,be,ga,pref,rho,xp,xxp,f,fp,fpp,dd},
be=-1+2 I w+I sg;ga=-I sg;zz=(rr-rp)/(rr-rm);
pref=Exp[I w rr+be Log[rr-rm]+ga logz];
rho=I w+be/(rr-rm)+ga/(rr-rp);xp=2bb/(rr-rm)^2;xxp=-4bb/(rr-rm)^3;
f=horner[cs,zz];fp=horner[Range[Length[cs]-1]Rest[cs],zz];
fpp=horner[Range[Length[cs]-2]Range[2,Length[cs]-1]Drop[cs,2],zz];
{pref f,pref(rho f+xp fp),pref((rho^2-be/(rr-rm)^2-ga/(rr-rp)^2)f+(2rho xp+xxp)fp+xp^2 fpp)}];
point[md_,rr_,logz_]:=Module[{vv=rad[md,rr,logz],de=(rr-rp)(rr-rm),w=md["w"],pot,terms},
pot=(((rr^2+asp^2)w-qq)^2/de-asp^2 w^2+2qq w-md["A"]);
terms={de vv[[3]],2(rr-1)vv[[2]],pot vv[[1]]};Abs[Total[terms]]/Total[Abs[terms]]];

rpair[md_,rr_,lz_]:=Module[{w=md["w"],sg=md["sigma"],cs=md["coef"],xx,be,ga,pref,rho,xp,f,fp},
be=-1+2 I w+I sg;ga=-I sg;xx=(rr-rp)/(rr-rm);pref=Exp[I w rr+be Log[rr-rm]+ga lz];
rho=I w+be/(rr-rm)+ga/(rr-rp);xp=2bb/(rr-rm)^2;
f=horner[cs,xx];fp=horner[Range[Length[cs]-1]Rest[cs],xx];{pref f,pref(rho f+xp fp)}];
density[ii_,jj_,rr_?NumericQ,lz_?NumericQ]:=Module[{u=modes[[ii]],v=modes[[jj]],ra,rb,w1,w2,ov,cs,sm,de,ht,kphi,hp,kp,p1,p2,u1,v2,u1p,v2p,tt,hh,gtt,gtr,gtp},
w1=u["w"];w2=v["w"];ra=rpair[u,rr,lz];rb=rpair[v,rr,lz];ov=u["vec"].v["vec"];cs=u["vec"].cc.v["vec"];sm=ov-cs;de=(rr-rp)(rr-rm);
ht=rr+(2+rp/bb)Log[rr-rm]-(rp/bb)lz;
kphi=-asp/(2bb)(lz-Log[rr-rm]);hp=(rr^2+asp^2-4rp)/de;kp=-asp/de;
tt=I((w1+w2)(((rr^2+asp^2)^2/de)ov-asp^2 sm)-4asp rr mm/de ov)ra[[1]]rb[[1]];
p1=Exp[I w1 ht-I mm kphi];p2=Exp[-I w2 ht+I mm kphi];
u1=p1 ra[[1]];v2=p2 rb[[1]];u1p=p1(ra[[2]]+(I w1 hp-I mm kp)ra[[1]]);v2p=p2(rb[[2]]+(-I w2 hp+I mm kp)rb[[1]]);
gtt=-8rp(rr+rp)/(rr-rm)ov+asp^2 sm;gtr=4rp-rr^2-asp^2;gtp=-asp(rr+rp+2)/(rr-rm);
hh=-I((w1+w2)gtt-2mm gtp ov)u1 v2-gtr ov(u1p v2-v2p u1);
2Pi {tt,hh}];
oneint[ii_,jj_,typ_,uu_,yy_,rad0_,kap_]:=Module[{f1,f2,f3,x,r0=N[3,60],z0=N[rad0,60],kk=N[kap,60],a1,a2,a3},
f1[x_?NumericQ]:=With[{zz=z0 Exp[(1+I kk)x]},density[ii,jj,rp+zz,Log[z0]+(1+I kk)x][[typ]]zz(1+I kk)];
f2[x_?NumericQ]:=density[ii,jj,x,Log[x-rp]][[typ]];
f3[x_?NumericQ]:=I density[ii,jj,r0+I x,Log[r0+I x-rp]][[typ]];
a1=NIntegrate[f1[x],{x,-uu,-uu/2,-10,-5,0},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->18,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
a2=NIntegrate[f2[x],{x,rp+z0,r0},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->15,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
a3=NIntegrate[f3[x],{x,0,5,15,30,yy},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->18,Method->{"GlobalAdaptive","SymbolicProcessing"->0}];
{a1,a2,a3,Total[{a1,a2,a3}]}];
res=Table[<|"pair"->pair,"Boyer_Lindquist"->oneint[pair[[1]],pair[[2]],1,60,80,2/5,2],"hyperboloidal"->oneint[pair[[1]],pair[[2]],2,60,80,2/5,2]|>,{pair,{{1,1},{2,2},{1,2}}}];res
