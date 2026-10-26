(* Proca on EAdS4: canonical coordinate covector, positive Euclidean action.
   Fourier e^(ik.x), source density s^mu=sqrt(g)J^mu; M2=m^2 ell^2.
   All kernels use the fast I endpoint and regular K endpoint. *)
ClearAll["Global`*"];
Block[{$Messages = {}, $MessageList = {}},
 ass = z > 0 && k > 0 && M2 > 0;
 p = M2/(M2 + k^2 z^2);
 lu = z u'[z] - u[z]; lv = z v'[z] - v[z];
 rules = {u'''[z] -> (k^2 + M2/z^2) u'[z] - 2 M2 u[z]/z^3,
   u''[z] -> (k^2 + M2/z^2) u[z],
   v''[z] -> (k^2 + M2/z^2) v[z]};
 ode = FullSimplify[(-D[p D[lu, z], z] + M2 lu/z^2) /. rules, ass];
 wr = FullSimplify[(p (lu D[lv,z] - D[lu,z] lv) -
       M2 (u'[z] v[z] - u[z] v'[z])) /. rules, ass];
 cv[n_] := Gamma[-n]/(2^(2 n+1) Gamma[n+1]);
 cp[n_] := (n+3/2) Gamma[n+3/2]/(2 Pi^(3/2) (n+1/2) Gamma[n+1]);
 ft[n_] := Pi^(3/2) 2^(-2 n) Gamma[-n]/Gamma[n+3/2];
 kap[n_] := Pi/(2^(2 n) Gamma[n+1]^2);
 rr[n_] := (n-1/2)/(n+1/2);
 norm = FullSimplify[cp[n] ft[n] (n+1/2)/(n+3/2)-cv[n], 1/2<n<1];
 spectral = FullSimplify[-2 cv[n] Sin[Pi n]-kap[n],1/2<n<1];
 scalarNorm = FullSimplify[Limit[2 ell^2 (2 n+2) ell^(2 n+1) cp[n]/(9 (n+1/2)),n->1/2]-4 ell^4/(3 Pi^2),ell>0];
 residue = FullSimplify[-(x D[BesselI[1/2,x],x]-BesselI[1/2,x]/2)
    (y D[BesselK[1/2,y],y]-BesselK[1/2,y]/2)-x y BesselI[3/2,x] BesselK[3/2,y],x>0&&y>0];
 a1 = 1/(4 n (1-n^2));
 b1 = (3/4-n^2)/(4 n (1-n^2) (n^2-1/4));
 b1check = FullSimplify[b1-((n^2-1/4-1) a1+1/(2n))/(n^2-1/4)];
 b1limit = Limit[(n^2-1/4)b1,n->1/2]-1/3;
 jf[n_,x_] := BesselJ[n,x];
 dj[n_,x_] := (n-1/2) BesselJ[n,x]-x BesselJ[n+1,x];
 fT[n_,x_,y_] := (x y)^(-n) BesselI[n,x] BesselK[n,y];
 fL[n_,x_,y_] := -(x y)^(-n) ((n-1/2) BesselI[n,x]+x BesselI[n+1,x])
    ((n-1/2) BesselK[n,y]-y BesselK[n+1,y])/(n^2-1/4);
 exact = <|"longitudinal ODE"->ode,"weighted Wronskian"->wr,
   "Fourier-position normalization"->norm,"spectral discontinuity"->spectral,
   "canonical scalar descendant"->scalarNorm,"Stueckelberg residue"->residue,
   "local longitudinal coefficient"->b1check,"massless local coefficient"->b1limit,
   "mass-dimension"->Expand[(n+1/2)(n-1/2)-(n^2-1/4)],
   "longitudinal boundary ratio"->FullSimplify[(n-1/2)^2/(n^2-1/4)-rr[n]],
   "Maxwell spectral coefficient"->FullSimplify[kap[1/2]-2],
   "scalar spectral coefficient"->FullSimplify[Limit[kap[n]/(9 (n+1/2)^2),n->1/2]-2/9]|>;
 coords={x1,x2,x3}; rad2=Total[coords^2];
 tens=Table[(KroneckerDelta[i,j]-2 coords[[i]] coords[[j]]/rad2) rad2^(-dd),{i,3},{j,3}];
 div1=Table[Sum[D[tens[[i,j]],coords[[i]]],{i,3}],{j,3}];
 posAss=Element[coords,Reals] && rad2>0 && dd>2;
 firstDiv=FullSimplify[div1-2(dd-2) coords rad2^(-dd-1),posAss];
 secondDiv=FullSimplify[-Sum[D[div1[[j]],coords[[j]]],{j,3}]-2(dd-2)(2dd-1)rad2^(-dd-1),posAss];
 gaussian=FullSimplify[Integrate[k^(2n+2)Exp[-LL^2 k^2],{k,0,Infinity},Assumptions->LL>0&&n>1/2]-Gamma[n+3/2]/(2 LL^(2n+3)),LL>0&&n>1/2];
 b1direct=FullSimplify[-((n+3/2)(-n-1/2)/(4(n+1))+(n-1/2)(3/2-n)/(4(1-n)))/(2n(n^2-1/4))-b1];
 exact=Join[exact,<|"position first divergence"->firstDiv,"position double divergence"->secondDiv,"Gaussian radial moment"->gaussian,"direct Bessel b1 coefficient"->b1direct|>];
 bounds=Table[Module[{nn=N[nn0,65], vals},
  vals=Flatten[Table[Module[{xx=N[rat yy,65], yv=N[yy,65], ct, bd},
    ct=yv^(-2 nn)/(2nn); bd=yv^(2-2nn);
    {Abs[fT[nn,xx,yv]-ct-cv[nn]]/bd,
     Abs[fL[nn,xx,yv]-ct+rr[nn] cv[nn]]/bd}],
      {rat,{1,1/1000,1/10^8}}, {yy,{1/10^5,1/100,1/2,1,10,100}}],1];
   <|"nu"->nn0,"max T ratio"->N[Max[vals[[All,1]]],12],
      "max L ratio"->N[Max[vals[[All,2]]],12]|>],{nn0,{51/100,7/10,99/100}}];
 jchecks=Flatten[Table[Module[{nn=N[nn0,60],xx=N[xx0,60],aa},aa=1/(2^nn Gamma[nn+1]);
   {Abs[jf[nn,xx]]<=aa xx^nn,
    Abs[dj[nn,xx]]<=aa xx^nn (nn-1/2+xx^2/(2nn+2))}],
      {nn0,{3/4,3/2,11/4}},{xx0,{1/100,1,5,30}}]];
 lightconeEigenvalues={1,1,rr[n]};
 <|"ExactResiduals"->exact,"AllExactZero"->And@@(TrueQ[#==0]&/@Flatten[Values[exact]]),
   "UniformRemainderSamples"->bounds,"BesselBounds24"->jchecks,
   "PositiveRestFrame"->FullSimplify[And@@Thread[lightconeEigenvalues>0],n>1/2],
   "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]
