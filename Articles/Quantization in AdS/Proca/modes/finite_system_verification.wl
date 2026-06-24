(* ::Package:: *)

(* Verification companion for
     Articles/Quantization in AdS/Proca/modes/finite system.md

   The note studies a massive Proca field in global AdS3,

     ds^2 = -(1+r^2) dt^2 + dr^2/(1+r^2) + r^2 dphi^2.

   This file checks the algebra directly in Wolfram Language:

   1. derive div A and the wall condition d_r(r A^r)=0;
   2. derive the Proca equations from the metric and reduce the spatial
      equations to the psi,varphi system after using div A=0;
   3. check the Phi_+/Phi_- helicity decoupling and the effective angular
      momenta |m-1| and |m+1|;
   4. verify that the regular hypergeometric branch solves the radial ODE;
   5. derive the finite-wall determinant from the two wall equations;
   6. verify the generic non-integer-mu leading asymptotic coefficient;
   7. reproduce the numerical roots near omega=3 for mu=2,m=1.

   The last item intentionally compares two quantities:
     - the roots of the determinant D_{r0} written in the note;
     - the numbers printed at the end of the note.

   The printed numbers match the zero of the single + helicity branch
   R_{|m-1|}(r0), not the zero of the determinant D_{r0}.
*)

ClearAll["Global`*"];

coords = {t, r, ph};
f[x_] := 1 + x^2;

metric = DiagonalMatrix[{-f[r], 1/f[r], r^2}];
invMetric = Simplify[Inverse[metric]];
sqrtMinusG = r;

(* ---------------------------------------------------------------------- *)
(* Metric-level Proca definitions                                          *)
(* ---------------------------------------------------------------------- *)

(* The input fields are contravariant components {A^t,A^r,A^phi}.  For an
   antisymmetric field strength one can use

     nabla_nu F^{nu mu} = 1/sqrt(-g) d_nu(sqrt(-g) F^{nu mu}).

   This avoids writing the Christoffel symbols explicitly, while still
   deriving the component equations from the metric. *)
procaEomFor[upFields_List] := Module[{downFields, fDown, fUp},
  downFields = Simplify[metric.upFields];
  fDown[a_, b_] :=
    D[downFields[[b]], coords[[a]]] -
      D[downFields[[a]], coords[[b]]];
  fUp[a_, b_] :=
    Sum[invMetric[[a, c]] invMetric[[b, d]] fDown[c, d],
      {c, 3}, {d, 3}];
  FullSimplify[
    Table[
      (1/sqrtMinusG) Sum[D[sqrtMinusG fUp[nu, muIndex],
          coords[[nu]]], {nu, 3}] -
        massMu^2 upFields[[muIndex]],
      {muIndex, 3}
    ]
  ]
];

divergenceOf[upFields_List] :=
  FullSimplify[
    (1/sqrtMinusG) Sum[D[sqrtMinusG upFields[[i]], coords[[i]]],
      {i, 3}]
  ];

upGeneral = {at[t, r, ph], ar[t, r, ph], aph[t, r, ph]};

divergenceCheck = FullSimplify[
  divergenceOf[upGeneral] -
    (D[at[t, r, ph], t] + D[ar[t, r, ph], r] +
      ar[t, r, ph]/r + D[aph[t, r, ph], ph])
];

(* If A^t and A^phi vanish as functions on the wall, their tangential
   derivatives vanish there.  The Proca constraint then leaves

     d_r A^r + A^r/r = (1/r) d_r(r A^r).
*)
wallRadialConditionCheck = FullSimplify[
  (divergenceOf[upGeneral] /.
      {Derivative[1, 0, 0][at][t, r, ph] -> 0,
       Derivative[0, 0, 1][aph][t, r, ph] -> 0}) -
    (1/r) D[r ar[t, r, ph], r]
];

(* ---------------------------------------------------------------------- *)
(* Reduction to the coupled psi,varphi equations                           *)
(* ---------------------------------------------------------------------- *)

(* Use the note's definitions

     psi = A^r,       varphi = r A^phi.

   The t-component is kept as A^t until the divergence constraint is used.
*)
upPsiVarphi = {at[t, r, ph], psi[t, r, ph], varphi[t, r, ph]/r};
eomPsiVarphi = procaEomFor[upPsiVarphi];

(* div A=0 gives d_t A^t in terms of psi and varphi.  The spatial Proca
   equations contain only d_t A^t, d_t d_r A^t, and d_t d_phi A^t, so these
   three substitutions are enough. *)
dtAtFromConstraint =
  -((1/r) D[r psi[t, r, ph], r] +
    D[varphi[t, r, ph]/r, ph]);

constraintRules = {
  Derivative[1, 0, 0][at][t, r, ph] -> dtAtFromConstraint,
  Derivative[1, 1, 0][at][t, r, ph] -> D[dtAtFromConstraint, r],
  Derivative[1, 0, 1][at][t, r, ph] -> D[dtAtFromConstraint, ph]
};

procaDop[x_] :=
  f[r] D[x, {r, 2}] + ((1 + 3 r^2)/r) D[x, r] -
    (1/f[r]) D[x, {t, 2}] + (1/r^2) D[x, {ph, 2}] +
    (1 - massMu^2 - 1/r^2) x;

expectedPsiEquation =
  procaDop[psi[t, r, ph]] - (2/r^2) D[varphi[t, r, ph], ph];

expectedVarphiEquation =
  procaDop[varphi[t, r, ph]] + (2/r^2) D[psi[t, r, ph], ph];

psiEquationCheck = FullSimplify[
  (eomPsiVarphi[[2]] /. constraintRules) - expectedPsiEquation
];

(* The phi component of the vector equation is an equation for A^phi.
   Multiplying it by r gives the equation for varphi=r A^phi. *)
varphiEquationCheck = FullSimplify[
  (r eomPsiVarphi[[3]] /. constraintRules) - expectedVarphiEquation
];

(* ---------------------------------------------------------------------- *)
(* Helicity variables Phi_+ and Phi_-                                      *)
(* ---------------------------------------------------------------------- *)

(* The note defines

     Phi_+ = (varphi + i psi)/2,   Phi_- = (varphi - i psi)/2.

   Hence varphi = Phi_+ + Phi_- and psi = -i(Phi_+ - Phi_-).
*)
varphiInPhi = phiP[t, r, ph] + phiM[t, r, ph];
psiInPhi = -I (phiP[t, r, ph] - phiM[t, r, ph]);

psiEquationInPhi =
  procaDop[psiInPhi] - (2/r^2) D[varphiInPhi, ph];

varphiEquationInPhi =
  procaDop[varphiInPhi] + (2/r^2) D[psiInPhi, ph];

phiPDecouplingCheck = FullSimplify[
  (varphiEquationInPhi + I psiEquationInPhi)/2 -
    (procaDop[phiP[t, r, ph]] -
      (2 I/r^2) D[phiP[t, r, ph], ph])
];

phiMDecouplingCheck = FullSimplify[
  (varphiEquationInPhi - I psiEquationInPhi)/2 -
    (procaDop[phiM[t, r, ph]] +
      (2 I/r^2) D[phiM[t, r, ph], ph])
];

(* On e^{-i omega t + i m phi}, the angular parts reduce to
     Phi_+: -(m-1)^2/r^2,
     Phi_-: -(m+1)^2/r^2.
*)
phiPAngularCheck = FullSimplify[
  (D[Exp[I m ph], {ph, 2}] - 2 I D[Exp[I m ph], ph] -
      Exp[I m ph]) -
    (-(m - 1)^2 Exp[I m ph])
];

phiMAngularCheck = FullSimplify[
  (D[Exp[I m ph], {ph, 2}] + 2 I D[Exp[I m ph], ph] -
      Exp[I m ph]) -
    (-(m + 1)^2 Exp[I m ph])
];

(* ---------------------------------------------------------------------- *)
(* Regular radial branch                                                   *)
(* ---------------------------------------------------------------------- *)

procaDelta[mass_] := 1 + mass;

procaR[om_, ell_, mass_, x_] :=
  x^ell (1 + x^2)^(-((ell + procaDelta[mass])/2)) *
    Hypergeometric2F1[(ell + procaDelta[mass] - om)/2,
      (ell + procaDelta[mass] + om)/2, 1 + ell,
      x^2/(1 + x^2)];

radialOperator[expr_, om_, ell_, mass_, x_] :=
  f[x] D[expr, {x, 2}] + ((1 + 3 x^2)/x) D[expr, x] +
    (om^2/f[x] + 1 - mass^2 - ell^2/x^2) expr;

(* Rather than asking Mathematica to prove a hypergeometric identity from
   scratch, introduce y[z] and use the standard hypergeometric differential
   equation

     z(1-z)y'' + (c-(a+b+1)z)y' - a b y = 0.

   This checks exactly that the prefactor and the z=r^2/(1+r^2) change of
   variables give the radial equation used in the note. *)
zRadial = x^2/(1 + x^2);
aRadial = (ell + 1 + mass - om)/2;
bRadial = (ell + 1 + mass + om)/2;
cRadial = 1 + ell;
prefactorRadial = x^ell (1 + x^2)^(-((ell + 1 + mass)/2));

hypergeometricEquationRule =
  Derivative[2][yy][zRadial] ->
    (aRadial bRadial yy[zRadial] -
       (cRadial - (aRadial + bRadial + 1) zRadial)
         Derivative[1][yy][zRadial])/(zRadial (1 - zRadial));

radialBranchCheck = FullSimplify[
  radialOperator[prefactorRadial yy[zRadial], om, ell, mass, x] /.
    hypergeometricEquationRule,
  Assumptions -> {x > 0}
];

(* A numerical residual with the actual Hypergeometric2F1 branch is kept as
   a guard against a transcription error in procaR. *)
radialBranchNumericalResidual = Chop[
  N[radialOperator[procaR[3.7, 2, 1.3, x], 3.7, 2, 1.3, x] /.
    x -> 0.8],
  10^-10
];

(* ---------------------------------------------------------------------- *)
(* Finite-wall determinant                                                 *)
(* ---------------------------------------------------------------------- *)

dWallR[om_, ell_, mass_, x_] :=
  D[s procaR[om, ell, mass, s], s] /. s -> x;

procaWallDeterminant[om_, mInteger_Integer, mass_, r0_] := Module[
  {ellP, ellM},
  ellP = Abs[mInteger - 1];
  ellM = Abs[mInteger + 1];
  procaR[om, ellP, mass, r0] dWallR[om, ellM, mass, r0] +
    procaR[om, ellM, mass, r0] dWallR[om, ellP, mass, r0]
];

(* The two wall equations are

     c_+ R_+ + c_- R_- = 0,
     c_+ d(r R_+) - c_- d(r R_-) = 0.

   The determinant of this coefficient matrix is -D_{r0}; therefore the
   zero condition is D_{r0}=0 as written in the note. *)
determinantAlgebraCheck = FullSimplify[
  Det[{{rp, rm}, {dp, -dm}}] + (rp dm + rm dp)
];

(* ---------------------------------------------------------------------- *)
(* Large-r asymptotic coefficient                                          *)
(* ---------------------------------------------------------------------- *)

Scoeff[om_, ell_, mass_] :=
  Gamma[1 + ell] Gamma[mass]/
    (Gamma[(ell + procaDelta[mass] - om)/2]
      Gamma[(ell + procaDelta[mass] + om)/2]);

(* For non-integer mass, c-a-b=-mass.  The leading continuation coefficient
   is Gamma[c] Gamma[a+b-c]/(Gamma[a] Gamma[b]), which is exactly Scoeff. *)
continuationExponentCheck = FullSimplify[
  cRadial - aRadial - bRadial + mass
];

leadingCoefficientCheck = FullSimplify[
  Gamma[cRadial] Gamma[aRadial + bRadial - cRadial]/
      (Gamma[aRadial] Gamma[bRadial]) -
    Scoeff[om, ell, mass],
  Assumptions -> {mass > 0, ! Element[mass, Integers],
    ell >= 0, Element[ell, Integers]}
];

(* Mathematica can also take the leading limit directly.  It first returns
   Pi Csc[pi mass]/Gamma[1-mass], and the reflection formula reduces this to
   Gamma[mass]. *)
leadingLimitDirect = FullSimplify[
  Limit[x^(1 - mass) procaR[om, ell, mass, x], x -> Infinity,
    Assumptions -> {mass > 0, ell >= 0, Element[ell, Integers], om > 0}],
  Assumptions -> {mass > 0, ell >= 0, Element[ell, Integers], om > 0}
];

leadingLimitCheck = FullSimplify[
  leadingLimitDirect/Scoeff[om, ell, mass] - 1,
  Assumptions -> {mass > 0, ! Element[mass, Integers],
    ell >= 0, Element[ell, Integers]}
];

(* If R_i = S_i r^(mass-1) + N_i r^(-mass-1) + ..., then

     D = R_+ d(r R_-) + R_- d(r R_+)
       = 2 mass S_+ S_- r^(2 mass-2) + lower powers/logs.

   This is the algebra behind F_{r0}=r0^(2-2 mass)D -> 2 mass S_+ S_-. *)
formalAsymptoticD =
  Expand[
    (sp x^(mass - 1) + np x^(-mass - 1)) *
      D[x (sm x^(mass - 1) + nm x^(-mass - 1)), x] +
    (sm x^(mass - 1) + nm x^(-mass - 1)) *
      D[x (sp x^(mass - 1) + np x^(-mass - 1)), x]
  ];

formalAsymptoticDCheck = FullSimplify[
  formalAsymptoticD -
    (2 mass sp sm x^(2 mass - 2) -
      2 mass np nm x^(-2 mass - 2))
];

omegaInfinity[n_Integer?NonNegative, ell_Integer?NonNegative, mass_] :=
  mass + 1 + 2 n + ell;

infinityZeroCheck = Quiet[
  FullSimplify[
    Scoeff[mass + 1 + 2 n + ell, ell, mass],
    Assumptions -> {mass > 0, ell >= 0, n >= 0,
      Element[{ell, n}, Integers]}
  ]
];

(* ---------------------------------------------------------------------- *)
(* Numerical root check for the example in the note                        *)
(* ---------------------------------------------------------------------- *)

determinantRootsNearThree =
  Table[
    omega /. FindRoot[
      procaWallDeterminant[omega, 1, 2, r0] == 0,
      {omega, 3},
      WorkingPrecision -> 60,
      AccuracyGoal -> 35,
      PrecisionGoal -> 35
    ],
    {r0, {10, 20, 40}}
  ];

singlePlusDirichletRootsNearThree =
  Table[
    omega /. FindRoot[
      procaR[omega, Abs[1 - 1], 2, r0] == 0,
      {omega, 3},
      WorkingPrecision -> 60,
      AccuracyGoal -> 35,
      PrecisionGoal -> 35
    ],
    {r0, {10, 20, 40}}
  ];

numbersPrintedInNote = {3.0003843828, 3.0000247511, 3.0000015586};

printedNumbersVsDeterminantResidual =
  Table[
    N[procaWallDeterminant[numbersPrintedInNote[[i]], 1, 2,
      {10, 20, 40}[[i]]], 20],
    {i, 3}
  ];

printedNumbersVsSingleBranchResidual =
  Table[
    Chop[
      N[procaR[numbersPrintedInNote[[i]], Abs[1 - 1], 2,
        {10, 20, 40}[[i]]], 20],
      10^-10
    ],
    {i, 3}
  ];

(* ---------------------------------------------------------------------- *)
(* Report                                                                  *)
(* ---------------------------------------------------------------------- *)

report = <|
  "divergence formula" -> divergenceCheck,
  "wall radial condition" -> wallRadialConditionCheck,
  "psi equation after div A=0" -> psiEquationCheck,
  "varphi equation after div A=0" -> varphiEquationCheck,
  "Phi+ decoupling" -> phiPDecouplingCheck,
  "Phi- decoupling" -> phiMDecouplingCheck,
  "Phi+ angular eigenvalue" -> phiPAngularCheck,
  "Phi- angular eigenvalue" -> phiMAngularCheck,
  "radial branch from hypergeometric ODE" -> radialBranchCheck,
  "radial branch numerical residual" -> radialBranchNumericalResidual,
  "finite-wall determinant algebra" -> determinantAlgebraCheck,
  "continuation exponent c-a-b=-mu" -> continuationExponentCheck,
  "leading coefficient S_ell" -> leadingCoefficientCheck,
  "direct leading limit / S_ell - 1" -> leadingLimitCheck,
  "formal D leading coefficient" -> formalAsymptoticDCheck,
  "S_ell zero at omega=mu+1+2n+ell" -> infinityZeroCheck,
  "D_r0 roots near omega=3 for mu=2,m=1,r0={10,20,40}" ->
    N[determinantRootsNearThree, 16],
  "single R_+ roots near omega=3 for mu=2,m=1,r0={10,20,40}" ->
    N[singlePlusDirichletRootsNearThree, 16],
  "numbers printed in note" -> numbersPrintedInNote,
  "printed numbers inserted into D_r0" ->
    printedNumbersVsDeterminantResidual,
  "printed numbers inserted into single R_+" ->
    printedNumbersVsSingleBranchResidual
|>;

report
