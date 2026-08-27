ClearAll["Global`*"];

(* Exact algebraic regression for calculation 05. *)

assumptions = w > 0 && wp > 0 && L > 0 &&
  Element[{w, wp, L, x1, y1, x2, y2}, Reals];

zeroQ[expr_] := TrueQ[FullSimplify[Together[expr] == 0, assumptions]];
checks = {};
addCheck[name_, value_] := AppendTo[checks, name -> TrueQ[value]];

c1 = x1 + I y1;
c2 = x2 + I y2;

omega12 = ComplexExpand[4 w Im[Conjugate[c1] c2],
  {x1, y1, x2, y2, w}];
omegaJ1J2 = ComplexExpand[
  4 w Im[Conjugate[I c1] (I c2)],
  {x1, y1, x2, y2, w}];
mu12 = ComplexExpand[4 w Im[Conjugate[c1] (I c2)],
  {x1, y1, x2, y2, w}];
muExpected = ComplexExpand[4 w Re[Conjugate[c1] c2],
  {x1, y1, x2, y2, w}];

addCheck["J squared is minus one", zeroQ[I (I c1) + c1]];
addCheck["J is symplectic", zeroQ[omegaJ1J2 - omega12]];
addCheck["mu equals Omega(c1,J c2)", zeroQ[mu12 - muExpected]];

muDiagonal = ComplexExpand[4 w Re[Conjugate[c1] c1],
  {x1, y1, w}];
addCheck["mu is positive for positive frequency",
  TrueQ[FullSimplify[muDiagonal >= 0, assumptions]]];

cpsNormSquared = 2 (w + w^2) (x1^2 + y1^2);
addCheck["mu continuity bound",
  TrueQ[FullSimplify[2 cpsNormSquared - muDiagonal >= 0, assumptions]]];

oneParticleInner = ComplexExpand[2 w Conjugate[c1] c2,
  {x1, y1, x2, y2, w}];
addCheck["twice imaginary one-particle product is Omega",
  zeroQ[2 Im[oneParticleInner] - omega12]];
addCheck["twice real one-particle product is mu",
  zeroQ[2 Re[oneParticleInner] - mu12]];

classicalEnergy = 2 w^2 (x1^2 + y1^2);
kNormDensity = 2 w (x1^2 + y1^2);
addCheck["K-h-K equals classical energy",
  zeroQ[w kNormDensity - classicalEnergy]];
addCheck["physical-time energy factor",
  zeroQ[(w/L) kNormDensity - classicalEnergy/L]];

(* One diagonal spectral oscillator.  Commuting placeholders suffice for the
   aa and ad-ad coefficients; operator ordering is restored afterward by
   aa ad = ad aa + 1. *)
qOsc = (aa + ad)/Sqrt[2 w];
pOsc = (-I w aa + I w ad)/Sqrt[2 w];
hOsc = Expand[(pOsc^2 + w^2 qOsc^2)/2];
addCheck["oscillator aa coefficient vanishes",
  zeroQ[Coefficient[hOsc, aa, 2]]];
addCheck["oscillator ad-ad coefficient vanishes",
  zeroQ[Coefficient[hOsc, ad, 2]]];
addCheck["oscillator mixed coefficient is omega",
  zeroQ[Coefficient[Coefficient[hOsc, aa, 1], ad, 1] - w]];

continuumAA = (-w wp + wp^2)/(4 Sqrt[w wp]);
continuumMixed = (w wp + wp^2)/(4 Sqrt[w wp]);
addCheck["on-shell continuum aa coefficient vanishes",
  zeroQ[continuumAA /. wp -> w]];
addCheck["each on-shell mixed ordering contributes omega/2",
  zeroQ[(continuumMixed /. wp -> w) - w/2]];

Do[
  sj = -Product[(n - I w)/(n + I w), {n, 1, j}];
  unitResidual = ComplexExpand[sj Conjugate[sj] - 1, {w}];
  addCheck["j=" <> ToString[j] <> " scattering is one-particle unitary",
    zeroQ[unitResidual]];
  addCheck["j=" <> ToString[j] <> " scattering commutes with h_tau",
    zeroQ[w sj - sj w]];
  , {j, {1, 2, 3}}];

Print["Wolfram version: ", $Version];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL FOCK/HAMILTONIAN CHECKS PASSED"],
  Print["FOCK/HAMILTONIAN CHECKS FAILED"];
  Quit[1]
];
