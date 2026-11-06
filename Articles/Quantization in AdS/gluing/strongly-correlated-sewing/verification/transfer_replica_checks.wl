(* Self-contained Wolfram Language checks. hbar=kB=1; natural logarithms.
   Run: wolframscript -file transfer_replica_checks.wl
   This script prints JSON; it does not edit research sources. *)
ClearAll["Global`*"];
report = Block[{$MessageList = {}}, Module[
 {id, x, z, q, f, jall, u, a, b, h0, v, hh, beta, exact, step, errors,
  rho, ra, swap, purity, swapPurity, entropy, t, aa, cmi, ghz, mix,
  exactChecks, spectrum, eps, finiteEntropy, xvar, selfdual},
 id = IdentityMatrix[2]; x = {{0,1},{1,0}}; z = DiagonalMatrix[{1,-1}];
 exactChecks = Association@Table[
   f = Table[If[i != j,1,0],{i,q},{j,q}]; jall=ConstantArray[1,{q,q}];
   (* e^(a (J-I)) from the rank-one projector J/q. *)
   u=Exp[-a](IdentityMatrix[q]+(Exp[q a]-1)jall/q);
   "q"<>ToString[q]<>"_temporal_kernel_ODE" ->
     TrueQ[FullSimplify[D[u,a]-f.u] == ConstantArray[0,{q,q}]],
   {q,{2,3}}];
 AssociateTo[exactChecks,"temporal_kernel_initial" -> TrueQ[
   (Exp[-a](IdentityMatrix[3]+(Exp[3a]-1)ConstantArray[1,{3,3}]/3) /. a->0)==IdentityMatrix[3]]];
 selfdual=FullSimplify[(Exp[q a]-1)((Exp[q a]+q-1)/(Exp[q a]-1)-1)-q,
   Assumptions->{a>0,q>1}];
 AssociateTo[exactChecks,"anisotropic_selfdual"->TrueQ[selfdual==0]];
 (* Two-region noncommuting 2-qubit model. *)
 h0=-KroneckerProduct[x,id]-KroneckerProduct[id,x];
 v=-KroneckerProduct[z,z]; hh=h0+v; beta=7/10;
 exact=N[MatrixExp[-beta hh],50];
 errors=Table[
   step=N[MatrixExp[-beta h0/(2m)].MatrixExp[-beta v/m].MatrixExp[-beta h0/(2m)],50];
   <|"m"->m,"frobenius_error"->N[Norm[MatrixPower[step,m]-exact,"Frobenius"],18]|>,
   {m,{1,2,4,8,16,32}}];
 rho=exact/Tr[exact];
 ra=Table[Sum[rho[[2(i-1)+k,2(j-1)+k]],{k,2}],{i,2},{j,2}];
 swap=ConstantArray[0,{16,16}];
 Do[swap[[1+8a2+4b1+2a1+b2,1+8a1+4b1+2a2+b2]]=1,
   {a1,0,1},{b1,0,1},{a2,0,1},{b2,0,1}];
 purity=Tr[ra.ra]; swapPurity=Tr[KroneckerProduct[rho,rho].swap];
 AssociateTo[exactChecks,"replica_swap_unitary"->TrueQ[swap.swap==IdentityMatrix[16]]];
 (* CMI of the analytic noncommuting three-qubit Gibbs counterexample. *)
 entropy[y_]:=-((1+y)/2)Log[(1+y)/2]-((1-y)/2)Log[(1-y)/2];
 t=Tanh[Sqrt[2] beta]; aa=t/Sqrt[2];
 cmi=N[2entropy[aa]-entropy[t]-Log[2],30];
 spectrum=Sort[Eigenvalues[KroneckerProduct[z,x,id]+KroneckerProduct[id,z,z]]];
 AssociateTo[exactChecks,"three_qubit_spectrum"->TrueQ[spectrum==Join[ConstantArray[-Sqrt[2],4],ConstantArray[Sqrt[2],4]]]];
 xvar=Unique["x"];
 AssociateTo[exactChecks,"CMI_series_leading_t"->TrueQ[
   FullSimplify[Normal[Series[2entropy[xvar/Sqrt[2]]-entropy[xvar]-Log[2],{xvar,0,4}]]]==xvar^4/24]];
 ghz=SparseArray[{1->1/Sqrt[2],8->1/Sqrt[2]},8]//Normal;
 ghz=Outer[Times,ghz,ghz]; mix=DiagonalMatrix[{1/2,0,0,0,0,0,0,1/2}];
 AssociateTo[exactChecks,"GHZ_mixture_AB_equal"->TrueQ[
  Table[Sum[ghz[[2(i-1)+k,2(j-1)+k]]-mix[[2(i-1)+k,2(j-1)+k]],{k,2}],{i,4},{j,4}]==ConstantArray[0,{4,4}]]];
 finiteEntropy=Table[eps=1/Sqrt[Log[d]];
  <|"log_dimension"->Log[d],"trace_distance_to_pure"->eps,
    "S1"->N[-(1-eps)Log[1-eps]-eps Log[eps]+eps Log[d-1],18],
    "S2"->N[-Log[(1-eps)^2+eps^2/(d-1)],18]|>,{d,{Exp[16],Exp[64],Exp[256]}}];
 <|"kernel_version"->$Version,"exact_checks"->exactChecks,
   "symmetric_trotter"->errors,"replica_purity"->N[purity,20],
   "swap_residual"->N[Abs[purity-swapPurity],MachinePrecision],
   "working_precision_digits"->50,"zero_residual_convention"->"Numeric zero at working precision; not an exact-zero proof.",
   "three_qubit_CMI_beta_0.7"->cmi,
   "entropy_nonuniformity"->finiteEntropy,
   "messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
Print[ExportString[report,"RawJSON"]];
report
