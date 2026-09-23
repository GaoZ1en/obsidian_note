ClearAll["Global`*"];
checks = <||>;
record[name_, expr_] := AssociateTo[checks, name -> TrueQ[expr]];

(* Finite changes of Wick coordinates, with a fixed sign convention. *)
wickShift[f_, d_] := Sum[(hb d/2)^k/Factorial[k] D[f, {z, 2 k}],
  {k, 0, Floor[Exponent[f, z]/2]}];
record["square finite subtraction", Expand[wickShift[z^2, c] - z^2 - hb c] === 0];
record["quartic finite subtraction", Expand[wickShift[z^4, c] - z^4 - 6 hb c z^2 - 3 hb^2 c^2] === 0];
record["Wick change composition through degree eight",
  And @@ Table[Expand[wickShift[wickShift[z^n, a], b] - wickShift[z^n, a+b]] === 0, {n, 0, 8}]];
potA = mm z^2/2 + ll z^4/24 + ee;
potB = (mm-ll hb c/2) wickShift[z^2,c]/2 + ll wickShift[z^4,c]/24 +
  ee - mm hb c/2 + ll hb^2 c^2/8;
record["mass and vacuum energy transport", Expand[potA-potB] === 0];
record["force transport", Expand[D[potA-potB,z]] === 0];

(* General finite-renormalization chain rule, checked on a nonlinear map. *)
zmap[v_] := v + aa v^2 + bb v^3;
ymap[v_] := v + cc v^2;
record["insertion chain rule", Expand[D[zmap[ymap[v]],v] - (D[zmap[w],w] /. w -> ymap[v]) D[ymap[v],v]] === 0];
record["two insertion contact chain rule",
  Expand[D[zmap[ymap[v]],{v,2}] -
    (D[zmap[w],{w,2}] /. w -> ymap[v]) D[ymap[v],v]^2 -
    (D[zmap[w],w] /. w -> ymap[v]) D[ymap[v],{v,2}]] === 0];
zinv = v-aa v^2+(2 aa^2-bb) v^3;
record["formal inverse through third order", Normal[Series[zmap[zinv]-v,{v,0,3}]] === 0];

(* The cross-contraction coefficients are independent of a mode cutoff. *)
wc[n_, m_, r_] := Binomial[n,r] Binomial[m,r] Factorial[r];
record["two quartic vertices", Table[wc[4,4,r],{r,1,4}] === {16,72,96,24}];
record["quartic and square", Table[wc[4,2,r],{r,1,2}] === {8,12}];
record["cubic and linear", wc[3,1,1] === 3];

(* Canonical Moyal calculation: a finite algebra diagnostic, not a field proof. *)
moyal[f_, g_] := Expand[Sum[(I hb/2)^r/Factorial[r] Sum[
  (-1)^k Binomial[r,k] D[f,{z,r-k},{pp,k}] D[g,{z,k},{pp,r-k}],
  {k,0,r}],{r,0,8}]];
comm[f_,g_] := Expand[moyal[f,g]-moyal[g,f]];
ham = pp^2/2 + mm z^2/2 + ll z^4/24;
record["Hamiltonian generates the field", Expand[I comm[ham,z]/hb-pp] === 0];
record["Hamiltonian generates the momentum", Expand[I comm[ham,pp]/hb+mm z+ll z^3/6] === 0];
record["quartic quantum term retained", Expand[I comm[z^4/24,pp^3]/hb + z^3 pp^2/2 - hb^2 z/4] === 0];
record["central mismatch survives commutators", comm[ham,c] === 0];
record["commutator derivation", Expand[comm[ham,moyal[z^2,pp^2]] - moyal[comm[ham,z^2],pp^2] - moyal[z^2,comm[ham,pp^2]]] === 0];
fx = ax z+bx pp; fy = ay z+by pp; fz = az z+bz pp;
qthree = fz^3+3 hb dd fz;
record["first order field sign and factor", Expand[I comm[qthree fz/24 + hb dd fz^2/8,fx]/hb +
  (az bx-bz ax) qthree/6] === 0];
firstCommutator = comm[-rx qthree/6,fy]+comm[fx,-ry qthree/6];
record["first order crossing commutator", Expand[firstCommutator + I hb/2
  (rx (az by-bz ay)+ry (ax bz-bx az)) (fz^2+hb dd)] === 0];

(* Ordered Dyson words, verified in a noncommuting matrix example. *)
va = {{1,2},{3,0}}; vb = {{0,1},{2,-1}}; obs = {{2,0},{1,3}};
br[a_,b_] := a.b-b.a;
u = (IdentityMatrix[2]-I ll vb-ll^2 vb.vb/2).(IdentityMatrix[2]-I ll va-ll^2 va.va/2);
ui = (IdentityMatrix[2]+I ll va-ll^2 va.va/2).(IdentityMatrix[2]+I ll vb-ll^2 vb.vb/2);
evolved = Map[Normal[Series[#,{ll,0,2}]]&,ui.obs.u,{2}];
expected = obs+I ll (br[va,obs]+br[vb,obs])-ll^2 (br[va,br[va,obs]]/2+br[vb,br[vb,obs]]/2+br[va,br[vb,obs]]);
record["earlier vertex is the outer nested commutator", Simplify[evolved-expected] === ConstantArray[0,{2,2}]];

(* Regional response and the mismatch section, before any causal limit. *)
d1 = kk Coth[kk l1]; d2 = kk Coth[kk l2];
kcut = Sinh[kk l1] Sinh[kk l2]/(kk Sinh[kk(l1+l2)]);
assum = kk>0 && l1>0 && l2>0;
record["interface inverse", FullSimplify[(d1+d2) kcut==1,assum]];
bm = {{1,-1},{d1,d2}}; rm = {{kcut d2,kcut},{-kcut d1,kcut}};
record["actual mismatch right inverse", FullSimplify[bm.rm==IdentityMatrix[2],assum]];
h1 = Sinh[kk yy]/Sinh[kk l1]; h2 = Sinh[kk zz]/Sinh[kk l2];
record["cross-region response equals the uncut response", FullSimplify[
  h1 kcut h2==Sinh[kk yy] Sinh[kk zz]/(kk Sinh[kk(l1+l2)]),assum]];

(* Coordinate energy and momentum balance; no covariant tensor theorem is inferred. *)
pot = mm f[t,x]^2/2 + ll hh[x] f[t,x]^4/24;
en = (D[f[t,x],t]^2+D[f[t,x],x]^2)/2+pot;
flux = -D[f[t,x],t] D[f[t,x],x];
eomRule = Derivative[2,0][f][t,x] -> Derivative[0,2][f][t,x]-mm f[t,x]-ll hh[x] f[t,x]^3/6;
record["stationary-coupling energy balance", Expand[(D[en,t]+D[flux,x]) /. eomRule] === 0];
momentum = D[f[t,x],t] D[f[t,x],x];
stress = (D[f[t,x],t]^2+D[f[t,x],x]^2)/2-pot;
record["spatial coupling force retained", Expand[(D[momentum,t]-D[stress,x]-ll D[hh[x],x] f[t,x]^4/24) /. eomRule] === 0];
record["cut energy exchange cancels", Expand[dq p1+dq p2 /. p2 -> -p1] === 0];
vf = -D[ff[x] D[f[t,x],x],x]+ff[x](mm f[t,x]+ll hh[x] f[t,x]^3/6);
vg = -D[gg[x] D[f[t,x],x],x]+gg[x](mm f[t,x]+ll hh[x] f[t,x]^3/6);
record["classical smeared energy bracket", Expand[vf gg[x] pp - ff[x] pp vg - pp D[f[t,x],x](ff[x] D[gg[x],x]-D[ff[x],x] gg[x])] === 0];

(* Finite-degree projection diagnostic for the continuum polynomial proof. *)
poly = (a1+c b1)^5 (a2+p b2)^3 + c p a1^2;
delta = Expand[poly-(poly /. {c->0,p->0})];
record["every projection-difference term has a mismatch", Expand[delta /. {c->0,p->0}] === 0];
record["projection fixes the matched polynomial", (poly /. {c->0,p->0}) === a1^5 a2^3];

result = <|"allChecksPassed" -> And@@Values[checks], "checkCount" -> Length[checks], "checks" -> checks,
 "scope" -> "Exact finite symbolic diagnostics. They do not prove existence of all continuum derivative/history graph coefficients or a renormalized stress Ward prescription."|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"phi4_quantum_sewing_results.json"}],result,"RawJSON"];
result
