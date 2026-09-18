(* Reproduces the dedicated xAct MCP check with the full normalization pipeline. *)
Needs["xAct" <> FromCharacterCode[96] <> "xTensor" <> FromCharacterCode[96]];
Needs["xAct" <> FromCharacterCode[96] <> "xTras" <> FromCharacterCode[96]];
DefManifold[M,3,{a,b,c,d}];
DefMetric[-1,met[-a,-b],CD];
DefTensor[avec[-a],M]; DefTensor[pert[-a],M]; DefTensor[xi[a],M];
residual=xi[a]CD[-a][avec[-b]]+avec[-a]CD[-b][xi[a]]-
  xi[a](CD[-a][avec[-b]]-CD[-b][avec[-a]])-CD[-b][xi[a]avec[-a]];
result=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[residual]]]];
Print["Off-shell Cartan residual: ",result];
If[!TrueQ[result===0],Exit[1]];
csResidual=epsilonmet[a,b,c](pert[-a]CD[-b][avec[-c]]+
  avec[-a]CD[-b][pert[-c]])-2epsilonmet[a,b,c]pert[-a]CD[-b][avec[-c]]+
  CD[-a][epsilonmet[a,b,c]avec[-b]pert[-c]];
csResult=FullSimplification[][ToCanonical[ContractMetric[ToCanonical[csResidual]]]];
Print["Off-shell CS variation residual: ",csResult];
If[!TrueQ[csResult===0],Exit[1]];
