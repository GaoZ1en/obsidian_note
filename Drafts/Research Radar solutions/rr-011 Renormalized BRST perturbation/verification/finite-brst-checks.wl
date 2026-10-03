Clear[x,th,g,w,psi,chi];
px[v_]:=-I D[v,x]+2 g x Sin[th]v;
cg[v_]:=-I D[v,th]+g x^2 Cos[th]v;
hg[v_]:=px[px[v]]/2+w^2 x^2 v/2+g x^4 v;
h0[v_]:=-D[v,{x,2}]/2+w^2 x^2 v/2;
u=Exp[-I g x^2 Sin[th]];
h1[v_]:=Sin[th](-I D[x v,x]-I x D[v,x])+x^4 v;
c0[v_]:=-I D[v,th]; c1[v_]:=x^2 Cos[th]v;
aa=Table[If[j==i+1,Sqrt[i],0],{i,1,13},{j,1,13}];
xx=(aa+Transpose[aa])/Sqrt[2 w];
res=<|
"constraint_unitary_intertwiner"->FullSimplify[cg[u psi[x]]],
"Hamiltonian_unitary_intertwiner"->FullSimplify[hg[u psi[x]]-u(h0[psi[x]]+g x^4 psi[x])],
"exact_constraint_Hamiltonian_commutator"->FullSimplify[cg[hg[chi[x,th]]]-hg[cg[chi[x,th]]]],
"first_order_compatibility"->FullSimplify[c0[h1[chi[x,th]]]-h1[c0[chi[x,th]]]+c1[h0[chi[x,th]]]-h0[c1[chi[x,th]]]],
"HPT_first_correction"->FullSimplify[-I D[-I x^2 Sin[th]psi[x],th]+x^2 Cos[th]psi[x]],
"quartic_shifts_n0_to8"->Table[FullSimplify[MatrixPower[xx,4][[n+1,n+1]]-3(2n^2+2n+1)/(4 w^2)],{n,0,8}],
"projected_first_order_Hamiltonian"->FullSimplify[Integrate[h1[psi[x]],{th,0,2 Pi}]/(2 Pi)-x^4 psi[x]]
|>;res
