(* Independent PBH / finite-radius BF algebra checks. No file modifications. *)
Block[{$MessageList = {}},
 Module[{z, k2, p2, pk, f, dU, metricTerm, res, pp, d, t,
   proj, completion, c, a, b, k, ell, s, checks},
  dU = -z f'[z] - 2 f[z] - z^2 pk f[z]/2;
  metricTerm = -z p2 f'[z] - 2 p2 f[z] -
    pk (2 + z^2 p2/2) f[z] + 2 k2 f[z] - z^2 pk^2 f[z];
  res = Expand[D[dU, {z, 2}] + D[dU, z]/z -
      (k2 + p2 + 2 pk) dU + metricTerm] /.
    {Derivative[3][f][z] -> k2 f'[z] - k2 f[z]/z + 2 f'[z]/z^2,
     Derivative[2][f][z] -> k2 f[z] - f'[z]/z};
  pp = {2, 3, 5, 7}; d = Array[dd, 4]; t = tt;
  proj = IdentityMatrix[4] - Outer[Times, pp, pp]/(pp.pp);
  completion = (Outer[Times, pp, d] + Outer[Times, d, pp])/(pp.pp) -
    Outer[Times, pp, pp] (pp.d)/(pp.pp)^2 + proj (t - (pp.d)/(pp.pp))/3;
  c = 2 Pi^2 BesselI[0, k a] BesselK[0, k b]; (* a<b branch *)
  s = 2 Pi^2 Log[b/ell];
  checks = <|
    "PBH scalar equation residual" -> Simplify[res],
    "completion divergence" -> Simplify[pp.completion - d],
    "completion trace" -> Simplify[Tr[completion] - t],
    "Bessel Euler scaling" -> Simplify[a D[c, a] + b D[c, b] - k D[c, k]],
    "radial anomaly coefficient" -> Simplify[a D[s, a] + b D[s, b]],
    "boundary covariance scaling" -> k D[-2 Pi^2 (Log[k ell/2] + EulerGamma), k]
    |>;
  Print[InputForm[<|"Checks" -> checks, "Messages" -> $MessageList|>]]
 ]
]
