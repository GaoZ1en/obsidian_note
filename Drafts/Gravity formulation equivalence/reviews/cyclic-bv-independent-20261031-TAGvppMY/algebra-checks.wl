(* Independent finite exterior-algebra checks.  No flat/unitary assumption is
   made for the real connection: Phi_i = J tensor L_i is symmetric.  Formal
   derivatives t_i transpose to -t_i.  Curvature and complete-domain arguments
   are analytic and are not certified by this finite matrix calculation. *)
ClearAll["Global`*"];
outdir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY";
report = Block[{$Messages = {}, $MessageList = {}}, Module[
  {basis, n, eps, iota, star, parity, levi, li, jpair, spair,
   phi, dform, deltaform, hh, gam, ts, idx, idx1, idx2, kactual,
   tmat, cmat, ktarget, pi0, pi1, pi2, vphi, wmetric, vtotal,
   checks, residuals, z, dims, result},
  basis = Join @@ Table[Subsets[Range[3], {p}], {p, 0, 3}];
  n = Length[basis];
  eps[i_] := Table[If[MemberQ[basis[[b]], i], 0,
      If[Sort[Prepend[basis[[b]], i]] === basis[[a]],
        (-1)^Count[basis[[b]], x_ /; x < i], 0]], {a, n}, {b, n}];
  iota[i_] := Transpose[eps[i]];
  star = Table[If[Sort[Join[basis[[b]], basis[[a]]]] === Range[3] &&
        Intersection[basis[[b]], basis[[a]]] === {},
      Signature[Join[basis[[b]], basis[[a]]]], 0], {a, n}, {b, n}];
  parity = DiagonalMatrix[(-1)^Length[#] & /@ basis];
  levi = Normal[LeviCivitaTensor[3]];
  li[i_] := Table[levi[[a, i, b]], {a, 3}, {b, 3}];
  jpair = {{0, -1}, {1, 0}}; spair = {{0, 1}, {1, 0}};
  phi[i_] := KroneckerProduct[jpair, li[i]];
  ts = {t1, t2, t3};
  dform = Sum[KroneckerProduct[eps[i], ts[[i]] IdentityMatrix[6] + phi[i]], {i, 3}];
  deltaform = Sum[KroneckerProduct[iota[i], -ts[[i]] IdentityMatrix[6] + phi[i]], {i, 3}];
  hh = KroneckerProduct[star, spair, IdentityMatrix[3]];
  gam = KroneckerProduct[parity, IdentityMatrix[6]];
  idx[p_] := Flatten[Table[Range[6 (b - 1) + 1, 6 b],
      {b, Flatten[Position[Length /@ basis, p]]}]];
  (* Reorder the one-form block to (species, form index, internal index). *)
  idx1 = Flatten[Table[6 i + 3 (s - 1) + a, {s, 2}, {i, 1, 3}, {a, 3}]];
  idx2 = idx[2];
  kactual = hh[[idx1, idx2]].dform[[idx2, idx1]];
  tmat = Flatten[Table[Table[KroneckerDelta[i, a] KroneckerDelta[j, b] -
        KroneckerDelta[j, a] KroneckerDelta[b, i], {j, 3}, {b, 3}],
      {i, 3}, {a, 3}], {{1, 2}, {3, 4}}];
  cmat = KroneckerProduct[Table[Sum[levi[[i, j, k]] ts[[j]], {j, 3}],
      {i, 3}, {k, 3}], IdentityMatrix[3]];
  ktarget = ArrayFlatten[{{tmat, cmat}, {cmat, -tmat}}];
  pi0 = Flatten[Table[Table[KroneckerDelta[i, a] KroneckerDelta[j, b]/3,
      {j, 3}, {b, 3}], {i, 3}, {a, 3}], {{1, 2}, {3, 4}}];
  pi1 = Flatten[Table[Table[(KroneckerDelta[i, j] KroneckerDelta[a, b] -
      KroneckerDelta[i, b] KroneckerDelta[a, j])/2,
      {j, 3}, {b, 3}], {i, 3}, {a, 3}], {{1, 2}, {3, 4}}];
  pi2 = IdentityMatrix[9] - pi0 - pi1;
  vphi = Expand[(dform.deltaform + deltaform.dform) /. Thread[ts -> 0]];
  wmetric = -2 IdentityMatrix[9] + tmat;
  vtotal = vphi[[idx1, idx1]] + KroneckerProduct[IdentityMatrix[2], wmetric];
  z[x_] := TrueQ[And @@ (# === 0 & /@ Flatten[Expand[x]])];
  residuals = <|
    "H squared minus identity" -> hh.hh - IdentityMatrix[48],
    "Phi_i symmetric" -> Table[phi[i] - Transpose[phi[i]], {i, 3}],
    "S anticommutes Phi_i" -> Table[KroneckerProduct[spair, IdentityMatrix[3]].phi[i] +
        phi[i].KroneckerProduct[spair, IdentityMatrix[3]], {i, 3}],
    "Actual Hilbert delta equals H D H parity" -> deltaform - hh.dform.hh.gam,
    "D Stokes transpose sign" -> Transpose[dform /. Thread[ts -> -ts]].hh + gam.hh.dform,
    "delta cyclic transpose sign" -> Transpose[deltaform /. Thread[ts -> -ts]].hh - gam.hh.deltaform,
    "K equals H D_1 with the stated blocks" -> kactual - ktarget,
    "K formally selfadjoint" -> Transpose[kactual /. Thread[ts -> -ts]] - kactual,
    "Phi anticommutator on E0" -> vphi[[idx[0], idx[0]]] - 2 IdentityMatrix[6],
    "Phi anticommutator on E1" -> vphi[[idx1, idx1]] -
      KroneckerProduct[IdentityMatrix[2], 4 pi0 + 3 pi1 + pi2],
    "Total Weitzenboeck potential on E1" -> vtotal -
      KroneckerProduct[IdentityMatrix[2], 2 tmat],
    "Phi anticommutator commutes star-S" -> vphi.hh - hh.vphi,
    "T spin decomposition" -> tmat - (2 pi0 + pi1 - pi2)
  |>;
  checks = Map[z, residuals];
  dims = Tr /@ {pi0, pi1, pi2};
  result = <|"Checks" -> checks,
    "AllChecksPassed" -> And @@ Values[checks],
    "SpinDimensions" -> dims,
    "TSpinEigenvalues" -> {2, 1, -1},
    "PhiPotentialSpinEigenvalues" -> {4, 3, 1},
    "MetricTwistedHodgePotentialSpinEigenvalues" -> {0, -1, -3},
    "FullPotentialSpinEigenvalues" -> {4, 2, -2},
    "Residuals" -> residuals,
    "Coverage" -> "Exact finite exterior/real-Lie-algebra matrices; not a proof of global domains or spectral gaps."|>;
  <|"Result" -> result, "Failed" -> (result === $Failed || result === $Aborted),
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList),
    "KernelVersion" -> $Version|>
]];
Export[FileNameJoin[{outdir, "algebra-results-corrected.wxf"}], report, "WXF"];
preview = KeyDrop[report["Result"], "Residuals"];
Export[FileNameJoin[{outdir, "algebra-preview-corrected.txt"}],
  ToString[<|"Result" -> preview, "Failed" -> report["Failed"],
    "Messages" -> report["Messages"], "KernelVersion" -> report["KernelVersion"]|>,
    InputForm, PageWidth -> 100], "Text"];
<|"OutputDirectory" -> outdir, "AllChecksPassed" -> report["Result"]["AllChecksPassed"],
  "Failed" -> report["Failed"], "Messages" -> report["Messages"]|>
