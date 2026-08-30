(* Exact regression checks for the first finite double-null gravity round. *)

ClearAll[assertZero, assertTrue];
assertZero[label_, expr_] := Module[{r = FullSimplify[expr]},
  If[TrueQ[r === 0] || TrueQ[And @@ Thread[Flatten[{r}] == 0]],
    Print["PASS ", label],
    Print["FAIL ", label, ": residual = ", InputForm[r]]; Exit[1]
  ]
];
assertTrue[label_, expr_] := Module[{r = FullSimplify[expr]},
  If[TrueQ[r],
    Print["PASS ", label],
    Print["FAIL ", label, ": value = ", InputForm[r]]; Exit[1]
  ]
];

Print["Finite double-null gravity: exact identity checks"];

(* V0: exact matrix realization of the corrected projector. *)
Clear[mu];
g = {{0, mu, 0, 0}, {mu, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}};
ellPlus = {1, 0, 0, 0};
ellMinus = {0, 1, 0, 0};
ellPlusCov = g . ellPlus;
ellMinusCov = g . ellMinus;
qCov = FullSimplify[g - (Outer[Times, ellPlusCov, ellMinusCov] +
      Outer[Times, ellMinusCov, ellPlusCov])/mu];
qMixed = FullSimplify[qCov . Inverse[g]];
assertZero["V0 projector annihilates ell_+", qCov . ellPlus];
assertZero["V0 projector annihilates ell_-", qCov . ellMinus];
assertZero["V0 projector is idempotent", qMixed . qMixed - qMixed];

(* V1: nonlinear affine Raychaudhuri and area reconstruction. *)
Clear[lambda, theta0, Omega0, L];
F[lambda_] := 1 + lambda theta0/2;
theta[lambda_] := theta0/F[lambda];
area[lambda_] := Omega0 F[lambda]^2;
assertZero["V1 Raychaudhuri dtheta + theta^2/2",
  D[theta[lambda], lambda] + theta[lambda]^2/2];
assertZero["V1 area transport dOmega - theta Omega",
  D[area[lambda], lambda] - theta[lambda] area[lambda]];
assertZero["V1 initial expansion", theta[0] - theta0];
assertZero["V1 initial area", area[0] - Omega0];

(* V2: one-form pullback and its field-space curl. *)
deltaArea = D[area[lambda], Omega0] dOmega0 +
  D[area[lambda], theta0] dTheta0;
pullbackIntegrand = FullSimplify[theta[lambda] deltaArea];
pullback = FullSimplify[Integrate[pullbackIntegrand, {lambda, 0, L}],
  Assumptions -> L > 0];
expectedPullback = (theta0 L + theta0^2 L^2/4) dOmega0 +
  Omega0 theta0 L^2 dTheta0/2;
assertZero["V2 exact pullback integral", pullback - expectedPullback];

(* Theta = A dOmega0 + B dtheta0 with the physical factor -C_G/2 omitted.
   Curl coefficient before that factor is dB/dOmega0 - dA/dtheta0 = -L. *)
Acoef = Coefficient[expectedPullback, dOmega0];
Bcoef = Coefficient[expectedPullback, dTheta0];
curlBare = FullSimplify[D[Bcoef, Omega0] - D[Acoef, theta0]];
assertZero["V2 nonlinear curl collapses to -L", curlBare + L];
assertZero["V2 physical curl coefficient is C_G L/2",
  (-cG/2) curlBare - cG L/2];

(* Outer area differential used in the obstruction. *)
outerArea = area[L];
outerDifferential = D[outerArea, Omega0] dOmega0 +
  D[outerArea, theta0] dTheta0;
expectedOuterDifferential = F[L]^2 dOmega0 + Omega0 F[L] L dTheta0;
assertZero["V2 outer-cut area differential", outerDifferential - expectedOuterDifferential];

(* V3: kappa versus kappa+theta, including both endpoint shifts. *)
thetaBoundaryIntegral = FullSimplify[Integrate[area[lambda] theta[lambda],
    {lambda, 0, L}], Assumptions -> L > 0];
assertZero["V3 integral Omega theta is outer minus initial area",
  thetaBoundaryIntegral - (area[L] - area[0])];
sheetRepresentativeShift = thetaBoundaryIntegral;
jointRepresentativeShift = -area[L] + area[0];
assertZero["V3 sheet plus both joint shifts cancel",
  sheetRepresentativeShift + jointRepresentativeShift];
assertZero["V3 variation in Omega0 also cancels",
  D[sheetRepresentativeShift + jointRepresentativeShift, Omega0]];
assertZero["V3 variation in theta0 also cancels",
  D[sheetRepresentativeShift + jointRepresentativeShift, theta0]];

(* V4: a local unimodular conformal-metric chart. *)
Clear[phi, phiDot, deltaPhi, Omega, OmegaDot];
barq = DiagonalMatrix[{Exp[2 phi], Exp[-2 phi]}];
barqInv = Inverse[barq];
barqDot = D[barq, phi] phiDot;
deltaBarq = D[barq, phi] deltaPhi;
q = Omega barq;
qInv = Inverse[q];
qDot = OmegaDot barq + Omega barqDot;
Bcov = qDot/2;
thetaFromMetric = FullSimplify[Tr[qInv . Bcov]];
sigmaCov = FullSimplify[Bcov - thetaFromMetric q/2];
sigmaContra = FullSimplify[qInv . sigmaCov . qInv];
sigmaTilde = FullSimplify[Omega sigmaContra];
assertZero["V4 det bar q is one", Det[barq] - 1];
assertZero["V4 conformal velocity is tracefree", Tr[barqInv . barqDot]];
assertZero["V4 expansion is OmegaDot/Omega",
  thetaFromMetric - OmegaDot/Omega];
assertZero["V4 shear is Omega barqDot/2",
  sigmaCov - Omega barqDot/2];
assertZero["V4 densitized shear contraction",
  Tr[Transpose[sigmaTilde] . deltaBarq]/2 - 2 phiDot deltaPhi];

Print["PASS all declared identities"];
Print["NOT PROVED: outer-joint polarization or cancellation, vacuum development,"];
Print["NOT PROVED: Stage-2 reduction, nondegeneracy, completeness, positivity,"];
Print["NOT PROVED: surjectivity, continuum topology, or a reduced action."];
