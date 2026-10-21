(* Independent exact shell summation of ground B.15 times thermal Ward polynomials.
   At half-integer/integer Delta all high-shell sums reduce to rational/log functions.
   No original outputs imported. Fresh kernel; only new audit result is written. *)
ClearAll["Global`*"];
out="/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_exact_shells.json";
modes={{0,0},{1,0},{1,1},{2,1},{2,2}};ds={3/2,2,5/2,3};checks=<||>;rows={};
add[n_,r_]:=AssociateTo[checks,n->TrueQ[FullSimplify[r]===0]];
act[f_,d_]:=Expand[(z+1/z-2)*(z^2 D[f,{z,2}]+z D[f,z]+2u z D[f,z]+(u^2+d/2*(1-d/2))*f)+(1/z-z)*(-z D[f,z]-u*f)];
qq[0,d_]:=1;
qq[1,d_]:=1+act[1,d]/d;
qq[2,d_]:=qq[2,d]=Expand[1+(2d+1)*act[1,d]/(d*(d+1))+act[act[1,d],d]/(2d*(d+1))];
moment[m_,d_]:=moment[m,d]=Expand[Sum[StirlingS2[m,k]*Product[L-j,{j,0,k-1}]*Pochhammer[d,k]/Pochhammer[2d,k],{k,0,m}]];
gen[0]=z^2/(1-z);gen[k_Integer?Positive]:=gen[k]=Together[z D[gen[k-1],z]];
logGen[c_Integer]:=z^-c*(-Log[1-z]-Sum[z^j/j,{j,1,c+1}]);
Do[
 {p,q}=mode;
 id="d"<>ToString[d,InputForm]<>"_"<>ToString[p]<>"_"<>ToString[q];
 pd=(d-1)*(d+L)^4-2d*(d^2-d-1)*(d+L)^2+d^3*(d-2)*(d+1)-(2d-1)*(2P-L)^2*((d+L)^2+d*(d+1));
 poly=Expand[pd*(qq[p,d]/.u->d/2+P)*(qq[q,d]/.u->d/2+L-P)];
 expected=Sum[Coefficient[poly,P,k]*moment[k,d],{k,0,Exponent[poly,P]}];
 sh=Cancel[-4d*expected/((2d-1)*L*(L-1)*(L+2d)*(L+2d+1))];
 shifts={-1,0,2d,2d+1};
 residues=Table[Cancel[Limit[(L+c)*sh,L->-c]],{c,shifts}];
 pol=Cancel[sh-Sum[residues[[j]]/(L+shifts[[j]]),{j,4}]];
 add["shell_partial_fractions_"<>id,pol-Sum[Coefficient[pol,L,k]*L^k,{k,0,Exponent[pol,L]}]];
 high=Sum[Coefficient[pol,L,k]*gen[k],{k,0,Exponent[pol,L]}]+Sum[residues[[j]]*logGen[shifts[[j]]],{j,4}];
 x00=-2d^2*(4d^2-5)/(4d^2-1);x01=4d^2/(4d^2-1);
 tr=FullSimplify[z^d*(x00*(qq[p,d]/.u->d/2)*(qq[q,d]/.u->d/2)+x01*z*((qq[p,d]/.u->d/2+1)*(qq[q,d]/.u->d/2)+(qq[p,d]/.u->d/2)*(qq[q,d]/.u->d/2+1))+high),Assumptions->0<z<1];
 (* A direct finite beta-moment radial integral, independent of pole reconstruction. *)
 n=Min[p,q];a=Abs[p-q];rad=Pochhammer[d+n,a]/Pochhammer[n+1,a]*(1-v)^a*JacobiP[n,d-1,a,1-2v]^2;
 m0=Integrate[v^(d-3/2)*rad/2,{v,0,1}];m2=Integrate[v^(d-1/2)*rad/2,{v,0,1}];
 ci=(4d*(d-2)+2)*m0+2m2;
 ser=FullSimplify[Normal[Series[tr/.z->Exp[-tau],{tau,0,2}]],Assumptions->tau>0];
 add["simple_pole_"<>id,Limit[tau*(tr/.z->Exp[-tau]),tau->0,Direction->"FromAbove"]+ci];
 add["zero_finite_part_"<>id,Limit[(tr/.z->Exp[-tau])+ci/tau,tau->0,Direction->"FromAbove"]];
 AppendTo[rows,<|"Delta"->ToString[d,InputForm],"p"->p,"q"->q,"C"->ToString[ci,InputForm],"trace"->ToString[tr,InputForm],"series"->ToString[ser,InputForm]|>];
,{d,ds},{mode,modes}];
report=<|"scope"->"20 exact isotropic excited traces from beta-binomial shell moments, using B.15 and thermal Ward transfer; no import of evaluated traces.","count"->Length[checks],"allPassed"->And@@Values[checks],"checks"->checks,"traces"->rows,"messages"->(ToString[#,InputForm]&/@$MessageList)|>;
Export[out,report,"RawJSON"];
<|"path"->out,"count"->Length[checks],"allPassed"->report["allPassed"],"messages"->report["messages"]|>
