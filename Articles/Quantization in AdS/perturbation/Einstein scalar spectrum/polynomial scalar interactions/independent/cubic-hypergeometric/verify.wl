(* Independent radial-sum checks; Wolfram Engine 14.3.
   Evaluate with Get[".../verify.wl"]. No parent source is loaded.
   This file writes no files. Every returned check includes diagnostics. *)
Block[{$Messages = {}, $MessageList = {}, $MaxExtraPrecision = 10000},
 Module[{x, n, w, cases, moments, d, l, k, a, direct, formula,
   kernel, rationalTerm, exactSum, exactResidual,
   excited, halfLeft, halfRight, halfClosed, r0, r1, halfRationalResidual,
   sourceF, sourceG, directR, d2, mf, mg, meromorphic, residue, qEven,
   u, v, coeff, qHyper, qExact, qLeft, qRight},

  cases = {{3/2, 0, 0, 0}, {3/2, 0, 0, 1}, {3/2, 0, 2, 5},
    {5/3, 2, 1, 4}, {3, 1, 2, 6}, {4, 2, 0, 2},
    {4, 2, 3, 4}, {6, 1, 2, 5}};
  moments = Table[
    {d, l, k, n} = pars;
    a = 3 d/2 - 1 + k;
    direct = Integrate[x^(a - 1) (1 - x)^l
       Expand[JacobiP[n, d - 1, l, 1 - 2 x]], {x, 0, 1}];
    formula = Beta[a, l + 1] Pochhammer[l + 1, n] Pochhammer[d - a, n]
       /(n! Pochhammer[a + l + 1, n]);
    <|"Parameters" -> pars, "Direct" -> direct,
      "Formula" -> FullSimplify[formula],
      "Residual" -> FullSimplify[direct - formula]|>,
    {pars, cases}];
  Clear[n];

  kernel[dd_, ll_, kk_, jj_, om_] := Module[{aa, ab, zz},
    aa = 3 dd/2 - 1 + kk;
    ab = 3 dd/2 - 1 + jj;
    zz = (dd + ll - om)/2;
    -Pochhammer[dd, ll] Beta[aa, ll + 1] Beta[ab, ll + 1]/(2 ll! zz)
      HypergeometricPFQ[{ll + 1, dd + ll, dd - aa, dd - ab, zz},
        {dd, aa + ll + 1, ab + ll + 1, zz + 1}, 1]];

  rationalTerm = 900/((3 - 2 n)
     ((2 n - 1) (2 n + 1) (2 n + 3) (2 n + 5) (2 n + 7))^2);
  exactSum = Sum[rationalTerm, {n, 0, Infinity}];
  exactResidual = FullSimplify[kernel[3, 0, 0, 0, 6] - exactSum];

  excited[om_] := (9/4) kernel[3/2, 0, 0, 0, om]
     - (15/2) kernel[3/2, 0, 0, 1, om]
     + (25/4) kernel[3/2, 0, 1, 1, om];
  halfClosed = {(-76 + 72 Catalan + 9 Pi^2)/192,
    (-622036 + 771960 Catalan + 96495 Pi^2)/11010048,
    (-3308 + 264 Catalan + 3 Pi (64 + 11 Pi))/24576};
  r0 = 4/((4 n + 1) (4 n + 5));
  r1 = 12 (8 n^2 + 12 n - 1)/((4 n - 3) (4 n + 1) (4 n + 5) (4 n + 9));
  halfRationalResidual = FullSimplify[{
      Sum[r0^2/(3 - 3/2 - 2 n), {n, 0, Infinity}],
      Sum[r1^2/(5 - 3/2 - 2 n), {n, 0, Infinity}],
      Sum[r1^2/(2 - 3/2 - 2 n), {n, 0, Infinity}]} - halfClosed];
  halfLeft = N[{kernel[3/2, 0, 0, 0, 3], excited[5], excited[2]}, 45];
  halfRight = N[halfClosed, 45];

  sourceF = 1 + 2 x;
  sourceG = 1 - x + 3 x^2;
  directR[P_, nn_] := Integrate[x^4 (1 - x)^2 P
      Expand[JacobiP[nn, 3, 2, 1 - 2 x]], {x, 0, 1}];
  d2[nn_] := Pochhammer[4, nn + 2] nn!/((nn + 2)! Pochhammer[4, nn]);
  mf = Table[directR[sourceF, nn], {nn, 0, 7}];
  mg = Table[directR[sourceG, nn], {nn, 0, 7}];
  meromorphic = Together[Total[Table[
     d2[nn] mf[[nn + 1]] mg[[nn + 1]]/(w - 6 - 2 nn), {nn, 0, 3}]]];
  residue = d2[1] mf[[2]] mg[[2]];
  qEven = Limit[meromorphic - residue/(w - 8), w -> 8];

  (* Independent shifted-tail test at an artificial Delta=3 pole N=1. *)
  u = {1, 3, -1/2, -1/2};
  v = {3, 9/2, 9/2};
  coeff[nn_] := Times @@ (Pochhammer[#, nn] & /@ u)
       /(nn! Times @@ (Pochhammer[#, nn] & /@ v));
  qHyper = -(2/49) (-1 + coeff[2]
      HypergeometricPFQ[Join[{1, 1}, u + 2], Join[{2, 3}, v + 2], 1]);
  qExact = 2/49 + Sum[900/((2 - 2 n)
      ((2 n - 1) (2 n + 1) (2 n + 3) (2 n + 5) (2 n + 7))^2),
      {n, 2, Infinity}];
  qLeft = N[qHyper, 45];
  qRight = N[qExact, 45];

  <|"MomentChecks" -> moments,
    "Delta3ExactSum" -> exactSum,
    "Delta3HypergeometricExactResidual" -> exactResidual,
    "Delta3RationalPartialFractions" -> Apart[rationalTerm, n],
    "HalfIntegralRationalSumExactResiduals" -> halfRationalResidual,
    "HalfIntegralHypergeometricValues" -> halfLeft,
    "HalfIntegralExactValues" -> halfRight,
    "HalfIntegralTolerance1e-40" -> (Abs[#] < 10^-40 & /@ (halfLeft - halfRight)),
    "EvenDeltaFDirectMoments" -> mf,
    "EvenDeltaGDirectMoments" -> mg,
    "EvenDeltaMeromorphicSum" -> meromorphic,
    "EvenDeltaResidue" -> residue,
    "EvenDeltaQFinitePart" -> qEven,
    "EvenDeltaQCheck" -> (qEven === 28807/17463600),
    "QSixF5ExactComparison" -> FullSimplify[qExact],
    "QSixF5Value" -> qLeft,
    "QSixF5Tolerance1e-40" -> (Abs[qLeft - qRight] < 10^-40),
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]]
