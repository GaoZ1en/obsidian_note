(* ::Package:: *)

(* ===================================================================== *)
(*  Symplectic reduction of 1+1-dimensional Maxwell gluing              *)
(* ===================================================================== *)

ClearAll["Global`*"];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

length1 = 3/5;
length2 = 7/5;
coupling = 2;

jRegional = {
  {0, 0, 1, 0},
  {0, 0, 0, 1},
  {-1, 0, 0, 0},
  {0, -1, 0, 0}
};
jGlobal = {{0, 1}, {-1, 0}};

(* Gauge-fixed embedding of (a,Pi) into                          *)
(* (a1,a2,Pi1,Pi2), with a1=a2=a/2 and Pi1=Pi2=Pi.             *)
embedding = {
  {1/2, 0},
  {1/2, 0},
  {0, 1},
  {0, 1}
};

constraintGradient = {0, 0, 1, -1};
gaugeVector = jRegional . constraintGradient;

regionalHamiltonian = DiagonalMatrix[{
  0, 0, coupling^2 length1, coupling^2 length2
}];
globalHamiltonian = DiagonalMatrix[{
  0, coupling^2 (length1 + length2)
}];

assert[
  "Gauss matching moment map generates the relative interface gauge shift",
  gaugeVector == {1, -1, 0, 0}
];
assert[
  "symplectic reduction gives the global canonical form",
  Transpose[embedding] . jRegional . embedding == jGlobal
];
assert[
  "reduced Hamiltonian equals the uncut electric-flux Hamiltonian",
  Transpose[embedding] . regionalHamiltonian . embedding
    == globalHamiltonian
];

(* The gauge-invariant coordinate and a convenient constraint-surface    *)
(* extension of the common momentum have unit Poisson bracket.           *)
globalWilsonGradient = {1, 1, 0, 0};
commonFluxGradient = {0, 0, 1/2, 1/2};
assert[
  "global Wilson line and common electric flux are canonical",
  globalWilsonGradient . jRegional . commonFluxGradient == 1
];
assert[
  "global Wilson line is invariant under the interface gauge shift",
  globalWilsonGradient . gaugeVector == 0
];

(* Compact U(1): regional flux labels must match. *)
fluxLabels = Range[-3, 3];
regionalPhysicalEnergies = Table[
  coupling^2/2 (length1 n^2 + length2 n^2),
  {n, fluxLabels}
];
globalFluxEnergies = Table[
  coupling^2/2 (length1 + length2) n^2,
  {n, fluxLabels}
];
assert[
  "compact-U(1) flux-sector energies agree after n1=n2",
  regionalPhysicalEnergies == globalFluxEnergies
];

(* There is no restoring term for the Wilson-line coordinate. The       *)
(* physical system is a compact rotor (or a free particle for R gauge    *)
(* group), not a harmonic edge oscillator.                               *)
assert[
  "no spurious edge-oscillator potential",
  globalHamiltonian[[1, 1]] == 0 && Det[globalHamiltonian] == 0
];

If[TrueQ[testFailed],
  Print["ERROR: 1+1 Maxwell checks failed."];
  $Failed,
  Print["All 1+1 Maxwell checks passed."]
];
