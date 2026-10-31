(* Source version 2: preserve version 1 unchanged, but avoid xTensor's
   protected symbol delta by using a private matrix name. All local
   formulae and test points are otherwise unchanged. *)
With[{sourceText = Import[FileNameJoin[{DirectoryName[$InputFileName], "checks-v1.wl"}], "Text"]},
  ToExpression[StringReplace[sourceText, RegularExpression["\\bdelta\\b"] -> "kroneckerMatrix"]]
]
