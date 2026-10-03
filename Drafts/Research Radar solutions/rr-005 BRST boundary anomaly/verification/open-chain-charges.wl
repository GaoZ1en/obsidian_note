ClearAll["Global\`*"];
coords={th0,th1,th2,x1,y1,x2,y2};
ef={ee0,ee1,ee2,px1,py1,px2,py2};
q1=x1 py1-y1 px1;q2=x2 py2-y2 px2;
g={ee0-ee1+q1,ee1-ee2+q2};edges={-ee0,ee2};
pot=mu^2/2(x1^2+y1^2+x2^2+y2^2)+kap/2(x1^2+y1^2+x2^2+y2^2+(x2-Cos[th1]x1+Sin[th1]y1)^2+(y2-Sin[th1]x1-Cos[th1]y1)^2);
ham=Total[ef^2]/2+pot;
pb[aa_,bb_]:=FullSimplify[Sum[D[aa,coords[[j]]]D[bb,ef[[j]]]-D[aa,ef[[j]]]D[bb,coords[[j]]],{j,7}]];
gg[1,ff_]:=-I(D[ff,th0]-D[ff,th1]+x1 D[ff,y1]-y1 D[ff,x1]);
gg[2,ff_]:=-I(D[ff,th1]-D[ff,th2]+x2 D[ff,y2]-y2 D[ff,x2]);
hop[ff_]:=-Total[Table[D[ff,{v,2}],{v,coords}]]/2+pot ff;
ff=f@@coords;
<|"gauss_poisson"->Table[pb[g[[i]],g[[j]]],{i,2},{j,2}],
"gauss_hamiltonian"->(pb[#,ham]&/@g),
"edge_hamiltonian"->(pb[#,ham]&/@edges),
"edge_gauss"->Table[pb[edges[[i]],g[[j]]],{i,2},{j,2}],
"edge_algebra"->pb[edges[[1]],edges[[2]]],
"quantum_gauss_hamiltonian"->Table[FullSimplify[gg[i,hop[ff]]-hop[gg[i,ff]]],{i,2}],
"quantum_gauss_commutator"->FullSimplify[gg[1,gg[2,ff]]-gg[2,gg[1,ff]]],
"constraint_charge_relation"->Expand[Total[edges]-q1-q2+Total[g]]|>
