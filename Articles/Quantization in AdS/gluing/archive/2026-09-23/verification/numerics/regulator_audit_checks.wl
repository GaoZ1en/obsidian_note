(* ::Package:: *)

(* ===================================================================== *)
(*  Regulator audit for the boundary-feedback interval scalar             *)
(*                                                                       *)
(*  Model: ../formalism.md.  Audited claims: ../formalism_audit.md.       *)
(*                                                                       *)
(*  Regional off-shell decomposition on each half interval,               *)
(*      phi_i(t,y) = (y/L) q_i(t) + Sum_{n=1}^N c_{i,n}(t) u_n(y),       *)
(*      u_n(y) = Sqrt[2/L] Sin[n Pi y/L],                                *)
(*  with A_n = Integrate[(y/L) u_n, {y,0,L}], g_n = A_n k_n^2,           *)
(*      b = (L/2) (g;g),  d = (A;A),  h2 = L/3.                          *)
(*                                                                       *)
(*  Three finite systems are compared, all at L = m = 1:                  *)
(*                                                                       *)
(*   (P) port pencil, 2N+1 configuration variables, q kept independent:  *)
(*         M_port = [[1, d],[d^T, 2 h2]],                                 *)
(*         K_port = [[D, m^2 d],[m^2 d^T, 2(1/L + m^2 h2)]];              *)
(*   (C) strong-flux constrained pencil, 2N variables, q = b^T c:        *)
(*         M = 1 + b d^T + d b^T + 2 h2 b b^T,                            *)
(*         K = D + m^2(b d^T + d b^T) + 2(m^2 L/3 + 1/L) b b^T;          *)
(*   (G) exact uncut Dirichlet tower Omega_r^2 = m^2 + r^2 Pi^2/(4 L^2). *)
(*                                                                       *)
(*  Checks:                                                              *)
(*   (1) b_n = (-1)^(n+1) n Pi/Sqrt[2 L]: the constraint solves the      *)
(*       boundary value through an unbounded normal-derivative trace,    *)
(*       so Norm[b]^2 = (Pi^2/L) Sum n^2 and cond[M] ~ N^4, whereas      *)
(*       cond[M_port] ~ N.                                              *)
(*   (2) Rayleigh-Ritz ordering Omega_r^2 <= lambda_r[P] <= mu_r[C]:     *)
(*       both pencils are Bubnov-Galerkin pencils on nested subspaces    *)
(*       of H^1_0(-L,L) with span[C] contained in span[P], so min-max    *)
(*       forces upper bounds and monotone convergence; fixed-window      *)
(*       error is O(N^-3) and the port error is 1/4 of the constrained.  *)
(*   (3) the top port Ritz value is a band-top overestimate of           *)
(*       Omega_{2N+1}, not a mode without a continuum counterpart.       *)
(*   (4) residual port inertia rho_N = 2(L/3 - Sum A_n^2) ~ 4L/(Pi^2 N). *)
(*   (5) declared reference transport T_N = M^(-1/2) of the regional     *)
(*       product structure: Tr[beta beta^H] grows linearly in N, and     *)
(*       most of it sits in the single lowest glued normal mode.         *)
(*   (6) parity-resolved continuum DD-to-DN comparison: square-cutoff    *)
(*       Hilbert-Schmidt partial sums grow as (Log N)^2/(2 Pi^2),        *)
(*       independently of the mass.                                      *)
(* ===================================================================== *)

ClearAll["Global`*"];

ell = 1;
mass = 1;

halfK[n_] := n Pi/ell;
halfOmegaSq[n_] := mass^2 + halfK[n]^2;
portOverlap[n_] := (-1)^(n + 1) Sqrt[2 ell]/(n Pi);      (* A_n *)
cutFlux[n_] := portOverlap[n] halfK[n]^2;                 (* g_n = -u_n'(L) *)

h2 = ell/3;

regionalData[nn_] := Module[{aVec, gVec, bVec, dVec, dMat},
  aVec = Table[N[portOverlap[n]], {n, 1, nn}];
  gVec = Table[N[cutFlux[n]], {n, 1, nn}];
  bVec = (ell/2) Join[gVec, gVec];
  dVec = Join[aVec, aVec];
  dMat = DiagonalMatrix[N[Join[Table[halfOmegaSq[n], {n, 1, nn}],
      Table[halfOmegaSq[n], {n, 1, nn}]]]];
  <|"A" -> aVec, "b" -> bVec, "d" -> dVec, "D" -> dMat,
    "w" -> Sqrt[Diagonal[dMat]]|>];

constrainedPencil[nn_] := Module[{r = regionalData[nn], b, d, mm, kk},
  b = r["b"]; d = r["d"];
  mm = IdentityMatrix[2 nn] + Outer[Times, b, d] + Outer[Times, d, b] +
    2 h2 Outer[Times, b, b];
  kk = r["D"] + mass^2 (Outer[Times, b, d] + Outer[Times, d, b]) +
    2 (mass^2 ell/3 + 1/ell) Outer[Times, b, b];
  {mm, kk, r}];

portPencil[nn_] := Module[{r = regionalData[nn], d, mm, kk},
  d = r["d"];
  mm = ArrayFlatten[{{IdentityMatrix[2 nn], Transpose[{d}]}, {{d}, {{2 h2}}}}];
  kk = ArrayFlatten[{{r["D"], Transpose[{mass^2 d}]}, {{mass^2 d}, {{2 (1/ell + mass^2 h2)}}}}];
  {mm, kk}];

exactTower[count_] := Table[N[mass^2 + r^2 Pi^2/(4 ell^2)], {r, 1, count}];

symSqrt[mm_, pow_] := Module[{ev, u},
  {ev, u} = Eigensystem[(mm + Transpose[mm])/2];
  Transpose[u] . DiagonalMatrix[ev^pow] . u];

sci[x_] := ToString[N[x], InputForm];

Print["==== (1) unbounded constraint direction and conditioning ===="];
Print["b_n formula check (n = 1..6): ",
  Table[N[(ell/2) cutFlux[n] - (-1)^(n + 1) n Pi/Sqrt[2 ell]], {n, 1, 6}]];
Do[Module[{mc, kc, r, mp, kp},
   {mc, kc, r} = constrainedPencil[nn];
   {mp, kp} = portPencil[nn];
   Print["N = ", nn,
     "   Norm[b]^2 = ", sci[Norm[r["b"]]^2],
     "   (Pi^2/L) Sum n^2 = ", sci[N[(Pi^2/ell) Sum[n^2, {n, 1, nn}]]],
     "   cond[M] = ", sci[LinearAlgebra`MatrixConditionNumber[mc, 2]],
     "   cond[M_port] = ", sci[LinearAlgebra`MatrixConditionNumber[mp, 2]]]],
 {nn, {32, 64, 128}}];

Print[];
Print["==== (2)-(3) Rayleigh-Ritz ordering and fixed-window error ===="];
Do[Module[{mc, kc, r, mp, kp, mu, la, ex, win},
   {mc, kc, r} = constrainedPencil[nn];
   {mp, kp} = portPencil[nn];
   mu = Sort[Eigenvalues[{kc, mc}]];
   la = Sort[Eigenvalues[{kp, mp}]];
   ex = exactTower[2 nn + 1];
   win = Min[6, 2 nn];
   Print["N = ", nn,
     "   port <= constrained: ",
     And @@ Table[la[[i]] <= mu[[i]] (1 + 10^-9), {i, 1, 2 nn}],
     "   port >= exact: ",
     And @@ Table[la[[i]] >= ex[[i]] (1 - 10^-9), {i, 1, 2 nn + 1}],
     "   err6[port] = ", sci[Max[Abs[la[[1 ;; win]] - ex[[1 ;; win]]]]],
     "   err6[constr] = ", sci[Max[Abs[mu[[1 ;; win]] - ex[[1 ;; win]]]]],
     "   top port = ", sci[Last[la]],
     "   exact_{2N+1} = ", sci[Last[ex]]]],
 {nn, {8, 16, 32, 64, 128}}];

Print[];
Print["==== (4) residual port inertia ===="];
Do[Print["N = ", nn, "   rho_N = ",
   sci[2 (ell/3 - Sum[portOverlap[n]^2, {n, 1, nn}])],
   "   4L/(Pi^2 N) = ", sci[4 ell/(Pi^2 nn)]],
 {nn, {32, 64, 128, 256}}];

Print[];
Print["==== (5) declared transport T_N = M^(-1/2): Tr[beta beta^H] and overlap ===="];
Do[Module[{mc, kc, r, mhi, kt, ev, u, wt, ot, wref, alpha, beta, rows, ord, tot, sv},
   {mc, kc, r} = constrainedPencil[nn];
   mhi = symSqrt[mc, -1/2];
   kt = mhi . kc . mhi; kt = (kt + Transpose[kt])/2;
   {ev, u} = Eigensystem[kt];
   wt = Sqrt[Abs[ev]];
   ot = u;                                    (* rows of ot are global normal modes *)
   wref = r["w"];
   alpha = (1/2) (DiagonalMatrix[Sqrt[wt]] . ot . DiagonalMatrix[1/Sqrt[wref]]
       + DiagonalMatrix[1/Sqrt[wt]] . ot . DiagonalMatrix[Sqrt[wref]]);
   beta = (1/2) (DiagonalMatrix[Sqrt[wt]] . ot . DiagonalMatrix[1/Sqrt[wref]]
       - DiagonalMatrix[1/Sqrt[wt]] . ot . DiagonalMatrix[Sqrt[wref]]);
   rows = Total[beta^2, {2}];
   ord = Ordering[wt];
   tot = Total[rows];
   sv = SingularValueList[LinearSolve[alpha, beta]];
   Print["N = ", nn, "   Tr[beta beta^H] = ", ToString@NumberForm[tot, {12, 6}],
     "   /N = ", ToString@NumberForm[tot/nn, {8, 6}],
     "   lowest-mode row = ", ToString@NumberForm[rows[[First[ord]]], {12, 6}],
     "   share = ", ToString@NumberForm[100 rows[[First[ord]]]/tot, {5, 1}], "%",
     "   Log[F_N] = ", ToString@NumberForm[(1/4) Total[Log[1 - sv^2]], {8, 4}],
     "   Log[F_N]/Log[N] = ",
     ToString@NumberForm[If[nn == 1, 0., (1/4) Total[Log[1 - sv^2]]/Log[nn]], {8, 4}],
     "   CCR residual = ",
     sci[Max[Abs[alpha . Transpose[alpha] - beta . Transpose[beta]
         - IdentityMatrix[2 nn]]]]]],
 {nn, {1, 32, 64, 128, 256, 512, 1024}}];

Print[];
Print["==== (5b) two other reference declarations on the same reduced space ===="];
Print["    (i)  coefficient-frame product covariance transported by M^(1/2);"];
Print["    (ii) ground state of (1/2)(v^T M v + c^T D c), which needs no transport."];
Do[Module[{mc, kc, r, mh, mhi, kt, ktd, om, omi, omd, omdi, gq, gp, vi, vii},
   {mc, kc, r} = constrainedPencil[nn];
   mh = symSqrt[mc, 1/2]; mhi = symSqrt[mc, -1/2];
   kt = mhi . kc . mhi; kt = (kt + Transpose[kt])/2;
   ktd = mhi . r["D"] . mhi; ktd = (ktd + Transpose[ktd])/2;
   om = symSqrt[kt, 1/2]; omi = symSqrt[kt, -1/2];
   omd = symSqrt[ktd, 1/2]; omdi = symSqrt[ktd, -1/2];
   gq = (1/2) mh . DiagonalMatrix[1/r["w"]] . mh;
   gp = (1/2) mh . DiagonalMatrix[r["w"]] . mh;
   vi = (1/2) (Tr[om . gq] + Tr[omi . gp]) - nn;
   vii = (1/4) (Tr[om . omdi] + Tr[omi . omd]) - nn;
   Print["N = ", nn, "   (i) = ", sci[vi],
     "   (ii) = ", ToString@NumberForm[vii, {12, 6}]]],
 {nn, {32, 64, 128, 256, 512}}];

Print[];
Print["==== (6) continuum DD-to-DN square-cutoff Hilbert-Schmidt sums ===="];
hsPartial[nn_, mm_] := Module[{s, wn, wj, ov, fac},
  s = Table[N[j - 1/2], {j, 1, nn}];
  wn = Table[N[Sqrt[mm^2 + (n Pi/ell)^2]], {n, 1, nn}];
  wj = Sqrt[mm^2 + (s Pi/ell)^2];
  ov = Table[2 n/(Pi (n^2 - s[[j]]^2)), {j, 1, nn}, {n, 1, nn}];
  fac = Table[(1/2) (Sqrt[wj[[j]]/wn[[n]]] - Sqrt[wn[[n]]/wj[[j]]]), {j, 1, nn}, {n, 1, nn}];
  Total[(fac ov)^2, 2]];
Module[{ns, v0, v1},
 ns = {64, 128, 256, 512, 1024, 2048};
 v0 = hsPartial[#, 0] & /@ ns;
 v1 = hsPartial[#, 1] & /@ ns;
 Do[Print["N = ", ns[[i]],
   "   m=0: ", ToString@NumberForm[v0[[i]], {10, 6}],
   "   second difference/(2 Log[2]^2) = ",
   ToString@NumberForm[(v0[[i]] - 2 v0[[i - 1]] + v0[[i - 2]])/(2 Log[2]^2), {8, 6}],
   "   m=1: ", ToString@NumberForm[v1[[i]], {10, 6}],
   "   -> ", ToString@NumberForm[(v1[[i]] - 2 v1[[i - 1]] + v1[[i - 2]])/(2 Log[2]^2), {8, 6}]],
  {i, 3, Length[ns]}];
 Print["target 1/(2 Pi^2) = ", ToString@NumberForm[N[1/(2 Pi^2)], {8, 6}]]];
