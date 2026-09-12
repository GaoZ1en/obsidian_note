(* Run every case in a fresh kernel. From this directory, for example:
   wolframscript -code 'verificationCase="core";Get["de_donder_onshell_response_checks.wl"];'
   Cases: core, asymptotic, radial, pair, helicity, scalar.
   xAct MCP: core profile for core, components for the four component cases.
   scalar uses ordinary Mathematica; its Wronskian check is numerical. *)
caseName=If[ValueQ[verificationCase],verificationCase,"core"];
If[caseName=!="scalar",Needs["xAct`xTensor`"];Needs["xAct`xPert`"];Needs["xAct`xTras`"]];
If[MemberQ[{"asymptotic","radial","pair","helicity"},caseName],Needs["xAct`xCoba`"]];
Switch[caseName,"core",

DefManifold[M,3,{a,b,c,d,e,f,i,j}];
DefMetric[-1,g[-a,-b],CD];
DefMetricPerturbation[g,p,eps];
DefTensor[q[-a,-b],M,Symmetric[{-a,-b}]];
DefTensor[v[a],M];
DefTensor[sc[],M];
DefConstantSymbol[ms];
ads={RiemannCD[x_,y_,z_,w_]:>g[x,w]g[y,z]-g[x,z]g[y,w],RicciCD[x_,y_]:>-2g[x,y],RicciScalarCD[]->-6};
norm[x_]:=FullSimplification[][ToCanonical[ContractMetric[x]]];
adnorm[x_]:=FixedPoint[(norm[#]/.ads)&,x,4]//norm;
cc[x_]:=Module[{u=DummyIn[TangentM]},CD[u][q[-u,x]]-CD[x][q[u,-u]]/2];
ein=RicciCD[-a,-b]-g[-a,-b]RicciScalarCD[]/2-g[-a,-b];
elin=ExpandPerturbation[Perturbation[ein,1]]/.p[LI[1],x_,y_]:>q[x,y];
expected=-(CD[c][CD[-c][q[-a,-b]]]+2q[-a,-b])/2+g[-a,-b]CD[c][CD[-c][q[d,-d]]]/4+(CD[-a][cc[-b]]+CD[-b][cc[-a]])/2-g[-a,-b]CD[c][cc[-c]]/2;
gauge=cc[-b]/.q[x_,y_]:>CD[x][v[y]]+CD[y][v[x]];
traceExpected=(CD[c][CD[-c][q[d,-d]]]-4q[d,-d])/4-CD[c][cc[-c]]/2;
stress=CD[-a][sc[]]CD[-b][sc[]]-g[-a,-b](CD[c][sc[]]CD[-c][sc[]]+ms^2 sc[]^2)/2;

ll=CD[c][CD[-c][q[-a,-b]]]+2q[-a,-b]-2g[-a,-b]q[c,-c];
dv[x_]:=Module[{u=DummyIn[TangentM]},CD[u][q[-u,x]]];
qs[x_,y_]:=Module[{u=DummyIn[TangentM]},CD[x][CD[y][sc[]]]+g[x,y](CD[u][CD[-u][sc[]]]-4sc[])];

pp=CD[a][CD[-a][v[-b]]-CD[-b][v[-a]]]-4v[-b];
qv=CD[a][CD[-a][v[-b]]]-2v[-b];
divv=CD[a][v[-a]];

result=<|"Gauge transformation on a general background"->(norm[gauge-CD[a][CD[-a][v[-b]]]-RicciCD[-b,-c]v[c]]),"AdS linear Einstein operator"->(adnorm[elin-expected]),"AdS residual gauge operator"->(adnorm[gauge-CD[a][CD[-a][v[-b]]]+2v[-b]]),"Reduced tensor operator divergence"->(adnorm[CD[a][ll]-CD[c][CD[-c][dv[-b]]]+2dv[-b]]),"Reduced tensor operator trace"->(adnorm[g[a,b]ll-CD[c][CD[-c][q[d,-d]]]+4q[d,-d]]),"Scalar-generated harmonic metric"->(adnorm[cc[-b]/.q[x_,y_]:>qs[x,y]]),"Proca reduction of the gauge operator"->(adnorm[qv-pp-CD[-b][divv]]),"Divergence of Proca operator"->(adnorm[CD[b][pp]+4divv]),"Gradient scalar gauge sector"->(adnorm[(qv/.v[x_]:>CD[x][sc[]])-CD[-b][CD[a][CD[-a][sc[]]]-4sc[]]])|>;

DefTensor[phiA[],M];DefTensor[phiB[],M];
tab=(CD[-a][phiA[]]CD[-b][phiB[]]+CD[-b][phiA[]]CD[-a][phiB[]])/2-g[-a,-b](CD[c][phiA[]]CD[-c][phiB[]]+ms^2 phiA[]phiB[])/2;
expectedDiv=((CD[c][CD[-c][phiA[]]]-ms^2 phiA[])CD[-b][phiB[]]+(CD[c][CD[-c][phiB[]]]-ms^2 phiB[])CD[-b][phiA[]])/2;
result=Join[result,<|"Polarized source divergence identity"->adnorm[CD[a][tab]-expectedDiv],"Diagonal normalization"->norm[(tab/.{phiA->sc,phiB->sc})-stress]|>];

,"asymptotic",

DefManifold[M3,3,{a,b,c,d,e,i,j}];DefChart[ch,M3,{0,1,2},{tt[],rr[],pp[]}];DefMetric[-1,g[-a,-b],CD];
MetricInBasis[g,-ch,DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}]];MetricCompute[g,ch,All];
gam=Table[ToValues[ChristoffelCDPDch[{ii,ch},{jj,-ch},{kk,-ch}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,rr[]->r,pp[]->ph};
g0=DiagonalMatrix[{-(1+r^2),1/(1+r^2),r^2}];gi=Inverse[g0];xx={t,r,ph};
cov1[vv_]:=Table[D[vv[[jj]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]vv[[ss]],{ss,3}],{ii,3},{jj,3}];
box1[vv_]:=Module[{dd=cov1[vv]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj]]+gam[[ss,ii,jj]]dd[[ii,ss]],{ss,3}]),{ii,3}],{jj,3}]];
cov2[qq_]:=Table[D[qq[[jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]qq[[ss,kk]]+gam[[ss,ii,kk]]qq[[jj,ss]],{ss,3}],{ii,3},{jj,3},{kk,3}];
box2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj,kk]]+gam[[ss,ii,jj]]dd[[ii,ss,kk]]+gam[[ss,ii,kk]]dd[[ii,jj,ss]],{ss,3}]),{ii,3}],{jj,3},{kk,3}]];
div2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]]dd[[ii,ii,jj]],{ii,3}],{jj,3}]];
tr[qq_]:=Tr[gi.qq];
cc[qq_]:=div2[qq]-Table[D[tr[qq],xx[[ii]]]/2,{ii,3}];
symgrad[vv_]:=cov1[vv]+Transpose[cov1[vv]];

scalarBox[ss_]:=Sum[gi[[ii,ii]](D[ss,{xx[[ii]],2}]-Sum[gam[[kk,ii,ii]]D[ss,xx[[kk]]],{kk,3}]),{ii,3}];
div1[vv_]:=Tr[gi.cov1[vv]];
ein1[qq_]:=-1/2(box2[qq]+2qq)+g0 scalarBox[tr[qq]]/4+symgrad[cc[qq]]/2-g0 div1[cc[qq]]/2;
qfg={{bt[t,ph],0,bx[t,ph]},{0,0,0},{bx[t,ph],0,bp[t,ph]}};
ee=FullSimplify[ein1[qfg]];
cv=FullSimplify[cc[qfg]];
vgen={vt[t,r,ph],vr[t,r,ph],vp[t,r,ph]};
qvec=FullSimplify[box1[vgen]-2vgen];
leadvec=FullSimplify[qvec/.{vt->Function[{u,v,w},at[u,w]v^-ss],vr->Function[{u,v,w},ar[u,w]v^(-ss-1)],vp->Function[{u,v,w},ap[u,w]v^-ss]}];
leadvec=Table[Limit[FullSimplify[r^(ss+If[ii==2,1,0])leadvec[[ii]]],r->Infinity],{ii,3}];
result=<|"rr constraint"->Limit[r^4 ee[[2,2]],r->Infinity],"ra constraints"->Limit[r^3 ee[[2,{1,3}]],r->Infinity],
"C leading"->MapThread[Limit[#1 #2,r->Infinity]&,{cv,{r^2,r^3,r^2}}],
"Vector indicial system"->leadvec|>;

eta={et[t,r,ph],er[t,r,ph],ep[t,r,ph]};
lieEta=FullSimplify[symgrad[g0.eta]];
result=<|
"Leading rr Einstein constraint"->FullSimplify[Limit[r^4 ee[[2,2]],r->Infinity]-bt[t,ph]+bp[t,ph]],
"Leading ra Einstein constraints"->FullSimplify[Limit[r^3 ee[[2,{1,3}]],r->Infinity]-{D[bp[t,ph],t]-D[bx[t,ph],ph],D[bx[t,ph],t]-D[bt[t,ph],ph]}],
"On-shell leading gauge functional"->FullSimplify[(MapThread[Limit[#1 #2,r->Infinity]&,{cv,{r^2,r^3,r^2}}]/.bp->bt)/.{Derivative[0,1][bx][t,ph]->Derivative[1,0][bt][t,ph],Derivative[1,0][bx][t,ph]->Derivative[0,1][bt][t,ph]}],
"Vector indicial recursion"->FullSimplify[leadvec-{(ss^2-4)at[t,ph]+2D[ar[t,ph],t],(ss^2-2ss-4)ar[t,ph],(ss^2-4)ap[t,ph]+2D[ar[t,ph],ph]}],
"Radial collar rr gauge transformation"->FullSimplify[lieEta[[2,2]]-2/(1+r^2)(D[er[t,r,ph],r]-r/(1+r^2)er[t,r,ph])],
"Radial collar ra gauge transformation"->FullSimplify[lieEta[[2,{1,3}]]-{-(1+r^2)D[et[t,r,ph],r]+D[er[t,r,ph],t]/(1+r^2),r^2 D[ep[t,r,ph],r]+D[er[t,r,ph],ph]/(1+r^2)}]
|>;

,"radial",

DefManifold[M3,3,{a,b,c,d,e,i,j}];DefChart[ch,M3,{0,1,2},{tt[],rr[],pp[]}];DefMetric[-1,g[-a,-b],CD];
MetricInBasis[g,-ch,DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}]];MetricCompute[g,ch,All];
gam=Table[ToValues[ChristoffelCDPDch[{ii,ch},{jj,-ch},{kk,-ch}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,rr[]->r,pp[]->ph};
g0=DiagonalMatrix[{-(1+r^2),1/(1+r^2),r^2}];gi=Inverse[g0];xx={t,r,ph};
cov1[vv_]:=Table[D[vv[[jj]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]vv[[ss]],{ss,3}],{ii,3},{jj,3}];
box1[vv_]:=Module[{dd=cov1[vv]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj]]+gam[[ss,ii,jj]]dd[[ii,ss]],{ss,3}]),{ii,3}],{jj,3}]];
cov2[qq_]:=Table[D[qq[[jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]qq[[ss,kk]]+gam[[ss,ii,kk]]qq[[jj,ss]],{ss,3}],{ii,3},{jj,3},{kk,3}];
box2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj,kk]]+gam[[ss,ii,jj]]dd[[ii,ss,kk]]+gam[[ss,ii,kk]]dd[[ii,jj,ss]],{ss,3}]),{ii,3}],{jj,3},{kk,3}]];
div2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]]dd[[ii,ii,jj]],{ii,3}],{jj,3}]];
tr[qq_]:=Tr[gi.qq];
cc[qq_]:=div2[qq]-Table[D[tr[qq],xx[[ii]]]/2,{ii,3}];
symgrad[vv_]:=cov1[vv]+Transpose[cov1[vv]];

pairs={{1,1},{1,2},{1,3},{2,2},{2,3},{3,3}};
us={u1[r],u2[r],u3[r],u4[r],u5[r],u6[r]};
umat={{us[[1]],us[[2]],us[[3]]},{us[[2]],us[[4]],us[[5]]},{us[[3]],us[[5]],us[[6]]}};
phase=Exp[-I om t+I azMode ph];qb=phase umat;
lmat=FullSimplify[(box2[qb]+2qb-2g0 tr[qb])/phase];
lv=Extract[lmat,pairs];
bm=Table[Coefficient[Expand[lv[[ii]]],D[us[[kk]],r]],{ii,6},{kk,6}];
am=Table[Coefficient[Expand[lv[[ii]]],us[[kk]]],{ii,6},{kk,6}];
cv=FullSimplify[div2[qb]/phase];
cm=Table[Coefficient[Expand[cv[[ii]]],D[us[[kk]],r]],{ii,3},{kk,6}];
dm=Table[Coefficient[Expand[cv[[ii]]],us[[kk]]],{ii,3},{kk,6}];
result=<|"B"->FullSimplify[bm],"A"->FullSimplify[am],"Constraint derivative"->FullSimplify[cm],"Constraint value"->FullSimplify[dm],"Reconstruction"->FullSimplify[lv-(1+r^2)D[us,{r,2}]-bm.D[us,r]-am.us]|>;

ff=1+r^2;
mfirst=Join[cm,D[cm,r]+dm-cm.bm/ff];
nfirst=Join[-dm,-D[dm,r]+cm.am/ff];
sourceVector=Array[sourceComp,6];
srcfirst=Join[ConstantArray[0,3],(cm/ff).sourceVector];
tcons=dm[[All,{1,3,6}]];
result=<|"Radial first-order determinant"->Factor[Det[mfirst]],"Source conservation tangential determinant"->Factor[Det[tcons]],"First-order coefficient matrix"->FullSimplify[mfirst]|>;

bmExpected=DiagonalMatrix[{1/r-r,1/r+3r,-(1+r^2)/r,1/r+7r,-1/r+3r,-(3+r^2)/r}];
ff=1+r^2;
amExpected={
{-2-azMode^2/r^2+(om^2-2)/ff,-4I om r,0,2ff,0,2ff/r^2},
{-2I om r/ff^2,-3-(1+azMode^2)/r^2+(om^2+4)/ff,-2I azMode/r^3,-2I om r,0,0},
{0,2I azMode ff/r,-azMode^2/r^2+om^2/ff,0,-2I om r,0},
{2/ff^3,-4I om r/ff^2,0,4-(2+azMode^2)/r^2+(om^2-2)/ff,-4I azMode/r^3,2/(r^4 ff)},
{0,0,-2I om r/ff^2,2I azMode ff/r,-3-(3+azMode^2)/r^2+om^2/ff,-2I azMode/r^3},
{2r^2/ff,0,0,2ff,4I azMode ff/r,-2+(2-azMode^2)/r^2+om^2/ff}};

pExpected=ff {{0,1,0,0,0,0},{0,0,0,1,0,0},{0,0,0,0,1,0}};
dExpected={{I om/ff,1/r+3r,I azMode/r^2,0,0,0},{r/ff^2,I om/ff,0,1/r+4r,I azMode/r^2,-1/r^3},{0,0,I om/ff,0,1/r+3r,I azMode/r^2}};
result=<|
"Radial B matrix"->FullSimplify[bm-bmExpected],
"Radial A matrix"->FullSimplify[am-amExpected],
"Constraint P matrix"->FullSimplify[cm-pExpected],
"Constraint D matrix"->FullSimplify[dm-dExpected],
"First-order determinant"->FullSimplify[Det[mfirst]-ff(om^2-azMode^2)/r^3],
"Tangential source conservation determinant"->FullSimplify[Det[tcons]-(azMode^2-om^2)/(r^3 ff^2)]
|>;

modeA=radA[r] Exp[-I wA t+I jA ph];modeB=radB[r] Exp[-I wB t+I jB ph];
grad[ss_]:=Table[D[ss,xx[[ii]]],{ii,3}];
stressAB=(Outer[Times,grad[modeA],grad[modeB]]+Outer[Times,grad[modeB],grad[modeA]])/2-g0(grad[modeA].gi.grad[modeB]+massSq modeA modeB)/2;
kinAB=ff radA'[r]radB'[r]+(wA wB/ff-jA jB/r^2+massSq)radA[r]radB[r];
expectedAB={-wA wB radA[r]radB[r]+ff kinAB/2,-I(wA radA[r]radB'[r]+wB radA'[r]radB[r])/2,(wA jB+wB jA)radA[r]radB[r]/2,radA'[r]radB'[r]-kinAB/(2ff),I(jB radA'[r]radB[r]+jA radA[r]radB'[r])/2,-jA jB radA[r]radB[r]-r^2 kinAB/2};
pairPhase=Exp[-I(wA+wB)t+I(jA+jB)ph];
kgRules={radA''[r]->-((1/r+3r)radA'[r]+(wA^2/ff-jA^2/r^2-massSq)radA[r])/ff,radB''[r]->-((1/r+3r)radB'[r]+(wB^2/ff-jB^2/r^2-massSq)radB[r])/ff};
result=Join[result,<|
"All six polarized source components"->FullSimplify[Extract[stressAB,pairs]/pairPhase-expectedAB],
"Conservation for arbitrary on-shell radial functions"->FullSimplify[(div2[stressAB]/pairPhase)/.kgRules],
"Radial source conservation matrix"->FullSimplify[((cm/.{om->wA+wB,azMode->jA+jB}).D[expectedAB,r]+(dm/.{om->wA+wB,azMode->jA+jB}).expectedAB)/.kgRules],
"Polarized trace"->FullSimplify[tr[stressAB]/pairPhase+kinAB/2+massSq radA[r]radB[r]],
"Exchange symmetry"->FullSimplify[expectedAB-(expectedAB/.{radA->radB,radB->radA,wA->wB,wB->wA,jA->jB,jB->jA})]
|>];

,"pair",

DefManifold[M3,3,{a,b,c,d,e,i,j}];DefChart[ch,M3,{0,1,2},{tt[],rr[],pp[]}];DefMetric[-1,g[-a,-b],CD];
MetricInBasis[g,-ch,DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}]];MetricCompute[g,ch,All];
gam=Table[ToValues[ChristoffelCDPDch[{ii,ch},{jj,-ch},{kk,-ch}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,rr[]->r,pp[]->ph};
g0=DiagonalMatrix[{-(1+r^2),1/(1+r^2),r^2}];gi=Inverse[g0];xx={t,r,ph};
cov1[vv_]:=Table[D[vv[[jj]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]vv[[ss]],{ss,3}],{ii,3},{jj,3}];
box1[vv_]:=Module[{dd=cov1[vv]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj]]+gam[[ss,ii,jj]]dd[[ii,ss]],{ss,3}]),{ii,3}],{jj,3}]];
cov2[qq_]:=Table[D[qq[[jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]qq[[ss,kk]]+gam[[ss,ii,kk]]qq[[jj,ss]],{ss,3}],{ii,3},{jj,3},{kk,3}];
box2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj,kk]]+gam[[ss,ii,jj]]dd[[ii,ss,kk]]+gam[[ss,ii,kk]]dd[[ii,jj,ss]],{ss,3}]),{ii,3}],{jj,3},{kk,3}]];
div2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]]dd[[ii,ii,jj]],{ii,3}],{jj,3}]];
tr[qq_]:=Tr[gi.qq];
cc[qq_]:=div2[qq]-Table[D[tr[qq],xx[[ii]]]/2,{ii,3}];
symgrad[vv_]:=cov1[vv]+Transpose[cov1[vv]];

pairs={{1,1},{1,2},{1,3},{2,2},{2,3},{3,3}};
us={u1[r],u2[r],u3[r],u4[r],u5[r],u6[r]};
umat={{us[[1]],us[[2]],us[[3]]},{us[[2]],us[[4]],us[[5]]},{us[[3]],us[[5]],us[[6]]}};
phase=Exp[-I om t+I azMode ph];qb=phase umat;
lmat=FullSimplify[(box2[qb]+2qb-2g0 tr[qb])/phase];
lv=Extract[lmat,pairs];
bm=Table[Coefficient[Expand[lv[[ii]]],D[us[[kk]],r]],{ii,6},{kk,6}];
am=Table[Coefficient[Expand[lv[[ii]]],us[[kk]]],{ii,6},{kk,6}];
cv=FullSimplify[div2[qb]/phase];
cm=Table[Coefficient[Expand[cv[[ii]]],D[us[[kk]],r]],{ii,3},{kk,6}];
dm=Table[Coefficient[Expand[cv[[ii]]],us[[kk]]],{ii,3},{kk,6}];
result=<|"B"->FullSimplify[bm],"A"->FullSimplify[am],"Constraint derivative"->FullSimplify[cm],"Constraint value"->FullSimplify[dm],"Reconstruction"->FullSimplify[lv-(1+r^2)D[us,{r,2}]-bm.D[us,r]-am.us]|>;

ff=1+r^2;
mfirst=Join[cm,D[cm,r]+dm-cm.bm/ff];
nfirst=Join[-dm,-D[dm,r]+cm.am/ff];
sourceVector=Array[sourceComp,6];
srcfirst=Join[ConstantArray[0,3],(cm/ff).sourceVector];
tcons=dm[[All,{1,3,6}]];
result=<|"Radial first-order determinant"->Factor[Det[mfirst]],"Source conservation tangential determinant"->Factor[Det[tcons]],"First-order coefficient matrix"->FullSimplify[mfirst]|>;

scalarBox[ss_]:=Sum[gi[[ii,ii]](D[ss,{xx[[ii]],2}]-Sum[gam[[kk,ii,ii]]D[ss,xx[[kk]]],{kk,3}]),{ii,3}];
div1[vv_]:=Tr[gi.cov1[vv]];
ein1[qq_]:=-1/2(box2[qq]+2qq)+g0 scalarBox[tr[qq]]/4+symgrad[cc[qq]]/2-g0 div1[cc[qq]]/2;
hess[ss_]:=Table[D[ss,xx[[ii]],xx[[jj]]]-Sum[gam[[kk,ii,jj]]D[ss,xx[[kk]]],{kk,3}],{ii,3},{jj,3}];
grad[ss_]:=Table[D[ss,xx[[ii]]],{ii,3}];
ff=1+r^2;
u0=ff^(-del/2)Exp[-I del t];
u1=r ff^(-(del+1)/2)Exp[-I(del+1)t+I ph];
vv=u0 u1;
t01=(Outer[Times,grad[u0],grad[u1]]+Outer[Times,grad[u1],grad[u0]])/2-g0(grad[u0].gi.grad[u1]+del(del-2)vv)/2;
coef=del/(2(2del+1)); mass2=4del(del-1);
q01=-coef/(mass2-4)(hess[vv]+(mass2-4)g0 vv);
staticq=DiagonalMatrix[{del/2,del/(2ff^2)(1-ff^(1-del)),0}];
statC=FullSimplify[cc[staticq],Assumptions->r>0&&del>1];
result=<|"Pair scalar equation"->FullSimplify[scalarBox[vv]-mass2 vv,Assumptions->r>0&&del>1],
"Pair stress decomposition"->FullSimplify[t01-coef(hess[vv]+(2-mass2)g0 vv),Assumptions->r>0&&del>1],
"Pair harmonic gauge"->FullSimplify[cc[q01],Assumptions->r>0&&del>1],
"Pair Einstein response"->FullSimplify[ein1[q01]-t01/2,Assumptions->r>0&&del>1],
"Static radial gauge functional"->statC|>;

result=KeyDrop[result,"Static radial gauge functional"];
uPair=FullSimplify[Extract[q01-g0 tr[q01]/2,pairs]/Exp[-I(2del+1)t+I ph]];
tPair=FullSimplify[Extract[t01,pairs]/Exp[-I(2del+1)t+I ph]];
resFirst=FullSimplify[(mfirst/.{om->2del+1,azMode->1}).D[uPair,r]-(nfirst/.{om->2del+1,azMode->1}).uPair-Join[ConstantArray[0,3],tPair[[{2,4,5}]]],Assumptions->r>0&&del>1];
result=Join[result,<|"Scalar pair in first-order response"->resFirst|>];

,"helicity",

DefManifold[M3,3,{a,b,c,d,e,i,j}];DefChart[ch,M3,{0,1,2},{tt[],rr[],pp[]}];DefMetric[-1,g[-a,-b],CD];
MetricInBasis[g,-ch,DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}]];MetricCompute[g,ch,All];
gam=Table[ToValues[ChristoffelCDPDch[{ii,ch},{jj,-ch},{kk,-ch}]],{ii,0,2},{jj,0,2},{kk,0,2}]/.{tt[]->t,rr[]->r,pp[]->ph};
g0=DiagonalMatrix[{-(1+r^2),1/(1+r^2),r^2}];gi=Inverse[g0];xx={t,r,ph};
cov1[vv_]:=Table[D[vv[[jj]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]vv[[ss]],{ss,3}],{ii,3},{jj,3}];
box1[vv_]:=Module[{dd=cov1[vv]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj]]+gam[[ss,ii,jj]]dd[[ii,ss]],{ss,3}]),{ii,3}],{jj,3}]];
cov2[qq_]:=Table[D[qq[[jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,jj]]qq[[ss,kk]]+gam[[ss,ii,kk]]qq[[jj,ss]],{ss,3}],{ii,3},{jj,3},{kk,3}];
box2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]](D[dd[[ii,jj,kk]],xx[[ii]]]-Sum[gam[[ss,ii,ii]]dd[[ss,jj,kk]]+gam[[ss,ii,jj]]dd[[ii,ss,kk]]+gam[[ss,ii,kk]]dd[[ii,jj,ss]],{ss,3}]),{ii,3}],{jj,3},{kk,3}]];
div2[qq_]:=Module[{dd=cov2[qq]},Table[Sum[gi[[ii,ii]]dd[[ii,ii,jj]],{ii,3}],{jj,3}]];
tr[qq_]:=Tr[gi.qq];
cc[qq_]:=div2[qq]-Table[D[tr[qq],xx[[ii]]]/2,{ii,3}];
symgrad[vv_]:=cov1[vv]+Transpose[cov1[vv]];

ff=1+r^2; phase=Exp[-I om t+I azMode ph];
avec={aa[r],-I(om bb[r]+azMode aa[r])/(ll ff r),bb[r]};
mat2={{-om azMode,ll^2 ff-om^2},{ll^2 r^2+azMode^2,azMode om}}/(ll ff r);
rules1={aa'[r]->mat2[[1]].{aa[r],bb[r]},bb'[r]->mat2[[2]].{aa[r],bb[r]}};
rules2={aa''[r]->(D[mat2[[1]].{aa[r],bb[r]},r]/.rules1),bb''[r]->(D[mat2[[2]].{aa[r],bb[r]},r]/.rules1)};
qhel=FullSimplify[(box1[phase avec]-2phase avec)/phase];
helres=Table[FullSimplify[qhel/.rules2/.rules1/.ll->helicity],{helicity,{-2,2}}];
result=<|"Helicity vectors solve Q"->helres|>;

,"scalar",

Clear[r,nu,om,ell,yy];
f=1+r^2;z=r^2/f;
pref=r^ell f^(-(nu+ell)/2);
a=(nu+ell-om)/2;b=(nu+ell+om)/2;c=ell+1;
rad=pref yy[z];
lop=D[r f D[rad,r],r]/r+(om^2/f-ell^2/r^2-nu(nu-2))rad;
hyp=z(1-z)yy''[z]+(c-(a+b+1)z)yy'[z]-a b yy[z];
deltaGauge=1+Sqrt[5];
u[r_]:=r^2 (1+r^2)^(-(deltaGauge+2)/2)Hypergeometric2F1[(deltaGauge+2-1/3)/2,(deltaGauge+2+1/3)/2,3,r^2/(1+r^2)];
v[r_]:=r^2 (1+r^2)^(-(deltaGauge+2)/2)Hypergeometric2F1[(deltaGauge+2-1/3)/2,(deltaGauge+2+1/3)/2,deltaGauge,1/(1+r^2)];
wn=-2Gamma[3]Gamma[deltaGauge]/(Gamma[(deltaGauge+2-1/3)/2]Gamma[(deltaGauge+2+1/3)/2]);
result=<|"Hypergeometric radial reduction"->FullSimplify[lop-4pref/f hyp,Assumptions->r>0&&nu>1&&ell>=0],
"Trace Wronskian numerical check"->Chop[N[r(1+r^2)(u[r]v'[r]-u'[r]v[r])/.r->7/10,60]-N[wn,60],10^-40]|>;

Clear[r,del,ell,nn,yy];ff=1+r^2;zz=(r^2-1)/ff;pref=r^ell ff^(-(del+ell)/2);rad=pref yy[zz];energy=del+ell+2nn;lop=D[r ff D[rad,r],r]/r+(energy^2/ff-ell^2/r^2-del(del-2))rad;
jac=(1-zz^2)yy''[zz]+(ell-del+1-(del+ell+1)zz)yy'[zz]+nn(nn+del+ell)yy[zz];
result=Join[result,<|"General Jacobi radial equation"->FullSimplify[lop-4pref/ff jac,Assumptions->r>0&&del>1&&ell>=0]|>];

,_,Print["Unknown case: ",caseName];Exit[2]];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result;
