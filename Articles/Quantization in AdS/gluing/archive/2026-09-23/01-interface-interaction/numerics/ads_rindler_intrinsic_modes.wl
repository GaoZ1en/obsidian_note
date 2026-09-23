(* ::Package:: *)

(* ===================================================================== *)
(*  Intrinsic AdS3--Rindler scalar modes                                 *)
(*                                                                       *)
(*  Source: ads-rindler gluing.md.  This script checks the radial mode,  *)
(*  horizon connection coefficients, CPS delta normalization, global    *)
(*  Jacobi-mode normalization, the factorized boundary Fourier kernel,  *)
(*  and the Unruh/KMS thermal relation.                                  *)
(* ===================================================================== *)

ClearAll["Global`*"];

(* Intrinsic wedge radial equation. *)
radialMode[dimension_, frequency_, momentum_, radius_] :=
  radius^(-dimension) (1 - radius^(-2))^(-I frequency/2) *
   Hypergeometric2F1[
    (dimension - I frequency + I momentum)/2,
    (dimension - I frequency - I momentum)/2,
    dimension,
    radius^(-2)];

radialEquation[dimension_, frequency_, momentum_, radius_] := Module[
  {function, massSquared},
  function = radialMode[dimension, frequency, momentum, radius];
  massSquared = dimension (dimension - 2);
  1/radius D[radius (radius^2 - 1) D[function, radius], radius] +
   (frequency^2/(radius^2 - 1) - momentum^2/radius^2 -
      massSquared) function
  ];

radialTestPoints = {
  {2, 13/10, 7/10, 3/2},
  {5/2, 9/5, -4/5, 11/5},
  {3, 7/3, 2, 5}
  };

radialResidual = Max[Abs[Quiet[(N[
          radialEquation[#[[1]], #[[2]], #[[3]], radial] /.
           radial -> SetPrecision[#[[4]], 80], 50] &) /@
      radialTestPoints]]];

(* Horizon connection formula. *)
horizonCoefficient[dimension_, frequency_, momentum_] :=
  Gamma[dimension] Gamma[I frequency]/(
    Gamma[(dimension + I (frequency - momentum))/2] *
     Gamma[(dimension + I (frequency + momentum))/2]);

horizonApproximation[dimension_, frequency_, momentum_, radius_] :=
  Module[{z, coefficient},
   z = 1 - radius^(-2);
   coefficient = horizonCoefficient[dimension, frequency, momentum];
   coefficient z^(-I frequency/2) +
    Conjugate[coefficient] z^(I frequency/2)
   ];

horizonSample = {2, 13/10, 7/10};
horizonErrors = Table[
   With[{radius = SetPrecision[1 + 10^-power, 70]},
    Abs[N[(radialMode[
           horizonSample[[1]], horizonSample[[2]], horizonSample[[3]],
           radius] -
          horizonApproximation[
           horizonSample[[1]], horizonSample[[2]], horizonSample[[3]],
           radius])/
       radialMode[
        horizonSample[[1]], horizonSample[[2]], horizonSample[[3]],
        radius], 35]]],
   {power, 3, 7}];
horizonConverges = And @@ Thread[Rest[horizonErrors] < Most[horizonErrors]];

(* The chi integral contributes 2 Pi delta(k-k'), and the radial standing *)
(* wave contributes 2 Pi |A|^2 delta(omega-omega').                     *)
amplitudeSquared =
  Gamma[dimension]^2 Pi/(frequency Sinh[Pi frequency] *
     Abs[Gamma[(dimension + I (frequency - momentum))/2]]^2 *
     Abs[Gamma[(dimension + I (frequency + momentum))/2]]^2);

normalizationSquared =
  Sinh[Pi frequency] *
    Abs[Gamma[(dimension + I (frequency - momentum))/2]]^2 *
    Abs[Gamma[(dimension + I (frequency + momentum))/2]]^2/(
    8 Pi^3 Gamma[dimension]^2);

cpsNormalizationResidual = FullSimplify[
   8 Pi^2 frequency amplitudeSquared normalizationSquared - 1,
   Assumptions ->
    dimension > 1 && frequency > 0 && Element[momentum, Reals]];

(* Independent global Jacobi-mode norm. *)
globalModeNorm[dimension_, radialNumber_, angularNumber_] :=
  Sqrt[radialNumber! Gamma[radialNumber + Abs[angularNumber] + dimension]/(
    2 Pi Gamma[radialNumber + Abs[angularNumber] + 1] *
     Gamma[radialNumber + dimension])];

globalRadial[dimension_, radialNumber_, angularNumber_, coordinate_] :=
  Cos[coordinate]^dimension Sin[coordinate]^Abs[angularNumber] *
   JacobiP[radialNumber, Abs[angularNumber], dimension - 1,
    Cos[2 coordinate]];

globalNormSamples = {{12/5, 0, 0}, {12/5, 2, 1}, {7/3, 3, -2}};
globalNormResidual = Max[Abs[Map[
     Function[sample,
      With[{dimensionValue = sample[[1]], radialNumber = sample[[2]],
        angularNumber = sample[[3]]},
       frequencyValue = dimensionValue + 2 radialNumber +
         Abs[angularNumber];
       radialIntegral = NIntegrate[
         Tan[coordinate] globalRadial[
            dimensionValue, radialNumber, angularNumber, coordinate]^2,
         {coordinate, 0, Pi/2}, WorkingPrecision -> 40,
         AccuracyGoal -> 25, PrecisionGoal -> 25];
       N[4 Pi frequencyValue *
          globalModeNorm[
            dimensionValue, radialNumber, angularNumber]^2 *
          radialIntegral - 1, 25]]],
     globalNormSamples]]];

(* Closed chiral boundary transform. *)
kernelClosed[h_, integerLevel_Integer, q_] :=
  (-I)^integerLevel 2^h Exp[Pi q/2] *
   Gamma[h + I q] Gamma[h - I q]/Gamma[2 h] *
   Hypergeometric2F1[-integerLevel, h - I q, 2 h, 2];

kernelIntegral[h_?NumericQ, integerLevel_Integer, q_?NumericQ] :=
  Quiet[NIntegrate[
   Exp[I q w] Sech[w]^h *
    Exp[-I (h + integerLevel) ArcTan[Sinh[w]]],
   {w, -Infinity, Infinity}, WorkingPrecision -> 40,
   AccuracyGoal -> 22, PrecisionGoal -> 22],
   {NIntegrate::inumexpr, NIntegrate::mtdfb}];

kernelSamples = {
  {N[6/5, 40], 0, N[7/10, 40]},
  {N[6/5, 40], 2, N[7/10, 40]},
  {N[7/5, 40], 3, N[-3/4, 40]}
  };

kernelResidual = Max[Abs[Map[
     Function[sample,
      kernelIntegral[sample[[1]], sample[[2]], sample[[3]]] -
       kernelClosed[sample[[1]], sample[[2]], sample[[3]]]],
     kernelSamples]]];

thermalSamples = Flatten[Table[
    With[{h = N[13/10, 40], q = N[(2 level + 3)/10, 40]},
     kernelClosed[h, level, -q] -
      (-1)^level Exp[-Pi q] Conjugate[kernelClosed[h, level, q]]],
    {level, 0, 6}]];
thermalKernelResidual = Max[Abs[thermalSamples]];

(* A global mode has NPlus+NMinus=2n+|ell|, while qPlus+qMinus=omega. *)
bogoliubovSample = Module[
  {h = N[13/10, 40], radialNumber = 2, angularNumber = 1,
   frequencyValue = N[17/10, 40], momentumValue = N[-2/5, 40],
   nPlus, nMinus, qPlus, qMinus, alpha, beta},
  nPlus = radialNumber + (Abs[angularNumber] - angularNumber)/2;
  nMinus = radialNumber + (Abs[angularNumber] + angularNumber)/2;
  qPlus = (frequencyValue - momentumValue)/2;
  qMinus = (frequencyValue + momentumValue)/2;
  alpha = kernelClosed[h, nPlus, qPlus] *
    kernelClosed[h, nMinus, qMinus];
  beta = kernelClosed[h, nPlus, -qPlus] *
    kernelClosed[h, nMinus, -qMinus];
  beta - (-1)^angularNumber Exp[-Pi frequencyValue] Conjugate[alpha]
  ];

unruhCommutatorResidual = FullSimplify[
   1/(1 - thermalWeight^2) - thermalWeight^2/(1 - thermalWeight^2) - 1,
   Assumptions -> 0 < thermalWeight < 1];

checks = <|
   "radial equation residual" -> (radialResidual < 10^-35),
   "horizon expansion converges" -> horizonConverges,
   "horizon final relative error" -> (Last[horizonErrors] < 10^-6),
   "CPS normalization identity" -> (cpsNormalizationResidual === 0),
   "global Jacobi mode normalization" -> (globalNormResidual < 10^-20),
   "closed Fourier kernel" -> (kernelResidual < 10^-18),
   "chiral thermal identity" -> (thermalKernelResidual < 10^-25),
   "Bogoliubov thermal factor" -> (Abs[bogoliubovSample] < 10^-25),
   "Unruh commutator" -> (unruhCommutatorResidual === 0)
   |>;

Print["===================================================================="];
Print[" Intrinsic AdS3--Rindler scalar-mode checks"];
Print[" radial equation residual = ", N[radialResidual, 5]];
Print[" horizon relative errors = ", N[horizonErrors, 5]];
Print[" CPS normalization residual = ", cpsNormalizationResidual];
Print[" global Jacobi norm residual = ", N[globalNormResidual, 5]];
Print[" closed Fourier-kernel residual = ", N[kernelResidual, 5]];
Print[" chiral thermal-identity residual = ", N[thermalKernelResidual, 5]];
Print[" full Bogoliubov thermal-factor residual = ",
  N[Abs[bogoliubovSample], 5]];
Print[" checks = ", checks];

If[And @@ Values[checks],
 Print["ALL CHECKS PASSED"],
 Print["CHECK FAILURE"];
 Exit[1]
 ];
