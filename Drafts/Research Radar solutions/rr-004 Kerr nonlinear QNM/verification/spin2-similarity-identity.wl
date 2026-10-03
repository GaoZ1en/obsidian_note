ClearAll["Global`*"];
pencil[f_]:=D[p[r]D[f,r],r]+q[r,w]f;
fac=Exp[I w h[r]]b[r];
lhs=FullSimplify[D[fac^-1 pencil[fac u[r]],w] /. Derivative[0,1][q][r,w]->qw[r]];
identity=FullSimplify[fac^2 u[r](lhs-qw[r]u[r])-I D[p[r]h'[r](fac u[r])^2,r]];
<|"frequency_similarity_identity"->identity|>
