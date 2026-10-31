(* Independent renormalized-volume investigation.
   Run with: wolframscript -file checks_wolfram.wl
   All exports stay in a NEW private subdirectory beside this file.
   This script contains no project-report input and no external citations. *)
Module[{root = DirectoryName[$InputFileName], run, dir, report, text, exported},
  run = RunProcess[{"mktemp", "-d", FileNameJoin[{root, "wolfram-return.XXXXXX"}]}];
  If[run["ExitCode"] =!= 0, Print[InputForm[run]]; Return[$Failed]];
  dir = StringTrim[run["StandardOutput"]];
  report = Block[{$MessageList = {}},
    Module[{r, rho, eps, beta, sig, q, rr, cut, vol, weylConstant,
      k1, k2, h11, h12, h22, kk, h, k, p, s, xi, decomposition,
      projector, kernelTrace, kernelDivergence, e, aa, bb, dd, cc,
      bmat, tau1, tau2, tauExact, tauExpected, tauResidual,
      lengthDensity, shiftDensity, lengthMean, shiftMean,
      exactModulusQuadratic, predictedModulusQuadratic,
      z, greenHolomorphic, centralZZ, lambda, ccentral, checks, values},
      r = 1/rho - rho/4;
      vol = Pi beta r^2;
      cut = eps Exp[-sig] + eps^3 Exp[-3 sig] q/4;
      weylConstant = FullSimplify[
        Limit[1/(2 cut^2) + rr Log[cut]/4 - Exp[2 sig]/(2 eps^2) - rr Log[eps]/4,
          eps -> 0, Direction -> "FromAbove"],
        Assumptions -> Element[{sig, q, rr}, Reals]];
      k = {k1, k2}; kk = k.k;
      h = {{h11, h12}, {h12, h22}};
      p = IdentityMatrix[2] - Outer[Times, k, k]/kk;
      s = Tr[p.h]/2;
      xi = -I (h.k - k Tr[h]/2)/kk;
      decomposition = FullSimplify[h - 2 s IdentityMatrix[2] -
          I (Outer[Times, k, xi] + Outer[Times, xi, k]),
          Assumptions -> Element[{k1,k2}, Reals] && kk > 0];
      projector = FullSimplify[p.p - p];
      kernelTrace = FullSimplify[Tr[p] kk p - (kk IdentityMatrix[2] - Outer[Times,k,k])];
      kernelDivergence = FullSimplify[k.p];
      bmat = {{1 + e aa, e bb}, {e bb, 1 + e dd}};
      tauExact = tau1 + tau2 bmat[[1,2]]/bmat[[1,1]] + I tau2 Sqrt[Det[bmat]]/bmat[[1,1]];
      tauExpected = tau1 + I tau2 + e tau2 (bb + I (dd-aa)/2) +
        e^2 tau2 (-aa bb + I (3 aa^2-2 aa dd-dd^2-4 bb^2)/8);
      tauResidual = FullSimplify[Normal[Series[tauExact - tauExpected, {e,0,2}]]];
      (* Exact one-dimensional uniformization for E=1+e aa cos,
         F=e bb cos, G=1+e dd cos.  X'=sqrt(EG-F^2)/G,
         Y=t+integral F/G dx.  The mean of cos is 0 and cos^2 is 1/2. *)
      lengthDensity = Normal[Series[Sqrt[(1+e aa cc)(1+e dd cc)-e^2 bb^2 cc^2]/(1+e dd cc),{e,0,2}]];
      shiftDensity = Normal[Series[e bb cc/(1+e dd cc),{e,0,2}]];
      lengthMean = Expand[lengthDensity] /. {cc^2 -> 1/2, cc -> 0};
      shiftMean = Expand[shiftDensity] /. {cc^2 -> 1/2, cc -> 0};
      exactModulusQuadratic = FullSimplify[Normal[Series[I tau2/(lengthMean+I shiftMean),{e,0,2}]]];
      predictedModulusQuadratic = I tau2 + e^2 tau2 (-bb dd/2 + I (aa^2+2 aa dd-3 dd^2+4 bb^2)/16);
      greenHolomorphic = -Log[z]/(4 Pi); (* antiholomorphic term is annihilated by four z derivatives *)
      centralZZ = FullSimplify[-lambda D[greenHolomorphic,{z,4}]/2];
      ccentral = -6 Pi lambda;
      checks = <|
        "thermal_radial_FG_residual" -> FullSimplify[D[r,rho]^2/(1+r^2) - 1/rho^2],
        "thermal_time_FG_residual" -> FullSimplify[1+r^2-(1+rho^2/4)^2/rho^2],
        "thermal_angle_FG_residual" -> FullSimplify[r^2-(1-rho^2/4)^2/rho^2],
        "thermal_volume_constant_residual" -> FullSimplify[Limit[vol-Pi beta/rho^2,rho->0] + Pi beta/2],
        "finite_Weyl_constant_residual" -> FullSimplify[weylConstant+(q+rr sig)/4],
        "nonzero_mode_decomposition_residual" -> decomposition,
        "transverse_projector_idempotency" -> projector,
        "anomaly_kernel_trace_is_local" -> kernelTrace,
        "anomaly_kernel_conservation" -> kernelDivergence,
        "constant_metric_modulus_series_residual" -> tauResidual,
        "inhomogeneous_modulus_series_residual" -> FullSimplify[exactModulusQuadratic-predictedModulusQuadratic],
        "central_zz_normalization_residual" -> FullSimplify[centralZZ-ccentral/(8 Pi^2 z^4)]
      |>;
      values = <|
        "thermal_volume_exact" -> Expand[vol],
        "finite_Weyl_constant" -> weylConstant,
        "linear_Weyl_source" -> s,
        "constant_metric_modulus_series" -> tauExpected,
        "inhomogeneous_modulus_series" -> exactModulusQuadratic,
        "normalized_stress_zz_noncontact" -> centralZZ,
        "central_parameter_if_deltaF_equals_c_over_24pi_integral_sigmaR" -> ccentral
      |>;
      <|"Engine" -> $Version, "Checks" -> checks,
        "AllResidualsZero" -> And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[Values[checks]]),
        "Values" -> values, "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
    ]
  ];
  exported = Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
  text = ToString[report,InputForm,PageWidth->110];
  Export[FileNameJoin[{dir,"actual-return.txt"}],text,"Text"];
  Print[InputForm[<|"Directory"->dir,"ExactExport"->exported,"Report"->report|>]];
  report
]
