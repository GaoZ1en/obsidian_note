
Clear[th,p,x,y,z,k,n,F];
pb[a_,b_]:=D[a,th]D[b,p]-D[a,p]D[b,th];
xx=Cos[th]; yy=p Sin[th]; zz=p^2;
rad[v_]:=-D[v,{th,2}]-2 Cot[th]D[v,th];
chr=Sin[(n+1)th]/Sin[th];
res=<|
"invariant_relation"->FullSimplify[yy^2-zz(1-xx^2)],
"Poisson_xy"->FullSimplify[pb[xx,yy]-(xx^2-1)],
"Poisson_xz"->FullSimplify[pb[xx,zz]+2 yy],
"Poisson_yz"->FullSimplify[pb[yy,zz]-2 xx zz],
"radial_character_eigenvalue"->FullSimplify[rad[chr]-n(n+2)chr,Assumptions->0<th<Pi],
"half_density_conjugation"->FullSimplify[Sin[th]rad[F[th]/Sin[th]]+F''[th]+F[th],Assumptions->0<th<Pi],
"haar_normalization"->Integrate[2 Sin[th]^2/Pi,{th,0,Pi}]-1,
"constant_ground_state"->rad[1]
|>;
{res,And@@(#===0&/@Values[res])}
