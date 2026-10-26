(* Round21: independent first gravitational T O reconstruction checks.
   Run: wolframscript -file half_bps_stress_reconstruction_checks.wl
   Writes the sibling *_results.txt. No research note is modified.
   Conventions: eta=(-+++), Fourier box=s, k>0 is spacelike transfer;
   alpha=kappa^2 Sqrt[CT]/(2 ell^3)=2 Sqrt[10]/N.
   Q=epsilon^{ij}q_i q_j is held FIXED in all a derivatives.
   These are coefficientwise tree checks, not a full interacting OVD theorem.
*)
Needs["xAct`xTensor`"];
ClearAll["StressChecks`*"];
Begin["StressChecks`"];
Block[{$Messages = {}, $MessageList = {}},

checks = <||>;
assert[label_String, expression_] := Module[{v = expression},
  AssociateTo[checks, label -> <|"Passed" -> TrueQ[v], "Value" -> v|>]; v];
ass = a > 0 && b > 0 && k > 0 && z > 0;
disc = Sqrt[(k^2 + (a + b)^2) (k^2 + (a - b)^2)];
xx = a^2 + k^2 - b^2;
la[f_] := D[f, {a, 2}] - D[f, a]/a;
f2 = 8 BesselJ[2, a z]/(a^2 z^2);
ls[f_] := D[f, {z, 2}] + D[f, z]/z - k^2 f;

assert["Normalization alpha", FullSimplify[
 (4 Pi^2 ell^3/nn^2) Sqrt[10 nn^2/Pi^4]/(2 ell^3) == 2 Sqrt[10]/nn,
 Assumptions -> nn > 0 && ell > 0]];
assert["Sourcefree relative-metric ODE", FullSimplify[
 D[z^4 f2, {z, 2}] - 3 D[z^4 f2, z]/z + a^2 z^4 f2 == 0,
 Assumptions -> ass]];
assert["Metric normalizable coefficient", Limit[f2, z -> 0] == 1];
assert["J2 parameter derivative", FullSimplify[
 la[BesselJ[0, a z]] == z^2 BesselJ[2, a z], Assumptions -> ass]];
assert["Triple-Bessel closed-form derivative", FullSimplify[
 la[1/disc] == 4 a^2 (3 xx^2 - disc^2)/disc^5, Assumptions -> ass]];
assert["Triangle-shell angular root", Expand[disc^2 - xx^2 - 4 b^2 k^2] == 0];

(* Independent determinant calculation of the full linear FG scalar box,
   including trace and divergence terms BEFORE restriction to TT.
   This is coordinate Mathematica with xAct loaded, not an independent CAS. *)
coords = {z, t, x, y, w};
eta5 = DiagonalMatrix[{1, -1, 1, 1, 1}];
gam = ConstantArray[0, {5, 5}];
gam[[2, 2]] = aa[z, t, x];
gam[[3, 3]] = bb[z, t, x];
gam[[2, 3]] = gam[[3, 2]] = cc[z, t, x];
metric = ell^2/z^2 (eta5 + ep gam);
inverse = Normal[Series[Inverse[metric], {ep, 0, 1}]];
volume = ell^5/z^5 Normal[Series[Sqrt[-Det[eta5 + ep gam]], {ep, 0, 1}]];
field = ff[z, t, x, y, w];
box = Normal[Series[Sum[D[volume inverse[[i, j]] D[field, coords[[j]]],
 coords[[i]]], {i, 5}, {j, 5}]/volume, {ep, 0, 1}]];
trace = Tr[eta5 . gam];
boxTarget = z^2/ell^2 (D[trace, z] D[field, z]/2 +
 Sum[(eta5[[j, j]] D[trace, coords[[j]]]/2 -
 Sum[eta5[[i, i]] eta5[[j, j]] D[gam[[i, j]], coords[[i]]], {i, 2, 5}])
 D[field, coords[[j]]], {j, 2, 5}] -
 Sum[eta5[[i, i]] eta5[[j, j]] gam[[i, j]] D[field, coords[[i]], coords[[j]]],
 {i, 2, 5}, {j, 2, 5}]);
assert["General FG scalar box variation", Simplify[Coefficient[box, ep] - boxTarget] == 0];
(* Rescaling identity and trace correction are checked with a generic U. *)
fu = uu[z];
assert["BF rescaling", Simplify[
 (z^2/ell^2 (D[z^2/ell^2 fu, {z, 2}] - 3 D[z^2/ell^2 fu, z]/z +
 ss z^2/ell^2 fu) + 4/ell^2 (z^2/ell^2 fu)) -
 z^4/ell^4 (D[fu, {z, 2}] + D[fu, z]/z + ss fu)] == 0];

(* Volterra inverse uses du, not u du; R contains its own u factor. *)
rker = u (BesselI[0, k z] BesselK[0, k u] - BesselK[0, k z] BesselI[0, k u]);
assert["Volterra diagonal zero", Simplify[rker /. z -> u] == 0];
assert["Volterra derivative jump +1", FullSimplify[
 (D[rker, z] /. z -> u) == 1, Assumptions -> k > 0 && u > 0]];
assert["Volterra homogeneous equation off diagonal", FullSimplify[ls[rker] == 0,
 Assumptions -> k > 0 && u > 0 && z > u]];
sourceSeries = Normal[Series[z^4 f2 BesselJ[0, b z], {z, 0, 6}]];
volterraSeries = z^6/36 + z^8 (k^2/36 - a^2/12 - b^2/4)/64;
assert["Lowest source term z4", Coefficient[sourceSeries, z, 4] == 1];
assert["Volterra series through source z6", FullSimplify[
 Normal[Series[ls[volterraSeries] - sourceSeries, {z, 0, 6}]]] == 0];
assert["First TO term z6/36", Integrate[u^5 Log[z/u], {u, 0, z},
 Assumptions -> z > 0] == z^6/36];
assert["Zero finite boundary coefficient", Limit[volterraSeries, z -> 0] == 0];
assert["Zero boundary logarithmic coefficient", Limit[z D[volterraSeries, z], z -> 0] == 0];
assert["No TO z2 or z4", Coefficient[volterraSeries, z, 2] == 0 &&
 Coefficient[volterraSeries, z, 4] == 0];

(* Stress two-point normalization from canonical scalar TT phase space.
   Integral of (epsilon.n.n)(epsilon'.n.n) on S^2 is 8 Pi/15 epsilon:epsilon'. *)
canonicalRhoT = (1/(2 Pi^2)) (a^4/16) (1/8) (8 Pi/15);
assert["Canonical scalar stress TT density", canonicalRhoT == a^4/(480 Pi)];
assert["Unit stress density", Simplify[canonicalRhoT/(1/(3 Pi^4))] == Pi^3 a^4/160];
triangleMoment = Pi a^4 qq (3 xx^2 - disc^2)/(4 disc^5);
amputated = Simplify[(32 Pi^3/Sqrt[ct]) triangleMoment/((Pi^3 a^4/160) (2 Pi^3))];
assert["Independent Ward triangle amputation", Simplify[
 amputated - 640 qq (3 xx^2 - disc^2)/(Pi^2 Sqrt[ct] disc^5)] == 0];
assert["Ward coefficient equals regularity", FullSimplify[
 (amputated /. ct -> 10 nn^2/Pi^4) -
 (8 (2 Sqrt[10]/nn) qq/a^2) la[1/disc], Assumptions -> ass && nn > 0] == 0];
assert["Counterexample M0 vanishes", Simplify[
 (3 xx^2 - disc^2) /. {a -> 1, b -> 1, k -> Sqrt[2]}] == 0];
assert["Counterexample finite-radius TO coefficient nonzero", Simplify[
 (-al qq volterraSeries /. {a -> 1, b -> 1, k -> Sqrt[2]}) +
 al qq (z^6/36 - 5 z^8/1152)] == 0];

(* Compact-energy domain constants. All tensor norms are Euclidean component
   norms on ordered pairs; spectral matrix rank is five. This avoids singular
   boosted polarization vectors at the null edge. dnu=d^4p/(2Pi)^4. *)
boostEigen = (2 en^2 - mass2)/mass2;
stressTracePoly = Expand[mass2^2 ((2/3) boostEigen^2 + 2 boostEigen + 7/3)];
assert["Stress spectral trace polynomial", Simplify[stressTracePoly -
 (8 en^4/3 + 4 en^2 mass2/3 + mass2^2)] == 0];
assert["Uniform null-edge stress trace bound", FullSimplify[
 stressTracePoly <= 5 en^4, Assumptions -> en > 0 && 0 < mass2 <= en^2]];
assert["Stress sqrt-density bound constant", Simplify[Sqrt[(Pi^3/160) 5]] == Sqrt[Pi^3/32]];
assert["Contracted T O density bound constant", Simplify[
 Sqrt[Pi^3/32] Sqrt[2 Pi^3] 2] == Pi^3/2];
coneVolume = Integrate[(4 Pi/3) en^3/(2 Pi)^4, {en, 0, cap}, Assumptions -> cap > 0];
assert["Compact cone Lebesgue spectral volume", coneVolume == cap^4/(48 Pi^3)];
assert["Hilbert-Schmidt vertex constant", Simplify[(Pi^3/2) cap^4 coneVolume] == cap^8/96];
assert["Normalized f2 positive integral measure", (8/(3 Pi)) Integrate[Sin[th]^4, {th, 0, Pi}] == 1];
assert["Volterra majorant coefficient ratio", FullSimplify[
 36/((n + 1)^2 (n + 2)^2 (n + 3)^2) <= 1, Assumptions -> n >= 0]];
assert["Volterra majorant recurrence", FullSimplify[
 ((6 + 2 n)^2/(4^n Factorial[n + 3]^2)) ==
 1/(4^(n - 1) Factorial[n + 2]^2), Assumptions -> Element[n, Integers] && n >= 1]];

(* Matched angular kernel bound: J0(z|a e1-b e_theta|) is a plane-wave
   angular mean, so |d_a J0|<=z and |d_a^2 J0|<=z^2.
   With d=k^2+a^2+b^2-2ab cos(theta), d>=k^2, |d'|<=2(a+b), d''=2,
   |L_a(J0/d)| <= z^2/k^2 + z(4(a+b)/k^4+1/(a k^2))
      +2/k^4+8(a+b)^2/k^6+2(a+b)/(a k^4).
   Multiply by 8|alpha Q|/a^2. Uniform on compact positive a,b,k.
   This proves O(1+z^2), NOT an all-Schwartz tempered-operator theorem. *)
denom = k^2 + a^2 + b^2 - 2 a b Cos[th];
derivativeRule = jj''[a]/denom - 2 jj'[a] D[denom, a]/denom^2 -
 jj[a] D[denom, {a, 2}]/denom^2 + 2 jj[a] D[denom, a]^2/denom^3 -
 jj'[a]/(a denom) + jj[a] D[denom, a]/(a denom^2);
assert["Angular quotient derivative bound identity", Simplify[la[jj[a]/denom] - derivativeRule] == 0];
assert["Angular denominator derivative", D[denom, {a, 2}] == 2];
assert["Angular denominator lower bound", FullSimplify[denom >= k^2,
 Assumptions -> a > 0 && b > 0 && k > 0 && Element[th, Reals]]];

(* Stronger matched one-to-one theorem on compact energies INCLUDING null
   and diagonal edges. The scalar function kernel is extended in L2; this
   excludes adding independent distributions supported only on these edges.
   Delta normalization here uses dnu=d^4p/(2Pi)^4. *)
spectralSqrt = Pi^3 a^2/(4 Sqrt[5]);
assert["Delta-normalized external density product", FullSimplify[
 Sqrt[(Pi^3 a^4/160) (2 Pi^3)] == spectralSqrt, Assumptions -> a > 0]];
assert["Delta-normalized K0 formula", FullSimplify[
 (spectralSqrt (32 al qq (3 xx^2 - disc^2)/disc^5) /. qq -> enn disc^2/(4 a^2)) -
 (2 Pi^3 al/Sqrt[5]) (3 (xx/disc)^2 - 1) enn/disc, Assumptions -> ass] == 0];
stfBasis = {DiagonalMatrix[{1,-1,0}]/Sqrt[2],DiagonalMatrix[{1,1,-2}]/Sqrt[6],
 {{0,1,0},{1,0,0},{0,0,0}}/Sqrt[2],{{0,0,1},{0,0,0},{1,0,0}}/Sqrt[2],
 {{0,0,0},{0,0,1},{0,1,0}}/Sqrt[2]};
nvec = {nx,ny,nz};
assert["Unit-polarization sum 2/3", FullSimplify[
 Total[(nvec . # . nvec)^2& /@ stfBasis] - (2/3)(nvec . nvec)^2] == 0];
assert["Triangle angular numerator bound", FullSimplify[Abs[3 cang^2-1] <= 2,
 Assumptions -> -1 <= cang <= 1]];
velocityD = (1-vv uu1)^2-(1-vv^2)(1-uu1^2-uu2^2-uu3^2);
assert["Velocity expression for D squared", Expand[velocityD-
 ((uu1-vv)^2+(1-vv^2)(uu2^2+uu3^2))] == 0];
longitudinalIntegral = Integrate[1/(tt^2+cc0^2 rr0^2),{tt,-Infinity,Infinity},
 Assumptions -> cc0 > 0 && rr0 > 0];
assert["Longitudinal positive majorant integral", longitudinalIntegral == Pi/(cc0 rr0)];
velocityOuterIntegral = 4 Pi Integrate[rr0^2/Sqrt[1-rr0^2],{rr0,0,1}];
assert["Outer velocity null-edge integral", velocityOuterIntegral == Pi^2];
dInverseL2Bound = (1/4)(cap^2/2)^2 (2 Pi^2) velocityOuterIntegral;
assert["Unweighted D inverse squared integral bound constant", dInverseL2Bound == Pi^4 cap^4/8];
assert["Matched K0 compact Hilbert-Schmidt constant", FullSimplify[
 4 Pi^3 Sqrt[2/15] Sqrt[dInverseL2Bound]/(2 Pi)^4,
 Assumptions -> cap > 0] == Pi cap^2/(8 Sqrt[15])];
assert["I0 difference positive-series majorant ratio", FullSimplify[1/n^2 <= 1,
 Assumptions -> n >= 1]];
assert["Matched KB compact Hilbert-Schmidt constant", Simplify[(cap^8/96)/36] == cap^8/3456];
(* Therefore ||Kz-K0||_HS <= |alpha| I0(2 B z)
   [Pi B^4 z^2/(8 Sqrt[15])+B^8 z^6/3456], with a factor ||fhat||_infinity
   under Fourier smearing. This is one mixed block, not a full CFT domain. *)

(* High-precision quadratures. Bound tails using |J_n|<=1 for integer n
   and K0(t)<=Sqrt[Pi/(2t)] Exp[-t] for t>0. *)
numData = Map[Function[v, Module[{av=v[[1]],bv=v[[2]],kv=v[[3]],d0,x0,num,exact,tail},
 d0=Sqrt[(kv^2+(av+bv)^2)(kv^2+(av-bv)^2)]; x0=av^2+kv^2-bv^2;
 num=NIntegrate[u^3 BesselK[0,kv u] BesselJ[2,av u] BesselJ[0,bv u],
 {u,0,100},WorkingPrecision->40,AccuracyGoal->29,PrecisionGoal->29];
 exact=N[4 av^2 (3 x0^2-d0^2)/d0^5,38];
 tail=N[Sqrt[Pi/2] kv^(-4) Gamma[7/2,100 kv],20];
 <|"Parameters"->v,"Integral"->num,"Exact"->exact,"Residual"->num-exact,"TailBound"->tail|>
 ]],{{1,2,3},{2,1,2},{1,1,1},{1,1,Sqrt[2]}}];
assert["All triple-Bessel numerical residuals below 1e-27", And@@Map[Abs[#["Residual"]]<10^-27&,numData]];
assert["All triple-Bessel tails below 5e-39", And@@Map[#["TailBound"]<5 10^-39&,numData]];

matchData = Module[{av=1,bv=2,kv=3,zv=7/10,d0,x0,m0,h,vv,rr},
 d0=Sqrt[(kv^2+(av+bv)^2)(kv^2+(av-bv)^2)]; x0=av^2+kv^2-bv^2;
 m0=32 (3 x0^2-d0^2)/d0^5; h[t_]:=t^2 BesselJ[2,av t] BesselJ[0,bv t];
 vv=BesselI[0,kv zv]m0-8/av^2 NIntegrate[
 u(BesselI[0,kv zv]BesselK[0,kv u]-BesselK[0,kv zv]BesselI[0,kv u])h[u],
 {u,0,zv},WorkingPrecision->40,AccuracyGoal->29,PrecisionGoal->29];
 rr=8/av^2(BesselI[0,kv zv]NIntegrate[u BesselK[0,kv u]h[u],{u,zv,100},
 WorkingPrecision->40,AccuracyGoal->29,PrecisionGoal->29]+
 BesselK[0,kv zv]NIntegrate[u BesselI[0,kv u]h[u],{u,0,zv},
 WorkingPrecision->40,AccuracyGoal->29,PrecisionGoal->29]);
 <|"Parameters"->{av,bv,kv,zv},"AlphaQ"->1,"Volterra"->N[vv,30],"Regular"->N[rr,30],"Residual"->N[vv-rr,30]|>];
assert["Matched Volterra equals regular Green numerically", Abs[matchData["Residual"]]<10^-27];

report = <|"Title"->"Round21 independent gravitational T O reconstruction checks",
 "WolframVersion"->System`$Version,"Checks"->checks,
 "TripleBesselNumerics"->numData,"MatchedGreenNumerics"->matchData,
 "Series"-><|"Metric"->Normal[Series[z^4 f2,{z,0,8}]],
 "NormalizedVolterra"->volterraSeries,"PhysicalTOCorrection"->-al qq volterraSeries|>,
 "NormBound"->"||B_TO(z,f) Psi_n|| <= |alpha| C_n ||fhat||_infinity (B^8/96) (z^6/36) I0(sqrt(S) z) ||Psi_n||; B=R+M, C_n=sqrt((n+1)(n+2))+2n+sqrt(n(n-1)); dnu=d^4p/(2Pi)^4.",
 "MatchedCompactHSBound"->"Including null and diagonal edges in the specified spacelike mixed block: ||K0||HS <= |alpha| Pi B^2/(8 Sqrt[15]); ||Kz-K0||HS <= |alpha| I0(2 B z) [Pi B^4 z^2/(8 Sqrt[15])+B^8 z^6/3456]. Multiply by ||fhat||_infinity for Fourier smearing. Measures are dnu(p)dnu(q). No additional edge-supported distributions are included.",
 "Scope"->"Analytic inequalities use the stated positive-integral and phase-space arguments; finite CAS checks do not establish a full interacting operator algebra or unrestricted Schwartz temperedness.",
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>;
allPassed = And@@Map[TrueQ[#["Passed"]]&,Values[checks]] && Length[$MessageList]==0;
AssociateTo[report,"AllPassed"->allPassed];
outputPath = FileNameJoin[{DirectoryName[$InputFileName],"half_bps_stress_reconstruction_checks_results.txt"}];
Export[outputPath,ToString[report,InputForm,PageWidth->110],"Text"];
Print["Checks: ",Length[checks],"; all passed: ",allPassed,"; messages: ",Length[$MessageList]];
Print["Results: ",outputPath];
If[!allPassed,Print[Select[checks,!TrueQ[#["Passed"]]&]]];
];
End[];
Exit[If[StressChecks`allPassed,0,1]];
