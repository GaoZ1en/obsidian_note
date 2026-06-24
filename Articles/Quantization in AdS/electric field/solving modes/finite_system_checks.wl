(* ::Package:: *)

(* Finite-radius scalar, Maxwell, and Proca checks in global AdS3.

   Metric:
     ds^2 = -(1+r^2) dt^2 + dr^2/(1+r^2) + r^2 dphi^2.

   This file is meant as a commented companion to finite_system_summary.tex.
   It gives the root equations and verifies the algebraic reductions used in
   the note.  It does not rely on a notebook front end.
*)

ClearAll["Global`*"];

f[r_] := 1 + r^2;

(* ---------------------------------------------------------------------- *)
(* Scalar finite-radius root equations                                     *)
(* ---------------------------------------------------------------------- *)

(* Scalar mass parameterized by Delta: M^2 = Delta (Delta - 2).
   The same regular radial branch is used for standard and alternative
   quantization. *)
scalarMass2[scDelta_] := scDelta (scDelta - 2);

scalarR[omega_, m_Integer, scDelta_, r_] :=
  r^Abs[m] (1 + r^2)^(-(Abs[m] + scDelta)/2) *
    Hypergeometric2F1[(Abs[m] + scDelta - omega)/2,
      (Abs[m] + scDelta + omega)/2, 1 + Abs[m], r^2/(1 + r^2)];

scalarRadialOperator[expr_, omega_, m_Integer, scDelta_, r_] :=
  f[r] D[expr, {r, 2}] + ((1 + 3 r^2)/r) D[expr, r] +
    (omega^2/f[r] - m^2/r^2 - scalarMass2[scDelta]) expr;

(* A representative numerical residual check for the scalar radial equation.
   This is intentionally numerical: a full symbolic Hypergeometric reduction
   is much heavier than needed for this companion file. *)
scalarRadialSampleCheck =
  Chop[
    N[
      scalarRadialOperator[scalarR[3.4, 1, 1.7, r], 3.4, 1, 1.7, r] /.
        r -> 0.8
    ],
    10^-9
  ];

(* Standard quantization: Delta=Delta_+>1 and Dirichlet wall. *)
scalarDirichletEquation[omega_, m_Integer, scDelta_, r0_] :=
  scalarR[omega, m, scDelta, r0];

scalarOmegaStandard[n_Integer?NonNegative, m_Integer, scDelta_] :=
  scDelta + 2 n + Abs[m];

(* Alternative quantization: 0<Delta=Delta_-<=1 and Robin wall. *)
scalarRobinEquation[omega_, m_Integer, scDelta_, r0_] :=
  (Sqrt[f[r]] D[scalarR[omega, m, scDelta, r], r] +
      scDelta scalarR[omega, m, scDelta, r]) /. r -> r0;

scalarOmegaAlternative[n_Integer?NonNegative, m_Integer, scDelta_] :=
  scDelta + 2 n + Abs[m];

(* Example use:
   FindRoot[scalarDirichletEquation[omega, 0, 2, 100] == 0, {omega, 2}]
   FindRoot[scalarRobinEquation[omega, 0, 0.6, 80] == 0, {omega, 0.6}]
*)

(* ---------------------------------------------------------------------- *)
(* Maxwell finite-radius root equations in temporal gauge                  *)
(* ---------------------------------------------------------------------- *)

(* In temporal gauge the physical Maxwell modes can be represented by
      A^t = 0,
      A^r = ((1+r^2)/r) d_phi Psi,
      A^phi = -((1+r^2)/r) d_r Psi.
   The finite wall A^phi[r0]=0 is therefore d_r Psi[r0]=0.
   The regular scalar branch has Delta=2. *)
maxwellPsi[omega_, m_Integer, r_] :=
  r^Abs[m] (1 + r^2)^(-(Abs[m] + 2)/2) *
    Hypergeometric2F1[(Abs[m] + 2 - omega)/2,
      (Abs[m] + 2 + omega)/2, 1 + Abs[m], r^2/(1 + r^2)];

maxwellEquation[omega_, m_Integer, r0_] :=
  D[maxwellPsi[omega, m, r], r] /. r -> r0;

(* Infinite-radius comparison targets in temporal gauge. *)
maxwellOmegaInfinity[n_Integer?NonNegative, m_Integer] :=
  2 + 2 n + Abs[m];

(* Example use:
   FindRoot[maxwellEquation[omega, 0, 100] == 0, {omega, 2}]
   FindRoot[maxwellEquation[omega, 1, 100] == 0, {omega, 3}]
*)

(* ---------------------------------------------------------------------- *)
(* Proca boundary condition from the kinematic constraint                  *)
(* ---------------------------------------------------------------------- *)

(* For Proca with mu^2>0, the divergence of the equation of motion gives
   div A = 0.  Since Sqrt[-g]=r,
      div A = dt At + (1/r) d_r(r Ar) + d_phi Aphi.
   If At and Aphi vanish as wall fields, their tangential derivatives vanish
   on the wall and d_r(r Ar)=0 follows. *)

ClearAll[t, r, ph, At, Ar, Aph];

divA =
  D[At[t, r, ph], t] + (1/r) D[r Ar[t, r, ph], r] +
    D[Aph[t, r, ph], ph];

procaRadialBCCheck =
  FullSimplify[
    divA /. {D[At[t, r, ph], t] -> 0, D[Aph[t, r, ph], ph] -> 0}
  ];

(* procaRadialBCCheck is Ar/r + d_r Ar, i.e. (1/r) d_r(r Ar). *)

(* ---------------------------------------------------------------------- *)
(* Proca decoupling after eliminating At by div A=0                        *)
(* ---------------------------------------------------------------------- *)

ClearAll[mu, psi, varphi, PhiP, PhiM];

procaDop[x_] :=
  f[r] D[x, {r, 2}] + ((1 + 3 r^2)/r) D[x, r]
    - (1/f[r]) D[x, {t, 2}] + (1/r^2) D[x, {ph, 2}]
    + (1 - mu^2 - 1/r^2) x;

(* psi=A^r and varphi=r A^phi.  The two coupled equations are
      D psi - (2/r^2) d_phi varphi = 0,
      D varphi + (2/r^2) d_phi psi = 0. *)
procaPsiEquation =
  procaDop[psi[t, r, ph]] - (2/r^2) D[varphi[t, r, ph], ph];

procaVarphiEquation =
  procaDop[varphi[t, r, ph]] + (2/r^2) D[psi[t, r, ph], ph];

(* PhiP=(varphi+i psi)/2, PhiM=(varphi-i psi)/2.  The substitutions below
   rewrite psi and varphi in terms of PhiP and PhiM before differentiating. *)
varphiExpr = PhiP[t, r, ph] + PhiM[t, r, ph];
psiExpr = -I (PhiP[t, r, ph] - PhiM[t, r, ph]);

procaPsiEquationInPhi =
  procaDop[psiExpr] - (2/r^2) D[varphiExpr, ph];

procaVarphiEquationInPhi =
  procaDop[varphiExpr] + (2/r^2) D[psiExpr, ph];

procaPhiPCheck =
  FullSimplify[
    (procaVarphiEquationInPhi + I procaPsiEquationInPhi)/2
      - (procaDop[PhiP[t, r, ph]] - (2 I/r^2) D[PhiP[t, r, ph], ph])
  ];

procaPhiMCheck =
  FullSimplify[
    (procaVarphiEquationInPhi - I procaPsiEquationInPhi)/2
      - (procaDop[PhiM[t, r, ph]] + (2 I/r^2) D[PhiM[t, r, ph], ph])
  ];

(* Both checks should return 0. *)

(* ---------------------------------------------------------------------- *)
(* Proca finite-radius root determinant                                    *)
(* ---------------------------------------------------------------------- *)

(* Delta=1+mu for the Proca helicity scalar equations.  The regular branch
   has effective angular momentum ell=Abs[m-1] for PhiP and Abs[m+1] for
   PhiM. *)
procaDelta[mu_] := 1 + mu;

procaR[omega_, ell_, mu_, r_] :=
  r^ell (1 + r^2)^(-(ell + procaDelta[mu])/2) *
    Hypergeometric2F1[(ell + procaDelta[mu] - omega)/2,
      (ell + procaDelta[mu] + omega)/2, 1 + ell, r^2/(1 + r^2)];

procaWallDeterminant[omega_, m_Integer, mu_, r0_] := Module[
  {ellP, ellM, rp, rm, dp, dm},
  ellP = Abs[m - 1];
  ellM = Abs[m + 1];
  rp = procaR[omega, ellP, mu, r0];
  rm = procaR[omega, ellM, mu, r0];
  dp = D[r procaR[omega, ellP, mu, r], r] /. r -> r0;
  dm = D[r procaR[omega, ellM, mu, r], r] /. r -> r0;
  rp dm + rm dp
];

procaOmegaInfinity[n_Integer?NonNegative, m_Integer, helicity_String, mu_] :=
  Switch[helicity,
    "+", mu + 1 + 2 n + Abs[m - 1],
    "-", mu + 1 + 2 n + Abs[m + 1]
  ];

(* Example use:
   FindRoot[procaWallDeterminant[omega, 0, 2, 100] == 0, {omega, 4}]
*)

(* Return the verification results when this file is evaluated. *)
{scalarRadialSampleCheck, procaRadialBCCheck, procaPhiPCheck, procaPhiMCheck}
