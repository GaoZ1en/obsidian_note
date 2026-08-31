(* Exact algebraic regressions for the rigorous-CIVP frame dictionary. *)

ClearAll[assertZero];
assertZero[label_, expr_] := Module[{r = FullSimplify[expr]},
  If[TrueQ[r === 0] || TrueQ[And @@ Thread[Flatten[{r}] == 0]],
    Print["PASS ", label],
    Print["FAIL ", label, ": residual = ", InputForm[r]]; Exit[1]
  ]
];

Print["Finite double-null gravity: rigorous-CIVP dictionary checks"];

(* The symbols dM, dLogAPlus, and dLogAMinus denote cut derivatives. *)
Clear[omegaPlus, omegaMinus, dM, dLogAPlus, dLogAMinus];
zetaPlus = -omegaPlus - dLogAPlus;
zetaMinus = omegaMinus + dLogAMinus;

assertZero[
  "V42 the two branch torsion formulas agree",
  (zetaPlus - zetaMinus) /.
    {omegaMinus -> -dM - omegaPlus,
     dLogAMinus -> dM - dLogAPlus}
];

Clear[hatOmega, m];
symmetricRules = {
  omegaPlus -> hatOmega - dM/2,
  omegaMinus -> -hatOmega - dM/2,
  dLogAPlus -> dM/2,
  dLogAMinus -> dM/2
};
assertZero[
  "V43 symmetric normalized frame gives zeta=-hat omega on both branches",
  {zetaPlus + hatOmega, zetaMinus + hatOmega} /. symmetricRules
];
assertZero[
  "V43 symmetric frame satisfies aPlus aMinus exp(-m)=2",
  (Sqrt[2] Exp[m/2])^2 Exp[-m] - 2
];

(* Under the residual opposite boost, m and the symmetric scale split stay
   fixed while omegaPlus and hatOmega acquire +D b. *)
Clear[dBoost];
zetaBoosted = zetaPlus /. omegaPlus -> omegaPlus + dBoost;
assertZero[
  "V44 Luk torsion has boost law zeta -> zeta-D b",
  zetaBoosted - (zetaPlus - dBoost)
];
assertZero[
  "V44 zeta=-hat omega is boost equivariant",
  (zetaPlus /.
      {omegaPlus -> hatOmega - dM/2 + dBoost,
       dLogAPlus -> dM/2}) - (-(hatOmega + dBoost))
];

Print["PASS all rigorous-CIVP dictionary checks"];
Print["NOT PROVED: local existence, C1 dependence, finite-rectangle"];
Print["continuation, or any symplectic/nondegeneracy theorem."];
