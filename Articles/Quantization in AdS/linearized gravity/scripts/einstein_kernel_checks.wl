(* Fresh kernels: kernelCase="core" (xAct core), "spin2" (xCoba),
   "scalar" or "coefficients" (Mathematica).
   The coefficients case also defines spin2Coefficients[ell]. *)
selectedKernelCase=If[ValueQ[kernelCase],kernelCase,"core"];
Switch[selectedKernelCase,
"core",
verificationCase="core";
Get[FileNameJoin[{DirectoryName[$InputFileName],"de_donder_onshell_response_checks.wl"}]];
pSc[x_,y_]:=CD[x][CD[y][sc[]]]-g[x,y](CD[c][CD[-c][sc[]]]-2sc[]);
qs2[x_,y_]:=CD[x][CD[y][sc[]]]+g[x,y](CD[c][CD[-c][sc[]]]-4sc[]);
srcSc=pSc[-a,-b]/.sc[]:>CD[d][CD[-d][sc[]]]-4sc[];
einQs=elin/.q[x_,y_]:>qs2[x,y];
result=<|
"Scalar transverse projector divergence"->adnorm[CD[a][pSc[-a,-b]]],
"Scalar projector trace"->adnorm[g[a,b]pSc[-a,-b]+2(CD[c][CD[-c][sc[]]]-3sc[])],
"Scalar reconstruction Einstein equation"->adnorm[einQs+srcSc/2],
"Scalar reconstruction gauge"->adnorm[cc[-b]/.q[x_,y_]:>qs2[x,y]],
"Scalar reconstruction trace"->adnorm[g[a,b]qs2[-a,-b]-4(CD[c][CD[-c][sc[]]]-3sc[])]|>;

,"spin2",
Needs["xAct`xTensor`"];Needs["xAct`xCoba`"];Needs["xAct`xTras`"];
DefManifold[HH,3,{a,b,c,d,e,i,j}];DefChart[chH,HH,{0,1,2},{zz[],xx[],yy[]}];DefMetric[1,gg[-a,-b],DD];
MetricInBasis[gg,-chH,IdentityMatrix[3]/zz[]^2];MetricCompute[gg,chH,All];
gam=Table[ToValues[ChristoffelDDPDchH[{ii,chH},{jj,-chH},{kk,-chH}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{zz[]->z,xx[]->x,yy[]->y};
coords={z,x,y};met=IdentityMatrix[3]/z^2;inv=z^2 IdentityMatrix[3];
cov2[h_]:=Table[D[h[[jj,kk]],coords[[ii]]]-Sum[gam[[ss,ii,jj]]h[[ss,kk]]+gam[[ss,ii,kk]]h[[jj,ss]],{ss,3}],{ii,3},{jj,3},{kk,3}];
div2[h_]:=Module[{dd=cov2[h]},Table[Sum[inv[[ii,ii]]dd[[ii,ii,jj]],{ii,3}],{jj,3}]];
box2[h_]:=Module[{dd=cov2[h]},Table[Sum[inv[[ii,ii]](D[dd[[ii,jj,kk]],coords[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj,kk]]+gam[[ss,ii,jj]]dd[[ii,ss,kk]]+gam[[ss,ii,kk]]dd[[ii,jj,ss]],{ss,3}]),{ii,3}],{jj,3},{kk,3}]];
vec={z,x,y};jac=(IdentityMatrix[3]-2Outer[Times,vec,vec]/(vec.vec))[[All,{2,3}]];
pol={{1,0},{0,-1}};
bulk=(z/(vec.vec))^al/z^2 jac.pol.Transpose[jac];
result=<|"Trace"->FullSimplify[Tr[inv.bulk]],"Divergence"->FullSimplify[div2[bulk],Assumptions->z>0],"Eigenvalue"->FullSimplify[box2[bulk]-(al(al-2)-2)bulk,Assumptions->z>0]|>
,"scalar",
Clear[l,a,w,om];
ff[a_,l_]:=-Exp[-a l]/(4Pi Sinh[l]);dF=ff[Sqrt[5],l]-ff[2,l];
lap[expr_]:=D[expr,{l,2}]+2Coth[l]D[expr,l];
right=Pi Exp[-w];left=Pi Exp[w];
result=<|
"Scalar equation away from coincidence"->FullSimplify[lap[ff[a,l]]-(a^2-1)ff[a,l],Assumptions->l>0&&a>0],
"Scalar delta normalization"->Limit[4Pi Sinh[l]^2 D[ff[a,l],l],l->0,Direction->"FromAbove"]-1,
"Resolvent difference"->FullSimplify[lap[dF]-4dF-ff[2,l],Assumptions->l>0],
"Spin 2 spectral Fourier identity off origin"->FullSimplify[-D[right,{w,2}]+4right-3Pi Exp[-w]],
"Spin 2 Fourier delta coefficient"->(-(D[right,w]-D[left,w])/.w->0)-2Pi,
"Retarded scalar initial jump"->(D[-Sin[om w]/om,w]/.w->0)+1|>;

,"coefficients",
Clear[s,u,ang];
pvec={8s^2 u^2,2s u(s^2+u^2),(s^4+u^4)/2}/((s^2+u)^2(1+u)^2);
boundaryV[z_]:={z,-Sqrt[u]Cos[ang],-Sqrt[u]Sin[ang]};
jj[z_]:=(IdentityMatrix[3]-2Outer[Times,boundaryV[z],boundaryV[z]]/(z^2+u))[[All,{2,3}]];
cross=jj[s].Transpose[jj[1]];selfA=jj[s].Transpose[jj[s]];selfB=jj[1].Transpose[jj[1]];
tensorComp[mu_,nu_,rho_,sig_]:=(cross[[mu,rho]]cross[[nu,sig]]+cross[[mu,sig]]cross[[nu,rho]]-selfA[[mu,nu]]selfB[[rho,sig]])/2;
angular=Integrate[TrigExpand[#],{ang,0,2Pi}]/(2Pi)&/@{tensorComp[1,1,1,1],tensorComp[1,2,1,2],tensorComp[2,3,2,3]};
integ=Integrate[s^2/(s^2+u)^2 #,{u,0,s},Assumptions->s>1]&/@pvec;
hInt=FullSimplify[(2s/(s^2-1)(pvec/.u->s)+6integ)/(4Pi),Assumptions->s>1];
hClosed={
4s^2((s-1)(1-3s+13s^2-3s^3+4s^4)-6s^2(1+s^2)Log[s])/(Pi(s^2-1)^5),
s((s-1)(1+s-26s^2+22s^3-47s^4+s^5)+6s^2(1+6s^2+s^4)Log[s])/(2Pi(s^2-1)^5),
(-1+6s^2-42s^4+48s^5-14s^6+3s^8-12s^4(1+s^2)Log[s])/(4Pi(s^2-1)^5)};
spin2Coefficients[ell_]:=({3/2,2,2}hClosed)/.{s->Exp[ell],Log[s]->ell};
result=<|
"All three angular averages"->FullSimplify[angular-pvec,Assumptions->s>1&&u>=0],
"All three rational integrals"->FullSimplify[hInt-hClosed,Assumptions->s>1],
"Delta root Jacobian"->FullSimplify[((s/((s^2+u)(1+u)))/(D[Log[s(1+u)/(s^2+u)],u])/.u->s)-s/(s^2-1),Assumptions->s>1],
"Exchange of two radial integration ranges"->FullSimplify[(pvec/.u->s^2/u)-pvec,Assumptions->s>1&&u>0]
|>;

,_,Print["Unknown kernel case"];Exit[2]];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result;
