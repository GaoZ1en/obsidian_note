(*
  Independent coframe/corner verification for 3D Lorentzian gravity.
  This is ordinary exact Wolfram Language COMPONENT ALGEBRA.
  The recorded execution is hosted by the xAct tool with its core packages
  loaded. No xAct tensor/variation routine is used or claimed as evidence.

  Conventions:
    internal eta = diag(-1,1,1); internal epsilon_012 = +1;
    array positions {1,2,3} mean physical indices {0,1,2};
    spacetime coordinates in the AdS check are {t,x,z};
    volume = e^0 wedge e^1 wedge e^2, orientation-compatible coframes;
    alpha wedge *beta = <alpha,beta> volume;
    c = 1/(16 Pi G), factored out by setting c=1 in the calculations;
    omega^{ab} = -epsilon^{ab}{}_c omega^c;
    theta_P = -2 c e_a wedge delta omega^a;
    theta_g = c (g^{mu nu} delta Gamma^rho_{mu nu}
                 -g^{rho mu} delta Gamma^nu_{mu nu}) epsilon_rho;
    Y = +c * (e_a wedge delta e^a);
    d and delta commute, with their two gradings distinguished.

  For field-independent Lorentz parameters lambda and rho:
    X_lambda e = [lambda,e];  X_lambda omega = -D lambda;
    [X_lambda,X_rho] = -X_[lambda,rho].
  The field-space two-form delta Y is evaluated below using its FULL
  exterior-derivative formula, including -Y([X_lambda,X_rho]).
  The shortcut 2c*(delta_lambda e_a wedge delta_rho e^a) is checked against
  that full formula, not assumed in place of the field-space bracket term.

  The final expression is a JSON-compatible Association of actual results.
  Run with Get[absolutePathToThisFile] in a fresh kernel. The algebra does not
  depend on xAct packages, although the preserved run uses the xAct host.
*)

Block[{$MessageList = {}},
 Module[{generic, ads, result, messages, scriptPath, scriptHash},
  scriptPath = $InputFileName;
  scriptHash = If[StringQ[scriptPath] && FileExistsQ[scriptPath],
    IntegerString[FileHash[scriptPath, "SHA256"], 16, 64], "unavailable"];

  generic = Module[
    {eta = DiagonalMatrix[{-1, 1, 1}], ep, v, ej, wj,
     vBase, eJet, vJet, h, hgi, dg, dgi, ddg, gm, dgm,
     dom, thP, vg, thG, z, zu, dz, dzu, dy,
     cornerResidual, antisymmetryResidual, jetCount, pass},

    ep[i_, j_, k_] := Signature[{i, j, k}];
    v = Array[vBase, {3, 3}];
    ej = Array[eJet, {3, 3, 3}];
    wj = Array[vJet, {3, 3, 3}];
    (* ej[[k,a,mu]] = partial_k e^a_mu at e^a_mu = delta^a_mu.
       v[[a,mu]] = delta e^a_mu; wj[[k,a,mu]] = partial_k delta e^a_mu.
       All 27+9+27 entries are independent. Choosing e=identity at one
       base point imposes no restriction on these first jets. *)
    jetCount = Length[DeleteDuplicates[Flatten[{v, ej, wj}]]];

    h = Transpose[v].eta + eta.v;
    hgi = -eta.h.eta;
    dg = Table[Transpose[ej[[k]]].eta + eta.ej[[k]], {k, 3}];
    dgi = Table[-eta.dg[[k]].eta, {k, 3}];
    ddg = Table[
      Transpose[wj[[k]]].eta + eta.wj[[k]]
       + Transpose[ej[[k]]].eta.v + Transpose[v].eta.ej[[k]],
      {k, 3}];

    gm = Table[
      Sum[eta[[r, l]]
        (dg[[m, l, n]] + dg[[n, l, m]] - dg[[l, m, n]])/2,
        {l, 3}], {r, 3}, {m, 3}, {n, 3}];
    dgm = Table[
      Sum[(hgi[[r, l]]
          (dg[[m, l, n]] + dg[[n, l, m]] - dg[[l, m, n]])
        + eta[[r, l]]
          (ddg[[m, l, n]] + ddg[[n, l, m]] - ddg[[l, m, n]]))/2,
        {l, 3}], {r, 3}, {m, 3}, {n, 3}];

    (* At the base point, omega_k = Gamma_k - partial_k e.
       Vary omega_k = e Gamma_k e^-1 - (partial_k e)e^-1, rather than
       inserting the desired potential identity. The last eta raises
       the second Lorentz index, giving delta omega^{ab}_k. *)
    dom = Table[
      (v.gm[[All, k, All]] + dgm[[All, k, All]]
       - gm[[All, k, All]].v - wj[[k]] + ej[[k]].v).eta,
      {k, 3}];
    thP = Table[
      -Sum[ep[i, a, b] dom[[j, a, b]]
            - ep[j, a, b] dom[[i, a, b]], {a, 3}, {b, 3}],
      {i, 3}, {j, 3}];

    vg = Table[
      Sum[eta[[m, n]] dgm[[r, m, n]]
        - eta[[r, m]] dgm[[n, m, n]], {m, 3}, {n, 3}],
      {r, 3}];
    thG = Table[Sum[vg[[r]] ep[r, i, j], {r, 3}], {i, 3}, {j, 3}];

    (* z_{mu nu} = (e_a wedge delta e^a)_{mu nu}.
       Differentiate the Hodge star explicitly, including the metric
       inverse AND volume variations along spacetime directions. *)
    z = eta.v - Transpose[v].eta;
    zu = eta.z.eta;
    dz = Table[
      Transpose[ej[[k]]].eta.v + eta.wj[[k]]
       - Transpose[wj[[k]]].eta - Transpose[v].eta.ej[[k]],
      {k, 3}];
    dzu = Table[
      Tr[ej[[k]]] zu + dgi[[k]].z.eta
       + eta.dz[[k]].eta + eta.z.dgi[[k]],
      {k, 3}];
    dy = Table[
      Sum[(ep[a, b, j] dzu[[i, a, b]]
            - ep[a, b, i] dzu[[j, a, b]])/2,
        {a, 3}, {b, 3}], {i, 3}, {j, 3}];

    cornerResidual = Map[Expand, thG - thP - dy, {2}];
    antisymmetryResidual = Map[Expand,
      dom + Transpose[dom, {1, 3, 2}], {3}];
    pass = jetCount === 63
      && AllTrue[Flatten[cornerResidual], # === 0 &]
      && AllTrue[Flatten[antisymmetryResidual], # === 0 &];

    <|"IndependentJetCount" -> jetCount,
      "JetConvention" -> "e=identity at one arbitrary base point; 27 partial e, 9 delta e, 27 partial delta e independently symbolic",
      "ThetaGMinusThetaPMinusdY" -> cornerResidual,
      "SpinVariationAntisymmetryResidual" -> antisymmetryResidual,
      "Pass" -> pass|>
  ];

  ads = Module[
    {coords, eta = DiagonalMatrix[{-1, 1, 1}], ep, f,
     t, x, z, ell, assumptions, wedge, exterior, lie, act,
     e, w, torsion, curvature, curvatureResidual,
     lambda, rho, delE, delW, u, v, p, q,
     metricVariations, current, g, gi, volume, starTwo,
     lieBracket, fieldBracket, fieldBracketResidual,
     yOn, firstDerivative, secondDerivative,
     cornerFull, cornerShortcut, cornerBilinearResidual,
     currentCornerResidual, expectedCurrent, expectedCorner,
     currentExpectedResidual, cornerExpectedResidual, pass, fmt},

    coords = {t, x, z};
    assumptions = Element[{t, x, z, ell}, Reals] && z > 0 && ell > 0;
    ep[a_, b_, c_] := Signature[{a, b, c}];
    f[a_, b_, c_] := eta[[a, a]] ep[a, b, c];
    wedge[a_, b_] := Outer[Times, a, b] - Outer[Times, b, a];
    exterior[a_] := Table[
      D[a[[j]], coords[[i]]] - D[a[[i]], coords[[j]]],
      {i, 3}, {j, 3}];
    lie[a_, b_] := Table[
      Sum[f[i, j, k] a[[j]] b[[k]], {j, 3}, {k, 3}], {i, 3}];
    act[parameter_, frame_] := Table[
      Sum[f[a, b, c] parameter[[b]] frame[[c]], {b, 3}, {c, 3}],
      {a, 3}];

    e = (ell/z) IdentityMatrix[3];
    w = {{0, 1/z, 0}, {1/z, 0, 0}, {0, 0, 0}};
    torsion = Table[
      exterior[e[[a]]] + Sum[f[a, b, c] wedge[w[[b]], e[[c]]],
        {b, 3}, {c, 3}], {a, 3}];
    curvature = Table[
      exterior[w[[a]]] + Sum[f[a, b, c] wedge[w[[b]], w[[c]]]/2,
        {b, 3}, {c, 3}], {a, 3}];
    curvatureResidual = FullSimplify[Table[
      curvature[[a]] + Sum[f[a, b, c] wedge[e[[b]], e[[c]]]/(2 ell^2),
        {b, 3}, {c, 3}], {a, 3}], assumptions];
    torsion = FullSimplify[torsion, assumptions];

    lambda = {0, 0, z^2/ell^2};
    rho = {-1, 0, 0};
    delE[parameter_] := act[parameter, e];
    delW[parameter_] := Table[
      -Table[D[parameter[[a]], coords[[i]]], {i, 3}]
       - Sum[f[a, b, c] w[[b]] parameter[[c]], {b, 3}, {c, 3}],
      {a, 3}];
    u = delE[lambda]; v = delE[rho];
    p = delW[lambda]; q = delW[rho];
    metricVariations = FullSimplify[
      {Transpose[u].eta.e + Transpose[e].eta.u,
       Transpose[v].eta.e + Transpose[e].eta.v}, assumptions];
    current = FullSimplify[
      -2 Sum[eta[[a, a]]
        (wedge[u[[a]], q[[a]]] - wedge[v[[a]], p[[a]]]), {a, 3}],
      assumptions];

    g = Transpose[e].eta.e;
    gi = Inverse[g];
    volume = ell^3/z^3;
    starTwo[twoForm_] := Table[
      volume Sum[ep[a, b, i] (gi.twoForm.gi)[[a, b]]/2,
        {a, 3}, {b, 3}], {i, 3}];
    yOn[tangent_] := starTwo[
      Sum[eta[[a, a]] wedge[e[[a]], tangent[[a]]], {a, 3}]];

    (* The vector fields do NOT commute. Their bracket on e is
       rho.lambda.e - lambda.rho.e = -[lambda,rho].e. *)
    lieBracket = FullSimplify[lie[lambda, rho], assumptions];
    fieldBracket = act[rho, u] - act[lambda, v];
    fieldBracketResidual = FullSimplify[
      fieldBracket + act[lieBracket, e], assumptions];

    (* Both directions preserve g, so their directional derivatives of
       the Hodge star vanish. The parameter rho in X_rho is fixed, but
       X_rho e itself varies with e; retain act[rho,u], and similarly
       act[lambda,v]. Then subtract Y on the field-space bracket. *)
    firstDerivative = starTwo[Sum[eta[[a, a]]
      (wedge[u[[a]], v[[a]]]
       + wedge[e[[a]], act[rho, u][[a]]]), {a, 3}]];
    secondDerivative = starTwo[Sum[eta[[a, a]]
      (wedge[v[[a]], u[[a]]]
       + wedge[e[[a]], act[lambda, v][[a]]]), {a, 3}]];
    cornerFull = FullSimplify[
      firstDerivative - secondDerivative - yOn[fieldBracket], assumptions];
    cornerShortcut = FullSimplify[2 starTwo[
      Sum[eta[[a, a]] wedge[u[[a]], v[[a]]], {a, 3}]], assumptions];
    cornerBilinearResidual = FullSimplify[
      cornerFull - cornerShortcut, assumptions];
    currentCornerResidual = FullSimplify[
      current + exterior[cornerFull], assumptions];

    expectedCurrent = {{0, 0, 0}, {0, 0, 2/ell}, {0, -2/ell, 0}};
    expectedCorner = {0, 2 z/ell, 0};
    currentExpectedResidual = FullSimplify[current - expectedCurrent, assumptions];
    cornerExpectedResidual = FullSimplify[cornerFull - expectedCorner, assumptions];
    pass = And @@ (AllTrue[Flatten[#], # === 0 &] & /@
      {torsion, curvatureResidual, metricVariations, fieldBracketResidual,
       cornerBilinearResidual, currentCornerResidual,
       currentExpectedResidual, cornerExpectedResidual});
    (* Convert symbolic nonzero output to InputForm strings for JSON;
       zero residual arrays remain JSON numbers. Module-local suffixes
       are removed only for the four named coordinates/parameters. *)
    fmt[expression_] := ToString[
      expression /. {t -> Symbol["Global`t"], x -> Symbol["Global`x"],
        z -> Symbol["Global`z"], ell -> Symbol["Global`ell"]}, InputForm];

    <|"Assumptions" -> "ell>0, z>0; coordinates (t,x,z); c factored out as c=1",
      "CoframeMatrix" -> fmt[e],
      "DualSpinConnectionMatrix" -> fmt[w],
      "BoostParameter" -> fmt[lambda],
      "RotationParameter" -> fmt[rho],
      "LieAlgebraBracketLambdaRho" -> fmt[lieBracket],
      "FieldSpaceBracketParameter" -> fmt[-lieBracket],
      "FieldSpaceBracketResidual" -> fieldBracketResidual,
      "TorsionResidual" -> torsion,
      "AdSCurvatureResidual" -> curvatureResidual,
      "MetricVariations" -> metricVariations,
      "RawPalatiniCurrentComponentMatrix" -> fmt[current],
      "DeltaYFullExteriorDerivative" -> fmt[cornerFull],
      "DeltaYBilinearShortcut" -> fmt[cornerShortcut],
      "FullMinusBilinearDeltaYResidual" -> cornerBilinearResidual,
      "CurrentPlusdDeltaYResidual" -> currentCornerResidual,
      "CurrentExpectedResidual" -> currentExpectedResidual,
      "CornerExpectedResidual" -> cornerExpectedResidual,
      "CoordinateAreaCoefficientAtcEquals1" -> fmt[current[[2, 3]]],
      "Pass" -> pass|>
  ];

  messages = ToString[#, InputForm] & /@ $MessageList;
  result = <|
    "Verification" -> "Independent 3D metric-Palatini corner and on-shell AdS Lorentz counterexample",
    "Implementation" -> "Exact Wolfram Language component algebra; recorded run hosted by xAct tool; no xAct tensor or variational routine invoked",
    "WolframVersion" -> System`$Version,
    "XActPackagesPresent" -> Select[
      {"xAct`xTensor`", "xAct`xPert`", "xAct`xTras`"}, MemberQ[$Packages, #] &],
    "ScriptPath" -> scriptPath,
    "ScriptSHA256" -> scriptHash,
    "Dimension" -> 3,
    "Signature" -> {-1, 1, 1},
    "Orientation" -> "epsilon_012=+1, volume=e^0 wedge e^1 wedge e^2; positions 1,2,3 denote indices 0,1,2",
    "Normalization" -> "c=1/(16 Pi G); every potential/current displayed by the checks has c factored out",
    "PotentialConvention" -> "theta_g=theta_P+dY, theta_P=-2c e_a wedge delta omega^a, Y=+c*(e_a wedge delta e^a)",
    "FieldSpaceConvention" -> "delta d=d delta; X_lambda e=[lambda,e], X_lambda omega=-Dlambda; [X_lambda,X_rho]=-X_[lambda,rho]; full exterior derivative includes -Y([X_lambda,X_rho])",
    "GenericFirstJet" -> generic,
    "AdSCounterexample" -> ads,
    "Messages" -> messages,
    "OverallPass" -> (TrueQ[generic["Pass"]] && TrueQ[ads["Pass"]] && messages === {})
  |>;
  result
 ]
]
