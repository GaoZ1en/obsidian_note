(* Exact paired-time-ordering arithmetic test requested after the independent
   hypergeometric derivation. No parent files are read; no files are written. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{d = 5/2, l = 1, n, x, Rk, RF, norm, omega, mixedTerm,
   mixedExact, sameExact, directChecks, badR, badOmega, incompatible,
   hyp, hyperMixed, hyperSame, checks},
  Rk[k_] := With[{aa = 3 d/2 - 1 + k, bb = 1 - d/2 - k,
      mm = 2 d + l + 2 k - 1},
    Beta[aa, l + 1] Pochhammer[n + 1, l]/l!
      Pochhammer[bb, mm]/Pochhammer[n + bb, mm]];
  RF = Factor[(5/2) Rk[0] - (9/2) Rk[1]];
  norm = (n + d)/(n + 1);
  omega = d + l + 2 n;
  mixedTerm = Factor[norm RF^2 (2 omega/(3^2 - omega^2))];
  mixedExact = FullSimplify[Sum[mixedTerm, {n, 0, Infinity}]];
  sameExact = FullSimplify[Sum[norm RF^2 (2 omega/(8^2 - omega^2)),
      {n, 0, Infinity}]];
  directChecks = Table[FullSimplify[
    Integrate[x^(3 d/2 - 2) (1 - x)^l (5/2 - 9 x/2)
      Expand[JacobiP[ni, d - 1, l, 1 - 2 x]], {x, 0, 1}]
      - (RF /. n -> ni)], {ni, 0, 5}];

  (* The source below is intentionally incompatible with same-sign Omega=3.
     Its cubic periods show why the degree condition is needed in the proof;
     no unproved period-independence claim is inferred. *)
  badR = -60/((4 n - 3) (4 n + 1) (4 n + 5) (4 n + 9));
  badOmega = 3/2 + 2 n;
  incompatible = FullSimplify[Sum[badR^2 2 badOmega/(9 - badOmega^2),
      {n, 0, Infinity}]];

  hyp[k_, j_, om_] := Module[{aa, ab, zz},
    aa = 3 d/2 - 1 + k;
    ab = 3 d/2 - 1 + j;
    zz = (d + l - om)/2;
    -Pochhammer[d, l] Beta[aa, l + 1] Beta[ab, l + 1]/(2 l! zz)
      HypergeometricPFQ[{l + 1, d + l, d - aa, d - ab, zz},
        {d, aa + l + 1, ab + l + 1, zz + 1}, 1]];
  hyperMixed = N[Total[Table[(25/4) hyp[0, 0, om]
      - (45/2) hyp[0, 1, om] + (81/4) hyp[1, 1, om],
      {om, {3, -3}}]], 40];
  hyperSame = N[Total[Table[(25/4) hyp[0, 0, om]
      - (45/2) hyp[0, 1, om] + (81/4) hyp[1, 1, om],
      {om, {8, -8}}]], 40];
  checks = {Abs[hyperMixed - N[mixedExact, 40]] < 10^-35,
    Abs[hyperSame - N[sameExact, 40]] < 10^-35};

  <|"MomentRational" -> RF,
    "MomentReflectionResidual" -> Factor[(RF /. n -> -n - d - l) - norm RF],
    "WeightReflectionResidual" -> Factor[(norm /. n -> -n - d - l) norm - 1],
    "PairedReflectionResidual" -> Factor[(mixedTerm /. n -> -n - d - l) + mixedTerm],
    "DirectMomentResiduals" -> directChecks,
    "MixedPairedPartialFractions" -> Apart[mixedTerm, n],
    "MixedExact" -> mixedExact,
    "SameSignExact" -> sameExact,
    "HypergeometricChecks1e-35" -> checks,
    "IncompatibleSourceExact" -> incompatible,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]]
