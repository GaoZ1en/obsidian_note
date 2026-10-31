(* Independent exact checks for the smooth SL(2,R) lift of global AdS3.
   Run in a fresh Wolfram kernel:
     Get["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/smooth_sl_lift.wl"]
   Units ell=1; D=d+A; A=G^{-1}dG; e=(A-Abar)/2;
   g_{mu nu}=2 Tr[e_mu e_nu]; J={{0,-1},{1,0}}.
   The script exports a NEW private report directory and returns its paths.
   It never overwrites the research report or existing verification outputs. *)
Module[{report, tmp, dir, json, exact, preview, text},
  report = Block[{$Messages = {}, $MessageList = {}},
    Module[{u, th, t, x, y, ph, n, f, rot, j, s1, s3, s, sp,
      d, h, gp, gbp, k, ki, gr, gbr, gir, gbir, coords,
      aa, bb, ae, be, ee, metric, metricExpected, metricResidual,
      flatA, flatB, identityResidual, determinantResidual,
      connectionResidual, rr, radialResidual, radicalResidual,
      cxy, kxy, kixy, gxy, gbxy, axisE, axisExpected, axisResidual,
      hillMatrix, hillMonodromy, hillMonodromyResidual, schwarzian,
      lf, psi, hillResidual, wronskianResidual, stabilizerResidual,
      simpl, allZero, assumptions, checks},
      assumptions = u >= 0 && Element[{th, t}, Reals];
      simpl[z_] := FullSimplify[TrigExpand[ExpToTrig[z]],
        Assumptions -> assumptions];
      allZero[z_] := And @@ ((# === 0) & /@ Flatten[{z}]);
      rot[z_] := {{Cos[z], -Sin[z]}, {Sin[z], Cos[z]}};
      j = {{0, -1}, {1, 0}};
      s1 = {{0, 1}, {1, 0}};
      s3 = {{1, 0}, {0, -1}};
      s = Cos[th] s3 + Sin[th] s1;
      sp = -Sin[th] s3 + Cos[th] s1;
      d = DiagonalMatrix[{Exp[u], Exp[-u]}];
      h = rot[th/2];
      gp = rot[(t + th)/2].d;
      gbp = rot[(-t + th)/2].Inverse[d];
      k = Cosh[u] IdentityMatrix[2] + Sinh[u] s;
      ki = Cosh[u] IdentityMatrix[2] - Sinh[u] s;
      gr = rot[t/2].k;
      gbr = rot[-t/2].ki;
      gir = ki.rot[-t/2];
      gbir = k.rot[t/2];
      identityResidual = simpl[{gp.Inverse[h] - gr,
        gbp.Inverse[h] - gbr, gir.gr - IdentityMatrix[2],
        gbir.gbr - IdentityMatrix[2]}];
      determinantResidual = simpl[{Det[gr] - 1, Det[gbr] - 1}];
      coords = {t, u, th};
      aa = Table[simpl[gir.D[gr, z]], {z, coords}];
      bb = Table[simpl[gbir.D[gbr, z]], {z, coords}];
      ae = {(Cosh[2 u] j + Sinh[2 u] sp)/2, s,
        Cosh[u] Sinh[u] sp + Sinh[u]^2 j};
      be = {(-Cosh[2 u] j + Sinh[2 u] sp)/2, -s,
        -Cosh[u] Sinh[u] sp + Sinh[u]^2 j};
      connectionResidual = simpl[{aa - ae, bb - be}];
      ee = simpl[(aa - bb)/2];
      metric = simpl[Table[2 Tr[ee[[i]].ee[[q]]], {i, 3}, {q, 3}]];
      metricExpected = DiagonalMatrix[{-Cosh[2 u]^2, 4, Sinh[2 u]^2}];
      metricResidual = simpl[metric - metricExpected];
      flatA = Flatten[Table[If[i < q,
        {simpl[D[aa[[q]], coords[[i]]] - D[aa[[i]], coords[[q]]] +
          aa[[i]].aa[[q]] - aa[[q]].aa[[i]]]}, {}],
        {i, 3}, {q, 3}], 2];
      flatB = Flatten[Table[If[i < q,
        {simpl[D[bb[[q]], coords[[i]]] - D[bb[[i]], coords[[q]]] +
          bb[[i]].bb[[q]] - bb[[q]].bb[[i]]]}, {}],
        {i, 3}, {q, 3}], 2];
      rr = Sinh[2 u];
      radialResidual = simpl[{metric[[1, 1]] + 1 + rr^2,
        metric[[2, 2]] - D[rr, u]^2/(1 + rr^2),
        metric[[3, 3]] - rr^2}];
      radicalResidual = FullSimplify[{
        Sqrt[Sqrt[1 + rr^2] + rr] - Exp[u],
        Sqrt[(Sqrt[1 + rr^2] + 1)/2] - Cosh[u],
        rr/(2 Cosh[u]) - Sinh[u]}, Assumptions -> u >= 0];
      cxy = Sqrt[(Sqrt[1 + x^2 + y^2] + 1)/2];
      kxy = cxy IdentityMatrix[2] + (x s3 + y s1)/(2 cxy);
      kixy = cxy IdentityMatrix[2] - (x s3 + y s1)/(2 cxy);
      gxy = rot[t/2].kxy;
      gbxy = rot[-t/2].kixy;
      axisE = Table[FullSimplify[
        ((Inverse[gxy].D[gxy, z] - Inverse[gbxy].D[gbxy, z])/2) /.
          {x -> 0, y -> 0}, Assumptions -> Element[t, Reals]],
        {z, {t, x, y}}];
      axisExpected = {j/2, s3/2, s1/2};
      axisResidual = axisE - axisExpected;
      hillMatrix = {{0, 1}, {-n^2/4, 0}};
      hillMonodromy = FullSimplify[MatrixExp[2 Pi hillMatrix],
        Assumptions -> Element[n, Integers] && n > 0];
      hillMonodromyResidual = FullSimplify[
        hillMonodromy - (-1)^n IdentityMatrix[2],
        Assumptions -> Element[n, Integers] && n > 0];
      schwarzian = f'''[ph]/f'[ph] - (3/2) (f''[ph]/f'[ph])^2;
      lf = -f'[ph]^2/4 - schwarzian/2;
      psi = Sqrt[2]/Sqrt[f'[ph]] {Cos[f[ph]/2], Sin[f[ph]/2]};
      hillResidual = FullSimplify[D[psi, {ph, 2}] - lf psi,
        Assumptions -> Element[ph, Reals] && f'[ph] > 0];
      wronskianResidual = FullSimplify[Det[{psi, D[psi, ph]}] - 1,
        Assumptions -> Element[ph, Reals] && f'[ph] > 0];
      stabilizerResidual = FullSimplify[
        D[{1, Cos[n ph], Sin[n ph]}, {ph, 3}] +
          n^2 D[{1, Cos[n ph], Sin[n ph]}, ph],
        Assumptions -> Element[ph, Reals] && Element[n, Integers] && n > 0];
      checks = <|
        "polar_to_cartesian_pure_gauge_identity" -> allZero[identityResidual],
        "SL_determinants" -> allZero[determinantResidual],
        "connection_components" -> allZero[connectionResidual],
        "flatness_A" -> allZero[flatA],
        "flatness_Abar" -> allZero[flatB],
        "metric_in_t_u_theta" -> allZero[metricResidual],
        "metric_in_t_r_theta" -> allZero[radialResidual],
        "radical_branches_for_r_nonnegative" -> allZero[radicalResidual],
        "axis_triad_in_t_x_y" -> allZero[axisResidual],
        "Hill_integer_monodromy" -> allZero[hillMonodromyResidual],
        "Hill_half_density_transform" -> allZero[hillResidual],
        "Hill_Wronskian" -> allZero[wronskianResidual],
        "exceptional_stabilizer_ODE" -> allZero[stabilizerResidual]|>;
      <|"KernelVersion" -> $Version,
        "Conventions" -> "ell=1; D=d+A; A=G^(-1)dG; e=(A-Abar)/2; metric=2 Tr(e e); J={{0,-1},{1,0}}; r=sinh(2u)",
        "Assumptions" -> "u>=0; t,theta real; integer n>0; real phi and f'(phi)>0; derivatives of f treated symbolically",
        "Checks" -> checks,
        "AllChecksPassed" -> And @@ Values[checks],
        "Residuals" -> <|"smooth_map" -> identityResidual,
          "determinants" -> determinantResidual,
          "connections" -> connectionResidual,
          "flatness_A" -> flatA, "flatness_Abar" -> flatB,
          "metric" -> metricResidual, "radial_coordinate" -> radialResidual,
          "radical_branches" -> radicalResidual,
          "axis_triad" -> axisResidual,
          "Hill_monodromy" -> hillMonodromyResidual,
          "Hill_equation" -> hillResidual,
          "Hill_Wronskian" -> wronskianResidual,
          "stabilizer" -> stabilizerResidual|>,
        "ActualAxisTriadInputForm" -> ToString[axisE, InputForm],
        "ExpectedMetric_t_r_theta" -> "diag(-(1+r^2),1/(1+r^2),r^2)",
        "FailedOrAborted" -> !FreeQ[{identityResidual, determinantResidual,
          connectionResidual, flatA, flatB, metricResidual, radialResidual,
          radicalResidual, axisResidual, hillMonodromyResidual,
          hillResidual, wronskianResidual, stabilizerResidual}, $Failed | $Aborted],
        "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
    ]
  ];
  tmp = Module[{home = Environment["DSH_HOME"], root},
    If[!StringQ[home] || home == "", home = FileNameJoin[{$HomeDirectory, ".dsh"}]];
    root = FileNameJoin[{home, "research-results", "kernel-exports"}];
    If[!DirectoryQ[root], CreateDirectory[root, CreateIntermediateDirectories -> True]];
    RunProcess[{"mktemp", "-d", FileNameJoin[{root, "smooth-sl-lift.XXXXXX"}]}]
  ];
  If[tmp["ExitCode"] =!= 0, Return[tmp]];
  dir = StringTrim[tmp["StandardOutput"]];
  json = Export[FileNameJoin[{dir, "smooth_sl_lift.results.json"}], report, "RawJSON"];
  exact = Export[FileNameJoin[{dir, "smooth_sl_lift.results.wxf"}], report, "WXF"];
  text = ToString[report, InputForm, PageWidth -> 100];
  preview = Export[FileNameJoin[{dir, "preview.txt"}],
    StringRiffle[Table[StringTake[text, {i, Min[i + 999, StringLength[text]]}],
      {i, 1, StringLength[text], 1000}], "\n"], "Text"];
  <|"JSON" -> json, "WXF" -> exact, "Preview" -> preview,
    "AllChecksPassed" -> report["AllChecksPassed"],
    "Checks" -> report["Checks"], "Messages" -> report["Messages"]|>
]
