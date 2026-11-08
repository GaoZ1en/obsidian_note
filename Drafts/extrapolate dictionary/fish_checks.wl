ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}}, Module[
 {aa, bb, qq, ee, h, r, th, cross, image, inv, flat, symbolic, rows,
  tKernel, quad, fcoeff, expInt, pairInt, kz, iz, contact, finiteRows, a0, values},
 cross[a_, b_, q_] := If[TrueQ[q == 0],
   2/b Log[(a+b)/a] + 2/a Log[(a+b)/b],
   (Pi^2/6-PolyLog[2,(a-q)/(a+q)]-PolyLog[2,(b-q)/(b+q)]
      +PolyLog[2,(a-q)(b-q)/((a+q)(b+q))])/q];
 image[a_, b_, q_] := If[TrueQ[a == b],1/(a+q),Log[(a+q)/(b+q)]/(a-b)];
 inv[a_, b_, q_, m_] := ((Log[(m (a+b))^2/((a+q)(b+q))]+1+2 Log[2])/(a+b)
   +image[a,b,q]-cross[a,b,q])/(16 Pi^2);
 flat[a_, b_, q_, m_] := ((Log[m^2/((a+q)(b+q))]-2 EulerGamma+1+2 Log[2])/(a+b)
   +image[a,b,q]-cross[a,b,q])/(16 Pi^2);
 symbolic = <|
 "tangential second moment" -> FullSimplify[
   Integrate[r^4 (1/(r^2+aa^2)-1/(r^2+bb^2))^2,{r,0,Infinity},
      Assumptions->bb>aa>0]-Pi (bb-aa)^2/(4 (bb+aa)),Assumptions->bb>aa>0],
 "sphere versus strip constant" -> FullSimplify[
   Integrate[4/Pi Sin[th]^2 Log[Sec[th]],{th,0,Pi/2}] - Log[2]-1/2],
 "cross derivative" -> FullSimplify[D[cross[aa,bb,qq],aa]
   +2/(aa^2-qq^2) Log[(aa+bb)/(bb+qq)],Assumptions->aa>qq>0 && bb>qq],
 "cross symmetry" -> FullSimplify[cross[aa,bb,qq]-cross[bb,aa,qq]],
 "geodesic versus flat" -> FullSimplify[inv[aa,bb,qq,h]-flat[aa,bb,qq,h]
   -(Log[aa+bb]+EulerGamma)/(8 Pi^2 (aa+bb)),Assumptions->aa>qq>0&&bb>qq&&h>0],
 "scale derivative" -> FullSimplify[h D[inv[aa,bb,qq,h],h]-1/(8 Pi^2 (aa+bb)),
   Assumptions->aa>qq>0&&bb>qq&&h>0],
 "homogeneity" -> FullSimplify[inv[r aa,r bb,r qq,h]-inv[aa,bb,qq,h]/r,
   Assumptions->aa>qq>0&&bb>qq&&h>0&&r>0],
 "symmetric zero transfer" -> FullSimplify[inv[aa,aa,0,h]
   -(Log[h]+3/2-2 Log[2])/(16 Pi^2 aa),Assumptions->aa>0&&h>0],
 "symmetric maximal transfer" -> FullSimplify[inv[aa,aa,aa,h]
   -(Log[h]+1+Log[2]-Pi^2/6)/(16 Pi^2 aa),Assumptions->aa>0&&h>0],
 "one zero pair" -> FullSimplify[Limit[inv[aa,bb,0,h],aa->0,Direction->"FromAbove"]
   -(2 Log[2 h]-1)/(16 Pi^2 bb),Assumptions->bb>0&&h>0],
 "RG cancellation" -> FullSimplify[-3/(16 Pi^2 (aa+bb))
   +3/2 h D[inv[aa,bb,qq,h],h],Assumptions->aa>qq>0&&bb>qq&&h>0]
 |>;
 (* A second, one-dimensional invariant radial representation. *)
 tKernel[t_?NumericQ,a_,b_,q_] := Module[{a0=(a+b)/2,d0=(a-b)/2,ls},
  If[t==0,Return[If[q==0,-3/(16 Pi^2 a0),
    (-q/a0^2+1/(a0+q)-4/q Log[(a0+q)/a0])/(16 Pi^2)]]];
  If[t==1,Return[-1/(8 Pi^2 (a+b))]];
  Sum[ls=a0+sg d0 t;
   (1/(t (ls+q t))+1/(ls+q)
      -If[q==0,4/((1+t)ls),4/(q (1-t^2)) Log[(ls+q)/(ls+q t)]])/(32 Pi^2),
      {sg,{-1,1}}]-1/(8 Pi^2 (a+b)t)];
 quad[a_,b_,q_,m_] := NIntegrate[tKernel[t,a,b,q],{t,0,1},
   WorkingPrecision->60,AccuracyGoal->32,PrecisionGoal->30,MaxRecursion->25,
   Method->{"GlobalAdaptive","SymbolicProcessing"->0}]
   +(Log[4 m]+1/2)/(8 Pi^2 (a+b));
 rows=Table[Module[{p=N[v,60],cl,nu},cl=inv@@p;nu=quad@@p;
  {v,N[cl,20],N[nu,20],N[Abs[nu-cl],6]}],
  {v,{{2,3,1,1},{1,1,1,1},{1,1,0,1},{3/2,2,1/2,2}}}];
 (* Exact piecewise exponential integration of symmetric q=0 finite-radius legs.
    f_z(u)=p_z(u;k)^2, k=1/2 so a=b=1 at the boundary. *)
 expInt[rate_,lo_,hi_] := Which[
  TrueQ[rate==0],hi-lo,
  hi===Infinity,Exp[-rate lo]/rate,
  True,(Exp[-rate lo]-Exp[-rate hi])/rate];
 pairInt[c1_,c2_,al_,be_,lo_,hi_] := Total[Flatten[Table[
   c1[[i,1]] c2[[j,1]] expInt[al c1[[i,2]]+be c2[[j,2]],lo,hi],
   {i,Length[c1]},{j,Length[c2]}]]];
 kz[t_?NumericQ,z_?NumericQ] := Module[{k=1/2,ci,co,al,be,s1,s2},
   If[t==1,Return[0]];
   (* Pairs store the exponential coefficient and decay rate. *)
   ci={{Exp[-2 k z]/(4 k^2 z^2),-2 k},
       {Exp[-2 k z]/(4 k^2 z^2),2 k},
       {-Exp[-2 k z]/(2 k^2 z^2),0}};
   co={{Sinh[k z]^2/(k^2 z^2),2 k}};
   al=(1+t)/2;be=(1-t)/2;s1=z/al;s2=z/be;
   pairInt[ci,ci,al,be,0,s1]+pairInt[co,ci,al,be,s1,s2]
    +pairInt[co,co,al,be,s2,Infinity]];
 iz[z_?NumericQ] := Module[{ct=kz[0,z]/2,integrand},
   integrand[t_?NumericQ] := Which[t==0,-3 ct/(8 Pi^2),
    t==1,-ct/(8 Pi^2),True,
    ((1/t+1-4/(1+t))kz[t,z]-2 ct/t)/(16 Pi^2)];
   {ct,NIntegrate[integrand[t],{t,0,1},WorkingPrecision->70,
    AccuracyGoal->25,PrecisionGoal->23,MaxRecursion->25,
    Method->{"GlobalAdaptive","SymbolicProcessing"->0}]
      +ct (Log[4]+1/2)/(8 Pi^2)}];
 finiteRows=Table[Module[{v=iz[N[z,70]],target=inv[1,1,0,1]},
   {z,N[v[[1]],16],N[v[[2]],18],N[target,18],N[v[[2]]-target,8]}],
  {z,{1/10,1/100,1/1000}}];
 <|"SymbolicResiduals"->symbolic,
   "AllSymbolicZero"->And@@(TrueQ[#==0]& /@ Values[symbolic]),
   "InvariantKernelRows_parameters_closed_quadrature_error"->rows,
   "FiniteRadiusRows_z_contact_fish_boundary_error"->finiteRows,
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
Print[ToString[report,InputForm,PageWidth->100]];
report
