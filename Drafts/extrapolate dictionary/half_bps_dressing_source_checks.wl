(* Independent adjoint, AdS5 Ward, radial-string, and counterexample checks.
   Euclidean g=ell^2/u^2 delta; covariant source components;
   pairing int du d^4x u^-3 Q_mn H_mn, mixed components counted twice.
   No project files or prior reports are inputs. Fresh-kernel runnable.
   The Fourier example uses normalized spatial average over x in [0,2 Pi]. *)
Begin["AdS5DressingSourceChecks`"];
ClearAll["AdS5DressingSourceChecks`*"];
report = Block[{$MessageList = {}},
  coords = {u, x1, x2, x3, x4}; n = 5;
  metric = ell^2/u^2 IdentityMatrix[n]; inv = Inverse[metric];
  gam = Table[Sum[inv[[a,d]] (D[metric[[d,c]],coords[[b]]] +
    D[metric[[d,b]],coords[[c]]] - D[metric[[b,c]],coords[[d]]]),
    {d,n}]/2, {a,n},{b,n},{c,n}];
  lap[z_] := Sum[inv[[a,b]] (D[z,coords[[a]],coords[[b]]] -
    Sum[gam[[c,a,b]] D[z,coords[[c]]],{c,n}]),{a,n},{b,n}];
  crossStress[p_,q_] := Table[
    D[p,coords[[a]]] D[q,coords[[b]]] + D[q,coords[[a]]] D[p,coords[[b]]] -
    metric[[a,b]] (Sum[inv[[c,d]] D[p,coords[[c]]] D[q,coords[[d]]],
    {c,n},{d,n}] - 4/ell^2 p q), {a,n},{b,n}];
  covDiv[t_] := Table[Sum[inv[[a,b]] (D[t[[a,c]],coords[[b]]] -
    Sum[gam[[d,b,a]] t[[d,c]] + gam[[d,b,c]] t[[a,d]],{d,n}]),
    {a,n},{b,n}],{c,n}];
  p = p1@@coords; q = p2@@coords;
  stress = crossStress[p,q];
  wardResidual = Simplify[covDiv[stress] - Table[
    (lap[p]+4/ell^2 p) D[q,coords[[c]]] +
    (lap[q]+4/ell^2 q) D[p,coords[[c]]],{c,n}]];
  sourceOne = -(lap[p]+4/ell^2 p);
  sourceTwo = -(lap[q]+4/ell^2 q);
  sourceWardResidual = Simplify[covDiv[stress] + Table[
    sourceOne D[q,coords[[c]]] + sourceTwo D[p,coords[[c]]],{c,n}]];
  generic = Table[bb[Min[a,b],Max[a,b]][Sequence@@coords],{a,n},{b,n}];
  componentExpected = Table[u^2/ell^2 (
    Sum[D[generic[[a,c]],coords[[a]]],{a,n}] - 3/u generic[[1,c]] +
    KroneckerDelta[c,1]/u Tr[generic]),{c,n}];
  componentResidual = Simplify[covDiv[generic]-componentExpected];

  (* J11=j(u) cos x, Huu=h(u) cos x, Hu1=v(u) sin x, Hij=0.
     xi^u= -u aa(u) cos x/2, xi^1=bi(u) sin x.
     Thus (PH)11=(2 bi+aa) cos x. *)
  j[t_] := t^4 Exp[-t]; h[t_] := t^2 Exp[-t]; v[t_] := t^2 Exp[-t];
  aa[t_] = Integrate[s Exp[-s],{s,0,t},Assumptions->t>0];
  bi[t_] = -Integrate[s^2 Exp[-s]+s aa[s]/2,{s,0,t},Assumptions->t>0];
  qui[t_] = -t^3 Integrate[s^-3 j[s],{s,t,Infinity},Assumptions->t>0];
  quu[t_] = t^2 Integrate[s^-3 j[s] (1-(s^2-t^2)/2),
    {s,t,Infinity},Assumptions->t>0];
  lhs = Integrate[u^-3 j[u] (2 bi[u]+aa[u])/2,{u,0,Infinity}];
  rhs = Integrate[u^-3 (quu[u] h[u]+2 qui[u] v[u])/2,{u,0,Infinity}];
  adjointResidual = FullSimplify[lhs-rhs];
  tangentialResidual = Simplify[D[qui[u],u]-3 qui[u]/u-j[u]];
  radialResidual = Simplify[D[quu[u],u]-2 quu[u]/u+qui[u]+j[u]/u];

  (* Source example F_1=u^5 exp(-u) sin x, F_u=u^4 exp(-u) cos x.
     R has no tangential components and obeys covDiv[R]=+F. *)
  fi[t_,x_] := t^5 Exp[-t] Sin[x];
  fu[t_,x_] := t^4 Exp[-t] Cos[x];
  rui[t_,x_] = -ell^2 t^3 Integrate[s^-5 fi[s,x],
    {s,t,Infinity},Assumptions->t>0];
  ruu[t_,x_] = -ell^2 t^2 Integrate[s^-4 fu[s,x] +
    (s^2-t^2)/2 s^-5 D[fi[s,x],x],{s,t,Infinity},Assumptions->t>0];
  stringTangentialResidual = Simplify[
    D[rui[u,x],u]-3 rui[u,x]/u-ell^2/u^2 fi[u,x]];
  stringRadialResidual = Simplify[
    D[ruu[u,x],u]-2 ruu[u,x]/u+D[rui[u,x],x]-ell^2/u^2 fu[u,x]];

  (* Sourcefree BF mode: all tangential stresses vanish, so P-adjoint
     of the tangential stress is zero, but B_uu=8 u^2 is nonzero. *)
  bfStress = Simplify[crossStress[u^2,u^2]];
  bfEquationResidual = Simplify[lap[u^2]+4/ell^2 u^2];
  bfDivergenceResidual = Simplify[covDiv[bfStress]];
  checks = <|
    "Generic cross-stress Ward identity" -> (wardResidual === ConstantArray[0,n]),
    "Sourced identity div B = -F" -> (sourceWardResidual === ConstantArray[0,n]),
    "Generic covariant divergence components" -> (componentResidual === ConstantArray[0,n]),
    "Adjoint example exact value" -> (lhs === -21/16 && rhs === -21/16),
    "Adjoint example equality" -> (adjointResidual === 0),
    "Adjoint tangential conservation" -> (tangentialResidual === 0),
    "Adjoint radial conservation" -> (radialResidual === 0),
    "Radial string tangential Ward identity" -> (stringTangentialResidual === 0),
    "Radial string radial Ward identity" -> (stringRadialResidual === 0),
    "BF mode sourcefree equation" -> (bfEquationResidual === 0),
    "BF stress conserved" -> (bfDivergenceResidual === ConstantArray[0,n]),
    "BF tangent stress zero" -> (bfStress[[2;;5,2;;5]] === ConstantArray[0,{4,4}]),
    "BF mixed stress zero" -> (bfStress[[1,2;;5]] === ConstantArray[0,4]),
    "BF radial stress nonzero 8u^2" -> (bfStress[[1,1]] === 8 u^2)
  |>;
  <|"Conventions" -> "AdS5 Euclidean; covariant stresses; unhalved scalar cross stress; u^-3 pairing; mixed components twice",
    "Assumptions" -> "u>0, ell>0; Fourier test has periodic x; radial integrals absolutely convergent; BF counterexample deliberately violates IR flux decay",
    "Checks" -> checks,
    "AllChecksPassed" -> And@@Values[checks],
    "AdjointExample" -> <|"LHS"->lhs,"RHS"->rhs,"QuiAmplitude"->qui[u],"QuuAmplitude"->quu[u]|>,
    "Residuals" -> <|"CrossStressWard"->wardResidual,"SourceWard"->sourceWardResidual,
      "CovariantComponents"->componentResidual,"Adjoint"->adjointResidual,
      "TangentialConservation"->tangentialResidual,"RadialConservation"->radialResidual,
      "StringTangential"->stringTangentialResidual,"StringRadial"->stringRadialResidual|>,
    "RadialStringExample" -> <|"Rui"->rui[u,x],"Ruu"->ruu[u,x]|>,
    "SourcefreeCounterexample" -> <|"Psi1"->u^2,"Psi2"->u^2,"B"->bfStress,
      "PAdjointOfTangentB"->ConstantArray[0,{5,5}],"EquationResidual"->bfEquationResidual,
      "DivergenceResidual"->bfDivergenceResidual,"IRRadialFluxBuuOverUSquared"->8|>,
    "Messages" -> (ToString[#,InputForm]& /@ $MessageList)|>
];
End[];
AdS5DressingSourceChecks`report
