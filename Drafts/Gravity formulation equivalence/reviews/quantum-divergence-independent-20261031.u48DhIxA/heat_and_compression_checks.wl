(* Fresh exact matrix checks; z and W only occur in the fixed order z W.
   Treating them as commuting placeholders is legitimate for these expressions,
   which contain one z and one W and perform no odd-variable differentiation.
   This is NOT a spectral calculation on AdS; the a1 endomorphisms are the
   actual note18 Laplace-type potentials. *)
Module[{out, report, eps, pairs, amat, tmat, trA, predicted, ap1,
  ghosta1, mismatch, pmat, rmat, hmat, compressedEigen, checks, exact, preview},
 out = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quantum-divergence-independent-20261031.u48DhIxA";
 report = Block[{$Messages = {}, $MessageList = {}},
   eps[a_, b_, c_] := Signature[{a,b,c}];
   pairs = Flatten[Table[{a,m},{a,3},{m,3}],1];
   amat = Table[-t/kappa Sum[eps[r,pairs[[j,1]],pairs[[i,2]]] z[pairs[[j,2]]] w[pairs[[i,1]],r],{r,3}],{i,9},{j,9}];
   tmat = Table[KroneckerDelta[pairs[[i,1]],pairs[[i,2]]] KroneckerDelta[pairs[[j,1]],pairs[[j,2]]] - KroneckerDelta[pairs[[i,1]],pairs[[j,2]]] KroneckerDelta[pairs[[i,2]],pairs[[j,1]]],{i,9},{j,9}];
   trA = Expand[Tr[amat]];
   predicted = t/kappa Sum[eps[m,a,r] z[m] w[a,r],{m,3},{a,3},{r,3}];
   (* Scalar curvature -6; Delta_phys = nabla*nabla + 2T; Delta_ghost = nabla*nabla + 2. *)
   ap1 = -IdentityMatrix[9]-2 tmat;
   ghosta1 = -3;
   mismatch = Expand[Tr[ap1.amat] - ghosta1 trA];
   pmat = {{1,1},{1,1}}/2;
   rmat = IdentityMatrix[2]-pmat;
   hmat = {{1,0},{0,-1}};
   compressedEigen = Cosh[s];
   checks = <|
     "physical_trace_exact" -> (Expand[trA-predicted] === 0),
     "T_trace_minus_identity_trace" -> (Expand[Tr[tmat.amat]+trA] === 0),
     "actual_a1_physical_contraction" -> (Expand[Tr[ap1.amat]-trA] === 0),
     "fixed_heat_semidensity_defect_4trA" -> (Expand[mismatch-4trA] === 0),
     "projection_idempotence" -> (pmat.pmat === pmat),
     "leakage_square_trace_one" -> (Tr[pmat.hmat.rmat.hmat.pmat] === 1),
     "linear_log_insertion_zero" -> (Tr[pmat.(s hmat).pmat] === 0),
     "compressed_exponential_eigenvalue" -> (FullSimplify[Tr[pmat.MatrixExp[s hmat].pmat]-compressedEigen] === 0),
     "compressed_log_quadratic_half" -> (SeriesCoefficient[Log[compressedEigen],{s,0,2}] === 1/2),
     "radial_integral_for_a_gt_two" -> (FullSimplify[Integrate[Exp[-a r] Sinh[r]^2,{r,0,Infinity},Assumptions->a>2]-2/(a(a^2-4)),Assumptions->a>2] === 0)
   |>;
   <|"Checks"->checks,"AllPassed"->And@@Values[checks],
     "trA"->trA,"actualHeatMismatchCoefficient"->mismatch,
     "Messages"->(ToString[#,InputForm]& /@ $MessageList),
     "ExcludedFailures"->{},
     "Assumptions"->{"kappa nonzero","F=0 for heat a1 fixture","actual note18 Laplace-type potentials","formal independent odd coefficients represented in fixed z W ordering","2x2 compression fixture is not the AdS operator"}|>
 ];
 exact = Export[FileNameJoin[{out,"wolfram_result.wxf"}],report,"WXF"];
 preview = Export[FileNameJoin[{out,"wolfram_result.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
 Export[FileNameJoin[{out,"wolfram_checks.json"}],<|"Checks"->report["Checks"],"AllPassed"->report["AllPassed"],"Messages"->report["Messages"],"ExcludedFailures"->report["ExcludedFailures"]|>,"RawJSON"];
 {preview,exact,report["AllPassed"],report["Messages"]}
]
