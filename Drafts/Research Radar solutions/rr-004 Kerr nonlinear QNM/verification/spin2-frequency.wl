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
w0=N[42/100-88 I/1000,wp];
roots=Table[w0=solve[w0,nn];{nn,w0,ang[w0]},{nn,{100,200,400,800}}];
wp2=solve[w0,800,2];
qsum=Table[{nn,cf[2w0,nn,-2,4,4,18]},{nn,{100,200,400,800,1200}}];
<|"roots"->N[roots,38],"s_plus_2_frequency_difference"->N[wp2-w0,12],"angular_parity_relation"->N[ang[w0,2]-ang[w0,-2]+4,12],"daughter_sum_frequency_cf"->N[qsum,24],"sigma"->N[(2(1+bb)w0-2asp)/(2bb),24]|>
