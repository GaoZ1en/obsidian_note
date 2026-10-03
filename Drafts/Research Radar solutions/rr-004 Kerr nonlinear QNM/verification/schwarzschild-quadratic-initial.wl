ClearAll["Global\`*"];wp=100;asp=N[0,wp];bb=Sqrt[1-asp^2];
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

w=solve[374/1000-89I/1000,1600,2];
de=r(r-2);
p1=-13r^10 w^6-34I r^9 w^5+r^8(35+269I w)w^4+r^7(131I w+99)I w^3+r^6(865w^2-949I w+44)w^2+r^5(1249w^2+530I w-35)I w+r^4(-53w^2-196I w+557)I w+r^3(2144w^2-1540I w+120)+r^2(-1380w^2+930I w-564)+r(816+408I w)-168I w-336;
p2=32I r^8 w^5-78r^7 w^4-r^6(424I w+130)I w^3+r^5(154+582I w)w^2+r^4(-968w^2+1227I w+42)I w-r^3(2320I w+300)I w+r^2(-936w^2+1291I w+48)-r(192+2352I w)+1152I w+192;
p3=19r^8 w^4+50I r^7 w^3-r^6(86+143I w)w^2-r^5(339I w+91)I w+r^4(-339w^2+538I w+42)-r^3(306+945I w)+r^2(810+447I w)-912r+360;
rh=I w+(-3+4I w)/r+(-2-2I w)/(r-2);
xp=2/r^2;
coeff={r^2 p1+r^2 de p2 rh+de^2 p3 rh^2,r^2 de p2 xp+2de^2 p3 rh xp,de^2 p3 xp^2};
ff=Map[Factor[(#/(r^7(r-2)^6))/.r->2/(1-x)]&,coeff];

sourcePolys=Map[CoefficientList[Expand[Cancel[x^5#]],x]&,ff];
parentCoeffs[nn_]:=Module[{b0,b1,b2,c0,c1,av,rat=0,rr=ConstantArray[0,nn],n},
{b0,b1,b2,c0,c1,av}=dats[w,2,2,2,14];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat);rr[[n]]=rat,{n,nn,1,-1}];FoldList[Times,1,rr]];
pc=parentCoeffs[2000];amp=Total[pc];
conv[a_,b_]:=ListConvolve[a,b,{1,-1},0];
solveSource[nn_]:=Block[{$MinPrecision=wp,$MaxPrecision=wp},Module[{cs,dc,sq,mix,dsq,polys,srcs,forcing,b0,b1,b2,c0,c1,av,tri,sol,alp,bet,gam,neg},
cs=Take[pc,nn+8];dc=Range[Length[cs]-1]Rest[cs];
polys={conv[cs,cs],conv[cs,dc],conv[dc,dc]};
srcs=MapThread[conv,{sourcePolys,polys}];
forcing=5/(48Sqrt[7Pi]) Total[PadRight[#,Max[Length/@srcs]]&/@srcs];
neg=Take[forcing,5];forcing=Take[Drop[forcing,5],nn+1];
{b0,b1,b2,c0,c1,av}=dats[2w,-2,4,4,18];
alp=Table[(n+1)(n+b0),{n,0,nn-1}];bet=Table[-2n(n-1)+b1 n+c0,{n,0,nn}];gam=Table[(n-1)(n-2)+b2(n-1)+c1,{n,1,nn}];
tri=SparseArray[{Band[{1,1}]->bet,Band[{1,2}]->alp,Band[{2,1}]->gam},{nn+1,nn+1}];
sol=LinearSolve[tri,forcing];
<|"N"->nn,"E"->Total[sol],"strain_ratio"->Total[sol]/(2w^6 amp^2),"last_d"->Last[sol],"negative_source_residual"->Max[Abs[neg]],"solve_residual"->Max[Abs[tri.sol-forcing]]|>]];
out=solveSource/@{100,200,400,800};
<|"omega"->N[w,40],"parent_sum"->N[amp,32],"results"->N[out,30]|>

