(* ::Package:: *)

(* ===================================================================== *)
(*  Neumann gluing of two massive free scalars: finite-mode truncation   *)
(*  companion script to finite truncation.md                             *)
(*                                                                       *)
(*  Question (from advisor):                                             *)
(*    In 1+1D, quantize the two intervals I1=[-L,0], I2=[0,L] with       *)
(*    Neumann boundary conditions, truncate to a finite number of modes, *)
(*    glue them with a boundary interaction at x=0, and diagonalize the  *)
(*    truncated Hamiltonian.  Does this numerically reproduce the        *)
(*    spectrum of the fully glued field theory?                          *)
(*                                                                       *)
(*  Method:                                                              *)
(*    Expand the gluing Hamiltonian in the decoupled Neumann mode basis, *)
(*    truncate at N modes per interval, and diagonalize the quadratic    *)
(*    mass matrix M = diag(omega^2) + kappa c c^T.  The normal-mode      *)
(*    frequencies are Sqrt[eig(M)]; compare with the exact spectrum of   *)
(*    the interface problem (Sturm-Liouville with the interface          *)
(*    conditions read off the action).                                   *)
(*                                                                       *)
(*  Conventions (covariant phase space formalism, Harlow-Wu):            *)
(*      action boundary term  S_int = - (kappa/2)(phi1-phi2)^2 |_{x=0}   *)
(*      interface conditions  phi1'(0) = phi2'(0) = -kappa(phi1-phi2)    *)
(*      even tower            omega[n], kappa independent                *)
(*      odd tower             tan(kL) = + 2 kappa / k,                  *)
(*                            unique root in ((n-1)pi/L,(n-1/2)pi/L)     *)
(*      gluing Hamiltonian    H = E_bulk + (kappa/2)(phi1-phi2)^2 |0     *)
(*                            (the covariant phase space Noether charge) *)
(*                                                                       *)
(*  Result: the truncated diagonalization reproduces the glued spectrum  *)
(*  cleanly.  The even tower is exact at every N (the combinations       *)
(*  s_n = (Q1n + (-1)^n Q2n)/Sqrt[2] decouple from the interaction),    *)
(*  the odd tower converges linearly in 1/N, and the mass matrix is      *)
(*  positive definite, so there is no spurious mode.                     *)
(*                                                                       *)
(*  For comparison the script also diagonalizes the flipped-sign form    *)
(*  H = E_bulk - (kappa/2)(phi1-phi2)^2 |0, which is NOT the covariant   *)
(*  phase space charge.  It develops a spurious (tachyonic for kappa     *)
(*  above a threshold) mode, which is the numerical signature of having  *)
(*  used the wrong sign for the boundary term.                           *)
(* ===================================================================== *)

ClearAll["Global`*"];

(* ---------------- parameters ---------------- *)
L  = Pi;        (* half length of each interval *)
m  = 1.0;       (* mass of the scalar *)
kappaList = {0.1, 1.0, 5.0};   (* interface couplings *)
Nlist     = {10, 40, 120};     (* truncation: modes n = 0..N per interval *)

(* ---------------- decoupled Neumann modes ---------------- *)
(* frequency of decoupled mode n (n=0 is the constant mode, omega0 = m) *)
omega[n_] := Sqrt[m^2 + (n Pi/L)^2];

(* value of the normalized spatial mode at x = 0, on interval 1 and 2 *)
c1[n_] := If[n == 0, 1/Sqrt[L], (-1)^n Sqrt[2/L]];   (* u_{1,n}(0), cos(n pi (x+L)/L) *)
c2[n_] := If[n == 0, 1/Sqrt[L], Sqrt[2/L]];          (* u_{2,n}(0), cos(n pi x/L)      *)

(* ---------------- exact glued spectrum (CPS conventions) ---------------- *)
(*   even tower: omega[n], n >= 0 (kappa independent)                        *)
(*   odd tower : tan(k L) = +2 kappa / k, unique root in ((n-1)pi/L,(n-1/2)pi/L) *)
wOdd[kap_, n_] := Module[{k0},
  k0 = kk /. FindRoot[Tan[kk L] == 2 kap/kk,
    {kk, (n - 0.5 - 0.1) Pi/L, (n - 1 + 0.0001) Pi/L, (n - 0.5 - 0.0001) Pi/L}];
  Sqrt[m^2 + k0^2]];

(* exact interlaced spectrum: {omega0, wodd1, omega1, wodd2, omega2, ...} *)
exactInterlaced[kap_, Nmax_] :=
  Sort[Flatten[{Table[omega[n], {n, 0, Nmax}], Table[wOdd[kap, n], {n, 1, Nmax + 1}]}]];

(* ---------------- truncated gluing Hamiltonian ---------------- *)
(* coordinates: Q = {Q_{1,0}..Q_{1,N}, Q_{2,0}..Q_{2,N}},                 *)
(* H_sig = 1/2 P.P + 1/2 Q . M_sig . Q  with                              *)
(* M_sig = diag(omega^2) + sig kappa c c^T,                               *)
(* where c is the vector of coefficients of phi1(0)-phi2(0) in Q.         *)
(*   sig = +1 : H = E_bulk + (kappa/2)(phi1-phi2)^2|0  (CPS charge,       *)
(*              positive definite, the correct one)                       *)
(*   sig = -1 : H = E_bulk - (kappa/2)(phi1-phi2)^2|0  (flipped sign,     *)
(*              indefinite; wrong)                                        *)
massMatrix[kap_, Nmax_, sig_] := Module[{cc, nn},
  nn = 2 (Nmax + 1);
  cc = Join[Table[c1[j - 1], {j, 1, Nmax + 1}],
            -Table[c2[j - 1], {j, 1, Nmax + 1}]];
  DiagonalMatrix[Flatten[{Table[omega[n]^2, {n, 0, Nmax}],
                          Table[omega[n]^2, {n, 0, Nmax}]}]]
    + sig kap Outer[Times, cc, cc]];

truncatedFreqs[kap_, Nmax_, sig_] :=
  Sort[Sqrt[Re[Eigenvalues[massMatrix[kap, Nmax, sig]]]]];

(* ---------------- main check ---------------- *)
check[kap_, Nmax_] := Module[{freqP, freqM, ex, err},
  freqP = truncatedFreqs[kap, Nmax, +1];
  freqM = truncatedFreqs[kap, Nmax, -1];
  ex    = exactInterlaced[kap, Nmax];
  Print["kappa = ", kap, ",  N = ", Nmax, "   (total truncated modes = ", 2 (Nmax + 1), ")"];
  Print["   CPS H = E_bulk + (k/2)[phi]^2|0  (correct sign):"];
  Print["     lowest freq (should be omega0 = m exactly) = ", N[freqP[[1]], 12]];
  err = Table[freqP[[j]] - ex[[j]], {j, 1, 5}];
  Print["     |err| vs exact for the 5 lowest modes = ", N[Abs[err], 5]];
  Print["   flipped H = E_bulk - (k/2)[phi]^2|0  (wrong sign):"];
  Print["     lowest freq (spurious/tachyonic) = ", N[freqM[[1]], 7]];
  ];

(* ---------------- run ---------------- *)
Print["===================================================================="];
Print[" Two Neumann intervals, massive scalar:  L = ", L, ", m = ", m];
Print[" Exact glued spectrum (CPS):  even omega[n];  odd tan(kL) = +2 kappa/k"];
Print["===================================================================="];
Do[check[kap, Nmax], {kap, {0.1, 1.0, 5.0}}, {Nmax, {10, 40}}];

Print["--- convergence of the lowest odd frequency vs N (kappa=1) ---"];
wOddExact = wOdd[1.0, 1];
Do[
  fr = truncatedFreqs[1.0, Nmax, +1];
  Print["  N=", Nmax, ": |err odd1| = ", N[Abs[fr[[2]] - wOddExact], 8],
        "   (N*err = ", N[Nmax*Abs[fr[[2]] - wOddExact], 6], ")  => ~1/N scaling"];
  , {Nmax, {10, 40, 120, 300}}];

Print["--- flipped sign: spurious mode (lowest eig) vs kappa ---"];
Do[
  lam = truncatedFreqs[kap, Nmax, -1][[1]]^2;
  Print["  kappa=", N[kap, 2], ", N=", Nmax, ":  lowest eig = ", N[lam, 6],
        "  (freq = ", N[truncatedFreqs[kap, Nmax, -1][[1]], 6], ")"];
  , {kap, kappaList}, {Nmax, Nlist}];
