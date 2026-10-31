(* Pure Lorentz/exterior algebra, Wolfram Language. No field equations are
   imposed until the explicitly displayed algebraic stationary point.
   eta=(-+++), epsilon_0123=+1, volume=e0^e1^e2^e3.
   kappa=8 Pi G4, r=1/beta. Run in a fresh kernel. *)
ClearAll["Global`*"];
Block[{$Messages = {}, $MessageList = {}},
 eta = {-1, 1, 1, 1};
 ep[ii__Integer] := Signature[{ii}];
 jj = {j0, j1, j2, j3};
 jSq = Sum[eta[[i]] jj[[i]]^2, {i, 4}];
 kk[i_, j_, m_] := aa eta[[i]] eta[[j]] Sum[
    ep[i, j, h, m] jj[[h]], {h, 4}] +
    bb (jj[[i]] KroneckerDelta[j, m] - jj[[j]] KroneckerDelta[i, m]);
 kt = Table[kk[i, j, m], {i, 4}, {j, 4}, {m, 4}];
 (* F_KK^IJ=K^I_P wedge K^PJ; compute four-form coefficient. *)
 qEC = Expand[Sum[ep[i, j, h, l] ep[i, j, m, n] eta[[p]]
     kt[[h, p, m]] kt[[p, l, n]],
     {i, 4}, {j, 4}, {h, 4}, {l, 4}, {m, 4}, {n, 4}, {p, 4}]/(4 kap)];
 qH = Expand[rr Sum[ep[i, j, m, n] eta[[i]] eta[[j]] eta[[p]]
     kt[[i, p, m]] kt[[p, j, n]],
     {i, 4}, {j, 4}, {m, 4}, {n, 4}, {p, 4}]/(2 kap)];
 source = Expand[ss Sum[kt[[i, j, m]] ep[i, j, h, m] jj[[h]] eta[[m]],
     {i, 4}, {j, 4}, {h, 4}, {m, 4}]];
 q = Factor[qEC + qH + source];
 reduced = Cancel[q/jSq];
 sol = First[Solve[{D[reduced, aa] == 0, D[reduced, bb] == 0}, {aa, bb}]];
 induced = Factor[q /. sol];
 inducedEC = Factor[induced /. rr -> 0];
 ratio = Cancel[induced/inducedEC];
 checks = <|
   "antisymmetric_contortion" -> And @@ Flatten[Table[
       Expand[kt[[i,j,m]]+kt[[j,i,m]]] === 0, {i,4},{j,4},{m,4}]],
   "EC_is_Lorentz_scalar" -> (PolynomialQ[reduced, {aa,bb,rr,ss}] && FreeQ[reduced, j0|j1|j2|j3]),
   "stationarity_a" -> (Factor[D[q,aa] /. sol] === 0),
   "stationarity_b" -> (Factor[D[q,bb] /. sol] === 0),
   "torsionless_when_source_zero" -> (Simplify[{aa,bb} /. sol /. ss -> 0] === {0,0}),
   "EC_limit_ratio" -> (Simplify[ratio /. rr -> 0] === 1),
   "even_Immirzi_ratio" -> (Cancel[ratio - (ratio /. rr -> -rr)] === 0)
 |>;
 report = <|"Definitions" -> <|"eta" -> eta, "epsilon0123" -> 1,
       "r" -> "1/beta", "kappa" -> "8 Pi G4",
       "source" -> "s K^{IJ}_m epsilon_{IJhm} J^h eta^{mm} volume"|>,
    "J2" -> ToString[jSq, InputForm],
    "Q_EC" -> ToString[Factor[qEC], InputForm],
    "Q_H" -> ToString[Factor[qH], InputForm],
    "Source" -> ToString[Factor[source], InputForm],
    "ReducedByJ2" -> ToString[reduced, InputForm],
    "StationaryContortion" -> ToString[sol, InputForm],
    "Induced" -> ToString[induced, InputForm],
    "InducedEC" -> ToString[inducedEC, InputForm],
    "Ratio" -> ToString[ratio, InputForm],
    "Checks" -> checks,
    "AllPassed" -> And @@ Values[checks],
    "Messages" -> (ToString[#, InputForm]& /@ $MessageList)|>;
 report
]
