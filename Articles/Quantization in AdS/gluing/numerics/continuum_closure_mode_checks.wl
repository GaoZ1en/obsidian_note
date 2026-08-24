(* ::Package:: *)

(*
  Exact mode-level checks for ../continuum-closure-theorem.md.

  These checks verify the displayed connected-mode formulas, regional
  restrictions, interface parity, outer boundary values, Klein-Gordon
  residual, oriented-flux cancellation, and the cross-region sign. The
  Mosco, resolvent, and wave-convergence arguments are analytic theorems and
  are not inferred from this finite symbolic check.
*)

ClearAll["Global`*"];

globalMode[r_Integer, x_, ell_] :=
  Sin[r Pi (x + ell)/(2 ell)]/Sqrt[ell];

regionOneMode[r_Integer, y_, ell_] :=
  Sin[r Pi y/(2 ell)]/Sqrt[ell];

regionTwoMode[r_Integer, y_, ell_] :=
  (-1)^(r + 1) Sin[r Pi y/(2 ell)]/Sqrt[ell];

frequency[r_Integer, ell_, mass_] :=
  Sqrt[mass^2 + (r Pi/(2 ell))^2];

testedModes = Range[1, 16];
testedOddLabels = Range[0, 7];

restrictionChecks = Table[
  Assuming[ell > 0,
    FullSimplify[{
      globalMode[r, y - ell, ell] - regionOneMode[r, y, ell],
      globalMode[r, ell - y, ell] - regionTwoMode[r, y, ell]
    }] === {0, 0}
  ],
  {r, testedModes}
];

outerBoundaryChecks = Table[
  Assuming[ell > 0,
    FullSimplify[{
      globalMode[r, -ell, ell],
      globalMode[r, ell, ell]
    }] === {0, 0}
  ],
  {r, testedModes}
];

interfaceParityChecks = And[
  And @@ Table[
    Assuming[ell > 0,
      FullSimplify[globalMode[2 p, 0, ell]] === 0
    ],
    {p, 1, 8}
  ],
  And @@ Table[
    Assuming[ell > 0,
      FullSimplify[
        globalMode[2 p + 1, 0, ell] - (-1)^p/Sqrt[ell]
      ] === 0
    ],
    {p, testedOddLabels}
  ]
];

orientedFluxChecks = Table[
  Assuming[ell > 0,
    FullSimplify[
      D[regionOneMode[r, y, ell], y] +
      D[regionTwoMode[r, y, ell], y] /. y -> ell
    ] === 0
  ],
  {r, testedModes}
];

kgResidualChecks = Table[
  Assuming[ell > 0 && mass > 0,
    FullSimplify[
      -D[
        Exp[-I frequency[r, ell, mass] t] globalMode[r, x, ell],
        {t, 2}
      ] +
      D[
        Exp[-I frequency[r, ell, mass] t] globalMode[r, x, ell],
        {x, 2}
      ] -
      mass^2 Exp[-I frequency[r, ell, mass] t] globalMode[r, x, ell]
    ] === 0
  ],
  {r, testedModes}
];

crossRegionChecks = Table[
  Assuming[ell > 0,
    FullSimplify[
      globalMode[r, y1 - ell, ell] globalMode[r, ell - y2, ell] -
      (-1)^(r + 1) Sin[r Pi y1/(2 ell)] Sin[r Pi y2/(2 ell)]/ell
    ] === 0
  ],
  {r, testedModes}
];

allChecksPassed = And[
  And @@ restrictionChecks,
  And @@ outerBoundaryChecks,
  interfaceParityChecks,
  And @@ orientedFluxChecks,
  And @@ kgResidualChecks,
  And @@ crossRegionChecks
];

Print[
  InputForm[
    <|
      "RestrictionChecks" -> restrictionChecks,
      "OuterBoundaryChecks" -> outerBoundaryChecks,
      "InterfaceParityChecks" -> interfaceParityChecks,
      "OrientedFluxChecks" -> orientedFluxChecks,
      "KGResidualChecks" -> kgResidualChecks,
      "CrossRegionChecks" -> crossRegionChecks,
      "AllChecksPassed" -> allChecksPassed
    |>
  ]
];

If[! TrueQ[allChecksPassed], Exit[1]];
