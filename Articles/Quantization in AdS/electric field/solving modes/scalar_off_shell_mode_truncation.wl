(*
  Off-shell scalar mode truncation in global AdS3
  =================================================

  For each angular momentum ell = |m|, keep

      one slow radial mode + the first N fast radial modes,

  substitute the truncated expansion into the renormalized action, and
  diagonalize the resulting finite-dimensional mechanical system

      L_N = 1/2 qdot^T G qdot - 1/2 q^T K q,
      K.v = omega^2 G.v.

  The coefficients q_i(t) are arbitrary functions of time, so this is an
  off-shell mode expansion.  The calculation tests whether the low-frequency
  spectrum converges to

      omega_(p,m) = Delta + |m| + 2 p.

  Run with

      Get["scalar_off_shell_mode_truncation.wl"]

  Assumption: 0 < Delta < 1.
*)

ClearAll["Global`*"];


(* ::Section:: *)
(*Parameters*)

deltaAlt = 3/5;
deltaFast = 2 - deltaAlt;
massSquared = deltaAlt (deltaAlt - 2);

(* Numbers of fast modes used in the convergence test. *)
fastModeCutoffs = {4, 8, 16, 24};

(* Numerical precision used in the generalized eigenvalue problem. *)
workingPrecision = 50;

(*
  The simple slow seed below is already the exact p=0 alternative mode.
  To avoid putting that answer into the basis by hand, use instead

      sTilde = s + c s/(1+r^2),   c = 1/2.

  This has the same slow asymptotic coefficient but is not an eigenmode.
  Set slowCorrectionAmplitude = 0 to use the undeformed slow seed.
*)
slowCorrectionAmplitude = 1/2;

If[! TrueQ[0 < deltaAlt < 1],
  Print["This calculation requires 0 < deltaAlt < 1."];
  Abort[];
];


(* ::Section:: *)
(*Radial basis*)

slowSeed[angularMomentum_, radius_] :=
  radius^angularMomentum *
    (1 + radius^2)^(-(angularMomentum + deltaAlt)/2);

slowCorrection[angularMomentum_, radius_] :=
  slowSeed[angularMomentum, radius]/(1 + radius^2);

deformedSlowSeed[angularMomentum_, radius_] :=
  slowSeed[angularMomentum, radius] +
    slowCorrectionAmplitude * slowCorrection[angularMomentum, radius];

fastMode[radialLevel_, angularMomentum_, radius_] :=
  radius^angularMomentum *
    (1 + radius^2)^(-(angularMomentum + deltaFast)/2) *
    JacobiP[
      radialLevel,
      deltaFast - 1,
      angularMomentum,
      (radius^2 - 1)/(radius^2 + 1)
    ];

slowSquaredFrequency[angularMomentum_] :=
  (angularMomentum + deltaAlt)^2;

fastSquaredFrequency[radialLevel_, angularMomentum_] :=
  (deltaFast + angularMomentum + 2 radialLevel)^2;


(* ::Section:: *)
(*Matrix elements obtained from the action*)

(*
  After suppressing the common angular factor 2 Pi, the radial matrices are

    G[u,v] = Integral_0^Infinity r/(1+r^2) u(r) v(r) dr,

    K[u,v] = lim_(R->Infinity) [
      Integral_0^R {r(1+r^2) u'(r) v'(r)
        + (ell^2/r + M^2 r) u(r) v(r)} dr
      + Delta R Sqrt[1+R^2] u(R) v(R)].

  The last term is the contribution of the boundary counterterm.

  Write h_ell = s_ell/(1+r^2).  The closed matrix elements needed for
  sTilde_ell = s_ell + c h_ell are listed below.
*)

gramSlowSlow[angularMomentum_] :=
  Beta[angularMomentum + 1, deltaAlt]/2;

gramSlowCorrection[angularMomentum_] :=
  Beta[angularMomentum + 1, deltaAlt + 1]/2;

gramCorrectionCorrection[angularMomentum_] :=
  Beta[angularMomentum + 1, deltaAlt + 2]/2;

gramSlowFast[radialLevel_, angularMomentum_] :=
  Pochhammer[1 - deltaAlt, radialLevel]/
    (2 radialLevel! (radialLevel + angularMomentum + 1));

gramCorrectionFast[radialLevel_, angularMomentum_] :=
  Pochhammer[-deltaAlt, radialLevel]/
    (2 radialLevel! *
      (radialLevel + angularMomentum + 1) *
      (radialLevel + angularMomentum + 2));

gramFastFast[radialLevel_, angularMomentum_] :=
  Pochhammer[radialLevel + 1, angularMomentum]/
    (2 * Pochhammer[deltaFast + radialLevel, angularMomentum] *
      (deltaFast + angularMomentum + 2 radialLevel));

stiffnessCorrectionCorrection[angularMomentum_] :=
  ((2 + angularMomentum + (angularMomentum - 1) deltaAlt + deltaAlt^2) *
      Factorial[angularMomentum] * Gamma[1 + deltaAlt])/
    (2 Gamma[2 + angularMomentum + deltaAlt]);

deformedSlowGram[angularMomentum_] :=
  gramSlowSlow[angularMomentum] +
    2 slowCorrectionAmplitude gramSlowCorrection[angularMomentum] +
    slowCorrectionAmplitude^2 gramCorrectionCorrection[angularMomentum];

deformedSlowStiffness[angularMomentum_] :=
  slowSquaredFrequency[angularMomentum] gramSlowSlow[angularMomentum] +
    2 slowCorrectionAmplitude slowSquaredFrequency[angularMomentum] *
      gramSlowCorrection[angularMomentum] +
    slowCorrectionAmplitude^2 *
      stiffnessCorrectionCorrection[angularMomentum];

deformedSlowFastGram[radialLevel_, angularMomentum_] :=
  gramSlowFast[radialLevel, angularMomentum] +
    slowCorrectionAmplitude *
      gramCorrectionFast[radialLevel, angularMomentum];

deformedSlowFastStiffness[radialLevel_, angularMomentum_] :=
  slowSquaredFrequency[angularMomentum] *
      gramSlowFast[radialLevel, angularMomentum] +
    slowCorrectionAmplitude *
      fastSquaredFrequency[radialLevel, angularMomentum] *
      gramCorrectionFast[radialLevel, angularMomentum];


(* ::Section:: *)
(*Build and diagonalize the truncated system*)

(* Basis ordering: {sTilde_ell, f_(0,ell), ..., f_(N-1,ell)}. *)
buildMatrices[angularMomentum_Integer, numberFastModes_Integer] /;
    angularMomentum >= 0 && numberFastModes > 0 :=
  Module[
    {dimension, gramMatrix, stiffnessMatrix, radialLevel, matrixIndex},

    dimension = numberFastModes + 1;
    gramMatrix = ConstantArray[0, {dimension, dimension}];
    stiffnessMatrix = ConstantArray[0, {dimension, dimension}];

    gramMatrix[[1, 1]] = deformedSlowGram[angularMomentum];
    stiffnessMatrix[[1, 1]] = deformedSlowStiffness[angularMomentum];

    Do[
      matrixIndex = radialLevel + 2;

      gramMatrix[[matrixIndex, matrixIndex]] =
        gramFastFast[radialLevel, angularMomentum];
      stiffnessMatrix[[matrixIndex, matrixIndex]] =
        fastSquaredFrequency[radialLevel, angularMomentum] *
          gramFastFast[radialLevel, angularMomentum];

      gramMatrix[[1, matrixIndex]] =
        deformedSlowFastGram[radialLevel, angularMomentum];
      gramMatrix[[matrixIndex, 1]] = gramMatrix[[1, matrixIndex]];

      stiffnessMatrix[[1, matrixIndex]] =
        deformedSlowFastStiffness[radialLevel, angularMomentum];
      stiffnessMatrix[[matrixIndex, 1]] =
        stiffnessMatrix[[1, matrixIndex]],

      {radialLevel, 0, numberFastModes - 1}
    ];

    <|"G" -> gramMatrix, "K" -> stiffnessMatrix|>
  ];

truncatedFrequencies[
    angularMomentum_Integer,
    numberFastModes_Integer,
    numberRequested_: All
  ] :=
  Module[{matrices, squaredFrequencies, frequencies},
    matrices = buildMatrices[angularMomentum, numberFastModes];

    squaredFrequencies = Eigenvalues[{
      N[matrices["K"], workingPrecision],
      N[matrices["G"], workingPrecision]
    }];

    frequencies = Sort[
      Sqrt[Chop[squaredFrequencies, 10^(-workingPrecision/2)]]
    ];

    If[numberRequested === All,
      frequencies,
      Take[frequencies, Min[numberRequested, Length[frequencies]]]
    ]
  ];

fieldTheoryFrequencies[angularMomentum_, numberRequested_] :=
  Table[
    deltaAlt + angularMomentum + 2 radialLevel,
    {radialLevel, 0, numberRequested - 1}
  ];


(* ::Section:: *)
(*Convergence to the field-theory spectrum*)

ellZeroTable = Table[
  {
    numberFastModes,
    Sequence @@ N[
      truncatedFrequencies[0, numberFastModes, 4],
      9
    ]
  },
  {numberFastModes, fastModeCutoffs}
];

angularTable = Table[
  {
    angularMomentum,
    Sequence @@ N[truncatedFrequencies[angularMomentum, 16, 2], 9],
    Sequence @@ N[fieldTheoryFrequencies[angularMomentum, 2], 9]
  },
  {angularMomentum, 0, 3}
];

Print["Delta = ", deltaAlt, ",  Delta_+ = ", deltaFast];

Print["\nell = 0: increasing the number N of fast modes"];
Print[
  TableForm[
    ellZeroTable,
    TableHeadings -> {
      None,
      {"N", "omega_0", "omega_1", "omega_2", "omega_3"}
    }
  ]
];
Print["field-theory target = ", N[fieldTheoryFrequencies[0, 4], 9]];

Print["\nDifferent angular sectors at N = 16"];
Print[
  TableForm[
    angularTable,
    TableHeadings -> {
      None,
      {"ell", "omega_0", "omega_1", "target_0", "target_1"}
    }
  ]
];

result = <|
  "ellZeroConvergence" -> ellZeroTable,
  "angularCheck" -> angularTable
|>;

result
