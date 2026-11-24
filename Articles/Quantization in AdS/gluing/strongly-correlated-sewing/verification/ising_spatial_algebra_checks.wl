(* Finite algebra / XX counting-field bridge. No JSON output. *)
ClearAll[s];
Print["RH beta derivative: ",FullSimplify[D[ArcTan[1/s]/Pi,s]+1/(Pi(1+s^2)),Assumptions->Element[s,Reals] && s!=0]==0];
Module[{n=12,ps,c,xm,ym},
 ps=Range[-n/2+1/2,n/2-1/2];
 c=N[Table[1/(n Sin[Pi(j-i+1/2)/n]),{i,0,n-1},{j,0,n-1}],40];
 xm=N[Table[Exp[2Pi I p i/n]/Sqrt[n],{i,0,n-1},{p,ps}],40];
 ym=N[Table[Exp[2Pi I p(j+1/2)/n]/Sqrt[n],{j,0,n-1},{p,ps}],40];
 Print["NS staggered multiplier residual: ",Max[Abs[c.ym-xm.DiagonalMatrix[I Sign[ps]]]]];
];
ClearAll[mm,kk];
Print["all-n Gaussian exponent, even/odd: ",Table[
 FullSimplify[2 Sum[((nn-2kk-1)/(2nn))^2,{kk,0,mm-1}]-(nn-1/nn)/12,
 Assumptions->Element[mm,Integers] && mm>=1]==0,{nn,{2mm,2mm+1}}]];
Print["Gaussian polynomial product residuals: ",Table[{nn,
 Max[Table[Module[{sv=N[Table[Tan[(2kk+1)Pi/(2nn)],{kk,0,Floor[nn/2]-1}],50],vn=N[vv,50]},
 Abs[N[2^-nn((1+vv)^nn+(1-vv)^nn),50]-Times@@((vn^2+sv^2)/(1+sv^2))]],
 {vv,{0,1/7,2/3,1}}]]},{nn,2,8}]];
ClearAll[gg, ss, pp, ff, rho];
gg = {{5,1,2,1},{1,4,-1,2},{2,-1,6,1},{1,2,1,5}}/20;
ss = {{1,2,-1,1},{2,-2,3,-2},{-1,3,4,1},{1,-2,1,2}}/17;
pp = DiagonalMatrix[{1,1,-1,-1}]; ff = {gg,ss};
rho = (gg + pp.gg.pp + ss - pp.ss.pp)/2;
Print["n2 trace identity: ", Tr[rho.rho] ==
 (Tr[gg.gg]+Tr[gg.pp.gg.pp]+Tr[ss.ss]-Tr[ss.pp.ss.pp])/2];
Print["parity words: ", Table[Module[{rs,sv,val},
 rs=Select[Tuples[{0,1},n],EvenQ[Total[#]]&];
 sv=Append[#,0]&/@Tuples[{0,1},n-1];
 val=2^(1-n) Total[Flatten[Table[(-1)^(rr.st)
  Tr[Dot@@Table[MatrixPower[pp,st[[j]]].ff[[rr[[j]]+1]].
   MatrixPower[pp,st[[j]]],{j,n}]],{rr,rs},{st,sv}]]];
 {n,Length[rs] Length[sv],val==Tr[MatrixPower[rho,n]]}],{n,2,5}]];
ClearAll[arfCheck];
arfCheck[g_Integer] := Module[{vs=Tuples[{0,1},g]},
 And@@Flatten[Table[Total[Flatten[Table[
 (-1)^(aa.bb+aa.rr+bb.ss+rr.ss),{aa,vs},{bb,vs}]]]==2^g,
 {rr,vs},{ss,vs}]]];
Print["Arf sum: ",Table[{g,arfCheck[g]},{g,1,3}]];

nn=16;
gam=Table[If[OddQ[q-p],1/(nn Sin[Pi(q-p)/(2nn)]),0],{p,2nn},{q,2nn}];
qq=Table[If[p==q,0,Sin[Pi(q-p)/2]/(nn Sin[Pi(q-p)/(2nn)])],{p,2nn},{q,2nn}];
uu=DiagonalMatrix[Exp[I Pi Range[2nn]/2]];
Print["XX gauge exact: ",Simplify[ConjugateTranspose[uu].qq.uu-I gam]
 ==ConstantArray[0,{2nn,2nn}]];
a1={2,3}; bb={4,5,6,7}; a2={8,9}; aa=Join[a1,a2]; ell=Length[aa];
cc=N[Table[1/(nn Sin[Pi(j-i+1/2)/nn]),{i,nn},{j,nn}],40];
cs=cc[[aa,aa]]-cc[[aa,bb]].Inverse[cc[[bb,bb]]].cc[[bb,aa]];
dd=DiagonalMatrix[Join[ConstantArray[-1,Length[a1]],ConstantArray[1,Length[a2]]]];
tt=Det[cc[[bb,bb]]]; ca=cc[[aa,aa]];
terms=2^-ell {Det[IdentityMatrix[ell]+ca.Transpose[ca]],
 Det[IdentityMatrix[ell]+ca.dd.Transpose[ca].dd],
 tt^2 Det[IdentityMatrix[ell]+cs.Transpose[cs]],
 tt^2 Det[IdentityMatrix[ell]+cs.dd.Transpose[cs].dd]};
inds=Flatten[({2#-1,2#}&)/@Join[a1,bb,a2]];
phaseval={{-Pi/2,0,-Pi/2},{Pi/2,0,-Pi/2},
 {-Pi/2,-Pi,-Pi/2},{Pi/2,-Pi,-Pi/2}};
fcs=Table[profile=Join[ConstantArray[ph[[1]],2Length[a1]],
 ConstantArray[ph[[2]],2Length[bb]],ConstantArray[ph[[3]],2Length[a2]]];
 Det[N[DiagonalMatrix[Cos[profile/2]]+
 I DiagonalMatrix[Sin[profile/2]].qq[[inds,inds]],40]],{ph,phaseval}];
Print["FCS residuals: ",N[Abs[terms-fcs],6]];
Print["four signed determinants: ",N[terms,16]];
Print["FH squared charges: ",Total[#^2]&/@
 {{-1,1,-1,1}/4,{1,-1,-1,1}/4,{-1,-1,1,1}/4,{1,-3,1,1}/4}];
Print["theta target checks: ",Table[Module[{xx=N[z,40],tau,q,ratios,target},
 tau=I EllipticK[1-xx]/EllipticK[xx]; q=Exp[I Pi tau];
 ratios={EllipticTheta[2,0,q]/EllipticTheta[3,0,q],
 EllipticTheta[4,0,q]/EllipticTheta[3,0,q]};
 target=(1-xx)^(-1/8)(1+xx^(1/4)+(1-xx)^(1/4))/2;
 {z,N[Max[Abs[ratios-{xx^(1/4),(1-xx)^(1/4)}]],6],N[target,16]}],
 {z,{1/10,1/4,1/2,3/4,9/10}}]];
