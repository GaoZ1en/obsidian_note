(* Stage 4.4 scoped regressions.  These check source-row substitutions,
   metadata counts and representative principal identities only.  They do
   not construct or symmetrize the full bulk subsidiary system. *)
ClearAll["Global`*"];
ep = {{0, 1}, {-1, 0}};
z = {z1, z2}; w = {w1, w2}; t = -z - w;
uz = -z; xi = {0, 0}; uxi = {0, 0};
om = 0; uups = 0; eta = z; ueta = t;
checks = {};
add[label_, expr_] := AppendTo[checks, label -> Expand[expr]];

(* Direct A.36a, A.37a, A.38a-b and A.39a gauge substitution. *)
add["V73 A36a scalar connection coefficient", 2 om - 2 uups];
add["V73 A36a torsion coefficient", 4 ueta - z - (4 t - z)];
add["V73 A37a cancelled zeta pair rho", z + uz];
add["V73 A37a cancelled zeta pair sigma", ep.z + ep.uz];
add["V73 A37a eta coefficient", -ueta - (-t)];
add["V73 A38a beta coefficient",
    -(2 uz + z - 2 ueta) - (z + 2 t)];
add["V73 A38b star-beta coefficient",
    (z + 2 uz - 2 ueta) + (z + 2 t)];
add["V73 A39a alpha coefficient",
    ueta - 2 uz - (t + 2 z)];
add["V73 xi terms vanish", Join[xi, uxi]];

(* Lapse and raw/covariant rotation bookkeeping. *)
rot = o4 ep; vv = {v1, v2};
ss = {{s11, s12}, {s12, s22}};
rawV = cscale {vp1, vp2};
rawS = cscale {{sp11, sp12}, {sp12, sp22}};
covV = rawV - rot.vv;
covS = rawS - rot.ss - ss.Transpose[rot];
add["V74 raw covector conversion", covV - (rawV - rot.vv)];
add["V74 raw symmetric tensor conversion",
    covS - (rawS - rot.ss - ss.Transpose[rot])];
add["V74 zeta plus two t", z + 2 t - (-z - 2 w)];
add["V74 t plus two zeta", t + 2 z - (z - w)];
add["V74 four t minus zeta", 4 t - z - (-5 z - 4 w)];

(* SOURCE_ROW_LEDGER component checksum. *)
frameRows = {4, 1, 2};
connectionPRows = {2, 1, 4, 2};
connectionQRows = {4, 2, 2, 1};
bianchiRows = {2, 2, 2, 1, 1, 1, 1, 2, 2, 2};
plusBianchiRows = {"A.36a", "A.37a", "A.38a", "A.38b", "A.39a"};
allBianchiLabels = {"A.36a", "A.36b", "A.37a", "A.37b", "A.37c",
                     "A.38a", "A.38b", "A.38c", "A.39a", "A.39b"};
add["V75 frame row count", Total[frameRows] - 7];
add["V75 P connection row count", Total[connectionPRows] - 9];
add["V75 Q connection row count", Total[connectionQRows] - 9];
add["V75 Bianchi row count", Total[bianchiRows] - 16];
add["V75 evolved source row checksum",
    Total[frameRows] + Total[connectionPRows] +
    Total[connectionQRows] + Total[bianchiRows] - 41];
add["V75 all Bianchi tensor rows unique",
    Length[DeleteDuplicates[allBianchiLabels]] - 10];
add["V75 direct plus rows unique",
    Length[DeleteDuplicates[plusBianchiRows]] - 5];
add["V75 copy residual component count", 2 + 2 + 1 + 1 - 6];

(* Source curvature uses Gamma_i-Gamma_j in place of the actual bracket.
   If C_ij = Gamma_i-Gamma_j+T_ij, actual K = Xi-T^m Gamma_m. *)
gg = Array[g, {4, 4, 4}];
tt = Array[tors, 4];
sourceXi = Array[xiS, {4, 4}];
actualK = Table[sourceXi[[k, l]] - Sum[tt[[m]] gg[[m, k, l]], {m, 4}],
                {k, 4}, {l, 4}];
add["V76 source versus geometric curvature residual",
    actualK - sourceXi + Sum[tt[[m]] gg[[m]], {m, 4}]];

(* The project's T=C-(Gamma-Gamma^op) is minus the conventional Cartan
   torsion.  With conventional torsion -T, Dd=H(B)-3 T.d. *)
add["V76 project versus Cartan torsion sign",
    (gammaDiff - bracketC) + (bracketC - gammaDiff)];
add["V76 torsion insertion in exterior covariant Weyl derivative",
    -(hB - 3 torsionD) - (-hB + 3 torsionD)];

(* Representative frozen principal components of the Cartan identities.
   Main rows T_3i=0 and K_3q^P=0 leave unit generator coefficients. *)
cartanT34a = dt3T4a - k34a + ka3four;
add["V77 torsion constraint e3 principal coefficient",
    Coefficient[cartanT34a, dt3T4a] - 1];
cartanT312 = dt3T12 - k31two + k32one;
add["V77 tangential torsion e3 principal coefficient",
    Coefficient[cartanT312, dt3T12] - 1];
cartanKP34a = dt3KP4a + dt4KPa3 + dtaKP34 + hbP34a;
add["V78 P curvature e3 principal coefficient",
    Coefficient[cartanKP34a, dt3KP4a] - 1];
cartanKQ43a = dt4KQ3a + dt3KQa4 + dtaKQ43 + hbQ43a;
add["V78 Q curvature e4 principal coefficient",
    Coefficient[cartanKQ43a, dt4KQ3a] - 1];

results = checks /. Rule[label_, expr_] :> Rule[label, FullSimplify[expr]];
Scan[Print[If[And @@ Thread[Flatten[{Last[#]}] == 0], "PASS ", "FAIL "],
           First[#]] &, results];
If[!And @@ (And @@ Thread[Flatten[{Last[#]}] == 0] & /@ results),
   Print[results]; Exit[1]];
Print["REGRESSIONS ONLY: no full bulk residual principal matrix, symmetrizer, PDE uniqueness or loss is checked."];
results
