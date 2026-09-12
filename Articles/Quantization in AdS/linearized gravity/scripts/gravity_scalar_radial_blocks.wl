(* Exact circular two-particle matrix elements, with kappa^2 stripped off.
   RadialPairMatrix[level, delta] uses unordered radial pairs {n,level-n}.
   These compressed matrices are NOT closed angular-momentum blocks.
   ChiralCouplingMatrix returns normalized free two-particle SL(2) coefficients.
   No package is loaded and no calculation runs merely by loading this file. *)
Clear[RadialPairMatrix,ChiralCouplingMatrix,ReconstructPrimaryShifts,TwoScalarPrimarySpectrum];
RadialPairMatrix[level_Integer?NonNegative,delta_]:=Module[
 {x,pol,kin,primitive,moment,pair,entry,pairs},
 pol[n_]:=pol[n]=Expand[JacobiP[n,delta-1,0,1-2x]];
 kin[i_,j_,sign_]:=kin[i,j,sign]=Expand[
  4(1-x)(delta/2 pol[i]+x D[pol[i],x])(delta/2 pol[j]+x D[pol[j],x])
  -sign(delta+2i)(delta+2j)x pol[i]pol[j]];
 primitive[i_,j_,sign_]:=primitive[i,j,sign]=Module[{cl},
  cl=CoefficientList[Expand[kin[i,j,sign]+delta(delta-2)pol[i]pol[j]],x];
  Sum[cl[[k+1]]x^k/(delta-1+k),{k,0,Length[cl]-1}]];
 moment[poly_,power_]:=With[{cl=CoefficientList[Expand[poly],x]},
  Sum[cl[[k+1]]/(power+k),{k,0,Length[cl]-1}]];
 pair[v_,w_]:=Module[{a,b},
  a=kin[v[[1,1]],v[[2,1]],v[[1,2]]v[[2,2]]];
  b=primitive[w[[1,1]],w[[2,1]],w[[1,2]]w[[2,2]]];
  (b/.x->1)moment[a,delta]-moment[a b,2delta-1]];
 entry[ij_,kl_]:=Module[{legs,total},
  legs={{ij[[1]],-1},{ij[[2]],-1},{kl[[1]],1},{kl[[2]],1}};
  total=Total[Table[pair[legs[[ab]],legs[[Complement[Range[4],ab]]]],
   {ab,Subsets[Range[4],{2}]}]];
  Factor[-total/(8Pi Sqrt[(1+Boole[ij[[1]]==ij[[2]]])(1+Boole[kl[[1]]==kl[[2]]])])]];
 pairs=Table[{n,level-n},{n,0,Floor[level/2]}];
 Table[entry[a,b],{a,pairs},{b,pairs}]
];
ChiralCouplingMatrix[level_Integer?NonNegative,delta_]:=Module[
 {raise,columns,v},
 raise[n_]:=Table[
  If[row==col,Sqrt[(n-col+1)(delta+n-col)],0]
  +If[row==col+1,Sqrt[(col+1)(delta+col)],0],
  {row,0,n+1},{col,0,n}];
 columns=Table[
  v=Table[(-1)^p Sqrt[Binomial[k,p]Pochhammer[delta+k-p,p]/Pochhammer[delta,p]],{p,0,k}];
  v=FullSimplify[v/Sqrt[v.v],Assumptions->delta>1];
  Do[v=FullSimplify[raise[n].v/Sqrt[(n-k+1)(2delta+k+n)],Assumptions->delta>1],{n,k,level-1}];
  v,{k,0,level}];
 Transpose[columns]
];

(* Recover the multiplicity-one global-primary shifts from circular compressions.
   Off-diagonal transformed residuals must vanish: they are independent consistency
   checks, not equations silently discarded by the reconstruction.
   The result is in units of G, using kappa^2=16 Pi G.
   For a primary {n,spin}, the required recursion level is n+spin. *)
ReconstructPrimaryShifts[maxLevel_Integer?NonNegative,delta_]:=Module[
 {shift,records={},checks={},raw={},rad,nvals,kvals,sweights,old,
  q,w,h,z,transformed,newvals,norms,orth,off},
 Do[
  Clear[q,w,h];
  q[k_,p_]:=q[k,p]=Factor[Sum[Pochhammer[-k,j]Pochhammer[k+2delta-1,j]Pochhammer[-p,j]/
   (Pochhammer[delta,j]Pochhammer[-level,j]j!),{j,0,Min[k,p]}]];
  w[p_]:=w[p]=Factor[Binomial[level,p]Pochhammer[delta,p]Pochhammer[delta,level-p]/Pochhammer[2delta,level]];
  h[k_]:=h[k]=Factor[Sum[w[p]q[k,p]^2,{p,0,level}]];
  rad=RadialPairMatrix[level,delta];
  nvals=Range[0,Floor[level/2]];
  kvals=Range[level,0,-2];
  sweights=Sqrt[2/(1+Boole[2#==level])]&/@nvals;
  old=Table[sweights[[n+1]]sweights[[m+1]]w[n]w[m]Sum[If[EvenQ[k+l],
   q[k,n]q[l,n]q[k,m]q[l,m]shift[Min[k,l],Abs[k-l]]/(h[k]h[l]),0],
   {k,0,level-1},{l,0,level-1}],{n,nvals},{m,nvals}];
  (* z differs from O^T D^-1 only by positive column normalization.
     Keeping that normalization outside avoids large symbolic radicals. *)
  z=Table[sweights[[n+1]]q[k,n]/q[level,n],{n,nvals},{k,kvals}];
  transformed=Map[Factor,Transpose[z].Map[Factor,rad-old,{2}].z,{2}];
  off=Map[Factor,transformed-DiagonalMatrix[Diagonal[transformed]],{2}];
  If[!AllTrue[Flatten[off],SameQ[#,0]&],
   Return[Failure["InconsistentCompression",<|"level"->level,"offDiagonal"->off|>]]];
  norms=(2-Boole[#==level])&/@kvals;
  newvals=Factor[Table[h[level]/h[kvals[[j]]],{j,Length[kvals]}]Diagonal[transformed]/norms];
  Do[shift[kvals[[j]],level-kvals[[j]]]=newvals[[j]];
   AppendTo[records,<|"n"->kvals[[j]],"spin"->level-kvals[[j]],
    "gammaOverG"->Factor[16Pi newvals[[j]]]|>],{j,Length[kvals]}];
  orth=Table[Factor[Sum[w[p]q[k,p]q[l,p],{p,0,level}]-If[k==l,h[k],0]],{k,0,level},{l,0,level}];
  AppendTo[checks,<|"level"->level,"chiralOrthogonality"->orth,
   "exchangeParity"->Table[Factor[q[k,level-p]-(-1)^k q[k,p]],{k,0,level},{p,0,level}],
   "offDiagonal"->off|>];
  AppendTo[raw,rad],{level,0,maxLevel}];
 <|"primaryShifts"->records,"checks"->checks,"radialMatrices"->raw|>
];

(* Complete primary levels with free energy <= 2 delta + excess.
   Use an exact delta or a symbolic parameter; no floating-point zero test is used. *)
TwoScalarPrimarySpectrum[excess_Integer?NonNegative,delta_]:=Module[{out,rows},
 out=ReconstructPrimaryShifts[excess,delta];
 If[FailureQ[out],Return[out]];
 rows=Select[out["primaryShifts"],2#["n"]+#["spin"]<=excess&];
 SortBy[Map[Append[#,"freeEnergy"->2delta+2#["n"]+#["spin"]]&,rows],
  {2#["n"]+#["spin"]&,#["spin"]&}]
];
