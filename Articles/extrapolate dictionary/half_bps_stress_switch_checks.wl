(* Switched derivative vertex and local radial subtraction: exact checks. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  eta = DiagonalMatrix[{-1,1,1,1}];
  p = {5/4,3/4,0,0}; q = {3,0,0,0};
  epol = {{9/8,15/8,0,0},{15/8,25/8,0,0},{0,0,-1,0},{0,0,0,-1}}/Sqrt[6];
  pl = eta.p; ql = eta.q;
  tt = FullSimplify[{pl.epol,Tr[eta.epol],Tr[eta.epol.eta.epol]-1}];
  qq = FullSimplify[ql.epol.ql];
  switchvertex = FullSimplify[I eps (epol.ql)[[1]]];
  missingcoefficient = FullSimplify[alpha switchvertex/36];
  masses = {-p.eta.p,-q.eta.q,-(p-q).eta.(p-q)};
  (* Compact-momentum Frobenius series, β=4. *)
  h[s_,z_] := Sum[(-s z^2/4)^j/(j!)^2,{j,0,6}];
  ds[f_,s_,z_] := D[f,{z,2}]+D[f,z]/z+s f;
  homogeneousResidual = Expand[Normal[Series[ds[h[s,z],s,z],{z,0,10}]]];
  hDerivativeResidual = Expand[Normal[Series[ds[D[h[s,z],s],s,z]+h[s,z],{z,0,10}]]];
  source = f4 z^4+f6 z^6+f8 z^8;
  volterra = f4 z^6/36+(f6/64-s f4/2304)z^8+(f8/100-s f6/6400+s^2 f4/230400)z^10;
  sourceResidual = Expand[Normal[Series[ds[volterra,s,z]-source,{z,0,8}]]];
  betaIntegral = Integrate[u^5 Log[z/u],{u,0,z},Assumptions->z>0];
  spacelikeExact = 64/kappa^6 (BesselI[0,kappa z]-1-(kappa z)^2/4-(kappa z)^4/64);
  spacelikeResidual = FullSimplify[ds[spacelikeExact,-kappa^2,z]-z^4,Assumptions->kappa>0 && z>0];
  laplaceMoment = Integrate[t^5 BesselK[0,t],{t,0,Infinity}];
  (* Polarized unamputated numerator: exact polynomial identity. *)
  pp = {p0,p1,p2,p3}; vv={v0,v1,v2,v3}; ww={w0,w1,w2,w3};
  xx=-pp.eta.pp; cv=-pp.eta.vv; cw=-pp.eta.ww;
  pil=eta+Outer[Times,eta.pp,eta.pp]/xx;
  uv=xx eta.vv-cv eta.pp; uw=xx eta.ww-cw eta.pp;
  mixed=(Outer[Times,uv,uw]+Outer[Times,uw,uv])/2-(cv cw+xx vv.eta.ww)(xx eta+Outer[Times,eta.pp,eta.pp])/3;
  projectorMixed=xx^2 ((Outer[Times,pil.vv,pil.ww]+Outer[Times,pil.ww,pil.vv])/2-pil (vv.pil.ww)/3);
  mixedResidual=Map[Together,mixed-projectorMixed,{2}];
  <|"TTResiduals"->tt,"MassSquares"->masses,"Q"->qq,
    "DerivativeSwitchVertex"->switchvertex,"MissingZ6Coefficient"->missingcoefficient,
    "HomogeneousSeriesResidual"->homogeneousResidual,
    "MassDerivativeEquationResidual"->hDerivativeResidual,
    "VolterraSourceSeriesResidual"->sourceResidual,
    "Beta4VolterraIntegral"->betaIntegral,"SpacelikeExactSourceResidual"->spacelikeResidual,
    "SpacelikeLaplaceMoment"->laplaceMoment,"MixedPolynomialResidual"->mixedResidual,
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
];
Print[ToString[report,InputForm,PageWidth->100]];
