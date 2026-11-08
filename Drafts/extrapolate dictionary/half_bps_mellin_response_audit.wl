(* Independent response audit, 2026-10-26. No candidate supplied initially.
   Euclidean AdS5 ell=1; E=G-6g; cross stress B12 as in task.
   Geometric operator independently generated/compared with xAct xPert.
   No project-note input or existing scripts are loaded. *)
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Clear[z,x,y,v,w,al,be,s,t,u];
DefManifold[MAudit,5,{ia,ib,ic,id,ie,iff}];
DefMetric[1,gaudit[-ia,-ib],DAudit];
DefMetricPerturbation[gaudit,paudit,epsaudit];
xActLinearEinstein=ToCanonical[ExpandPerturbation[
 Perturbation[EinsteinDAudit[-ia,-ib]-6gaudit[-ia,-ib]]]];
coords={z,x,y,v,w}; ndim=5; rr=coords.coords;
base=IdentityMatrix[ndim]/z^2;
aone=Table[D[Log[z/rr],coords[[i]]],{i,ndim}];
atwo={1/z,0,0,0,0}; qvec=aone-atwo; pvec=aone+atwo;
wscalar=z^2/rr; (* x1=0, x2=infinity with rescaled legs *)
fscalar1=z^2/rr^2; fscalar2=z^2;
conn[k_,i_,j_]:=(-KroneckerDelta[k,j]KroneckerDelta[i,1]
 -KroneckerDelta[k,i]KroneckerDelta[j,1]
 +KroneckerDelta[i,j]KroneckerDelta[k,1])/z;
linearEinstein[mat_]:=Module[{dh,dg,dr,trace,dscalar},
 dh[i_,j_,k_]:=D[mat[[j,k]],coords[[i]]]
  -Sum[conn[l,i,j]mat[[l,k]]+conn[l,i,k]mat[[j,l]],{l,ndim}];
 dg=Table[Cancel[z^2/2(dh[i,j,k]+dh[j,i,k]-dh[k,i,j])],
  {k,ndim},{i,ndim},{j,ndim}];
 dr=Table[Cancel[Sum[D[dg[[k,i,j]],coords[[k]]]
  -D[dg[[k,i,k]],coords[[j]]]
  +Sum[conn[k,k,l]dg[[l,i,j]]-conn[l,k,i]dg[[k,l,j]]
   -conn[l,k,j]dg[[k,i,l]]-conn[k,j,l]dg[[l,i,k]]
   +conn[l,j,i]dg[[k,l,k]]+conn[l,j,k]dg[[k,i,l]],{l,ndim}],
  {k,ndim}]],{i,ndim},{j,ndim}];
 trace=z^2 Tr[mat]; dscalar=Cancel[z^2 Tr[dr]+4trace];
 Table[Cancel[dr[[i,j]]+4mat[[i,j]]-base[[i,j]]dscalar/2],
  {i,ndim},{j,ndim}]];
stress=Table[Cancel[D[fscalar1,coords[[i]]]D[fscalar2,coords[[j]]]
 +D[fscalar1,coords[[j]]]D[fscalar2,coords[[i]]]
 -base[[i,j]](z^2 Sum[D[fscalar1,coords[[k]]]D[fscalar2,coords[[k]]],
 {k,ndim}]-4fscalar1 fscalar2)],{i,ndim},{j,ndim}];
ansatz=wscalar(al base+be Outer[Times,qvec,qvec]);
ansatzResidual=Together[linearEinstein[ansatz]-stress];
ansatzSolution=Solve[Flatten[Map[CoefficientList[Numerator[#],{z,x}]&,
 ansatzResidual/.{y->0,v->0,w->0},{2}]]==0,{al,be}];
hresponse=-wscalar Outer[Times,qvec,qvec]/3;
fieldResidual=Map[Cancel,ansatzResidual/.{al->0,be->-1/3},{2}];
hessW=Table[Cancel[D[wscalar,coords[[i]],coords[[j]]]
 -Sum[conn[k,i,j]D[wscalar,coords[[k]]],{k,ndim}]],{i,ndim},{j,ndim}];
hother=wscalar((Outer[Times,aone,atwo]+Outer[Times,atwo,aone])/2-base/3);
gaugeResidual=Map[Together,hother-hresponse-hessW/6,{2}];
(* Endpoint counterexample: inversion of normalizable constant tensor z^2 e. *)
epol=DiagonalMatrix[{1,-1,0,0}];
jinv=Table[KroneckerDelta[mu,j+1]-2coords[[mu]]coords[[j+1]]/rr,
 {mu,ndim},{j,4}];
hendpoint=z^2/rr^4 jinv.epol.Transpose[jinv];
endpointFieldResidual=Map[Together,linearEinstein[hendpoint],{2}];
endpointDistributionWeight=(Integrate[Pi^2 r/(1+r)^4,{r,0,Infinity}]
 -Integrate[Pi^2 r^2/(1+r)^5,{r,0,Infinity}]
 +1/3 Integrate[Pi^2 r^3/(1+r)^6,{r,0,Infinity}]);
(* D1333, D3133 constants Pi^2/8; D2233 constant Pi^2/4.
 x23^2 x24^2/x12^2 shifts give delta23 delta24/(delta12-1).
 All four external dimensions are 2. *)
rawMellin=-16/3(Pi^2/8 (bb cc+bb cc)/(aa-1)
 -Pi^2/4(cc^2+bb^2)/(aa-1)+Pi^2 aa/4);
finalMellin=Pi^2/2(s-6-((t-u)^2+4/3)/(s-2));
mellinResidual=FullSimplify[(rawMellin/.
 {aa->(4-s)/2,bb->(4-t)/2,cc->(4-u)/2})-finalMellin,
 Assumptions->s+t+u==8];
realCoupling=FullSimplify[(4Pi^2 ell^3/nn^2)(1/(Sqrt[2]Pi ell^(3/2)))^4,
 Assumptions->ell>0];
(* Exact orthonormal Frobenius norms: these give a contact-D2222 majorant.
   The invariant x12^2 A1 A2 equals wscalar in this conformal frame.
   All covariant derivatives of q contain at least one q, since
   nabla q=(p q+q p)/2 and nabla p=-2g+(pp+qq)/2.
   Thus |nabla^m h| <= C_m W |q|^2 = C'_m f1 f2 for every m.
   Absolute Schwartz smearing is bounded by the product of positive scalar
   convolutions, O(z^4 log^2 z) at UV and O(z^-4) at IR. *)
responseNormResidual=Together[z^4 Tr[hresponse.hresponse]
 -(16/9)(fscalar1 fscalar2)^2];
stressNormResidual=Together[z^4 Tr[stress.stress]
 -64(fscalar1 fscalar2)^2(1+3wscalar^2)];
responseAuditReport=<|
 "Conventions"->"E=G-6g; ell=1; deltaE[h]=B; I=1/2 integral h:B",
 "xActLinearEinstein"->xActLinearEinstein,
 "AnsatzSolution"->ansatzSolution,
 "All25FieldComponentsZero"->(fieldResidual===ConstantArray[0,{5,5}]),
 "GaugeHessianIdentityZero"->(gaugeResidual===ConstantArray[0,{5,5}]),
 "EndpointCounterexampleHomogeneous"->(endpointFieldResidual===ConstantArray[0,{5,5}]),
 "EndpointBoundaryDeltaCoefficient"->endpointDistributionWeight,
 "ResponseNormSquaredResidual"->responseNormResidual,
 "StressNormSquaredResidual"->stressNormResidual,
 "PointwiseExchangeMajorant"->"|h12:B34| <= (64/3) A1^2 A2^2 A3^2 A4^2",
 "PhysicalExchangeMajorantEll1"->"|E_s| <= 32/(3 Pi^2 N^2) D2222",
 "MellinResidual"->mellinResidual,
 "RawMellin"->finalMellin,
 "ResidueAtS2"->Residue[finalMellin/.u->8-s-t,{s,2}],
 "RealCoupling"->realCoupling,
 "PhysicalMellinEll1"->FullSimplify[finalMellin realCoupling/.ell->1],
 "Scope"->"Four distinct anchors. Distributional fixed boundary frame required; endpoint-supported boundary-metric kernels violate it. Homogeneous uniqueness holds in the usual tempered regular Dirichlet class, or finite-energy difference class."
|>;
responseAuditReport
