(* Read selected definition cells without evaluating the notebook's large runs.
   Usage: wolframscript -file verification/export_reference.wls output.json 14
   No formula, definition or notebook file is changed. *)
root = DirectoryName[DirectoryName[$InputFileName]];
output = If[Length[$ScriptCommandLine] >= 2, $ScriptCommandLine[[2]], FileNameJoin[{root, "verification", "reference-small.json"}]];
maxLength = If[Length[$ScriptCommandLine] >= 3, ToExpression[$ScriptCommandLine[[3]]], 12];
If[!IntegerQ[maxLength] || maxLength < 4 || maxLength > 18 || OddQ[maxLength], Print["Reference length must be even, 4..18"]; Exit[1]];
source = First[FileNames["directloopTest1*.nb", DirectoryName[root]]];
nb = Get[source];
cells = Cases[nb, Cell[b_BoxData, "Input", ___] :> b, Infinity];
If[Length[cells] != 82, Print["Notebook cell layout changed; inspect definition indices before running."]; Exit[1]];
held = Map[ToExpression[#, StandardForm, HoldComplete] &, cells];
Do[Apply[CompoundExpression, held[[i]]], {i, {13,22,23,24,25,26,40,42,43,44,45,46,47}}];
If[!MatrixQ[canonicalDirectionD4, IntegerQ] || Head[mmaTraceBatch] =!= CompiledFunction, Print["Definition loading failed"]; Exit[1]];
levels = Table[
  keys = mmaBasisKeys[n];
  seeds = mmaSeedKeys[n];
  terms = mmaSDEBatch[seeds, n-2];
  bySeed = GroupBy[terms, First -> Rest];
  traces = mmaTraceBatch[keys, n];
  traces = If[traces === {}, {}, Sort[DeleteDuplicates[mmaNormalizeTrRecords[traces]]]];
  Print["Exporting L=", n, " basis=", Length[keys], " seeds=", Length[seeds], " trace=", Length[traces]];
  <|"length" -> n, "basis" -> keys, "seeds" -> seeds,
    "sde" -> Table[<|"seed" -> seeds[[i]], "terms" -> Lookup[bySeed, i, {}]|>, {i,Length[seeds]}],
    "trace" -> traces|>,
  {n,4,maxLength,2}];
SeedRandom[20261016];
rankCases = Table[
  m = RandomInteger[{1,30}]; n = RandomInteger[{1,24}]; r = RandomInteger[{1,Min[m,n]}];
  mat = RandomInteger[{-1000000,1000000},{m,r}].RandomInteger[{-1000000,1000000},{r,n}];
  <|"matrix" -> mat, "rank" -> MatrixRank[mat]|>, {40}];
AppendTo[rankCases, <|"matrix" -> {{2^63-1,1,2^63-2},{1,2^63-1,2^63-1}}, "rank" -> 2|>];
AppendTo[rankCases, <|"matrix" -> ConstantArray[0,{8,9}], "rank" -> 0|>];
canonicalCases = Table[
  w = RandomInteger[{1,4},RandomInteger[{0,26}]];
  <|"word" -> w-1, "key" -> mmaKeyFromWord[w]|>,{1000}];
Export[output, <|"source_sha256" -> FileHash[source,"SHA256","HexString"],
  "mathematica" -> $Version, "system" -> $SystemID, "lambda" -> "7/5",
  "levels" -> levels, "rank_cases" -> rankCases, "canonical_cases" -> canonicalCases|>, "RawJSON"];
Print["Wrote ",output];
