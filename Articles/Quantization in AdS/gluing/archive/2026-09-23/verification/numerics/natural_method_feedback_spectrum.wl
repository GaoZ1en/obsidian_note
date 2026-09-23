(* ::Package:: *)

(* ===================================================================== *)
(*  Boundary-driven feedback gluing: truncated port + Dirichlet modes    *)
(*                                                                       *)
(*  Model: formalism.md.                                                 *)
(*                                                                       *)
(*  Each half-interval is expanded off shell as                          *)
(*      phi_i(t,y) = (y/L) q_i(t) + Sum_{n=1}^N c_{i,n}(t) u_n(y),       *)
(*      u_n(y) = Sqrt[2/L] Sin[n Pi y/L]   (strict Dirichlet modes),     *)
(*  where q_i is the artificial-cut port value and the interconnection   *)
(*  is q_1 = q_2 = q with the flux balance p_1 + p_2 = 0 obtained from   *)
(*  the variation of q.  The exact global Dirichlet tower is             *)
(*      K_r = r Pi/(2L),   Omega_r = Sqrt[m^2 + K_r^2],   r = 1,2,...    *)
(*                                                                       *)
(*  Route A (primary, the note's own construction):                      *)
(*      truncated regional Dirichlet-to-Neumann map                      *)
(*      D_N(omega) = 1/L + (2/L)(m^2-omega^2) Sum_n 1/(omega_n^2-omega^2)*)
(*      with omega_n^2 = m^2 + (n Pi/L)^2.  The feedback spectrum is     *)
(*      {zeros of D_N} U {poles omega_n}:  the even global modes r = 2n  *)
(*      are exactly the poles (q = 0, c_1 = -c_2 = e_n), and the odd     *)
(*      modes are zeros of D_N.  D_N -> k cot(kL) as N -> Infinity.      *)
(*                                                                       *)
(*  Route B (Galerkin truncation of Sec. 9's recovered global            *)
(*      variational problem): promote q to a coordinate and diagonalize  *)
(*      K_N v = omega^2 G_N v.  The 2N low modes converge to the global  *)
(*      tower (odd tower faster, O(N^-3)); the pencil has 2N+1 Ritz       *)
(*      values, all upper bounds for the first 2N+1 global squared        *)
(*      frequencies, and the top one is a band-top overestimate of        *)
(*      Omega_{2N+1} that grows with the cutoff as in any Galerkin        *)
(*      scheme.  See ../formalism_audit.md Section 5.                     *)
(*                                                                       *)
(*  Checks:                                                              *)
(*   (1) even tower exact at every N >= n (residual < 10^-30);           *)
(*   (2) odd tower converges: Route A errors match the hard-constraint   *)
(*       kappa->Infinity table in deprecated/continuous theory I (O(1/N));*)
(*   (3) D_N -> k cot(kL) pointwise;                                     *)
(*   (4) Route B top Ritz value grows with N, 2N modes track the tower.  *)
(* ===================================================================== *)

ClearAll["Global`*"];

ell = 1;
mass = 1;
nList = {8, 16, 32, 64};
modeCount = 8;

(* ---- exact global Dirichlet tower ---- *)
exactWaveNumber[r_] := r Pi/(2 ell);
exactOmega[r_] := Sqrt[mass^2 + exactWaveNumber[r]^2];
exactFirst[count_] := Table[exactOmega[r], {r, 1, count}];

(* ---- half-interval strict Dirichlet mode data ---- *)
halfK[n_] := n Pi/ell;
halfOmegaSq[n_] := mass^2 + halfK[n]^2;
halfOmega[n_] := Sqrt[halfOmegaSq[n]];
portOverlap[n_] := (-1)^(n + 1) Sqrt[2 ell]/(n Pi);   (* A_n = int_0^L (y/L) u_n dy *)
cutSlope[n_] := (-1)^n (n Pi/ell) Sqrt[2/ell];         (* u_n'(L) *)

identityCheck =
  And @@ Table[Simplify[portOverlap[n] cutSlope[n] == -2/ell], {n, 1, 8}];

(* ---- Route A: truncated DtN map and its spectral data ---- *)
dtn[Nmax_, omega_] :=
  Module[{s},
   s = Sum[1/(halfOmegaSq[n] - omega^2), {n, 1, Nmax}];
   1/ell + (2/ell) (mass^2 - omega^2) s
   ];

dtnZeros[Nmax_] :=
  Module[{poles, intervals, mid},
   poles = Table[halfOmega[n], {n, 1, Nmax}];
   intervals = Prepend[Partition[poles, 2, 1], {0, poles[[1]]}];
   Table[
    mid = (int[[1]] + int[[2]])/2;
    omega /.
     FindRoot[dtn[Nmax, omega] == 0,
      {omega, mid, int[[1]] + 10^-30, int[[2]] - 10^-30},
      WorkingPrecision -> 40],
    {int, intervals}
    ]
   ];

spectrumFeedback[Nmax_] :=
  Sort[N[Join[dtnZeros[Nmax], Table[halfOmega[n], {n, 1, Nmax}]], 40],
   Less];

(* ---- Route B: Galerkin pencil of the connected variational problem ---- *)
connectedG[Nmax_] :=
  Module[{A, dim, G},
   A = Table[portOverlap[n], {n, 1, Nmax}];
   dim = 1 + 2 Nmax;
   G = ConstantArray[0, {dim, dim}];
   G[[1, 1]] = 2 ell/3;
   G[[1, 2 ;; Nmax + 1]] = A; G[[2 ;; Nmax + 1, 1]] = A;
   G[[1, Nmax + 2 ;; dim]] = A; G[[Nmax + 2 ;; dim, 1]] = A;
   G[[2 ;; Nmax + 1, 2 ;; Nmax + 1]] = IdentityMatrix[Nmax];
   G[[Nmax + 2 ;; dim, Nmax + 2 ;; dim]] = IdentityMatrix[Nmax];
   G
   ];

connectedK[Nmax_] :=
  Module[{A, wn, dim, K},
   A = Table[portOverlap[n], {n, 1, Nmax}];
   wn = Table[halfOmegaSq[n], {n, 1, Nmax}];
   dim = 1 + 2 Nmax;
   K = ConstantArray[0, {dim, dim}];
   K[[1, 1]] = 2 (1/ell + mass^2 ell/3);
   K[[1, 2 ;; Nmax + 1]] = mass^2 A; K[[2 ;; Nmax + 1, 1]] = mass^2 A;
   K[[1, Nmax + 2 ;; dim]] = mass^2 A; K[[Nmax + 2 ;; dim, 1]] = mass^2 A;
   K[[2 ;; Nmax + 1, 2 ;; Nmax + 1]] = DiagonalMatrix[wn];
   K[[Nmax + 2 ;; dim, Nmax + 2 ;; dim]] = DiagonalMatrix[wn];
   K
   ];

spectrumGalerkin[Nmax_, prec_] :=
  Module[{G, K, vals},
   G = N[connectedG[Nmax], prec];
   K = N[connectedK[Nmax], prec];
   vals = Eigenvalues[N[{K, G}, prec]];
   Sort[Sqrt[Select[vals, # > 10^-40 &]], Less]
   ];

(* ---- error bookkeeping: spectrumList is an evaluated sorted list ---- *)
towerErrors[spectrumList_] :=
  Module[{w, target, err},
   w = Take[spectrumList, modeCount];
   target = exactFirst[modeCount];
   err = Abs[(w - target)/target];
   {Max[err[[{1, 3, 5, 7}]]], Max[err[[{2, 4, 6, 8}]]]}
   ];

Print["===================================================================="];
Print[" Boundary-driven feedback gluing: ell=1, m=1"];
Print[" exact global tower (first ", modeCount, "): ",
  N[exactFirst[modeCount], 12]];
Print[" exact identity A_n u_n'(L) = -2/L for n=1..8 : ", identityCheck];

(* ==================================================================== *)
(*  Route A table                                                        *)
(* ==================================================================== *)
Print["--------------------------------------------------------------------"];
Print[" Route A (DtN feedback): columns {N, odd max rel err, even max rel err}"];
routeATable =
  Table[{nn, towerErrors[spectrumFeedback[nn]]}, {nn, nList}];
Print[TableForm[
   N[Map[{#[[1]], #[[2, 1]], #[[2, 2]]} &, routeATable], 12]]];

(* Route A even tower: exact poles, so even error is at machine zero.   *)
(* Store the odd-tower benchmark values (independent high-precision     *)
(* evaluation; identical to the kappa->Infinity hard-constraint table   *)
(* recorded in deprecated/numerics/README.md for the deprecated         *)
(* continuous theory I benchmark).                                      *)
routeAExpectedOdd = {2.51506598*^-2, 1.244544927*^-2,
   6.237121366*^-3, 3.127611828*^-3};
routeAComputedOdd = routeATable[[All, 2, 1]];
routeAEvenMax = Max[routeATable[[All, 2, 2]]];
routeAResidual = Max[Abs[routeAComputedOdd - routeAExpectedOdd]];

(* ==================================================================== *)
(*  DtN continuum limit and pole/zero count                             *)
(* ==================================================================== *)
Print["--------------------------------------------------------------------"];
Print[" D_N(omega) -> k cot(kL) pointwise (|D_N - k cot(kL)|):"];
dtnContinuumResidual[Nmax_, omega_] :=
  Module[{kcont},
   kcont = Sqrt[omega^2 - mass^2];
   Abs[dtn[Nmax, omega] - kcont Cot[kcont ell]]
   ];
Print[TableForm[
   Table[{nn,
     N[dtnContinuumResidual[nn, exactOmega[3]], 12],
     N[dtnContinuumResidual[nn, 5/2], 12]},
    {nn, nList}]]];

Print[" pole/zero count check (N=8): ",
  Length[Table[halfOmega[n], {n, 1, 8}]], " poles, ",
  Length[dtnZeros[8]], " zeros, total ",
  Length[spectrumFeedback[8]], " = 2N modes."];

(* ==================================================================== *)
(*  Route B table                                                        *)
(* ==================================================================== *)
Print["--------------------------------------------------------------------"];
Print[" Route B (Galerkin connected variational problem):"];
Print[" columns: {N, odd max rel err, even max rel err, max Ritz value}"];
routeBTable =
  Table[{nn, towerErrors[spectrumGalerkin[nn, 40]],
    Last[spectrumGalerkin[nn, 40]]}, {nn, nList}];
Print[TableForm[
   N[Map[{#[[1]], #[[2, 1]], #[[2, 2]], #[[3]]} &, routeBTable], 12]]];

routeBExpectedOdd = {1.4862230436463078*^-3, 1.8753671697656652*^-4,
   2.406459345119355*^-5, 3.063434031010887*^-6};
routeBComputedOdd = routeBTable[[All, 2, 1]];
routeBEvenMax = Max[routeBTable[[All, 2, 2]]];
routeBResidual = Max[Abs[routeBComputedOdd - routeBExpectedOdd]];

(* Route B top Ritz value grows with the cutoff, as in any                     *)
(* Galerkin scheme; it is not a mode without a counterpart.                          *)
topRitzGrows =
  And @@ Thread[Most[routeBTable[[All, 3]]] < Rest[routeBTable[[All, 3]]]];

(* ==================================================================== *)
(*  Exact even-tower eigenvectors in the Galerkin pencil                 *)
(* ==================================================================== *)
Print["--------------------------------------------------------------------"];
evenVector[Nmax_, n_] :=
  Module[{v},
   v = ConstantArray[0, 1 + 2 Nmax];
   v[[1]] = 0;
   v[[1 + n]] = 1;
   v[[1 + Nmax + n]] = -1;
   v
   ];

evenResidual[Nmax_, n_] :=
  Module[{G, K, v, w2},
   G = N[connectedG[Nmax], 50];
   K = N[connectedK[Nmax], 50];
   v = evenVector[Nmax, n];
   w2 = halfOmegaSq[n];
   Norm[(K - w2 G) . v]/(Norm[K] Norm[v] + 1)
   ];

evenResiduals = Table[evenResidual[8, n], {n, 1, 4}];
Print[" (K - omega_{2n}^2 G).v residuals for even modes r=2,4,6,8, N=8: ",
  N[evenResiduals, 4]];
evenTowerExact = Max[evenResiduals] < 10^-30;

(* positivity of the Galerkin kinetic metric *)
GPositive[Nmax_] :=
  Module[{G, eigs},
   G = N[connectedG[Nmax], 40];
   eigs = Eigenvalues[G];
   Min[eigs] > 0
   ];
Print[" G_N positive definite at N=8,64 : ",
  GPositive[8], ", ", GPositive[64]];

(* ==================================================================== *)
(*  Odd-mode feedback check: p_1 + p_2 = 2 D_N(omega) q at a zero        *)
(* ==================================================================== *)
oddFeedbackResidual[Nmax_, j_] :=
  Module[{z, c1, p},
   z = dtnZeros[Nmax][[j]];
   c1 = Table[-(mass^2 - z^2) portOverlap[n]/(halfOmegaSq[n] - z^2),
     {n, 1, Nmax}];
   p = 2/ell + 2 Sum[c1[[n]] cutSlope[n], {n, 1, Nmax}];
   Abs[p]
   ];
Print[" p_1+p_2 residual at the first four D_N zeros, N=8 : ",
  N[Table[oddFeedbackResidual[8, j], {j, 1, 4}], 4]];

(* ==================================================================== *)
(*  Benchmarks                                                           *)
(* ==================================================================== *)
Print["--------------------------------------------------------------------"];
Print[" Route A odd-tower residual vs stored benchmark = ",
  N[routeAResidual, 6]];
Print[" Route A max even-tower error (should be ~0) = ",
  N[routeAEvenMax, 4]];
Print[" Route B odd-tower residual vs stored benchmark = ",
  N[routeBResidual, 6]];
Print[" Route B max even-tower error (should be ~0) = ",
  N[routeBEvenMax, 4]];
Print[" Route B top Ritz value increases with N = ", topRitzGrows];

If[! TrueQ[identityCheck] || routeAResidual > 10^-8 ||
  routeAEvenMax > 10^-8 || routeBResidual > 10^-8 ||
  routeBEvenMax > 10^-8 || ! TrueQ[evenTowerExact] ||
  ! TrueQ[topRitzGrows],
  Print["ERROR: boundary-driven feedback benchmark failed."];
  Exit[1];
  ];

Print[" All boundary-driven feedback checks passed."];
