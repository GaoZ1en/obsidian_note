(* Supplied-proof audit: proposed repair of CJ v3 (5.44), not a fresh-source discovery. *)
ClearAll[om, nu, m, n, al, beta, t1, t2, jj, aa, vv, kk, mm, out];
out = Block[{$Messages = {}, $MessageList = {}},
  jj = {{0, 1}, {-1, 0}};
  aa = om jj;
  vv = aa + nu IdentityMatrix[2]; (* A-i d_y on exp(i nu y) *)
  kk = -aa + nu IdentityMatrix[2]; (* repaired fermion operator -A-i d_y *)
  mm = -aa.aa + nu^2 IdentityMatrix[2];
  <|
    "Kernel" -> $Version,
    "Assumptions" -> "Real om,nu; beta>0; beta=2 Pi t2, alpha=2 Pi t1 with t2>0. A=om J is skew and g=I. Torus branch has rotation eigenvalue -i n.",
    "BosonicOperator" -> mm,
    "FactorizationResidual" -> Simplify[mm - vv.kk],
    "FlowOperatorDeterminant" -> Factor[Det[vv]],
    "FermionOperatorDeterminant" -> Factor[Det[kk]],
    "BosonOperatorDeterminant" -> Factor[Det[mm]],
    "OriginalHessianFactorizationResidual" -> Simplify[om IdentityMatrix[2] - nu jj - (-jj.vv)],
    "TorusEigenvalueResidual" -> Simplify[((2 Pi m - n al)/beta - I n /. {al -> 2 Pi t1, beta -> 2 Pi t2}) - (m - n (t1 + I t2))/t2],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-checks-output.txt", ToString[out, InputForm, PageWidth -> 110], "Text"];
out
