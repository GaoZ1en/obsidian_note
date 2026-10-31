(* Non-blind follow-up requested after the independent result was frozen.
   Checks a specified coincident-heat finite-part prescription, not a QME. *)
Module[{t, m, alpha, bvol, barea, flat, flatFP, wall, wallFP, mat, compressed,
        secondDerivative, secondFP, result, out},
 flat = bvol Exp[-m^2 t]/(4 Pi t)^(3/2);
 flatFP = Limit[flat - bvol/(4 Pi)^(3/2) (t^(-3/2) - m^2 t^(-1/2)), t -> 0,
    Direction -> "FromAbove", Assumptions -> m > 0 && bvol > 0];
 (* Flat half-space, Dirichlet image, normal smearing exp(-alpha r^2).
    A compact completion with the same boundary jets has the same t^0 term. *)
 wall = barea/(4 Pi t)^(3/2) (Sqrt[Pi]/(2 Sqrt[alpha]) - Sqrt[Pi]/(2 Sqrt[alpha + 1/t]));
 wallFP = Limit[wall - barea/(16 Pi Sqrt[alpha]) t^(-3/2) + barea/(16 Pi) t^(-1), t -> 0,
    Direction -> "FromAbove", Assumptions -> alpha > 0 && barea > 0];
 secondDerivative = -flat/(2 t);
 secondFP = Limit[secondDerivative + bvol/(2 (4 Pi)^(3/2))
    (t^(-5/2) - m^2 t^(-3/2) + m^4/2 t^(-1/2)), t -> 0,
    Direction -> "FromAbove", Assumptions -> m > 0 && bvol > 0];
 mat = {{2, 1}, {1, 2}};
 compressed = FullSimplify[Log[mat[[1, 1]]] - MatrixFunction[Log, mat][[1, 1]]];
 result = <|
   "flat_massive_heat_minimal_FP" -> flatFP,
   "flat_second_derivative_insertion_minimal_FP" -> secondFP,
   "half_space_Dirichlet_minimal_FP" -> wallFP,
   "half_space_FP_matches_boundary_jet" -> FullSimplify[wallFP - alpha barea/(32 Pi)],
   "compressed_logdet_minus_compressed_log" -> compressed,
   "compression_counterexample_strictly_positive" -> (compressed > 0 // FullSimplify)
 |>;
 out = FileNameJoin[{DirectoryName[$InputFileName], "heat_followup_checks.actual.txt"}];
 Export[out, ToString[result, InputForm, PageWidth -> 100], "Text"];
 result
]
