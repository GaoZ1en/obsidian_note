ClearAll["Global\`*"];wp=80;asp=N[3/10,wp];bb=Sqrt[1-asp^2];
angmat[ss_,mm_,lm_]:=Module[{ells=Range[Max[Abs[ss],Abs[mm]],lm+1],mat},
mat=N[Table[Which[jj==ii,-mm ss/(ii(ii+1)),jj==ii+1,Sqrt[(((ii+1)^2-mm^2)((ii+1)^2-ss^2))/((ii+1)^2(2ii+1)(2ii+3))],jj==ii-1,Sqrt[((ii^2-mm^2)(ii^2-ss^2))/(ii^2(2ii-1)(2ii+1))],True,0],{ii,ells},{jj,ells}],wp];
{Most[ells],mat[[1;;-2,1;;-2]],(mat.mat)[[1;;-2,1;;-2]]}];
datang=Association@Table[ss->angmat[ss,2,14],{ss,{-2,2}}];
ang[w_?NumericQ,ss_:-2,mm_:2,ll_:2,lm_:14]:=Module[{ells,mat,mat2,vals},
{ells,mat,mat2}=If[mm==2&&lm==14,datang[ss],angmat[ss,mm,lm]];
vals=Eigenvalues[DiagonalMatrix[ells(ells+1)-ss(ss+1)]-asp^2 w^2 mat2+2asp w ss mat];
First[MinimalBy[vals,Abs[#-(ll(ll+1)-ss(ss+1))]&]]];
dats[w_?NumericQ,ss_:-2,mm_:2,ll_:2,lm_:14]:=Module[{q=asp mm,b0,b1,b2,c0,c1,av=ang[w,ss,mm,ll,lm]},
b0=(bb-2I w-2I bb w+I q)/bb-ss;
b1=2I(2w+2bb^2 w+bb(2I+4w)-q)/bb;
b2=-I(2w+bb(3I+6w)-q)/bb+ss;
c0=-1+15w^2+bb^2 w^2+2bb w(I+4w)+(I+4w)(2w-q)/bb-2w(-2I+q)-av-ss;
c1=-(I+4w)(2w+bb(I+2w)-q)/bb+ss(1-4I w);
{b0,b1,b2,c0,c1,av}];
cf[w_?NumericQ,nn_Integer,ss_:-2,mm_:2,ll_:2,lm_:14]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{b0,b1,b2,c0,c1,av,rat=0,n},
{b0,b1,b2,c0,c1,av}=dats[w,ss,mm,ll,lm];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat),{n,nn,1,-1}];c0+b0 rat]];
solve[seed_,nn_,ss_:-2]:=ww/.FindRoot[cf[ww,nn,ss]==0,{ww,N[seed,wp],N[seed(1+10^-5),wp]},WorkingPrecision->wp,AccuracyGoal->40,PrecisionGoal->40,MaxIterations->60];

rp=1+bb;rm=1-bb;dd=2bb;ss=-2;mm=2;
w0=solve[42/100-88I/1000,1200];
makeMode[nn_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{b0,b1,b2,c0,c1,av,rat=0,rr=ConstantArray[0,nn],vals,vecs,pos,vec,ells,mat,mat2,n},
{b0,b1,b2,c0,c1,av}=dats[w0,ss,mm,2,14];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat);rr[[n]]=rat,{n,nn,1,-1}];
{ells,mat,mat2}=datang[ss];
{vals,vecs}=Eigensystem[DiagonalMatrix[ells(ells+1)-ss(ss+1)]-asp^2 w0^2 mat2+2asp w0 ss mat];
pos=First[Ordering[Abs[vals-4],1]];vec=vecs[[pos]];vec=vec/Sqrt[vec.vec];
<|"w"->w0,"A"->av,"Apr"->vec.(-2asp^2 w0 mat2+2asp ss mat).vec,"coef"->FoldList[Times,1,rr],"sigma"->(2w0 rp-asp mm)/dd|>]];
horner[cs_,zz_]:=Fold[#1 zz+#2&,Last[cs],Reverse[Most[cs]]];
rpair[md_,rr_,lz_]:=Module[{w=md["w"],sg=md["sigma"],cs=md["coef"],xx,be,ga,pref,rho,xp,f,fp},
be=-1-ss+2I w+I sg;ga=-ss-I sg;xx=(rr-rp)/(rr-rm);
pref=Exp[I w rr+be Log[rr-rm]+ga lz];rho=I w+be/(rr-rm)+ga/(rr-rp);xp=dd/(rr-rm)^2;
f=horner[cs,xx];fp=horner[Range[Length[cs]-1]Rest[cs],xx];{pref f,pref(rho f+xp fp)}];
dens[md_,rr_?NumericQ,lz_?NumericQ,typ_]:=Module[{w=md["w"],rd,de,kk,vp,hp,hpp,p,base,extra},
rd=rpair[md,rr,lz];de=(rr-rp)(rr-rm);kk=(rr^2+asp^2)w-asp mm;
vp=(2(rr^2+asp^2)kk-2I ss(rr-1)(rr^2+asp^2))/de+4I ss rr-2asp^2 w+2asp mm-md["Apr"];
base=de^ss rd[[1]]^2 vp;
hp=(rr^2+asp^2-4rp)/de;
hpp=(2rr de-(rr^2+asp^2-4rp)2(rr-1))/de^2;
p=de^(ss+1);
extra=I(p hp 2rd[[1]]rd[[2]]+((ss+1)de^ss 2(rr-1)hp+p hpp)rd[[1]]^2);
If[typ==1,base,base+extra]];
norm[md_,typ_,uu_,yy_,rad0_,kap_]:=Module[{f1,f2,f3,v,r0=N[3,60],z0=N[rad0,60],kk=N[kap,60],parts},
f1[v_?NumericQ]:=With[{z=z0 Exp[(1+I kk)v]},dens[md,rp+z,Log[z0]+(1+I kk)v,typ]z(1+I kk)];
f2[v_?NumericQ]:=dens[md,v,Log[v-rp],typ];
f3[v_?NumericQ]:=I dens[md,r0+I v,Log[r0+I v-rp],typ];
parts={NIntegrate[f1[v],{v,-uu,-uu/2,-uu/4,0},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->18,Method->{"GlobalAdaptive","SymbolicProcessing"->0}],
NIntegrate[f2[v],{v,rp+z0,r0},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->15,Method->{"GlobalAdaptive","SymbolicProcessing"->0}],
NIntegrate[f3[v],{v,0,yy/10,yy/3,yy},WorkingPrecision->60,AccuracyGoal->12,PrecisionGoal->12,MaxRecursion->18,Method->{"GlobalAdaptive","SymbolicProcessing"->0}]};
Total[parts]];
end[md_,rr_,lz_]:=Module[{de=(rr-rp)(rr-rm)},I de^ss(rr^2+asp^2-4rp)rpair[md,rr,lz][[1]]^2];

md=makeMode[800];w=md["w"];sg=md["sigma"];be=-1-ss+2I w+I sg;ga=-ss-I sg;
p4=Expand[((2(r^2+asp^2)((r^2+asp^2)w-asp mm)-2I ss(r-1)(r^2+asp^2))/dd^2)+(4I ss r-2asp^2 w+2asp mm-md["Apr"])z(1+z)/.r->rp+dd z];
pks=CoefficientList[p4,z];zet=-2I w dd;
unorm[deg_]:=Module[{cs=Take[md["coef"],deg+1],sq},sq=ListConvolve[cs,cs,{1,-1},0];
Exp[2I w rp] dd^(-1-2ss+4I w) Sum[sq[[n+1]] Sum[pks[[k+1]] Gamma[2ga+ss+n+k] HypergeometricU[2ga+ss+n+k,-2-2ss+4I w+k,zet],{k,0,4}],{n,0,2deg}]];
vals=Table[{nd,N[unorm[nd],32]},{nd,{40,80,160,320}}];
contours=Table[{prm,N[norm[makeMode[prm[[1]]],1,prm[[2]],prm[[3]],prm[[4]],prm[[5]]],32]},{prm,{{400,30,80,3/10,3},{800,40,100,2/5,2},{1200,30,80,3/10,3}}}];
<|"U_norms"->vals,"contour_norms"->contours,"p4_degree"->Exponent[p4,z]|>

