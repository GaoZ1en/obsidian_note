(* Independent general Lie-orbit and oriented-shell calculations, consolidated
   from two fresh derivations. Euclidean AdS5; delta g=2 kap h.
   Pure FG tail: xi^u=u sigma, xi^i=-u^2 partial_i sigma/2.
   Spatial surface integrations have no endpoint. This is a quadratic-action
   check, not an all-orders gauge measure or global coordinate theorem. *)
Begin["AdS5DressingEndpointChecks`"];
ClearAll["AdS5DressingEndpointChecks`*"];
general=Block[{$MessageList={}},
 coords={u,x,y,z,w};sp=Rest[coords];sig=ss[x,y,z,w];
 gg=ell^2/u^2 IdentityMatrix[5];vv=Join[{u sig},-u^2/2(D[sig,#]&/@sp)];
 lie[tt_]:=Table[Sum[vv[[k]]D[tt[[i,j]],coords[[k]]]+tt[[k,j]]D[vv[[k]],coords[[i]]]+tt[[i,k]]D[vv[[k]],coords[[j]]],{k,5}],{i,5},{j,5}];
 H1=Simplify[u^2/ell^2 lie[gg]];H2=Simplify[u^2/(2ell^2)lie[lie[gg]]];
 target=Table[2sig^2 KroneckerDelta[i,j]+u^2/2(Sum[D[sig,sp[[k]]]^2,{k,4}]KroneckerDelta[i,j]+2sig D[sig,sp[[i]],sp[[j]]])+u^4(Sum[D[sig,sp[[k]]]D[sig,sp[[k]],sp[[i]],sp[[j]]],{k,4}]/4+Sum[D[sig,sp[[i]],sp[[k]]]D[sig,sp[[j]],sp[[k]]],{k,4}]/2),{i,4},{j,4}];
 q=H1[[2;;5,2;;5]]/(2kap);trq=Tr[q];div=Table[Sum[D[q[[i,j]],sp[[i]]],{i,4}],{j,4}];gradt=D[trq,#]&/@sp;
 kinetic=Simplify[Total[Flatten[D[q,u]^2]]-D[trq,u]^2];
 spatial=Simplify[Sum[D[q[[i,j]],sp[[k]]]^2,{i,4},{j,4},{k,4}]-2div.div+2div.gradt-gradt.gradt];oneDim={ss->Function[{x,y,z,w},Cos[p x]]};
 (* Spatial IBP: integral sigma Delta sigma=-iGrad;
    integral grad sigma.grad Delta sigma=-iLap;
    integral Hess sigma:Hess sigma=iLap. *)
 traceIntegrated=8iSigma+u^2 iGrad+u^4 iLap/4;
 tadpole=Expand[3ell^3/(2kap^2)L^-4(traceIntegrated/.u->L)];
 orbit=24ell^3/kap^2 L^-4 iSigma;tangent=Expand[orbit-tadpole];
 b2=ell^3/kap^2(12L^-4 iSigma-3L^-2 iGrad-3iLap/8);
 radialBulk=3ell^3/(2kap^2)L^-2 iGrad;
 <|"Residuals"-><|"FirstOrbitRadialGauge"->{H1[[1,1]],H1[[1,2;;5]]},
   "SecondOrbitTensor"->Simplify[H2[[2;;5,2;;5]]-target],
   "CosModeRadialKinetic"->Simplify[kinetic/.oneDim],
   "CosModeSpatialKinetic"->Simplify[(spatial/.oneDim)+6p^2 Sin[p x]^2/kap^2],
   "RadialActionSplit"->Simplify[tangent-b2-radialBulk]|>,
   "IntegratedTraceH2"->traceIntegrated,"MetricTadpole"->tadpole,
   "TangentEndpoint"->tangent,"ShellEndpoint"->-tangent,
   "ShellLimit"->Limit[-tangent,L->Infinity],
   "CompensatorInTailAmplitude"->Simplify[3ell^3/(8kap^2)(2kap)^2 iA],
   "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
];
(* Direct graph geometry, including orientation; no inferred sign reversal. *)
shell=Block[{$MessageList={}},Module[{u,x,ell,kap,L,p,s,o,UU,ass,W,sqrtg,nup,nx,Kgraph,ghy,bulkEndpoint,geometricEndpoint,graphTarget,sig,vu,vx,flowF,flowH,flowGraph,flowDensity,flowCoefficient,avg,orbitAvg,traceH2,tadpoleAvg,tangentAvg,upper,lower,targetUpper},
 ass={ell>0,kap>0,L>0,p>0,Element[o,Reals]};W=Sqrt[1+UU'[x]^2];sqrtg=ell^5/u^5;
 nup=o u/(ell W);nx=-o u UU'[x]/(ell W);
 Kgraph=FullSimplify[(D[sqrtg nup,u]+D[sqrtg nx,x])/sqrtg/.u->UU[x],Assumptions->ass];
 ghy=-ell^4/UU[x]^4 W Kgraph/kap^2;bulkEndpoint=-o ell^3/(kap^2 UU[x]^4);
 geometricEndpoint=FullSimplify[ghy+bulkEndpoint,Assumptions->ass];
 graphTarget=o ell^3/kap^2(3UU[x]^-4+UU[x]^-3 W D[UU'[x]/W,x]);
 sig=Cos[p x];vu=u sig;vx=-u^2D[sig,x]/2;flowF=vu/.u->L;
 flowH=FullSimplify[(vu D[vu,u]-vx D[vu,x])/2/.u->L];flowGraph=L+s flowF+s^2 flowH;
 flowDensity=geometricEndpoint/.{UU[x]->flowGraph,UU'[x]->D[flowGraph,x],UU''[x]->D[flowGraph,{x,2}]};
 flowCoefficient=FullSimplify[Coefficient[Normal@Series[flowDensity,{s,0,2}],s,2],Assumptions->ass];
 avg[expr_]:=FullSimplify[p/(2Pi)Integrate[expr,{x,0,2Pi/p},Assumptions->ass],Assumptions->ass];
 orbitAvg=avg[flowCoefficient];
 traceH2=8sig^2+L^2(2D[sig,x]^2+sig D[sig,{x,2}])+L^4(D[sig,x]D[sig,{x,3}]/4+D[sig,{x,2}]^2/2);
 tadpoleAvg=avg[3o ell^3/(2kap^2)L^-4 traceH2];tangentAvg=FullSimplify[orbitAvg-tadpoleAvg];upper=tangentAvg/.o->1;lower=tangentAvg/.o->-1;
 targetUpper=ell^3/kap^2(6L^-4-3p^2 L^-2/4-3p^4/16);
 <|"Residuals"-><|"OrientedGraphGeometry"->FullSimplify[geometricEndpoint-graphTarget,Assumptions->ass],
   "UpperEndpoint"->FullSimplify[upper-targetUpper],"LowerShellEndpoint"->FullSimplify[lower+targetUpper]|>,
   "GraphMeanCurvature"->Kgraph,"FlowGraphFirstOrder"->flowF,"FlowGraphSecondOrder"->flowH,
   "OrbitAverage"->orbitAvg,"TadpoleAverage"->tadpoleAvg,"UpperTangentAverage"->upper,
   "ShellAverage"->lower,"ShellLimit"->Limit[lower,L->Infinity],
   "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
]];
report=<|"GeneralOrbit"->general,"OrientedShell"->shell,
 "AllResidualsZero"->And@@(TrueQ[#===0]&/@Flatten[Join[Values[general["Residuals"]],Values[shell["Residuals"]]]]),
 "Messages"->Join[general["Messages"],shell["Messages"]]|>;
End[];
AdS5DressingEndpointChecks`report
