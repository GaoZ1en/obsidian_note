ClearAll["Global`*"];

(* Hamiltonian-domain kill tests on the finite incoming characteristic cross.
   The basis consists of exact on-shell master solutions. *)

aa = 1;
alphaValues = {1/2, 1, 2};
betaValues = aa/alphaValues;
omegaValues = (alphaValues + betaValues)/Sqrt[2];
kValues = (alphaValues - betaValues)/Sqrt[2];

profileBasis = Flatten[Table[
  {Cos[alphaValues[[j]] u + betaValues[[j]] v],
   Sin[alphaValues[[j]] u + betaValues[[j]] v]},
  {j, Length[alphaValues]}]];
dimOneMaster = Length[profileBasis];

omegaU = Table[FullSimplify[Integrate[
  (D[profileBasis[[i]], u] profileBasis[[j]] -
   D[profileBasis[[j]], u] profileBasis[[i]]) /. v -> 0,
  {u, 0, 1}]], {i, dimOneMaster}, {j, dimOneMaster}];

omegaV = Table[FullSimplify[Integrate[
  (D[profileBasis[[i]], v] profileBasis[[j]] -
   D[profileBasis[[j]], v] profileBasis[[i]]) /. u -> 0,
  {v, 0, 1}]], {i, dimOneMaster}, {j, dimOneMaster}];

omegaX = FullSimplify[omegaU + omegaV];

timeBlocks = Table[{{0, omegaValues[[j]]}, {-omegaValues[[j]], 0}},
  {j, Length[omegaValues]}];
spaceBlocks = Table[{{0, -kValues[[j]]}, {kValues[[j]], 0}},
  {j, Length[kValues]}];
blockDiagonal[blocks_] := Module[{count = Length[blocks], zero},
  zero = ConstantArray[0, Dimensions[blocks[[1]]]];
  ArrayFlatten[Table[If[i == j, blocks[[i]], zero],
    {i, count}, {j, count}]]];
timeGenerator = blockDiagonal[timeBlocks];
spaceGenerator = blockDiagonal[spaceBlocks];

timeSymplecticResidual = FullSimplify[
  Transpose[timeGenerator] . omegaX + omegaX . timeGenerator];
spaceSymplecticResidual = FullSimplify[
  Transpose[spaceGenerator] . omegaX + omegaX . spaceGenerator];

(* Two m-copies model a real SO(3) rotation block. *)
zeroMaster = ConstantArray[0, {dimOneMaster, dimOneMaster}];
omegaTwoM = ArrayFlatten[{{omegaX, zeroMaster}, {zeroMaster, omegaX}}];
rotationGenerator = ArrayFlatten[{
  {zeroMaster, IdentityMatrix[dimOneMaster]},
  {-IdentityMatrix[dimOneMaster], zeroMaster}}];
rotationResidual = FullSimplify[
  Transpose[rotationGenerator] . omegaTwoM +
  omegaTwoM . rotationGenerator];

zeroArrayQ[array_] := And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[array]);

(* With Omega(x,y)=x^T.Omega.y and i_A Omega=-dH, the quadratic
   Hamiltonian matrix is Omega.A.  Its symmetry is the finite test. *)
timeHamiltonianCandidate = FullSimplify[omegaX . timeGenerator];
spaceHamiltonianCandidate = FullSimplify[omegaX . spaceGenerator];
rotationHamiltonianCandidate = FullSimplify[omegaTwoM . rotationGenerator];

checks = {
  "finite characteristic form is nondegenerate on the test basis" ->
    TrueQ[MatrixRank[omegaX] == dimOneMaster],
  "time translation has a nonzero finite-endpoint symplectic anomaly" ->
    Not[zeroArrayQ[timeSymplecticResidual]],
  "space translation has a nonzero finite-endpoint symplectic anomaly" ->
    Not[zeroArrayQ[spaceSymplecticResidual]],
  "time Hamiltonian candidate is not symmetric" ->
    Not[zeroArrayQ[timeHamiltonianCandidate -
      Transpose[timeHamiltonianCandidate]]],
  "space Hamiltonian candidate is not symmetric" ->
    Not[zeroArrayQ[spaceHamiltonianCandidate -
      Transpose[spaceHamiltonianCandidate]]],
  "SO(3) rotation preserves the finite characteristic form" ->
    zeroArrayQ[rotationResidual],
  "SO(3) Hamiltonian candidate is symmetric" ->
    zeroArrayQ[rotationHamiltonianCandidate -
      Transpose[rotationHamiltonianCandidate]]
};

Print["Wolfram version: ", $Version];
Print["translation anomaly ranks: ",
  {MatrixRank[timeSymplecticResidual], MatrixRank[spaceSymplecticResidual]}];
Print["rotation anomaly rank: ", MatrixRank[rotationResidual]];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL HAMILTONIAN KILL TESTS PASSED"],
  Print["HAMILTONIAN KILL TESTS FAILED"];
  Quit[1]];
