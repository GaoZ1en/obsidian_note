(* Independent CFT stress spectral checks, round 21.
   No bulk formula is used. eta=(-+++), s(p)=-eta(p,p).
   Fourier: W(x,0,y)=Integral[dp dq/(2 Pi)^8 Exp[-i(p0 tx-p.x)+i(q0 ty-q.y)] Wtilde(p,q)].
   Wightman order That(x), O(0), O(y): imaginary times tx-i epsx,
   -i eps0, ty-i epsy with epsx>eps0>epsy. Thus the lines x,-y,x-y
   have Fourier transform 8 Pi^3 delta_+(s), delta_+=Theta(r0) delta(s(r)).
   p,q future timelike; a,b,k>0; s(p)=a^2,s(q)=b^2,s(p-q)=-k^2.
   All formulas concern this open channel and the stated ordered boundary value.
   No Euclidean source-contact terms are imported into the Wightman distribution.
   Ahat=-4/(3 Sqrt[10] N), unit scalar two-point=1/x^4,
   unit stress two-point=I/x^8. Physical CT=10 N^2/Pi^4.
   Amputation divides by both actual spectral covariances, not their square roots.
   Complex bra polarization is conjugated; tests below use real polarizations.
   The auxiliary improved free scalar only computes the unique conformal
   two-point normalization; no free-field hypothesis about the physical CFT.
   This script does not prove global amputated distributional bounds at a=0.
*)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  assumptions = a > 0 && b > 0 && k > 0;
  eta = DiagonalMatrix[{-1, 1, 1, 1}];
  discr = Sqrt[(k^2 + (a + b)^2) (k^2 + (a - b)^2)];
  cosine = (a^2 - b^2 + k^2)/discr;
  qmag = discr/(2 a);

  (* Exact Euclidean separated-point tensor differential identity, 16 components.
     With u=x, v=x-y, the omitted spectator is w(-y). Derivatives act only
     on the indicated factor; continuation of this identity fixes the cut vertex. *)
  u = {u1, u2, u3, u4}; v = {v1, v2, v3, v4};
  wu = 1/(u.u); wv = 1/(v.v);
  du = Table[D[wu, u[[i]]], {i, 4}];
  dv = Table[D[wv, v[[i]]], {i, 4}];
  vv = u/(u.u) - v/(v.v);
  positionOriginal = wu wv (Outer[Times, vv, vv] - IdentityMatrix[4] (vv.vv)/4);
  positionDifferential = Table[
    (D[wu, u[[i]], u[[j]]] wv + wu D[wv, v[[i]], v[[j]]])/8
      - (du[[i]] dv[[j]] + du[[j]] dv[[i]])/4
      + KroneckerDelta[i, j] (du.dv)/8, {i, 4}, {j, 4}];
  positionResidual = Map[Together, positionDifferential - positionOriginal, {2}];

  (* Lorentzian on-shell cut vertex, with LOWER tensor indices.
     p=l+r, l^2=r^2=0; r,l,q-r are all future null in the ordered cut. *)
  p = {a, 0, 0, 0}; r = {a/2, rx, ry, rz}; ell = p - r;
  vertex = -(Outer[Times, eta.ell, eta.ell] + Outer[Times, eta.r, eta.r])/8
    + (Outer[Times, eta.ell, eta.r] + Outer[Times, eta.r, eta.ell])/4
    - eta (ell.eta.r)/8;
  shellRule = {rz^2 -> a^2/4 - rx^2 - ry^2};
  conservationResidual = FullSimplify[Expand[p.vertex] /. shellRule];
  traceResidual = FullSimplify[Expand[Tr[eta.vertex]] /. shellRule];
  epol = DiagonalMatrix[{-1/2, -1/2, 1}];
  ttVertexResidual = FullSimplify[
    Tr[epol.vertex[[2 ;; 4, 2 ;; 4]]] + 3/4 ({rx, ry, rz}.epol.{rx, ry, rz})];

  Print["Position and cut-vertex algebra complete."];
  (* Stress spectral normalization from chi with <chi chi>=1/x^2.
     tau = dchi dchi - eta(dchi)^2/2 +(eta Box-dd)chi^2/6.
     Tphys=tau/(4 Pi^2), CTscalar=1/(3 Pi^4), That=Sqrt[3] tau/4.
     At time separation, tau12=(2/3)d1chi d2chi-(1/3)chi d1d2chi.
     I12,12=1/2; the two Wick contributions are 4 and 8 respectively. *)
  freeScalarCT = Simplify[2 ((4/9) 4 + (1/9) 8)/(4 Pi^2)^2];
  sphereN = {Sin[th] Cos[ph], Sin[th] Sin[ph], Cos[th]};
  spherePolarization = FullSimplify[sphereN.epol.sphereN];
  spherePolynomialResidual = FullSimplify[spherePolarization - (3 Cos[th]^2 - 1)/2];
  (* zc=Cos[th], dOmega=2 Pi dzc after the azimuth integral. *)
  twoShellMomentPerNorm = Simplify[
    a^4/128 (2 Pi) Integrate[((3 zc^2 - 1)/2)^2,
      {zc, -1, 1}]/Tr[epol.epol]];
  rhoTT = Simplify[(3/8) (8 Pi^3)^2/(2 Pi)^4 twoShellMomentPerNorm];
  rhoO = 2 Pi^3;
  rhoTTResidual = Simplify[rhoTT - Pi^3 a^4/160];

  Print["Spectral normalization complete."];
  (* Triple-cut measure is dph/(4D). The first two shells give dOmega/8,
     and the third fixes cos(theta)=cosine with Jacobian 2/D.
     r0=|r|=a/2, q0=(a^2+b^2+k^2)/(2a), |q|=D/(2a). *)
  tripleScalarCut = Integrate[1/(4 discr), {ph, 0, 2 Pi}];
  (* Integrate first with an independent angular cosine to avoid asking the
     integrator to rediscover the three-shell kinematic inequalities. *)
  cutR = a/2 {Sqrt[1 - cc0^2] Cos[ph], Sqrt[1 - cc0^2] Sin[ph], cc0};
  cutMoment = Integrate[Outer[Times, cutR, cutR], {ph, 0, 2 Pi},
    Assumptions -> -1 < cc0 < 1 && a > 0]/(4 discr) /. cc0 -> cosine;
  momentExpected = Pi a^2/(16 discr) ((1 - cosine^2) IdentityMatrix[3]
    + (3 cosine^2 - 1) Outer[Times, {0, 0, 1}, {0, 0, 1}]);
  momentResidual = FullSimplify[cutMoment - momentExpected, Assumptions -> assumptions];
  shellInteriorResidual = FullSimplify[
    discr^2 - (a^2 - b^2 + k^2)^2 - 4 b^2 k^2];
  positiveRemainingEnergyResidual = FullSimplify[
    (a^2 + b^2 + k^2)/(2 a) - a/2 - (b^2 + k^2)/(2 a)];

  (* Coefficients below divide out Ahat and eij qi qj, unless specified.
     Fourier cut prefactor=(8 Pi^3)^3/(2 Pi)^4, eN=-3err/4. *)
  unamputatedPerAhatEqq = FullSimplify[
    (-3/4) (8 Pi^3)^3/(2 Pi)^4 Tr[epol.cutMoment]/qmag^2,
    Assumptions -> assumptions];
  unamputatedExpected = -12 Pi^6 a^4 (discr^2 - 6 b^2 k^2)/discr^5;
  amputatedPerAhatEqq = FullSimplify[unamputatedPerAhatEqq/(rhoTT rhoO),
    Assumptions -> assumptions];
  amputatedExpected = -960 (discr^2 - 6 b^2 k^2)/discr^5;
  coefficientPhysical = FullSimplify[amputatedPerAhatEqq (-4/(3 Sqrt[10] nn)),
    Assumptions -> assumptions && nn > 0];
  unamputatedResidual = FullSimplify[unamputatedPerAhatEqq - unamputatedExpected,
    Assumptions -> assumptions];
  amputatedResidual = FullSimplify[amputatedPerAhatEqq - amputatedExpected,
    Assumptions -> assumptions];

  Print["Tensor triangle and amputation complete."];
  (* Actual quadratures, not evaluation of the already-integrated expression.
     Non-axis-aligned q direction and a generic symmetric traceless e. *)
  genericE = {{1, 2, 3}, {2, -4, 1}, {3, 1, 3}};
  axisN = {2, 3, 6}/7; axisU = {3, -2, 0}/Sqrt[13]; axisV = Cross[axisN, axisU];
  numericalRows = Table[Module[{aa = sample[[1]], bb = sample[[2]], kk = sample[[3]],
      dd, cc, rv, numerical, analytical},
    dd = Sqrt[(kk^2 + (aa + bb)^2) (kk^2 + (aa - bb)^2)];
    cc = (aa^2 - bb^2 + kk^2)/dd;
    rv[t_] := aa/2 (cc axisN + Sqrt[1 - cc^2] (Cos[t] axisU + Sin[t] axisV));
    numerical = NIntegrate[rv[t].genericE.rv[t]/(4 dd), {t, 0, 2 Pi},
      WorkingPrecision -> 60, AccuracyGoal -> 45, PrecisionGoal -> 45];
    analytical = N[Pi aa^2/(16 dd) (3 cc^2 - 1) (axisN.genericE.axisN), 60];
    <|"Parameters_a_b_k" -> sample, "Quadrature" -> numerical,
      "ClosedForm" -> analytical, "Residual" -> numerical - analytical,
      "PassAbs1eMinus45" -> (Abs[numerical - analytical] < 10^-45)|>
    ], {sample, {{2, 3, 1}, {1, 1, 2}, {3, 1, 1/5}}}];

  Print["Numerical quadratures complete."];
  (* Open-channel threshold limits. In the equal-mass case eqq=Q^2 e_nn;
     report k*M/(Ahat e_nn), rather than incorrectly keeping eqq fixed. *)
  nullTransferAGreater = FullSimplify[
    Limit[amputatedExpected, k -> 0, Direction -> "FromAbove", Assumptions -> a > b > 0],
    Assumptions -> a > b > 0];
  nullTransferBGreater = FullSimplify[
    Limit[amputatedExpected, k -> 0, Direction -> "FromAbove", Assumptions -> b > a > 0],
    Assumptions -> b > a > 0];
  equalMassSoft = FullSimplify[
    Limit[(k amputatedExpected qmag^2) /. b -> a, k -> 0,
      Direction -> "FromAbove", Assumptions -> a > 0], Assumptions -> a > 0];
  scalarNullEdge = FullSimplify[
    Limit[amputatedExpected, b -> 0, Direction -> "FromAbove", Assumptions -> a > 0 && k > 0],
    Assumptions -> a > 0 && k > 0];
  equalMassNumerator = Factor[(discr^2 - 6 b^2 k^2) /. b -> a];
  softResiduals = FullSimplify[{
    nullTransferAGreater + 960/(a^2 - b^2)^3,
    nullTransferBGreater + 960/(b^2 - a^2)^3,
    equalMassSoft - 60/a^3,
    scalarNullEdge + 960/(a^2 + k^2)^3}];

  exactResiduals = <|"PositionTensor16" -> positionResidual,
    "CutConservation4" -> conservationResidual, "CutTrace" -> traceResidual,
    "TTVertex" -> ttVertexResidual, "SpherePolarizationPolynomial" -> spherePolynomialResidual,
    "rhoTT" -> rhoTTResidual,
    "CutAngularMoment9" -> momentResidual,
    "ShellInterior" -> shellInteriorResidual,
    "PositiveRemainingEnergy" -> positiveRemainingEnergyResidual,
    "Unamputated" -> unamputatedResidual, "Amputated" -> amputatedResidual,
    "SoftLimits4" -> softResiduals|>;
  <|"Conventions" -> <|"Signature" -> "(-+++)",
      "Channel" -> "p,q future timelike; a,b,k>0; s(p-q)=-k^2",
      "Order" -> "That(x), O(0), O(y); epsx>eps0>epsy; t->t-i eps",
      "Cut" -> "delta_+(s(r)) delta_+(s(p-r)) delta_+(s(q-r))",
      "Contacts" -> "Ordered Wightman continuation; no Euclidean source-contact additions",
      "Amputation" -> "Divide by rhoTT(p) rhoO(q); not square-root amputation",
      "Scope" -> "Open spacelike-transfer channel; no global amputation theorem at a=0"|>,
    "ExactResiduals" -> exactResiduals,
    "AllExactResidualsZero" -> And @@ (TrueQ[# == 0] & /@ Flatten[Values[exactResiduals]]),
    "FreeScalarCT" -> freeScalarCT, "TwoShellMomentPerPolarizationNorm" -> twoShellMomentPerNorm,
    "UnitStressSpectralDensityInsideVplus" -> rhoTT,
    "UnitScalarSpectralDensityInsideVplus" -> rhoO,
    "ScalarTripleCut" -> tripleScalarCut,
    "SpatialCutMoment" -> momentExpected,
    "UnamputatedPerAhatEqq" -> unamputatedPerAhatEqq,
    "AmputatedPerAhatEqq" -> amputatedPerAhatEqq,
    "PhysicalCoefficientPerEqq_nnMeansN" -> coefficientPhysical,
    "NumericalQuadratures" -> numericalRows,
    "AllNumericalQuadraturesPass" -> And @@ Lookup[numericalRows, "PassAbs1eMinus45"],
    "SoftLimits" -> <|"kToZero_aGreaterb_perAhatEqq" -> nullTransferAGreater,
      "kToZero_bGreatera_perAhatEqq" -> nullTransferBGreater,
      "aEqualsb_kMperAhatEnn" -> equalMassSoft,
      "bToZero_perAhatEqq" -> scalarNullEdge,
      "EqualMassNumerator_SignChange" -> equalMassNumerator|>,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
resultsPath = FileNameJoin[{DirectoryName[$InputFileName], "half_bps_stress_spectral_checks_results.txt"}];
Export[resultsPath, ToString[report, InputForm, PageWidth -> 110], "Text"];
Print[<|"ResultsPath" -> resultsPath, "AllExactResidualsZero" -> report["AllExactResidualsZero"],
  "AllNumericalQuadraturesPass" -> report["AllNumericalQuadraturesPass"],
  "Messages" -> report["Messages"]|>];
report
