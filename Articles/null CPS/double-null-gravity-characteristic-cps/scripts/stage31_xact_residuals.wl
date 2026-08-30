(* xAct residuals supporting the Stage 3.1 Damour Ward derivation.
   Run in a fresh xAct core kernel. *)

ClearAll[assertXActZero];
assertXActZero[label_, expr_] := Module[{r},
  r = ToCanonical[ContractMetric[ToCanonical[expr]]];
  If[TrueQ[r === 0],
    Print["PASS ", label],
    Print["FAIL ", label, ": residual = ", InputForm[r]]; Exit[1]
  ]
];

DefManifold[CutM, 2, {aa, bb, cc, dd}];
DefMetric[1, gCut[-aa, -bb], CutD, {"|", "D"}];
DefTensor[sigCut[-aa, -bb], CutM, Symmetric[{-aa, -bb}]];
DefTensor[vecXi[aa], CutM];
DefTensor[muCut[], CutM];
DefTensor[areaCut[], CutM];

conformalLieResidual =
  1/2 sigCut[aa, bb] (
    CutD[-aa][vecXi[-bb]] + CutD[-bb][vecXi[-aa]] -
    gCut[-aa, -bb] CutD[-cc][vecXi[cc]]) -
  sigCut[bb, -aa] CutD[-bb][vecXi[aa]] +
  1/2 sigCut[bb, -bb] CutD[-aa][vecXi[aa]];

integrationByPartsResidual =
  areaCut[] (sigCut[bb, -aa] CutD[-bb][vecXi[aa]] -
      muCut[] CutD[-aa][vecXi[aa]]) -
  (CutD[-bb][areaCut[] sigCut[bb, -aa] vecXi[aa]] -
    CutD[-aa][areaCut[] muCut[] vecXi[aa]] +
    areaCut[] (CutD[-aa][muCut[]] -
      CutD[-bb][sigCut[bb, -aa]]) vecXi[aa] -
    CutD[-bb][areaCut[]] sigCut[bb, -aa] vecXi[aa] +
    CutD[-aa][areaCut[]] muCut[] vecXi[aa]);

assertXActZero[
  "V33 conformal Lie contraction before tracefree restriction",
  conformalLieResidual];
assertXActZero[
  "V33 tangential integration by parts Damour coefficient",
  integrationByPartsResidual];

Print["PASS all Stage-3.1 xAct residuals"];
