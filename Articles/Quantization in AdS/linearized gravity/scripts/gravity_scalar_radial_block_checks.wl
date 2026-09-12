(* Exact checks of the new circular compression/reconstruction pipeline.
   Run in a fresh Mathematica kernel. Symbolic Delta is retained throughout. *)
Get[FileNameJoin[{DirectoryName[$InputFileName],"gravity_scalar_radial_blocks.wl"}]];
Clear[del];
data=ReconstructPrimaryShifts[8,del];
If[FailureQ[data],Print[data];Exit[1]];
allResiduals=Flatten[Values[KeyDrop[#,"level"]]&/@data["checks"]];
known[n_,l_]:=SelectFirst[data["primaryShifts"],#["n"]==n&&#["spin"]==l&]["gammaOverG"];
high=Select[data["primaryShifts"],#["spin"]>=4&];
checks=<|
 "All chiral, parity, and compression residuals through level 8"->allResiduals,
 "Ground result"->Factor[known[0,0]-2del^2(7+2del-8del^2)/(4del^2-1)],
 "First radial primary"->Factor[known[1,0]+2del^2(8del^2+46del+47)/((2del+1)(2del+3))],
 "Lowest spin two"->Factor[known[0,2]+4del(del+1)(4del^2+4del-1)/((2del+1)(2del+3))],
 "Second radial primary"->Factor[known[2,0]+2(84+436del+829del^2+648del^3+196del^4+16del^5)/((2del+1)(2del+3)(2del+5))],
 "High-spin gravity formula on every computed high-spin primary"->Map[
  Factor[#["gammaOverG"]+4(del^2+2#["n"](2del+#["n"]-1))]&,high],
 "Hermitian circular matrices"->Map[Map[Factor,#-Transpose[#],{2}]&,data["radialMatrices"]],
 "Number of primary coefficients"->Length[data["primaryShifts"]]-25,
 "Complete primary count through energy excess eight"->Length[Select[data["primaryShifts"],2#["n"]+#["spin"]<=8&]]-15
|>;
If[!AllTrue[Flatten[Values[checks]],SameQ[#,0]&],Print[checks];Exit[1]];
Print[<|"allPassed"->True,"symbolicLevels"->Range[0,8],
 "primaryCount"->25,"scalarResidualCount"->Length[Flatten[Values[checks]]]|>];
checks
