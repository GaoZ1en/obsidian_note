(* Reproducible finite checks for Articles/null hypersurface/asymptotic flat/3d Maxwell.md *)

ClearAll["Global`*"];
$MaxExtraPrecision = 10000;

results = {};

record[name_String, value_] := Module[{ok = TrueQ[value]},
  AppendTo[results, <|"Name" -> name, "Passed" -> ok|>];
  Print[If[ok, "[PASS] ", "[FAIL] "], name];
  If[!ok, Print["  value: ", InputForm[value]]];
  ok
];

(* 1. Radial monomials and gauge primitives *)

ell[r_] := Log[r/r0];

radialDerivativeChecks = Table[
  FullSimplify[
    D[r^(-m) ell[r]^n, r]
      == r^(-m - 1) (n ell[r]^(n - 1) - m ell[r]^n),
    Assumptions -> r > 0 && r0 > 0 && m > 0
  ],
  {n, 0, 8}
];

record[
  "radial monomial derivative for log degrees 0 through 8",
  And @@ radialDerivativeChecks
];

nonresonantPrimitive[a_, n_Integer?NonNegative] :=
  r^(a + 1) Sum[
    (-1)^j Factorial[n]/Factorial[n - j]
      ell[r]^(n - j)/(a + 1)^(j + 1),
    {j, 0, n}
  ];

nonresonantChecks = Table[
  FullSimplify[
    D[nonresonantPrimitive[a, n], r] == r^a ell[r]^n,
    Assumptions -> r > 0 && r0 > 0 && a != -1
  ],
  {n, 0, 8}
];

record[
  "nonresonant coefficientwise radial primitive",
  And @@ nonresonantChecks
];

resonantChecks = Table[
  FullSimplify[
    D[ell[r]^(n + 1)/(n + 1), r] == r^(-1) ell[r]^n,
    Assumptions -> r > 0 && r0 > 0
  ],
  {n, 0, 8}
];

record[
  "unique r^-1 logarithmic resonance raises log degree by one",
  And @@ resonantChecks
];

(* 2. Exact coordinate action and leading divergence *)

metric = {
  {-1, -1, 0},
  {-1, 0, 0},
  {0, 0, r^2}
};
inverseMetric = Inverse[metric];
expectedInverseMetric = {
  {0, -1, 0},
  {-1, 1, 0},
  {0, 0, r^(-2)}
};

record[
  "Bondi metric inverse and determinant",
  FullSimplify[
    inverseMetric == expectedInverseMetric && Det[metric] == -r^2,
    Assumptions -> r > 0
  ]
];

fieldStrength = {
  {0, fur, fuphi},
  {-fur, 0, frphi},
  {-fuphi, -frphi, 0}
};
raisedFieldStrength = inverseMetric . fieldStrength . inverseMetric;
fieldStrengthSquare = Expand[
  Total[Flatten[fieldStrength raisedFieldStrength]]
];
expectedFieldStrengthSquare =
  2 (-fur^2 - 2 fuphi frphi/r^2 + frphi^2/r^2);

record[
  "exact F_mu_nu F^mu_nu in Bondi coordinates",
  FullSimplify[
    fieldStrengthSquare == expectedFieldStrengthSquare,
    Assumptions -> r > 0
  ]
];

coordinateDensity = Expand[-r fieldStrengthSquare/4];
expectedCoordinateDensity =
  r fur^2/2 + fuphi frphi/r - frphi^2/(2 r);

record[
  "exact coordinate Maxwell density",
  FullSimplify[
    coordinateDensity == expectedCoordinateDensity,
    Assumptions -> r > 0
  ]
];

leadingAuR = eLead/r;
leadingAphiR = cLead/(2 Sqrt[r]) + pLead/r;
leadingFuPhi = (
  cLeadDot Sqrt[r]
    + (pLeadDot - eLeadPhi) ell[r]
    + (qLeadDot - gLeadPhi)
);
leadingDensity = (
  r leadingAuR^2/2
    + leadingFuPhi leadingAphiR/r
    - leadingAphiR^2/(2 r)
);

record[
  "leading off-shell logarithmic density",
  FullSimplify[
    Limit[r leadingDensity, r -> Infinity]
      == (eLead^2 + cLead cLeadDot)/2,
    Assumptions -> r0 > 0
  ]
];

record[
  "radiative leading density is an endpoint derivative",
  FullSimplify[
    cLead cLeadDot/2
      == (D[(cLead + eps cLeadDot)^2/4, eps] /. eps -> 0)
  ]
];

(* 3. Counterterm cancellation through two field variations *)

bulkDivergence = (
  lambda eBoundary^2/2
    + lambda (cBoundaryPlus^2 - cBoundaryMinus^2)/4
);
countertermDivergence = -bulkDivergence;
regulatedDivergence = bulkDivergence + countertermDivergence;

shiftRules = {
  eBoundary -> eBoundary + eps1 dE1 + eps2 dE2,
  cBoundaryPlus -> cBoundaryPlus + eps1 dCp1 + eps2 dCp2,
  cBoundaryMinus -> cBoundaryMinus + eps1 dCm1 + eps2 dCm2
};

record[
  "counterterms cancel the regulated logarithmic value",
  FullSimplify[regulatedDivergence == 0]
];

record[
  "counterterms cancel the first field variation",
  FullSimplify[
    (D[regulatedDivergence /. shiftRules, eps1]
      /. {eps1 -> 0, eps2 -> 0}) == 0
  ]
];

record[
  "counterterms cancel the mixed second field variation",
  FullSimplify[
    (D[regulatedDivergence /. shiftRules, eps1, eps2]
      /. {eps1 -> 0, eps2 -> 0}) == 0
  ]
];

cutoffFieldChecks = Table[
  FullSimplify[
    Limit[
      Log[R/r0] (
        (eBoundary + dE R^(-1/2) Log[R/r0]^k)^2
          - eBoundary^2
      ),
      R -> Infinity
    ] == 0,
    Assumptions -> r0 > 0
  ],
  {k, 0, 8}
];

record[
  "normal-field-strength cutoff representative has vanishing finite mismatch",
  And @@ cutoffFieldChecks
];

(* 4. Bessel--Laplace and Hankel--Mellin threshold coefficient *)

tCoefficient[nu_, x_] :=
  Divide[
    2^(1 - nu) I^(-1 - x - nu)
      Gamma[1 + x + nu] Gamma[-x - 1/2],
    Gamma[(1 + nu - x)/2] Gamma[(nu - x)/2]
  ];

residueFormula[nu_, j_] :=
  Divide[
    2^(1 - nu) I^(-j - nu - 1/2)
      Gamma[j + nu + 1/2] (-1)^(j + 1),
    Factorial[j]
      Gamma[(nu - j + 3/2)/2]
      Gamma[(nu - j + 1/2)/2]
  ];

{nuNumeric, alphaNumeric, rNumeric, uNumeric, epsilonNumeric} =
  {1, N[3/10, 50], N[7, 50], N[2/5, 50], N[7/10, 50]};
sNumeric = epsilonNumeric + I (rNumeric + uNumeric);

integralNumeric = 2 NIntegrate[
  w^alphaNumeric BesselJ[nuNumeric, w rNumeric] Exp[-sNumeric w],
  {w, 0, 100},
  WorkingPrecision -> 50,
  AccuracyGoal -> 30,
  PrecisionGoal -> 30,
  Method -> "GlobalAdaptive"
];

closedNumeric = (
  2^(1 - nuNumeric) rNumeric^nuNumeric
    Gamma[1 + alphaNumeric + nuNumeric]
    /sNumeric^(1 + alphaNumeric + nuNumeric)
    Hypergeometric2F1Regularized[
      (1 + alphaNumeric + nuNumeric)/2,
      (2 + alphaNumeric + nuNumeric)/2,
      1 + nuNumeric,
      -rNumeric^2/sNumeric^2
    ]
);

record[
  "regulated Bessel--Laplace transform",
  Abs[integralNumeric - closedNumeric] < 10^(-25)
];

zeroGrid = Flatten[
  Table[
    tCoefficient[nu, m],
    {nu, 0, 5},
    {m, nu, nu + 5}
  ],
  1
];

record[
  "threshold coefficient zeros for m >= nu on audit grid",
  And @@ (# == 0 & /@ zeroGrid)
];

belowZeroGrid = Flatten[
  Table[
    tCoefficient[nu, m],
    {nu, 1, 5},
    {m, 0, nu - 1}
  ],
  1
];

record[
  "threshold coefficient is nonzero for 0 <= m < nu on audit grid",
  And @@ (# != 0 & /@ belowZeroGrid)
];

residueGrid = Flatten[
  Table[
    FullSimplify[
      Residue[tCoefficient[nu, aa], {aa, j - 1/2}]
        == residueFormula[nu, j]
    ],
    {nu, 0, 3},
    {j, 0, 3}
  ],
  1
];

record[
  "displayed half-integer collision residue",
  And @@ residueGrid
];

nonzeroResidueGrid = Flatten[
  Table[
    FullSimplify[residueFormula[nu, j]],
    {nu, 0, 5},
    {j, 0, 5}
  ],
  1
];

record[
  "collision residue is nonzero on audit grid",
  And @@ (# != 0 & /@ nonzeroResidueGrid)
];

(* 5. Reduced two-form and kernel models *)

ibpCoefficient =
  FullSimplify[D[v[r], r]/r + D[v[r]/r, r]];

record[
  "null-lid integration-by-parts kernel operator",
  FullSimplify[
    ibpCoefficient == 2 v'[r]/r - v[r]/r^2
  ]
];

record[
  "sqrt(r) solves the null-lid kernel ODE",
  FullSimplify[
    2 r D[Sqrt[r] f, r] - Sqrt[r] f == 0,
    Assumptions -> r > 0
  ]
];

affineA[u_] := a0 + u am;
affineB[u_] := b0 + u bm;
affinePairing = Integrate[
  D[affineA[u], u] affineB[u]
    - D[affineB[u], u] affineA[u],
  {u, 0, 1}
];

record[
  "affine endpoint form equals delta-memory wedge delta-initial-value",
  FullSimplify[affinePairing == am b0 - bm a0]
];

record[
  "common radiative shift pairs with memory",
  FullSimplify[
    (affinePairing /. {a0 -> f, am -> 0})
      == -f bm
  ]
];

fullPolarizationMatrix = {
  {0, 1, 0, 0},
  {-1, 0, 0, 0},
  {0, 0, 0, 1},
  {0, 0, -1, 0}
};
fixedMemoryMatrix = fullPolarizationMatrix[[{1, 2, 4}, {1, 2, 4}]];
fixedChargeMatrix = fullPolarizationMatrix[[{2, 3, 4}, {2, 3, 4}]];

record[
  "free-charge free-memory finite-dimensional model is symplectic",
  MatrixRank[fullPolarizationMatrix] == 4
];

record[
  "fixed-memory model has the common endpoint shift as one-dimensional kernel",
  MatrixRank[fixedMemoryMatrix] == 2
    && NullSpace[fixedMemoryMatrix] == {{0, 0, 1}}
];

record[
  "fixed-charge model has the integrated Coulomb orbit as one-dimensional kernel",
  MatrixRank[fixedChargeMatrix] == 2
    && NullSpace[fixedChargeMatrix] == {{1, 0, 0}}
];

gZeroMean[u_] := -b/2 - c/3 + b u + c u^2;
alphaPrimitive[u_] := Integrate[gZeroMean[x], {x, 0, u}];

record[
  "zero-u-integral Coulomb history is an endpoint-trivial primitive",
  FullSimplify[
    D[alphaPrimitive[u], u] == gZeroMean[u]
      && alphaPrimitive[0] == 0
      && alphaPrimitive[1] == 0
  ]
];

passed = Count[results, KeyValuePattern["Passed" -> True]];
failed = Count[results, KeyValuePattern["Passed" -> False]];

Print["Summary: ", passed, " passed, ", failed, " failed."];

If[failed == 0, Exit[0], Exit[1]];
