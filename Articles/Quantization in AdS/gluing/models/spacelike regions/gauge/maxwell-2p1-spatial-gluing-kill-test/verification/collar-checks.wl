(* Exact diagnostics for Section 9; not a proof of the orbit theorem. *)
ClearAll["Global`*"];
checks={};
check[label_,expr_]:=AppendTo[checks,{label,TrueQ[expr]}];
lam=-Integrate[ax[t,z,s],{z,0,x}];
check["G1: radial homotopy and both curvature signs",
 Simplify[{D[lam,x]+ax[t,x,s],
 D[at[t,x,s]+D[lam,t],x]-(D[at[t,x,s],x]-D[ax[t,x,s],t]),
 D[as[t,x,s]+D[lam,s],x]-(D[as[t,x,s],x]-D[ax[t,x,s],s])}]=={0,0,0}];
tsum=p Coth[p l1]+p Coth[p l2];
check["G2: unequal DtN zero mode",
 Limit[tsum,p->0,Assumptions->l1>0&&l2>0]==1/l1+1/l2];
check["G3: unequal restoration and temporal cancellation",
 FullSimplify[{j-tsum (j/tsum),al+(-tsum al)/tsum},
 Assumptions->l1>0&&l2>0&&p>0]=={0,0}];
weighted=(m1/l1+m2/l2)/(1/l1+1/l2);
net={2 Pi (m1-weighted) y1/l1,2 Pi (m2-weighted) y2/l2};
check["G4: unequal based components give one global radial winding",
 Simplify[net-{2 Pi (m1-m2) y1/(l1+l2),-2 Pi (m1-m2) y2/(l1+l2)}]=={0,0}];
check["G5: bare integral shift of restoring f recreates a jump",
 Simplify[j-(1/l1+1/l2) (j/(1/l1+1/l2)+2 Pi m)
 +2 Pi m (1/l1+1/l2)]==0];
check["G6: variable transition CPS cancels independent frame lifts",
 Simplify[e1 dl1+e2 dl2-e2 (dl2-dl1)/.e2->-e1]==0];
check["G7: fixed transition CPS correction vanishes",
 Simplify[(de1+de2) df/.de2->-de1]==0];
psi=x^2 (L-x)^2;
check["G8: quadratic pure gauge remains a based smooth-region obstruction",
 {psi/.x->0,psi/.x->L,D[psi,x]/.x->0,D[psi,{x,2}]/.x->0}=={0,0,0,2 L^2}];
check["G9: radial Wilson phase respects based large identifications",
 FullSimplify[Exp[I (a1+2 Pi m1-a2-2 Pi m2+ph)]-Exp[I (a1-a2+ph)],
 Assumptions->Element[{m1,m2},Integers]]==0];
Scan[Print[If[#[[2]],"PASS ","FAIL "]<>#[[1]]]&,checks];
Print["RESULT ",Count[checks,{_,True}],"/",Length[checks]];
If[!And@@checks[[All,2]],Exit[1]];
