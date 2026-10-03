ClearAll["Global`*"];wp=80;asp=N[0,wp];bb=Sqrt[1-asp^2];
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




Get["/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/verification/kerr-source-corrected.wl"];
terms=Map[Function[ru,With[{ee=First[ru]}, {Flatten[MapIndexed[ConstantArray[First[#2],#1]&,Take[ee,7]]],First[FirstPosition[ee[[8;;11]],1]],ee[[12]],ee[[13]],Last[ru]}]],sourceRules];
conv[aa_,bb_]:=ListConvolve[aa,bb,{1,-1},0];
parentCoeffs[nn_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{b0,b1,b2,c0,c1,av,rat=0,rr=ConstantArray[0,nn],n},
{b0,b1,b2,c0,c1,av}=dats[w,2,2,2,14];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat);rr[[n]]=rat,{n,nn,1,-1}];FoldList[Times,1,rr]]];
aeig[freq_,mm_,ll_,lm_]:=Module[{ells,mat,mat2,ev,vec,idx,vv},
{ells,mat,mat2}=angmat[-2,mm,lm];{ev,vec}=Eigensystem[DiagonalMatrix[ells(ells+1)-2]-asp^2 freq^2 mat2-4asp freq mat];
idx=First@Ordering[Abs[ev-(ll(ll+1)-2)],1];vv=vec[[idx]];vv=vv/Sqrt[vv.vv];If[Re[vv[[ll-mm+1]]]<0,vv=-vv];{ev[[idx]],vv}];
yp[ll_]:=Sqrt[(2ll+1)/(4Pi)]((1+z)/2)^2 JacobiP[ll-2,0,4,z];
yd[ll_]:=Sqrt[(2ll+1)/(4Pi)]Sqrt[Factorial[ll+4]Factorial[ll-4]/(Factorial[ll+2]Factorial[ll-2])](1-z)(1+z)^3/16 JacobiP[ll-4,2,6,z];
gauss[nq_]:=Module[{ev,vec,jj},jj=SparseArray[{Band[{1,2}]->Table[j/Sqrt[4j^2-1],{j,nq-1}],Band[{2,1}]->Table[j/Sqrt[4j^2-1],{j,nq-1}]},{nq,nq}];{ev,vec}=Eigensystem[N[Normal[jj],wp]];Transpose[{ev,2vec[[All,1]]^2}]];
dt[cs_]:=Module[{len=Length[cs],der,out},der=Range[len-1]Rest[cs];out=PadRight[conv[{1,-2,1}/dd,der],len+1]+PadRight[conv[{2I w+(-1+4I w)/dd,-(-1+4I w)/dd},cs],len+1];Take[out,len-1]];
sourcePrepare[nn_]:=Module[{tseries,keys},
tseries=Take[#,nn+1]&/@NestList[dt,Take[pc,nn+7],6];
keys=DeleteDuplicates[#[[2;;4]]&/@terms];
radGroups=Association[Map[Function[key,key->Total[Map[Function[tt,tt[[5]] Take[conv[tseries[[tt[[1,1]]]],tseries[[tt[[1,2]]]]],nn+1]],Select[terms,#[[2;;4]]==key&]]]],keys]];];
solveDaughter[nn_,ell_,nq_,nmom_,lm_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{ap,vp,ad,vd,sp,hh,ggs,sd,quad,zq,wq,gvals,sdvals,cc,ee,qq,jcache,source=ConstantArray[0,nn+1],key,ch,pp,kk,jseq,poly,angseq,b0,b1,b2,c0,c1,av,alp,bet,gam,tri,sol},
{ap,vp}=aeig[w,2,2,lm];sp=Expand[vp.Table[yp[ll],{ll,2,lm}]];
hh=Cancel[-D[sp,z]+(asp w-2/(1+z))sp];ggs=Expand/@{(1-z^2)hh^2,sp(-(1-z^2)D[hh,z]+(2z-2+asp w(1-z^2))hh),3I asp(1-z^2)sp hh,asp^2(1-z^2)sp^2};
{ad,vd}=aeig[2w,4,ell,lm];sd=Expand[vd.Table[yd[ll],{ll,4,lm}]];
quad=gauss[nq];zq=quad[[All,1]];wq=quad[[All,2]];
gvals=Table[ggs[[ch]]/.z->zzq,{ch,4},{zzq,zq}];sdvals=Table[sd/.z->zzq,{zzq,zq}];
cc=rp-I asp zq;ee=rm-I asp zq;qq=ee/cc;
jcache=Association[];
Do[
{ch,pp,kk}=key;
If[!KeyExistsQ[jcache,{ch,kk}],jcache[{ch,kk}]=Table[Binomial[kk+j-1,j]Total[2Pi wq sdvals gvals[[ch]] cc^-kk qq^j],{j,0,nmom}]];
jseq=jcache[{ch,kk}];poly=CoefficientList[Expand[(rp-rm x)^pp(1-x)^(kk+1-pp)],x];
angseq=conv[jseq,poly];source+=Take[conv[radGroups[key],angseq],nn+1];
,{key,Keys[radGroups]}];
source=-source/(16dd);
{b0,b1,b2,c0,c1,av}=dats[2w,-2,4,ell,lm];
alp=Table[(n+1)(n+b0),{n,0,nn-1}];bet=Table[-2n(n-1)+b1 n+c0,{n,0,nn}];gam=Table[(n-1)(n-2)+b2(n-1)+c1,{n,1,nn}];
tri=SparseArray[{Band[{1,1}]->bet,Band[{1,2}]->alp,Band[{2,1}]->gam},{nn+1,nn+1}];sol=LinearSolve[tri,source];
<|"ell"->ell,"N"->nn,"angular_cutoff"->lm,"quadrature"->nq,"moment_cutoff"->nmom,"E"->Total[sol],"ratio_bilinear_spheroidal"->Total[sol]/(2w^6 amp^2),"contribution_spherical22_to44"->vd[[1]]Total[sol]/(2w^6 amp^2 vp[[1]]^2),"parent_v2"->vp[[1]],"daughter_v4"->vd[[1]],"parent_hermitian_norm"->Re[Conjugate[vp].vp],"daughter_hermitian_norm"->Re[Conjugate[vd].vd],"solve_residual"->Max[Abs[tri.sol-source]],"last_d"->Last[sol]|>]];

w=solve[374/1000-89I/1000,1600,2];rp=1+bb;rm=1-bb;dd=2bb;
pc=parentCoeffs[2000];amp=Total[pc];sourcePrepare[400];
<|"omega"->N[w,30],"parent_sum"->N[amp,30],"source_terms"->Length[terms],"source_groups"->Length[radGroups],"result"->N[solveDaughter[400,4,32,80,12],25]|>

