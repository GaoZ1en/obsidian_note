ClearAll["Global`*"];
checks={};
add[n_,r_]:=AppendTo[checks,n->FullSimplify[r]];
a=Sqrt[2] Exp[m/2];
add["V45 split normal product",a^2 Exp[-m]-2];
add["V45 split variation",D[a,m] dm-a dm/2];
op=hw-dm/2; om=-hw-dm/2;
pa=-2 om0 op; pb=-2 om0 om;
add["V46 affine endpoint sum",pa+pb-2 om0 dm];
add["V46 affine twist inverse",(pb-pa)/(4 om0)-hw];
add["V47 original-sheet Cabet normal product",2 Exp[m] Exp[-m]-2];
add["V47 Cabet torsion",-op-dm-om];
S1={{c,0,x,-y},{0,c,y,x},{x,y,1,0},{-y,x,0,1}};
S2={{c,0,-x,-y},{0,c,-y,x},{-x,-y,1,0},{-y,x,0,1}};
add["V48 curvature symbols symmetric",{S1-Transpose[S1],S2-Transpose[S2]}];
add["V48 time symbols",{(S1/.{x->0,y->0})-DiagonalMatrix[{c,c,1,1}],(S2/.{x->0,y->0})-DiagonalMatrix[{c,c,1,1}]}];
amat[z_]:={{1+z[[1]]^2,z[[1]] z[[2]]},{z[[1]] z[[2]],2+z[[2]]^2}};
gvec[z_]:={z[[1]] z[[2]],z[[1]]^2+z[[2]]^3};
base={f1,f2}; vv={v1,v2}; rh={r1,r2}; df={df1,df2}; dv={dv1,dv2}; dr={dr1,dr2};
del=t vv+rh; ddel=t dv+dr;
jacg=D[gvec[base],{base}]; da=Sum[D[amat[base],base[[i]]] del[[i]],{i,2}];
tg=gvec[base+del]-gvec[base]-jacg.del;
ta=amat[base+del]-amat[base]-da;
resExact=amat[base+del].(df+ddel)-gvec[base+del]-(amat[base].df-gvec[base]);
linR=amat[base].dr+Sum[D[amat[base],base[[i]]] rh[[i]],{i,2}].df-jacg.rh;
linV=amat[base].dv+Sum[D[amat[base],base[[i]]] vv[[i]],{i,2}].df-jacg.vv;
rhs=tg-ta.df-(amat[base+del]-amat[base]).ddel;
add["V49 exact nonlinear remainder identity",resExact-t linV-(linR-rhs)];
add["V50 reference density determinant",Det[(1/Sqrt[Det[{{q11,q12},{q12,q22}}]/n0^2]) {{q11,q12},{q12,q22}}]/n0^2-1];

Clear[rr,vr,tt,dt,vv0,vv1,oo,doo,jj,djj];
add["V53 Raychaudhuri first variation",
(D[D[rr[tt]+dt vr[tt],{tt,2}]+(vv0[tt]+dt vv1[tt])(rr[tt]+dt vr[tt]),dt]/.dt->0)
-(D[vr[tt],{tt,2}]+vv0[tt] vr[tt]+vv1[tt] rr[tt])];
add["V53 Damour product variation",
(D[(oo+dt doo)(jj+dt djj),dt]/.dt->0)-(doo jj+oo djj)];
add["V53 inverse area variation",
(D[(zz+dt dzz)/(oo+dt doo),dt]/.dt->0)-(dzz-(zz/oo)doo)/oo];

Scan[(If[!And@@Thread[Flatten[{Last[#]}]==0],Print["FAIL ",First[#]];Exit[1],Print["PASS ",First[#]]])&,checks];
Print["PASS Stage-4.1 algebra. Not a PDE existence/completion/restart/C1 proof."];
