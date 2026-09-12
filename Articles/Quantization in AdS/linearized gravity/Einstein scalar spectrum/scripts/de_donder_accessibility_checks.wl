(* Run in fresh kernels from this directory:
   wolframscript -code 'verificationCase="core";Get["de_donder_accessibility_checks.wl"];'
   wolframscript -code 'verificationCase="boundary";Get["de_donder_accessibility_checks.wl"];'
   xAct MCP: core profile for core; components for boundary. *)
Needs["xAct`xTensor`"];Needs["xAct`xPert`"];Needs["xAct`xTras`"];
caseName=If[ValueQ[verificationCase],verificationCase,"core"];
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

result=<|"Gauge transformation on a general background"->(norm[gauge-CD[a][CD[-a][v[-b]]]-RicciCD[-b,-c]v[c]]),"AdS linear Einstein operator"->(adnorm[elin-expected]),"AdS residual gauge operator"->(adnorm[gauge-CD[a][CD[-a][v[-b]]]+2v[-b]]),"Reduced tensor operator divergence"->(adnorm[CD[a][ll]-CD[c][CD[-c][dv[-b]]]+2dv[-b]]),"Reduced tensor operator trace"->(adnorm[g[a,b]ll-CD[c][CD[-c][q[d,-d]]]+4q[d,-d]]),"Scalar-generated harmonic metric"->(adnorm[cc[-b]/.q[x_,y_]:>qs[x,y]])|>;

,"boundary",
Needs["xAct`xCoba`"];

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

ff=1+r^2;
ax={0,0,aa[t,r]};
bad={{0,0,t chi[r]},{0,0,0},{t chi[r],0,0}};
axop=ff D[aa[t,r],{r,2}]+(r-1/r)D[aa[t,r],r]-D[aa[t,r],{t,2}]/ff-4aa[t,r];
star=(1+Sqrt[5])/2;
result=<|
"Axial gauge operator"->FullSimplify[box1[ax]-2ax-{0,0,axop}],
"Off-shell counterexample constraint"->FullSimplify[cc[bad]-{0,0,-chi[r]/ff}],
"No leading gauge correction without logarithms"->FullSimplify[Limit[r^2 (axop/.aa->Function[{u,v},at[u]/v^2]),r->Infinity]],
"Scalar stress trace coefficient"->FullSimplify[-(delta^2+3delta(delta-2))/2+delta(2delta-3)],
"Resonant trace exponent"->FullSimplify[(2star)(2star-2)-4],
"Nonzero resonant source coefficient"->FullSimplify[-star(2star-3)-(Sqrt[5]-3)/2],
"Resonant mass"->FullSimplify[star(star-2)-(1-Sqrt[5])/2]
|>;

,_,Print["Unknown case: ",caseName];Exit[2]];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result;
