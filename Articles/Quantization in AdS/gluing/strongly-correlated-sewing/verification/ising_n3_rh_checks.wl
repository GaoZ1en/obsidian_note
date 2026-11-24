(* Independent exact checks for the n=3 mixed-sign RHP.
   No JSON or other result files are created by this script.
   Matrix checks reproduce the successful kernel calculation in the
   independent analysis; the remaining checks are exact algebra only.
   These checks do NOT prove the Fredholm/CGL/Szego bridge. *)

ClearAll[aa, jj, uu, pp, ss, om, r, s, q, x, th, ratio, checks];
aa[t_] := {{0, 1, Sqrt[2] t}, {1, 0, 0}, {Sqrt[2] t, 0, 0}};
jj[t_] := FullSimplify[
  Inverse[IdentityMatrix[3] + I aa[t]].(IdentityMatrix[3] - I aa[t])];
uu = {{0, -I/Sqrt[2], I/Sqrt[2]},
      {0, -1/Sqrt[2], -1/Sqrt[2]}, {1, 0, 0}};
pp = {{0, 0, 1}, {1, 0, 0}, {0, 1, 0}};
ss = DiagonalMatrix[{-1, 1, 1}];
om = (-1 + I Sqrt[3])/2;

checks = {
  "unitary basis" -> (FullSimplify[ConjugateTranspose[uu].uu] === IdentityMatrix[3]),
  "Cayley polynomial plus" -> (FullSimplify[jj[1] -
    (IdentityMatrix[3] - aa[1].aa[1]/2 - I aa[1]/2)] === ConstantArray[0, {3, 3}]),
  "Cayley polynomial minus" -> (FullSimplify[jj[-1] -
    (IdentityMatrix[3] - aa[-1].aa[-1]/2 - I aa[-1]/2)] === ConstantArray[0, {3, 3}]),
  "plus jump becomes P" -> (FullSimplify[ConjugateTranspose[uu].jj[1].uu - pp] === ConstantArray[0, {3, 3}]),
  "minus jump becomes SPS" -> (FullSimplify[ConjugateTranspose[uu].jj[-1].uu - ss.pp.ss] === ConstantArray[0, {3, 3}]),
  "cubic plus jump" -> (MatrixPower[pp, 3] === IdentityMatrix[3]),
  "cubic minus jump" -> (MatrixPower[ss.pp.ss, 3] === IdentityMatrix[3]),
  "mixed trace" -> (Tr[aa[-1].aa[1]] === -2),
  "same trace" -> (Tr[aa[1].aa[1]] === 6),
  (* Use det(q I - M), rather than the kernel's det(M - q I) convention. *)
  "fusion eigenvalue polynomial" -> (Expand[Det[q IdentityMatrix[3] - Inverse[ss.pp.ss].pp] - (q - 1) (q + 1)^2] === 0),
  "Thomae cross product" -> (FullSimplify[
    (s - r om) (s - r om^2) (r - s om) (r - s om^2) -
      (r^2 + r s + s^2)^2] === 0),
  "triple angle algebraic equation" -> (Expand[
    4 ((3 q - 1)/2)^3 - 3 (3 q - 1)/2 -
      (1 - (27/2) q^2 (1 - q))] === 0)
};
Scan[Print[First[#], ": ", Last[#]] &, checks];
Print["All exact checks passed: ", And @@ (Last /@ checks)];

(* x=q^2 avoids a branch ambiguity in the small-x expansion. *)
ratio[q_] := Sqrt[(1 + 2 Cos[(4/3) ArcSin[q]])/3];
Print["Theta ratio, x=q^2: ", Series[ratio[q], {q, 0, 4}]];
Print["D mixed, x=q^2: ", Series[(1 - q^2)^(-2/9) ratio[q], {q, 0, 4}]];
Print["Fusion ratio coefficient: ",
  FullSimplify[Limit[
    Sqrt[(1 + 2 Cos[(4/3) (Pi/2 - th)])/3]/Sqrt[th],
    th -> 0, Direction -> "FromAbove"]]];
If[!And @@ (Last /@ checks), Exit[1]];
