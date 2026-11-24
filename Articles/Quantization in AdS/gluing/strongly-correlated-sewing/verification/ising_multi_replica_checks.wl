(* Multi-interval n=2 JW/FCS and jump-localization checks. Stdout only; no JSON. *)
Block[{$MessageList={}},
 Print["# Multi-interval replica checks"];
 Print["Exact winding/Arf identities: ",Table[Module[{vs=Tuples[{0,1},m-1]},
  {m,And@@Flatten[Table[Module[{r=Join[{0},rr,{0}],s=Append[ss,0],q,g,jumps,w},
   q=Table[Mod[r[[j]]+r[[j+1]],2],{j,m}];
   g=Flatten[Table[{-I(-1)^s[[j]],(-1)^r[[j+1]]},{j,m}]];
   jumps=g/RotateRight[g];w=Total[jumps/I]/4;
   And[And@@(MemberQ[{I,-I},#]&/@jumps),IntegerQ[w],
    w==Sum[s[[j]](r[[j+1]]-r[[j]]),{j,m}],(-1)^w==(-1)^(q.s)]],
   {rr,vs},{ss,vs}]]}], {m,2,6}]];
 Module[{n=6,m=3,id=IdentityMatrix[2],xx={{0,1},{1,0}},zz={{1,0},{0,-1}},op,ham,ev,vec,psi,mat,rho,purity,gam,pred,terms},
  op[pa_,j_]:=KroneckerProduct@@Table[If[k==j,pa,id],{k,0,n-1}];
  ham=-Sum[op[zz,j].op[zz,Mod[j+1,n]]+op[xx,j],{j,0,n-1}];
  {ev,vec}=Eigensystem[N[ham]];psi=Normalize[vec[[First[Ordering[ev,1]]]]];
  mat=ConstantArray[0.,{8,8}];
  Do[With[{bits=IntegerDigits[u,2,n]},
   mat[[1+FromDigits[bits[[{1,3,5}]],2],1+FromDigits[bits[[{2,4,6}]],2]]]=psi[[u+1]]],{u,0,2^n-1}];
  rho=mat.ConjugateTranspose[mat];purity=Tr[rho.rho];
  gam=N[Table[If[OddQ[b-a],1/(n Sin[Pi(b-a)/(2n)]),0],{a,0,2n-1},{b,0,2n-1}],40];
  terms=Flatten[Table[Module[{r=Join[{0},rr,{0}],s=Append[ss,0],q,phase,chi},
   q=Table[Mod[r[[j]]+r[[j+1]],2],{j,m}];
   phase=Flatten[Table[Join[ConstantArray[-(-1)^s[[j]]Pi/2,2],ConstantArray[-Pi r[[j+1]],2]],{j,m}]];
   chi=Det[DiagonalMatrix[Cos[phase/2]]-DiagonalMatrix[Sin[phase/2]].gam];
   (-1)^(q.s) chi],{rr,Tuples[{0,1},m-1]},{ss,Tuples[{0,1},m-1]}]];
  pred=2^(1-m)Total[terms];
  Print["N6, three alternating spin intervals: direct purity = ",purity,
   "; signed FCS sum = ",N[pred,16],"; residual = ",Abs[purity-pred],
   "; PASS = ",TrueQ[Abs[purity-pred]<10^-12]];
 ];
 Print["N, trace-norm Gram difference, smallest singular value, FCS ratio, ratio/smin:"];
 Print[Table[Module[{mm=2nn,ff,pp,g,h,jg,jh,ag,ah,sv,ratio,diff},
   ff=Table[Exp[2Pi I k p/(2nn)]/Sqrt[2nn],{k,0,2nn-1},{p,0,nn-1}]//N;
   pp=ff.ConjugateTranspose[ff];
   g=Flatten[ConstantArray[#,mm/6]&/@{I,-1,-I,1,-I,1}];
   h=Flatten[ConstantArray[#,mm/6]&/@{I,1,I,1,I,1}];
   jg=pp.DiagonalMatrix[g]-DiagonalMatrix[g].pp;
   jh=pp.DiagonalMatrix[h]-DiagonalMatrix[h].pp;
   diff=ConjugateTranspose[jg].jg-ConjugateTranspose[jh].jh;
   ag=ConjugateTranspose[ff].DiagonalMatrix[g].ff;
   ah=ConjugateTranspose[ff].DiagonalMatrix[h].ff;
   sv=Min[SingularValueList[ag]];ratio=Abs[Det[ag]/Det[ah]];
   {nn,Total[Abs[Eigenvalues[(diff+ConjugateTranspose[diff])/2]]],sv,ratio,ratio/sv}],
   {nn,{12,24,48,96}}]//InputForm];
 Print["n3 theta[00;01]/theta[00;00] versus algebraic B(x): "];
 Print[Table[Module[{x=N[xx,50],b,om,th,rat,target},
  b=Hypergeometric2F1[1/3,2/3,1,1-x]/Hypergeometric2F1[1/3,2/3,1,x];
  om=I b/Sqrt[3] {{2,-1},{-1,2}};
  th[d_]:=Sum[Exp[I Pi({j,k}.om.{j,k})](-1)^(d k),{j,-15,15},{k,-15,15}];
  rat=th[1]/th[0];target=Sqrt[(1+2Cos[4ArcSin[Sqrt[x]]/3])/3];
  {xx,N[rat,16],Abs[rat-target]}],{xx,{1/10,1/5,1/2,4/5,9/10}}]//InputForm];
 Print["n3 Ising b/(single p3 product) and independently identified CFT target:"];
 Print[Table[Module[{c,a1,a2,aa,ca,tt,ell,x=Sin[Pi/8]^2,val,target},
  c=N[Table[1/(nn Sin[Pi(j-i+1/2)/nn]),{i,nn},{j,nn}],40];
  a1=Range[nn/8];a2=Range[nn/2+1,5nn/8];aa=Join[a1,a2];ell=Length[aa];
  ca=c[[aa,aa]];tt=DiagonalMatrix[Join[ConstantArray[-1,Length[a1]],ConstantArray[1,Length[a2]]]];
  val=Det[IdentityMatrix[ell]+ca.Transpose[ca]+2ca.tt.Transpose[ca].tt]/
   (Det[IdentityMatrix[Length[a1]]+3c[[a1,a1]].Transpose[c[[a1,a1]]]]
    Det[IdentityMatrix[Length[a2]]+3c[[a2,a2]].Transpose[c[[a2,a2]]]]);
  target=N[(1-x)^(-2/9)Sqrt[(1+2Cos[4ArcSin[Sqrt[x]]/3])/3],40];
  {nn,N[val,16],N[target,16],N[val-target,8]}],{nn,{16,32,64,128,256}}]//InputForm];
 Print["Messages: ",$MessageList];
]
