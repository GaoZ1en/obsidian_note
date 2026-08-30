ClearAll["Global`*"];

(* Ordered basis:
   {barBeta deltaAlpha, deltaBarAlpha Beta,
    barAlpha deltaBeta, deltaBarBeta Alpha}. *)
bulkRadialVariation = I/2 {1, 1, -1, -1};
deltaPolarizationTerm = I/2 {1, 1, 1, 1};

standardVariation = Simplify[bulkRadialVariation + deltaPolarizationTerm];
alternativeVariation = Simplify[bulkRadialVariation - deltaPolarizationTerm];

expectedStandard = I {1, 1, 0, 0};
expectedAlternative = -I {0, 0, 1, 1};

(* For the odd coordinate pair a and a-star, an even form is graded-symmetric. *)
omegaModeMatrix = I {{0, 1}, {1, 0}};
poissonModeMatrix = Simplify[Inverse[omegaModeMatrix]];
expectedPoissonModeMatrix = -I {{0, 1}, {1, 0}};

(* Finite-dimensional CAR check: a and a^dagger on a one-mode Fock space. *)
a = {{0, 1}, {0, 0}};
ad = ConjugateTranspose[a];
number = ad.a;

checks = <|
  "StandardFixesSlowData" -> (standardVariation === expectedStandard),
  "AlternativeFixesFastData" -> (alternativeVariation === expectedAlternative),
  "GradedPoissonInverse" ->
    (poissonModeMatrix === expectedPoissonModeMatrix),
  "OneModeCAR" -> (a.ad + ad.a === IdentityMatrix[2]),
  "NumberGeneratorOnAnnihilator" ->
    (number.a - a.number === -a),
  "NumberGeneratorOnCreator" ->
    (number.ad - ad.number === ad)
|>;

Print[checks];
If[And @@ Values[checks], Exit[0], Exit[1]];
