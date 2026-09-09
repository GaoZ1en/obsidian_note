ClearAll["Global`*"];
checks = <||>;
record[name_, expr_] := AssociateTo[checks, name -> TrueQ[expr]];

(* Collision counts: ordinary bulk stresses and individually labelled linear histories. *)
bulkDim = 2 (ns + nv - 1); bulkDerivativeCount = 2 ns;
boundaryDim = 2 (ns + nv) + nb - 1;
boundaryDerivativeCount = 2 ns + nb;
record["bulk extension margin", Expand[bulkDim-bulkDerivativeCount-2 (nv-1)] === 0];
record["boundary extension margin", Expand[boundaryDim-boundaryDerivativeCount] === 2 nv-1];
record["bulk Ward margin", Expand[bulkDim-bulkDerivativeCount-1] === 2 nv-3];
record["boundary Ward margin", Expand[boundaryDim-boundaryDerivativeCount-1] === 2 nv-2];
record["bulk higher-vertex primitive excluded", Reduce[nv>=2 && ns>=0 && bulkDerivativeCount>=bulkDim,{nv,ns},Integers] === False];
record["interaction-containing boundary primitive excluded", Reduce[nv>=1 && ns>=0 && nb>=0 && boundaryDerivativeCount>=boundaryDim,{nv,ns,nb},Integers] === False];
record["higher-vertex boundary Ward residue excluded", Reduce[nv>=2 && ns>=0 && nb>=0 && boundaryDerivativeCount+1>=boundaryDim,{nv,ns,nb},Integers] === False];
record["one-vertex boundary Ward residue is marginal", Expand[(boundaryDim-boundaryDerivativeCount-1)/.nv->1] === 0];

(* Cauchy contact: z and zb are independent during differentiation. *)
ce = zb/(z zb+eps^2);
record["Cauchy approximate delta", Together[D[ce,zb]-eps^2/(z zb+eps^2)^2] === 0];
normalization = Integrate[2 Pi r eps^2/(r^2+eps^2)^2,{r,0,Infinity},Assumptions->eps>0];
record["Cauchy contact coefficient pi", normalization === Pi];
doublePole = -D[ce,z];
record["double pole contact derivative sign", Together[D[doublePole,zb]+D[eps^2/(z zb+eps^2)^2,z]] === 0];

(* Exact Wick OPE coefficients in the local Euclidean logarithmic convention. *)
pair = -hb/(4 Pi dz);
tc = -2 Pi/hb;
single = tc 2 n pair;
double = tc n (n-1) pair^2;
record["stress-polynomial simple pole", Simplify[single-n/dz] === 0];
record["stress-polynomial double pole", Simplify[double+hb n (n-1)/(8 Pi dz^2)] === 0];
record["quartic double pole", Simplify[(double/.n->4)+3 hb/(2 Pi dz^2)] === 0];
jj = -hb/(4 Pi dz^2);
record["free stress central coefficient", Simplify[tc^2 2 jj^2-1/(2 dz^4)] === 0];

(* The contact coefficient is obtained before making a physical stress identification. *)
potential = lam ff[q]/24;
aOPE = -hb/(8 Pi) D[potential,{q,2}];
ordinaryDerivative[f_] := D[f,zz]+D[f,q] qp;
wardT = -Pi/hb gg[zz] ordinaryDerivative[potential] + Pi/hb ordinaryDerivative[gg[zz] aOPE];
thetaLocal = Pi/hb gg[zz] (potential+hb/(8 Pi) D[potential,{q,2}]);
record["one-vertex Ward contact including source gradient", Expand[wardT+ordinaryDerivative[thetaLocal]-Pi/hb D[gg[zz],zz] potential] === 0];
record["quartic local contact coefficient", D[lam q^4/24,{q,2}] hb/(8 Pi) === lam hb q^2/(16 Pi)];

(* Logarithmic polynomial transformation: the generators close on this sector. *)
act[e_,f_] := e D[f,zz]-hb/(8 Pi) D[e,zz] D[f,{q,2}];
e1 = zz+zz^3; e2 = 1+zz^2; testF = zz^3 q^6+zz q^2;
record["stress polynomial transformation closes", Expand[act[e1,act[e2,testF]]-act[e2,act[e1,testF]]-act[e1 D[e2,zz]-e2 D[e1,zz],testF]] === 0];
shift[f_] := Sum[(hb c/2)^k/Factorial[k] D[f,{q,2 k}],{k,0,Floor[Exponent[f,q]/2]}];
record["constant Wick change preserves the contact transformation", Expand[shift[act[e1,testF]]-act[e1,shift[testF]]] === 0];

(* A local reflecting half-plane check, not an interval state construction. *)
gd = -Log[(tau^2+(rr-ss)^2)/(tau^2+(rr+ss)^2)]/(4 Pi);
poisson = ss/(Pi (tau^2+ss^2));
record["Dirichlet boundary derivative", FullSimplify[(D[gd,rr]/.rr->0)-poisson,ss>0] === 0];
record["boundary kernel has unit time integral", Integrate[poisson,{tau,-Infinity,Infinity},Assumptions->ss>0] === 1];
record["one history interaction collision is integrable", Integrate[rad Sin[ang]/(Pi rad),{rad,0,cut},{ang,0,Pi},Assumptions->cut>0] === 2 cut/Pi];
record["finite powers of the image logarithm are integrable", And@@Table[Limit[Integrate[Log[rr]^k,rr],rr->0,Direction->"FromAbove"]===0,{k,0,6}]];

(* A genuine noncommuting cocycle diagnostic; all time terms through degree four. *)
hzero = {{1,0},{0,3}}; kk = lam {{0,1},{1,2}};
matExp4[a_,t_] := Sum[(I t)^j MatrixPower[a,j]/Factorial[j],{j,0,4}];
trunc[a_] := Map[Normal[Series[#,{ep,0,4}]]&,a,{2}];
coc[t_] := matExp4[hzero+kk,t].matExp4[hzero,-t];
left = trunc[coc[ep (tt+ss)]];
right = trunc[coc[ep tt].matExp4[hzero,ep tt].coc[ep ss].matExp4[hzero,-ep tt]];
record["finite-time cocycle through time degree four", Map[Expand,left-right,{2}] === ConstantArray[0,{2,2}]];
record["cocycle generator sign", Simplify[(D[coc[tt],tt]/.tt->0)-I kk] === ConstantArray[0,{2,2}]];
wmat = {{1,1},{0,1}}; winv = Inverse[wmat];
freeD[a_] := I (hzero.a-a.hzero);
knew = winv.kk.wmat + winv.freeD[wmat]/I;
record["energy transforms with the free derivative term", Simplify[hzero+knew-winv.(hzero+kk).wmat] === ConstantArray[0,{2,2}]];
amat = {{2,1},{3,-1}};
record["transformed energy generates the transformed dynamics", Simplify[I ((hzero+knew).(winv.amat.wmat)-(winv.amat.wmat).(hzero+knew))-winv.(I ((hzero+kk).amat-amat.(hzero+kk))).wmat] === ConstantArray[0,{2,2}]];

result = <|"allChecksPassed"->And@@Values[checks],"checkCount"->Length[checks],"checks"->checks,
 "scope"->"Exact collision-count, local Cauchy/OPE, boundary-kernel, and finite-matrix diagnostics. No full stress/history continuum sewing theorem is inferred."|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"phi4_stress_contact_results.json"}],result,"RawJSON"];
result
