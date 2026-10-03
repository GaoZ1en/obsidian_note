Clear[wp,asp,mm,bb,qq,ells,cp,cm,cc,ang,dats,cf,solve,w0,w1,ww];
wp=50; asp=N[3/10,wp]; mm=1; bb=Sqrt[1-asp^2]; qq=asp mm;
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
cf[w_?NumericQ,nn_Integer]:=Module[{b0,b1,b2,c0,c1,av,rat=0,n},{b0,b1,b2,c0,c1,av}=dats[w];
Do[rat=-((n-1)(n-2)+b2(n-1)+c1)/(-2n(n-1)+b1 n+c0+(n+1)(n+b0)rat),{n,nn,1,-1}];
c0+b0 rat];
solve[seed_,nn_]:=ww/.FindRoot[cf[ww,nn]==0,{ww,N[seed,wp]},WorkingPrecision->wp,AccuracyGoal->35,PrecisionGoal->35,MaxIterations->40];
w0=N[32/100-96 I/1000,wp];w1=N[30/100-3 I/10,wp];
res=Table[w0=solve[w0,nn];w1=solve[w1,nn];<|"depth"->nn,"fundamental"->ToString[w0,InputForm],"overtone"->ToString[w1,InputForm],"fundamental_A"->ToString[ang[w0],InputForm],"overtone_A"->ToString[ang[w1],InputForm],"CF_residuals"->{Abs[cf[w0,nn]],Abs[cf[w1,nn]]}|>,{nn,{100,200,400,800}}];
res
