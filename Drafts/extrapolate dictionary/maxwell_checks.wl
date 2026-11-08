(* Canonical Maxwell on the flat conformal half-space of EAdS4.
   Fourier e^(ik.x); epsilon123=1; z<w branch with jumps tested separately.
   No Proca mass limit is used. *)
ClearAll["Global`*"];
Block[{$Messages={},$MessageList={}},
 kv={k1,k2,k3}; kk=kv.kv;
 pp=IdentityMatrix[3]-Outer[Times,kv,kv]/kk;
 cc=Table[I Sum[Signature[{i,l,j}] kv[[l]],{l,3}],{i,3},{j,3}];
 gd=Sinh[k z] Exp[-k w]/k; gn=Cosh[k z] Exp[-k w]/k;
 ass=k>0&&0<z<w;
 coords={x1,x2,x3}; rad2=coords.coords;
 pos=Table[(KroneckerDelta[i,j]Sum[D[1/rad2,{coords[[l]],2}],{l,3}]-D[1/rad2,coords[[i]],coords[[j]]])/4-(KroneckerDelta[i,j]-2coords[[i]]coords[[j]]/rad2)/rad2^2,{i,3},{j,3}];
 angular=Integrate[r(2 Sqrt[om^2-r^2]+r^2/Sqrt[om^2-r^2]),{r,0,om},Assumptions->om>0];
 imaginaryTime=FullSimplify[Integrate[angular Exp[-om tau]/(4Pi^2),{om,0,Infinity},Assumptions->tau>0]-2/(Pi^2 tau^4),tau>0];
 (* The angular coefficient above includes the 2 in the Wightman density. *)
 exact=<|
  "curl square"->FullSimplify[cc.cc-kk pp,kk>0],
  "curl gradient"->FullSimplify[cc.kv],
  "local electric contact"->FullSimplify[pp+Outer[Times,kv,kv]/kk-IdentityMatrix[3]],
  "Dirichlet equation"->FullSimplify[-D[gd,{z,2}]+k^2gd,ass],
  "Neumann equation"->FullSimplify[-D[gn,{z,2}]+k^2gn,ass],
  "Dirichlet boundary"->FullSimplify[gd/.z->0,k>0&&w>0],
  "Neumann boundary"->FullSimplify[D[gn,z]/.z->0,k>0&&w>0],
  "electric D regular part"->FullSimplify[D[gd,z,w]+k^2gn,ass],
  "electric N regular part"->FullSimplify[D[gn,z,w]+k^2gd,ass],
  "mixed duality"->FullSimplify[D[gd,z]+D[gn,w],ass],
  "radial inverse jump"->FullSimplify[-Sinh[k z]Exp[-k z]-Cosh[k z]Exp[-k z]+1,k>0&&z>0],
  "symmetric mixed trace"->FullSimplify[Exp[-k z](Cosh[k z]-Sinh[k z])/2-Exp[-2k z]/2,k>0&&z>0],
  "position tensor"->FullSimplify[pos,Element[coords,Reals]&&rad2>0],
  "imaginary-time normalization"->imaginaryTime,
  "boundary gauging transform"->FullSimplify[cc.(pp/Sqrt[kk]).cc-Sqrt[kk]pp,kk>0],
  "first-order square"->Expand[(f-I h)^2/2+h^2/2-(f^2/2-I f h)]|>;
 base=Sqrt[Pi] Exp[t^2] Erfc[t]/2;
 qfun=(1+t^2)/2-Sqrt[Pi] t(3+2t^2) Exp[t^2] Erfc[t]/4;
 qcheck=FullSimplify[-D[base,{t,3}]/8-qfun,t>=0];
 exact=Join[exact,<|"axial Wick conversion"->Simplify[{-I c,b,-a}+I {c,I b,-I a}],
   "Neumann conditional covariance"->FullSimplify[gn-gd-Exp[-k(z+w)]/k,ass],
   "Gaussian source radial integral"->qcheck,
   "Gaussian boundary normalization"->FullSimplify[(qfun/.t->0)+1/2-1]|>];
 nn[k_,a_,b_]:=(Exp[-k Abs[a-b]]+Exp[-k(a+b)])/(2k);
 remsamples=Flatten[Table[N[(k-k^2 nn[k,rat b,b])/(b k^2),40],{k,{1/100,1/2,3,50}},{rat,{1,1/1000}},{b,{1/100,1}}]];
 coschecks=Flatten[Table[TrueQ[N[Abs[Cos[x]Cos[y]-1] <= (x^2+y^2)/2,40]],{x,{1/100,1,3,10}},{y,{1/100,1,3,10}}]];
 <|"Residuals"->exact,"AllExactZero"->And@@(TrueQ[#==0]&/@Flatten[Values[exact]]),
  "EuclideanRemainderRange"->{Min[remsamples],Max[remsamples]},
  "EuclideanRemainderBounds"->And@@(TrueQ[0<=#<=1]&/@remsamples),
  "CosineBounds16"->coschecks,"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]
