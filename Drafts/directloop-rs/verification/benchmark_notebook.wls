(* Original notebook engine, unchanged, with its normal equation/checkpoint I/O.
   Usage: wolframscript -file verification/benchmark_notebook.wls result.json 16 4 *)
root = DirectoryName[DirectoryName[$InputFileName]];
If[Length[$ScriptCommandLine] < 4, Print["Arguments: output.json maximum-length kernels"]; Exit[1]];
output = $ScriptCommandLine[[2]];
maxLength = ToExpression[$ScriptCommandLine[[3]]];
workers = ToExpression[$ScriptCommandLine[[4]]];
If[!IntegerQ[maxLength] || maxLength < 4 || maxLength > 22 || OddQ[maxLength] || !IntegerQ[workers] || workers < 1, Exit[1]];
source = First[FileNames["directloopTest1*.nb", DirectoryName[root]]];
nb = Get[source];
cells = Cases[nb, Cell[b_BoxData, "Input", ___] :> b, Infinity];
If[Length[cells] != 82, Print["Notebook layout changed"]; Exit[1]];
held = Map[ToExpression[#, StandardForm, HoldComplete] &, cells];
Do[Apply[CompoundExpression, held[[i]]], {i, {13,22,23,24,25,26,40,42,43,44,45,46,47}}];
If[workers > 1, mmaStartKernels[workers]];
actualWorkers = Length[Kernels[]];
(* Mathematica definition loading and kernel startup are outside this timer.
   The Python driver measures Rust externally, including process startup;
   Rust compilation is completed before running the benchmark driver. *)
directory = CreateDirectory[FileNameJoin[{DirectoryName[ExpandFileName[output]], "mma-data-"<>CreateUUID[]}]];
{seconds, rows} = AbsoluteTiming[mmaReproduceTable[maxLength,"Directory"->directory,"Kernels"->workers,"Resume"->False]];
If[!ListQ[rows], Print[rows]; Exit[1]];
Export[output,<|"implementation"->"original notebook", "mathematica"->$Version,
  "system"->$SystemID,"requested_workers"->workers,"actual_subkernels"->actualWorkers,
  "wall_seconds"->seconds,"source_sha256"->FileHash[source,"SHA256","HexString"],
  "data_directory"->directory,"levels"->rows|>,"RawJSON"];
Print["Wall seconds: ",seconds];
