(* Exact radial checks, executed in a fresh Mathematica kernel.
   The generic ODE reduction is distinct from the finite integral scan. *)
Clear[x,z,r,j,n,c,nu];
radialMode[j_,n_,r_]:=(r/Sqrt[1+r^2])^(j+1)GegenbauerC[n,j+1,1/Sqrt[1+r^2]];
modeIntegral[j_,n_]:=Pi Gamma[n+2j+2]/(2^(2j+2)(n+j+1)Gamma[n+1]Gamma[j+1]^2);
modeN[j_,n_]:=Sqrt[2^(2j+1)Gamma[n+1]Gamma[j+1]^2/(Pi Gamma[n+2j+2])];
generic=Sin[x]^(j+1)c[Cos[x]];
gegenRule=Derivative[2][c][z]->((2j+3)z c'[z]-n(n+2j+2)c[z])/(1-z^2);
genericResidual=FullSimplify[(D[generic,{x,2}]+((n+j+1)^2-j(j+1)/Sin[x]^2)generic)/Sin[x]^(j+1)/.(gegenRule/.z->Cos[x]),Assumptions->{0<x<Pi/2,Element[j,Integers],j>=1}];
radialTests=Flatten[Table[
 With[{u=radialMode[jj,nn,r],ww=jj+1+nn},
  <|"j"->jj,"n"->nn,
   "equation"->(FullSimplify[(1+r^2)D[u,{r,2}]+2r D[u,r]+(ww^2/(1+r^2)-jj(jj+1)/r^2)u,r>0]===0),
   "integral"->(FullSimplify[Integrate[u^2/(1+r^2),{r,0,Infinity}]-modeIntegral[jj,nn]]===0),
   "boundary"->If[EvenQ[nn],FullSimplify[Limit[(1+r^2)D[u,r],r->Infinity]]===0,Limit[u,r->Infinity]===0],
   "normalization"->(FullSimplify[2ww modeN[jj,nn]^2 modeIntegral[jj,nn]]===1)|>],
 {jj,1,4},{nn,0,5}],1];
derivativeTests=Flatten[Table[FullSimplify[
 D[radialMode[jj,nn,r],r]-(jj+1)/(r(1+r^2))radialMode[jj,nn,r]
 +If[nn==0,0,2(jj+1)r/(1+r^2)^(3/2)(r/Sqrt[1+r^2])^(jj+1)GegenbauerC[nn-1,jj+2,1/Sqrt[1+r^2]]],r>0]===0,{jj,1,4},{nn,0,5}]];
radialResults=<|"genericGegenbauerResidual"->genericResidual,
 "finiteModes"->radialTests,"derivativeFormula"->And@@derivativeTests,
 "allPassed"->(genericResidual===0&&And@@Flatten[(Values[#][[3;;]]& /@ radialTests)]&&And@@derivativeTests)|>;
radialResults
