(* Self-contained cases: tensors, modes, coefficients, hamiltonian-tensors, gauss, boundary. Run in fresh kernels. *)
caseName=If[ValueQ[verificationCase],verificationCase,"tensors"];
If[!MemberQ[{"coefficients","boundary"},caseName], Needs["xAct`xTensor`"]; Needs["xAct`xPert`"]; Needs["xAct`xTras`"]; Needs["xAct`xCoba`"]];
Switch[caseName,
"tensors",
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e,f,i,j}];
DefMetric[-1,g[-a,-b],CD];
DefMetricPerturbation[g,hh,eps];
DefTensor[ph[],M]; DefTensor[z[a],M]; DefTensor[q[-a,-b],M,Symmetric[{-a,-b}]];
DefConstantSymbol[mm];
norm[x_]:=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[Expand[x]]]]];
lag=-(CD[i][ph[]]CD[-i][ph[]]+mm^2 ph[]^2)/2;
st[a_,b_]:=CD[a][ph[]]CD[b][ph[]]-g[a,b](CD[c][ph[]]CD[-c][ph[]]+mm^2 ph[]^2)/2;
psi=z[j]CD[-j][ph[]];
scalarCross=-CD[a][ph[]]CD[-a][psi]-mm^2 ph[]psi;
metricCoupling=(CD[-a][z[-b]]+CD[-b][z[-a]])st[a,b]/2;
kg=CD[a][CD[-a][ph[]]]-mm^2 ph[];
metricVar=ExpandPerturbation[Perturbation[lag,1]]/.Perturbation[ph[],___]->0;
DefTensor[tth[-a,-b],M,Symmetric[{-a,-b}]];
traceRule=MakeRule[{tth[a,-a],0},MetricOn->All,ContractMetrics->True];
results=<|
"minimal metric coupling"->norm[metricVar+hh[LI[1],a,-a]lag/2-hh[LI[1],a,b]st[-a,-b]/2],
"scalar covariance substitution is a divergence"->norm[scalarCross+metricCoupling-CD[-a][z[a]lag]],
"scalar cross integration by parts"->norm[scalarCross-psi kg+CD[-a][CD[a][ph[]]psi]],
"stress conservation identity"->norm[CD[-a][st[a,b]]-kg CD[b][ph[]]],
"homogeneous coupling boundary identity"->norm[metricCoupling-CD[-a][z[-b]st[a,b]]+z[-b]kg CD[b][ph[]]],
"TT cubic trace removal"->norm[norm[tth[-a,-b]st[a,b]/2-tth[a,b]CD[-a][ph[]]CD[-b][ph[]]/2]/.traceRule]
|>;
,
"modes",
Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];
DefManifold[M,3,{a,b,c,d,e,f}];
DefChart[ch,M,{0,1,2},{tt[],rr[],ang[]}]; DefMetric[-1,g[-a,-b],CD];
gmat=DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}];
MetricInBasis[g,-ch,gmat]; MetricCompute[g,ch,All];
conn=Table[ToValues[ChristoffelCDPDch[{i,ch},{j,-ch},{k,-ch}]],{i,0,2},{j,0,2},{k,0,2}];
coord={tx,rx,az}; sub={tt[]->tx,rr[]->rx,ang[]->az}; gm=gmat/.sub; inv=Inverse[gm]; gam=conn/.sub;
lie[v_,ten_]:=Table[Sum[v[[k]]D[ten[[i,j]],coord[[k]]]+ten[[k,j]]D[v[[k]],coord[[i]]]+ten[[i,k]]D[v[[k]],coord[[j]]],{k,3}],{i,3},{j,3}];
cvd[ten_]:=Table[D[ten[[i,j]],coord[[k]]]-Sum[gam[[l,k,i]]ten[[l,j]]+gam[[l,k,j]]ten[[i,l]],{l,3}],{k,3},{i,3},{j,3}];
resList=Table[
 zv=Exp[-2I(tx-sign az)]/(4Sqrt[3Pi]) {I rx^4/(1+rx^2)^2,-rx(3+2rx^2)/(1+rx^2),-I sign(3+rx^2)/(1+rx^2)};
 ht=FullSimplify[lie[zv,gm],Assumptions->rx>0]; dc=cvd[ht];
 {FullSimplify[Tr[inv.ht],Assumptions->rx>0],FullSimplify[Table[Sum[inv[[i,k]]dc[[k,i,j]],{i,3},{k,3}],{j,3}],Assumptions->rx>0]},
 {sign,{1,-1}}];
results=<|"left seed trace"->resList[[1,1]],"left seed divergence"->resList[[1,2]],"right seed trace"->resList[[2,1]],"right seed divergence"->resList[[2,2]]|>;
zm=Exp[-2I(tx-az)]/(4Sqrt[3Pi]) {I rx^4/(1+rx^2)^2,-rx(3+2rx^2)/(1+rx^2),-I(3+rx^2)/(1+rx^2)};
zp=ComplexExpand[Conjugate[zm]];
modeCross=Simplify[(lie[zm,lie[zp,gm]]+lie[zp,lie[zm,gm]])/2];
results=Join[results,<|"lowest graviton energy normalization"->FullSimplify[2Pi Limit[rx^4 modeCross[[2,2]]+2modeCross[[3,3]],rx->Infinity]-2]|>];
,
"hamiltonian-tensors",
Needs["xAct`xTensor`"];Needs["xAct`xPert`"];Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e,f,i,j,l}];SetOptions[DefCovD,SymCovDQ->True];DefMetric[-1,g[-a,-b],CD];DefMetricPerturbation[g,hh,ep];
DefTensor[q[-a,-b],M,Symmetric[{-a,-b}]];DefTensor[ph[],M];DefTensor[chi[],M];DefConstantSymbol[mm];
normal[x_]:=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[Expand[x]]]]];
ads={RiemannCD[x_,y_,u_,v_]:>g[x,v]g[y,u]-g[x,u]g[y,v],RicciCD[x_,y_]:>-2g[x,y],RicciScalarCD[]->-6};
adsNormal[x_]:=normal[FixedPoint[(normal[#]/.ads)&,x,3]];
rule1={hh[LI[1],x_,y_]:>q[x,y]};rule2={hh[LI[2],___]->0};
c1[x_,y_,z_]:=(CD[y][q[x,z]]+CD[z][q[x,y]]-CD[x][q[y,z]])/2;
c2[x_,y_,z_]:=Module[{u=DummyIn[TangentM]},-q[x,-u]c1[u,y,z]];
r1[x_,y_]:=Module[{u=DummyIn[TangentM]},CD[-u][c1[u,x,y]]-CD[y][c1[u,x,-u]]];
r2[x_,y_]:=Module[{u=DummyIn[TangentM],v=DummyIn[TangentM]},CD[-u][c2[u,x,y]]-CD[y][c2[u,x,-u]]+c1[u,-u,-v]c1[v,x,y]-c1[u,y,-v]c1[v,x,-u]];
rs1=g[a,b]r1[-a,-b]+2q[a,-a];rs2=g[a,b]r2[-a,-b]-q[a,b]r1[-a,-b]-2q[a,b]q[-a,-b];
e2=r2[-i,-j]-g[-i,-j]rs2/2-q[-i,-j]rs1/2;
ein=RicciCD[-i,-j]-g[-i,-j]RicciScalarCD[]/2-g[-i,-j];
xpert2=ExpandPerturbation[Perturbation[ein,2]]/2/.rule2/.rule1;
stress=CD[-i][ph[]]CD[-j][ph[]]-g[-i,-j](CD[a][ph[]]CD[-a][ph[]]+mm^2 ph[]^2)/2;
deltaStress=ExpandPerturbation[Perturbation[stress,1]]/.Perturbation[ph[],___]->0/.rule1;
expectedStress=-q[-i,-j](CD[a][ph[]]CD[-a][ph[]]+mm^2 ph[]^2)/2+g[-i,-j]q[a,b]CD[-a][ph[]]CD[-b][ph[]]/2;
kg=CD[a][CD[-a][ph[]]]-mm^2 ph[];
deltaKG=ExpandPerturbation[Perturbation[kg,1]]/.Perturbation[ph[],___]->0/.rule1;
expectedKG=-q[a,b]CD[-a][CD[-b][ph[]]]-(CD[-a][q[a,b]]-CD[b][q[a,-a]]/2)CD[-b][ph[]];
results=<|"quadratic Einstein coefficient"->adsNormal[xpert2-e2],"covariant stress metric variation"->normal[deltaStress-expectedStress],"sourced scalar operator"->normal[deltaKG-expectedKG]|>;
If[!AllTrue[Values[results],SameQ[#,0]&],Print[results];Abort[]];results;

DefTensor[z[a],M];
hvac[x_,y_]:=CD[x][z[y]]+CD[y][z[x]];
lieq[x_,y_]:=Module[{u=DummyIn[TangentM]},z[u]CD[-u][q[x,y]]+q[-u,y]CD[x][z[u]]+q[x,-u]CD[y][z[u]]];
linEin=adsNormal[ExpandPerturbation[Perturbation[ein,1]]/.rule1];
linLie=linEin/.q[x_,y_]:>lieq[x,y];
mixedEin=Expand[e2/.q[x_,y_]:>q[x,y]+hvac[x,y]]-e2-(e2/.q[x_,y_]:>hvac[x,y]);
lieLin=z[a]CD[-a][linEin]+(linEin/.i->a)CD[-i][z[a]]+(linEin/.j->a)CD[-j][z[a]];
ward=normal[SymmetrizeCovDs[adsNormal[linLie+mixedEin-lieLin],CD]/.ads];
results=Join[results,<|"mixed Einstein covariance"->ward|>];
If[!AllTrue[Values[results],SameQ[#,0]&],Print[results];Abort[]];results;

psi=z[l]CD[-l][ph[]];
tpolar=CD[-i][ph[]]CD[-j][psi]+CD[-j][ph[]]CD[-i][psi]-g[-i,-j](CD[a][ph[]]CD[-a][psi]+mm^2 ph[]psi);
lieStress=z[f]CD[-f][stress]+(stress/.i->f)CD[-i][z[f]]+(stress/.j->f)CD[-j][z[f]];
results=Join[results,<|"mixed matter covariance"->normal[(expectedStress/.q[x_,y_]:>hvac[x,y])+tpolar-lieStress]|>];
If[!AllTrue[Values[results],SameQ[#,0]&],Print[results];Abort[]];results;

,
"gauss",
Needs["xAct`xTensor`"];Needs["xAct`xCoba`"];Needs["xAct`xPert`"];Needs["xAct`xTras`"];
DefManifold[M,3,{a,b,c,d,e,i,j}];
DefChart[ch,M,{0,1,2},{tt[],rr[],az[]}];DefMetric[-1,g[-a,-b],CD];
gmat=DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2}];
MetricInBasis[g,-ch,gmat];MetricCompute[g,ch,All];
coord={tx,rx,ax};sub={tt[]->tx,rr[]->rx,az[]->ax};gm=gmat/.sub;inv=Inverse[gm];
gam=Table[ToValues[ChristoffelCDPDch[{i,ch},{j,-ch},{k,-ch}]],{i,0,2},{j,0,2},{k,0,2}]/.sub;
ss={{stt[tx,rx,ax],str[tx,rx,ax],sta[tx,rx,ax]},{str[tx,rx,ax],srr[tx,rx,ax],sra[tx,rx,ax]},{sta[tx,rx,ax],sra[tx,rx,ax],saa[tx,rx,ax]}};
cv=Table[D[ss[[i,j]],coord[[k]]]-Sum[gam[[l,k,i]]ss[[l,j]]+gam[[l,k,j]]ss[[i,l]],{l,3}],{k,3},{i,3},{j,3}];
conn1=Table[Sum[inv[[k,l]](cv[[i,j,l]]+cv[[j,i,l]]-cv[[l,i,j]])/2,{l,3}],{k,3},{i,3},{j,3}];
dconn=Table[D[conn1[[i,j,k]],coord[[l]]]+Sum[gam[[i,l,n]]conn1[[n,j,k]]-gam[[n,l,j]]conn1[[i,n,k]]-gam[[n,l,k]]conn1[[i,j,n]],{n,3}],{l,3},{i,3},{j,3},{k,3}];
ric1=Table[Sum[dconn[[k,k,i,j]]-dconn[[j,k,i,k]],{k,3}],{i,3},{j,3}];
ein1=Simplify[ric1+2ss-gm(Tr[inv.ric1]+2Tr[inv.ss])/2];
density=FullSimplify[2rx/(1+rx^2)ein1[[1,1]]];

(* The angular integral removes all explicit angular derivatives. *)
radialDensity=density/.Derivative[nt_,nr_,na_][func_][tx,rx,ax]/;na>0->0;

results=<|"time components drop out"->Simplify[density-(density/.{stt->(0&),str->(0&),sta->(0&)})]|>;
results;

f=1+rx^2;
boundaryFlux=f^2 ss[[2,2]]+(2+1/rx^2)ss[[3,3]]-f/rx D[ss[[3,3]],rx];
angularFlux=2ss[[2,3]]+2f/rx D[ss[[2,3]],rx]-f/rx D[ss[[2,2]],ax];
results=Join[results,<|"linear Einstein Gauss identity"->FullSimplify[density-D[boundaryFlux,rx]-D[angularFlux,ax]]|>];
results

,
"boundary",
Clear[rx,aa,bb,cc,dd];
ff=1+rx^2;gm={{-ff+aa,cc},{cc,rx^2+bb}};
gi=Inverse[gm];nr=1/Sqrt[1/ff+dd/rx^4];
extrinsic=nr D[gm,rx]/2;traceK=Tr[gi.extrinsic];
by=-extrinsic+(traceK-1)gm;
futureU={1,-gm[[1,2]]/gm[[2,2]]}/Sqrt[-gm[[1,1]]+gm[[1,2]]^2/gm[[2,2]]];
energyLimit=Limit[2Sqrt[gm[[2,2]]] futureU.by.{1,0},rx->Infinity];
(* Independent fixed-(phi,Pi) expansion of the circular mass constraint. *)
massRHS=rx/2((ff-epsilon mass0)(momentum^2+radial^2)+massSquared field^2);
results=<|"renormalized boundary energy"->Simplify[energyLimit-(-1+2bb+dd)],
"circular free mass source"->Coefficient[massRHS,epsilon,0]-rx/2(ff(momentum^2+radial^2)+massSquared field^2),
"circular quartic mass source"->Coefficient[massRHS,epsilon,1]+rx mass0(momentum^2+radial^2)/2|>;

,
"coefficients",
Clear[aa,bb,cc,ep,s,h,q,phi,mass];
(* I2=-1/2 q A q; Aq=T/2. *)
results=<|
"quadratic response on shell"->Simplify[-q (phi^2/2)/2+q phi^2/2-q phi^2/4],
"kernel normalization"->Simplify[(phi^2/2)phi^2/4-phi^4/8],
"metric response power count"->Coefficient[Expand[(ep h+ep^2 q)^2/ep^2],ep,2]-q^2,
"response coupling power count"->Coefficient[Expand[(ep h+ep^2 q)phi^2/2],ep,2]-q phi^2/2
|>;
];
results=Map[Simplify,results];
If[!And@@(TrueQ[#===0]&/@Flatten[Values[results]]),Print[results];Abort[]];
results
