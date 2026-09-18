(* Exact checks for gravity + U(1) CS; no truncated Lie algebra is used.
   Run with wolframscript -file <this file>. JSON is written beside it.
   Arbitrary-mode identities are distinguished from degree-8 diagnostics. *)
ClearAll[Evaluate["Global" <> FromCharacterCode[96] <> "*"]];
results = <||>;
check[label_, expr_] := Module[{v = FullSimplify[expr]},
  AssociateTo[results, label -> <|"passed" -> TrueQ[v === 0],
    "residual" -> ToString[v, InputForm]|>]];
aa[x_] := c (x^3 - x)/12;
bb[x_] := q x^2 + r x;
hh[x_] := a x + b;
cp = c - 24 a q - 12 k a^2;
dd = r + k b;
ss = b r + k b^2/2 - a q - k a^2/2;
check["Jacobi_LLL", Expand[(m-n) aa[m+n]-(m+2 n) aa[m]+(2 m+n) aa[n]]];
check["Jacobi_LLJ", Expand[(m-n) bb[m+n]-(m+n) bb[m]+(m+n) bb[n]]];
check["Jacobi_LJJ", Expand[n k (m+n)-(m+n) k n]];
check["lift_closure", Expand[m hh[m]-n hh[n]-(m-n) hh[m+n]]];
check["improved_Vir_central", Expand[aa[m]+hh[-m] bb[m]-hh[m] bb[-m]+
  k m hh[m] hh[-m]-2 m ss-cp (m^3-m)/12]];
check["improved_mixed_central", Expand[bb[m]+k m hh[m]-m dd-(q+a k) m^2]];
check["invariant_k_nonzero", Together[cp+12 (q+a k)^2/k-c-12 q^2/k]];
check["remove_q_k_nonzero", Together[(cp /. a -> -q/k)-(c+12 q^2/k)]];
check["removal_zero_mode", Together[(ss /. {a -> -q/k,b -> 0,r -> 0})-q^2/(2 k)]];
check["Hermitian_mixed", ComplexExpand[Conjugate[I chi m^2+r m]-
  (-(I chi (-m)^2+r (-m)))]];
check["Hermitian_lift", ComplexExpand[Conjugate[I beta m+b]-(I beta (-m)+b)]];
check["real_improvement_c", Expand[(cp /. {q -> I chi,a -> I beta})-
  (c+24 beta chi+12 k beta^2)]];
mixedAtVac[m_] := m jzero+bb[m];
check["AdS_stabilizer_forces_q", Expand[mixedAtVac[1]+mixedAtVac[-1]-2q]];
check["AdS_stabilizer_linear_term", Expand[mixedAtVac[1]-mixedAtVac[-1]-2(jzero+r)]];

(* Exact kernels in a bounded polynomial ansatz; completeness is proved
   separately in the note by comparing highest-degree coefficients. *)
poly[x_] := Sum[u[s] x^s,{s,0,8}];
vars = Table[u[s],{s,0,8}];
coefficientMatrix[expr_] := Last[CoefficientArrays[
  Flatten[CoefficientList[Expand[expr],{m,n}]],vars]];
mixedMatrix = coefficientMatrix[(m-n)poly[m+n]-(m+n)poly[m]+(m+n)poly[n]];
liftMatrix = coefficientMatrix[m poly[m]-n poly[n]-(m-n)poly[m+n]];
virMatrix = coefficientMatrix[(m-n)poly[m+n]-(m+2n)poly[m]+(2m+n)poly[n]];
check["degree8_mixed_kernel_dimension", Length[NullSpace[mixedMatrix]]-2];
check["degree8_lift_kernel_dimension", Length[NullSpace[liftMatrix]]-2];
check["degree8_Vir_kernel_dimension", Length[NullSpace[virMatrix]]-2];
check["degree8_mixed_basis", Total[Flatten[(mixedMatrix.#)& /@
  {UnitVector[9,2],UnitVector[9,3]}]^2]];
check["degree8_lift_basis", Total[Flatten[(liftMatrix.#)& /@
  {UnitVector[9,1],UnitVector[9,2]}]^2]];
check["degree8_Vir_basis", Total[Flatten[(virMatrix.#)& /@
  {UnitVector[9,2],UnitVector[9,4]}]^2]];

(* su(2) commutators span all three directions: no mixed functional. *)
eps = Normal[LeviCivitaTensor[3]];
commMatrix = Flatten[eps,1];
check["su2_abelianization_dimension", 3-MatrixRank[commMatrix]];

(* Independent boundary variation and first-order gravity flatness checks. *)
bulkVariation = (atv dav-av dat)/2;
bdy = atv av/2-v av^2/2;
check["U1_boundary_variation", Expand[bulkVariation+D[bdy,atv]dat+
  D[bdy,av]dav-(atv-v av)dav]];
lm1={{0,1},{0,0}}; lzero=DiagonalMatrix[{1/2,-1/2}]; lp1={{0,0},{-1,0}};
aph=lp1-bg[t,x]/kg lm1;
at=mu[t,x]lp1-D[mu[t,x],x]lzero+
  (D[mu[t,x],{x,2}]/2-mu[t,x]bg[t,x]/kg)lm1;
check["gravity_canonical_boundary_polarization",
  kg Tr[at.(-dbv/kg lm1)]-mu[t,x]dbv];
check["U1_canonical_boundary_polarization", k zet (djv/k)-zet djv];
flat=D[aph,t]-D[at,x]+at.aph-aph.at;
eom=mu[t,x]D[bg[t,x],x]+2D[mu[t,x],x]bg[t,x]-kg/2 D[mu[t,x],{x,3}];
flatResidual=Simplify[flat /. Derivative[1,0][bg][t,x]->eom];
check["sl2_flatness", Total[Flatten[flatResidual]^2]];
tcur=bgf[x]+jf[x]^2/(2 k);
db=f[x]bgf'[x]+2f'[x]bgf[x]-c/12 f'''[x];
dj=f[x]jf'[x]+f'[x]jf[x]+k lam'[x];
check["Sugawara_total_stress", Expand[db+jf[x]/k dj-
  (f[x]D[tcur,x]+2f'[x]tcur-c/12 f'''[x]+jf[x]lam'[x])]];
ham=bv+jv^2/(2 k)+eta (bv-bvac)jv;
check["mixed_gravity_source", D[ham,bv]-(1+eta jv)];
check["mixed_gauge_source", D[ham,jv]-(jv/k+eta (bv-bvac))];
check["mixed_variational_one_form", Expand[
  (1+eta jv)dbv+(jv/k+eta(bv-bvac))djv-D[ham,bv]dbv-D[ham,jv]djv]];
check["mixed_boundary_flux", Expand[(eta dj1)db2+(dj1/k+eta db1)dj2-
  (eta dj2)db1-(dj2/k+eta db2)dj1]];
check["mixed_gravity_evolution", Expand[
  (eom /. mu -> Function[{tt,xx},1+eta cur[tt,xx]])-
  ((1+eta cur[t,x])D[bg[t,x],x]+2eta bg[t,x]D[cur[t,x],x]-
    kg eta/2 D[cur[t,x],{x,3}])]];
sourceConstraint=muv-1-eta jv;
check["pure_gauge_tangency_obstruction",
  D[sourceConstraint,muv] 0+D[sourceConstraint,jv]k lp+eta k lp];
(* This last equality verifies the reported nonzero obstruction -eta k lp,
   not tangency. Tangency requires eta k lp=0. *)
mixing = eta Sqrt[k c (nn^2-1)/12];
quad = nn {{1,mixing},{mixing,1}};
check["mixed_energy_characteristic", Expand[
  Det[quad-z IdentityMatrix[2]]-
  (nn(1+mixing)-z)(nn(1-mixing)-z)]];

(* Source redefinition and symplectic pullback integrands. *)
check["source_redefinition_IBP", Expand[
  beta jf[x]D[dmu[x],x]+beta jf'[x]dmu[x]-
  D[beta jf[x]dmu[x],x]]];
check["circle_lift_cocycle", Expand[
  D[f[x]g'[x]-g[x]f'[x],x]-(f[x]g''[x]-g[x]f''[x])]];
pullback=(ch1-beta vv1)(ch2p-beta vv2p)-
  (ch2-beta vv2)(ch1p-beta vv1p);
expanded=ch1 ch2p-ch2 ch1p-
  beta(ch1 vv2p-ch2 vv1p+vv1 ch2p-vv2 ch1p)+
  beta^2(vv1 vv2p-vv2 vv1p);
check["coordinate_pullback_cross_terms",Expand[pullback-expanded]];
(* Smooth disk extensions r^|m| exp(i m theta) of gauge parameters. *)
check["disk_mode_symplectic_radial", FullSimplify[
  Integrate[2 nn rr^(2nn-1),{rr,0,1},Assumptions->nn>0]-1]];
check["classical_Sugawara_coefficient", Expand[
  (f[x]jf[x]/k) k lam'[x]-f[x]jf[x]lam'[x]]];

(* Quantum U(1) Sugawara c=1: exact finite contraction sum for arbitrary m. *)
check["quantum_Sugawara_c1", FullSimplify[
  Sum[p (mm-p),{p,1,mm-1}]/2-(mm^3-mm)/12,
  Assumptions->Element[mm,Integers]&&mm>=1]];
report=<|"assumptions"->{
  "k!=0 for divisions; c=6 kg for gravity; all mode indices are integers",
  "Hermitian checks take chi,r,beta,b,m real",
  "degree8 kernels are finite ansatz checks, not completeness proofs",
  "positive-energy test takes c,k>0 and nn>=2",
  "pure gauge obstruction is not asserted to vanish"
  },"checks"->results,
  "allPassed"->And@@Lookup[Values[results],"passed"],
  "mixedKernelDegree8"->NullSpace[mixedMatrix],
  "liftKernelDegree8"->NullSpace[liftMatrix],
  "VirKernelDegree8"->NullSpace[virMatrix]|>;
out=FileNameJoin[{DirectoryName[$InputFileName],"gravity_u1_mixed_central.results.json"}];
Export[out,report,"RawJSON"];
Print["Checks: ",Length[results],"; all passed: ",report["allPassed"]];
If[!TrueQ[report["allPassed"]],Print[Select[results,!TrueQ[#["passed"]]&]];Exit[1]];
