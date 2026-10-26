(* Exact checks for the complete boundary switched coefficient. *)
ClearAll["Global`*"];
report=Block[{$Messages={},$MessageList={}},
 lam=(x-y-t)^2-4y t;
 massResidual=FullSimplify[D[lam^(-1/2),{x,2}]-(2lam+12y t)/lam^(5/2),Assumptions->lam>0];
 normalFormResidual=Expand[(lam/.x->y+t+2Sqrt[y] w)-4y(w^2-t)];
 (* Fixed switch-momentum threshold. *)
 yy=1; tt=(2+Sqrt[2]-a)^2-1;
 thresh=Expand[(a^2-yy-tt)^2-4yy tt];
 thresholdData=FullSimplify[{thresh/.a->2,D[thresh,a]/.a->2}];
 eta=DiagonalMatrix[{-1,1,1,1}];
 mixed[p_,q_,v_]:=Module[{xx=-p.eta.p,cq=-p.eta.q,cv=-p.eta.v,up,uv},
 up=xx eta.q-cq eta.p;uv=xx eta.v-cv eta.p;
 (Outer[Times,up,uv]+Outer[Times,uv,up])/2-(cq cv+xx q.eta.v)(xx eta+Outer[Times,eta.p,eta.p])/3];
 fixedTensor=mixed[{2,0,0,0},{Sqrt[2],1,0,0},{2+Sqrt[2],0,1,0}];
 (* Soft-transfer boundary layer. *)
 yE=(1+2eps)^2;tE=3eps^2/4;
 lamE=Expand[lam/.{x->1,y->yE,t->tE}];
 n11=eps^2/3;
 g11=(8alpha Pi^6/5)n11(lamE+6yE tE)/lamE^(5/2);
 layerLimit=FullSimplify[Limit[eps g11,eps->0,Direction->"FromAbove"],Assumptions->Element[alpha,Reals]];
 layerResidual=FullSimplify[layerLimit-28alpha Pi^6/(507Sqrt[13])];
 (* Null-rotation adapted coordinates. *)
 coords={aa,xx+aa(u1^2+u2^2)/2,aa u1,aa u2,
 bb,zz+((bb u1+v1)^2+(bb u2+v2)^2)/(2bb),bb u1+v1,bb u2+v2};
 jac=FullSimplify[Det[Table[D[coords[[i]],{aa,bb,u1,u2,xx,zz,v1,v2}[[j]]],{i,8},{j,8}]],Assumptions->aa>0&&bb>0];
 f=-2g/Sqrt[lam];
 boundaryJets=FullSimplify[{f/.x->0,D[f,x]/.x->0},Assumptions->y>0&&t<0];
 <|"MassDerivativeResidual"->massResidual,"NormalFormResidual"->normalFormResidual,
 "FixedOmegaThresholdAndSlope"->thresholdData,"FixedOmegaTensor12"->fixedTensor[[2,3]],
 "SoftLayerLimit"->layerLimit,"SoftLayerResidual"->layerResidual,
 "NullCoordinateJacobian"->jac,"ScalarSpectralBoundaryJets"->boundaryJets,
 "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
];
Print[ToString[report,InputForm,PageWidth->100]];
