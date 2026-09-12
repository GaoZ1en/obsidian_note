(* Run each case in a fresh kernel, from this script's directory:
   wolframscript -code 'verificationCase="covariance";Get["gravitation_scalar_solution_checks.wl"]'
   wolframscript -code 'verificationCase="axisymmetric";Get["gravitation_scalar_solution_checks.wl"]'
   wolframscript -code 'verificationCase="modes";Get["gravitation_scalar_solution_checks.wl"]'
   For xAct MCP, set verificationCase before Get; use components for axisymmetric.
   All result entries are residuals expected to vanish. *)
caseName=If[ValueQ[verificationCase],verificationCase,"covariance"];
If[caseName=!="modes",Needs["xAct`xTensor`"];Needs["xAct`xPert`"];Needs["xAct`xTras`"]];
Switch[caseName,
"covariance",
DefManifold[M,3,{a,b,c,d,e,f,i,j}]; SetOptions[DefCovD,SymCovDQ->True]; DefMetric[-1,g[-a,-b],CD]; DefMetricPerturbation[g,hh,eps]; DefTensor[z[a],M];
firstLie=CD[-a][z[-b]]+CD[-b][z[-a]];
secondLie=z[c]CD[-c][firstLie]+(CD[-c][z[-b]]+CD[-b][z[-c]])CD[-a][z[c]]+(CD[-a][z[-c]]+CD[-c][z[-a]])CD[-b][z[c]];
rules1={hh[LI[1],x_,y_]:>CD[x][z[y]]+CD[y][z[x]]};
rules2={hh[LI[2],x_,y_]:>Module[{u=DummyIn[TangentM]},z[u]CD[-u][CD[x][z[y]]+CD[y][z[x]]]+(CD[-u][z[y]]+CD[y][z[-u]])CD[x][z[u]]+(CD[x][z[-u]]+CD[-u][z[x]])CD[y][z[u]]]};
vac=RicciCD[-a,-b]-g[-a,-b]RicciScalarCD[]/2-g[-a,-b];

ads={RiemannCD[x_,y_,u_,v_]:>g[x,v]g[y,u]-g[x,u]g[y,v],RicciCD[x_,y_]:>-2g[x,y],RicciScalarCD[]->-6};
normal[x_]:=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[x]]]];
adsNormal[x_]:=normal[FixedPoint[(normal[#]/.ads)&,x,3]];

DefTensor[sc[],M]; DefConstantSymbol[mm];
hv[x_,y_]:=CD[x][z[y]]+CD[y][z[x]];
delkg=-hv[a,b]CD[-a][CD[-b][sc[]]]-(CD[-a][hv[a,b]]-CD[b][hv[a,-a]]/2)CD[-b][sc[]];
scalarResidual=normal[CD[a][CD[-a][z[b]CD[-b][sc[]]]]-mm^2 z[b]CD[-b][sc[]]+delkg-z[b]CD[-b][CD[a][CD[-a][sc[]]]-mm^2 sc[]]];
orbit1=adsNormal[ExpandPerturbation[Perturbation[vac,1]]/.rules1];
orbit2=normal[SymmetrizeCovDs[adsNormal[ExpandPerturbation[Perturbation[vac,2]]/.rules2/.rules1],CD]/.ads];
result=<|"Scalar diffeomorphism response"->scalarResidual,"Linear vacuum orbit"->orbit1,"Quadratic vacuum orbit"->orbit2|>;

,
"axisymmetric",
Needs["xAct`xCoba`"];
DefManifold[M3,3,{a,b,c,d,e,f}];
DefChart[ch,M3,{0,1,2},{tt[],rr[],ang[]}];
DefMetric[-1,met[-a,-b],CD];
DefScalarFunction[FF]; DefScalarFunction[DD];
MetricInBasis[met,-ch,DiagonalMatrix[{-FF[tt[],rr[]] Exp[-2 DD[tt[],rr[]]],1/FF[tt[],rr[]],rr[]^2}]];
MetricCompute[met,ch,All];
gmat=DiagonalMatrix[{-FF[tt[],rr[]]Exp[-2DD[tt[],rr[]]],1/FF[tt[],rr[]],rr[]^2}];
ein=Table[ToValues[RicciCD[{ii,-ch},{jj,-ch}]]-gmat[[ii+1,jj+1]]ToValues[RicciScalarCD[]]/2-gmat[[ii+1,jj+1]],{ii,0,2},{jj,0,2}];

Clear[ep,amp,del,tx,rx];
mu[tx_,rx_]:=amp^2 del/4 (1-(1+rx^2)^(1-del)-rx^2(1+rx^2)^(-del)Cos[2del tx]);
nu[tx_,rx_]:=amp^2 del/4 Cos[del tx]^2(1+rx^2)^(-del)-amp^2 del^2/(4(del+1))Cos[2del tx](1+rx^2)^(-del-1);
ph=amp (1+rx^2)^(-del/2)Cos[del tx];
coords={tx,rx,az};
gzero=DiagonalMatrix[{-(1+rx^2),1/(1+rx^2),rx^2}];
grad=Table[D[ph,coords[[ii]]],{ii,1,3}];
stress=Outer[Times,grad,grad]-gzero(grad.Inverse[gzero].grad+del(del-2)ph^2)/2;
subein=ein/.{FF->Function[{u,v},1+v^2-ep mu[u,v]],DD->Function[{u,v},ep nu[u,v]]};
elin=FullSimplify[(D[subein,ep]/.ep->0)/.{tt[]->tx,rr[]->rx},Assumptions->rx>0&&del>1];
res=FullSimplify[elin-stress/2,Assumptions->rx>0&&del>1];

checks=<|"All Einstein components, lowest real mode"->res,
"Radial mass constraint"->FullSimplify[D[mu[tx,rx],rx]-rx/2(grad[[1]]^2/(1+rx^2)+(1+rx^2)grad[[2]]^2+del(del-2)ph^2),Assumptions->rx>0&&del>1],
"Radial lapse constraint"->FullSimplify[D[nu[tx,rx],rx]+rx/2(grad[[2]]^2+grad[[1]]^2/(1+rx^2)^2),Assumptions->rx>0&&del>1],
"Momentum constraint"->FullSimplify[D[mu[tx,rx],tx]-rx(1+rx^2)grad[[1]]grad[[2]],Assumptions->rx>0&&del>1]|>;
DefScalarFunction[MF]; DefScalarFunction[NF];
generic=ein/.{FF->Function[{u,v},1+v^2-ep MF[u,v]],DD->Function[{u,v},ep NF[u,v]]};
generic1=(D[generic,ep]/.ep->0)/.{tt[]->tx,rr[]->rx};
genericPhi=psi[tx,rx]; genericGrad={D[genericPhi,tx],D[genericPhi,rx],0};
genericStress=Outer[Times,genericGrad,genericGrad]-gzero(genericGrad.Inverse[gzero].genericGrad+massSquared genericPhi^2)/2;
rhsMass=rx/2(genericGrad[[1]]^2/(1+rx^2)+(1+rx^2)genericGrad[[2]]^2+massSquared genericPhi^2);
rhsLapse=-rx/2(genericGrad[[2]]^2+genericGrad[[1]]^2/(1+rx^2)^2);
rhsFlux=rx(1+rx^2)genericGrad[[1]]genericGrad[[2]];
genericResidual=FullSimplify[
{generic1[[1,1]]-genericStress[[1,1]]/2,generic1[[1,2]]-genericStress[[1,2]]/2,generic1[[2,2]]-genericStress[[2,2]]/2}/.
{Derivative[0,1][MF][tx,rx]->rhsMass,Derivative[0,1][NF][tx,rx]->rhsLapse,Derivative[1,0][MF][tx,rx]->rhsFlux},
Assumptions->rx>0&&del>1];
result=Join[checks,<|"Constraint equations from xCoba"->genericResidual|>];

kgGeneric=-D[genericPhi,{tx,2}]/(1+rx^2)+D[rx(1+rx^2)D[genericPhi,rx],rx]/rx-massSquared genericPhi;
result=Join[result,<|"General constraint propagation"->FullSimplify[D[rhsMass,tx]-D[rhsFlux,rx]+rx D[genericPhi,tx]kgGeneric]|>];

,
"modes",

Clear[rx,tx,del,qq,nn,yy,amp];
ff=1+rx^2; xx=(rx^2-1)/ff;
pref=rx^qq ff^(-(del+qq)/2); rad=pref yy[xx];
eq=1/rx D[rx ff D[rad,rx],rx]+((del+qq+2nn)^2/ff-qq^2/rx^2-del(del-2))rad;
je=(1-xx^2)yy''[xx]+(qq-del+1-(del+qq+1)xx)yy'[xx]+nn(nn+del+qq)yy[xx];
modeResidual=FullSimplify[eq-4pref/ff je,Assumptions->rx>0&&del>1&&qq>=0];
muv=amp^2 del/4(1-ff^(1-del)-rx^2 ff^-del Cos[2del tx]);
nuv=amp^2 del/4 Cos[del tx]^2 ff^-del-amp^2 del^2/(4(del+1))Cos[2del tx]ff^(-del-1);
kt=amp^2 del/4(1-(del-1)/(del+1)ff^-del Cos[2del tx]);
result=<|"General Jacobi radial equation"->modeResidual,
"Explicit metric coefficient"->FullSimplify[muv+2ff nuv-kt],
"Regular mass at centre"->Limit[muv,rx->0],
"Asymptotic mass"->FullSimplify[Limit[muv,rx->Infinity,Assumptions->del>1]-amp^2 del/4],
"Boundary lapse"->Limit[nuv,rx->Infinity,Assumptions->del>1],
"Lowest mode KG normalization"->FullSimplify[4Pi del Integrate[rx/(1+rx^2)((1+rx^2)^(-del/2)/Sqrt[2Pi])^2,{rx,0,Infinity},Assumptions->del>1]-1]|>;

,
_,Print["Unknown case: ",caseName];Exit[2]
];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result
